import 'package:debounce_throttle/debounce_throttle.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/enum/sort_enum.dart';
import 'package:podo_darae_lab/common/model/cursor_pagination_model.dart';
import 'package:podo_darae_lab/common/model/model_with_id.dart';
import 'package:podo_darae_lab/common/model/pagination_params.dart';
import 'package:podo_darae_lab/common/repository/base_pagination_repository.dart';

class _PaginationInfo {
  int fetchCount;
  //추가로 데이터를 더 가져오기
  // true - 추가로 데이터를 더 가져옴
  // false - 새로고침 (현재상태를 덮어씌움)
  bool fetchMore;
  // 강제로 다시 로딩하기
  // true - CursorPaginationLoading()
  bool forceRefetch;
  _PaginationInfo({
    this.fetchCount = 15,
    this.fetchMore = false,
    this.forceRefetch = false,
  });
}

class PaginationProvider<T extends IModelWithId,
        U extends IBasePaginationRepository<T>>
    extends StateNotifier<CursorPaginationBase> {
  final U repository;
  final paginationThrottle = Throttle(
    const Duration(seconds: 2),
    initialValue: _PaginationInfo(),
    checkEquality: false,
  );
  PaginationProvider({
    required this.repository,
  }) : super(CursorPaginationLoading()) {
    paginate();

    paginationThrottle.values.listen(
      (state) {
        _throttlePagination(state);
      },
    );
  }
  Future<void> paginate({
    int fetchCount = 15,
    //추가로 데이터를 더 가져오기
    // true - 추가로 데이터를 더 가져옴
    // false - 새로고침 (현재상태를 덮어씌움)
    bool fetchMore = false,
    // 강제로 다시 로딩하기
    // true - CursorPaginationLoading()
    bool forceRefetch = false,
  }) async {
    paginationThrottle.setValue(
      _PaginationInfo(
        fetchCount: fetchCount,
        fetchMore: fetchMore,
        forceRefetch: forceRefetch,
      ),
    );
  }

  _throttlePagination(_PaginationInfo info) async {
    final fetchCount = info.fetchCount;
    final fetchMore = info.fetchMore;
    final forceRefetch = info.forceRefetch;
    try {
      // 5가지 가능성
      // State의 상태
      // [상태가]
      // 1) CursorPagination - 정상적으로 데이터가 있는 상태
      // 2) CursorPaginationLoading - 데이터가 로딩중인 상태 (현재 캐시없음)
      // 3) CursorPaginationError - 에러가 있는 상태
      // 4) CursorPaginationRefetching - 첫 번 째 페이지부터 다시 데이터를 가져올 때
      // 5) CursorPaginationFetchMore - 추가 데이터를 paginate 해오라는 요청을 받았을 때

      // 바로 반환하는 상황
      // 1) hasMore = false (기존 상태에 서 이미 다음 데이터가 없다는 값을 들고있다면)
      // 2) 로딩중 - fetchMore : true
      //    fetchMore가 아닐 때 - 새로고침의 의도가 있을 수 있다.
      if (state is CursorPagination && !forceRefetch) {
        final pState = state as CursorPagination;

        if (pState.next == null) {
          return;
        }
      }

      final isLoading = state is CursorPaginationLoading;
      final isRefetching = state is CursorPaginationRefetching;
      final isFetchingMore = state is CursorPaginationFetchingMore;

      // 2번 반환 상황
      if (fetchMore && (isLoading || isRefetching || isFetchingMore)) {
        return;
      }

      // PaginationParams 생성
      PaginationParams paginationParams = PaginationParams(
        take: fetchCount,
        order__createdAt: SortEnum.DESC.name,
      );
      // fetchMore
      // 데이터를 추가로 더 가져오는 상황
      if (fetchMore) {
        final pState = state as CursorPagination<T>;

        state = CursorPaginationFetchingMore(
          data: pState.data,
          count: pState.count,
          cursor: pState.cursor,
          next: pState.next,
        );

        if (paginationParams.order__createdAt == SortEnum.DESC.name) {
          paginationParams = paginationParams.copyWith(
            where__id__less_than: pState.cursor.after,
          );
        } else {
          paginationParams = paginationParams.copyWith(
            where__id__more_than: pState.cursor.after,
          );
        }
      }
      // 데이터를 처음부터 가져오는 상황
      else {
        // 만약 데이터가 있는 상황이라면 기존 데이터를 보존한 채로 Fetch(API요청)를 진행
        if (state is CursorPagination && !forceRefetch) {
          final pState = state as CursorPagination<T>;
          state = CursorPaginationRefetching<T>(
            data: pState.data,
            count: pState.count,
            cursor: pState.cursor,
            next: pState.next,
          );
        }
        // 나머지 상황
        else {
          state = CursorPaginationLoading();
        }
      }

      final resp = await repository.paginate(
        paginationParams: paginationParams,
      );

      if (state is CursorPaginationFetchingMore) {
        final pState = state as CursorPaginationFetchingMore<T>;
        // 기존 데이터에 새로운 데이터 추가
        state = resp.copyWith(
          data: [
            ...pState.data,
            ...resp.data,
          ],
        );
      } else {
        state = resp;
      }
    } catch (e, stack) {
      print(e);
      print(stack);
      state = CursorPaginationError(message: '데이터를 가져오지 못했습니다.');
    }
  }
}

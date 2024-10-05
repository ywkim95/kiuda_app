import 'package:flutter/material.dart';
import 'package:podo_darae_lab/common/provider/pagination_provider.dart';

class PaginationUtils {
  static void paginate({
    required ScrollController controller,
    required PaginationProvider provider,
  }) {
    if (controller.offset > controller.position.maxScrollExtent - 200) {
      provider.paginate(
        fetchMore: true,
      );
    }
  }
}

abstract class SocketState {}

class SocketInitial extends SocketState {}

class SocketConnected extends SocketState {}

class SocketDisconnected extends SocketState {}

class SocketError extends SocketState {}

class SocketPaused extends SocketState {}

class SocketChanged extends SocketState {}

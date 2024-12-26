import 'package:bloc/bloc.dart';

class ShowPerformanceOverlayCubit extends Cubit<bool> {
  ShowPerformanceOverlayCubit() : super(false);

  void show() {
    emit(true);
  }

  void hide() {
    emit(false);
  }
}

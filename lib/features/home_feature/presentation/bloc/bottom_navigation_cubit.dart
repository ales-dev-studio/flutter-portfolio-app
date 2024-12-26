import 'package:bloc/bloc.dart';

class BottomNavigationCubit extends Cubit<int> {
  BottomNavigationCubit() : super(0);

  void onDestinationSelected(final int index) {
    emit(index);
  }
}

import 'package:bloc/bloc.dart';

class ShowMaterialGridsCubit extends Cubit<bool> {
  ShowMaterialGridsCubit() : super(false);

  void show() {
    emit(true);
  }

  void hide() {
    emit(false);
  }
}

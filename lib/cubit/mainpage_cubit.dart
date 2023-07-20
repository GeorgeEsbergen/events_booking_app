// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'mainpage_state.dart';

class MainpageCubit extends Cubit<MainpageState> {
  MainpageCubit() : super(MainpageInitial());

  bool isTrue = true;

  void doIt(isTre) {
    isTrue = isTre;
    emit(MainpageSuccess(istrue: isTrue));
  }
}

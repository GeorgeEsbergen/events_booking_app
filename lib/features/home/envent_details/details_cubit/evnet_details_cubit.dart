// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'evnet_details_state.dart';

class EvnetDetailsCubit extends Cubit<EvnetDetailsState> {
  EvnetDetailsCubit() : super(EvnetDetailsInitial());


    bool isTrue= false;

  void doIt(isTre) {
    isTrue = !isTre;
    emit(EvnetDetailsSuccsess(isfollowed: isTrue));
  }
}

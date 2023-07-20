part of 'evnet_details_cubit.dart';

@immutable
abstract class EvnetDetailsState {}

class EvnetDetailsInitial extends EvnetDetailsState {}

class EvnetDetailsSuccsess extends EvnetDetailsState {
  final bool isfollowed;

  EvnetDetailsSuccsess({required this.isfollowed } );
}

class EvnetDetailsLoading extends EvnetDetailsState {}

class EvnetDetailsFailed extends EvnetDetailsState {}

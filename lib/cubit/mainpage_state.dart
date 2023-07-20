part of 'mainpage_cubit.dart';

@immutable
abstract class MainpageState {}

class MainpageInitial extends MainpageState {}

class MainpageSuccess extends MainpageState {
  final bool istrue;
  MainpageSuccess({required this.istrue});
}

class MainpageLoading extends MainpageState {}

class MainpageFailed extends MainpageState {}

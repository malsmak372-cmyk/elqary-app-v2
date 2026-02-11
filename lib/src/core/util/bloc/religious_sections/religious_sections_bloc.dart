import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../model/religious_section.dart';

// Events
abstract class ReligiousSectionsEvent extends Equatable {
  const ReligiousSectionsEvent();
  @override
  List<Object> get props => [];
}

class FetchReligiousSections extends ReligiousSectionsEvent {
  final List<Map<String, dynamic>> sections;
  const FetchReligiousSections(this.sections);
  @override
  List<Object> get props => [sections];
}

// States
abstract class ReligiousSectionsState extends Equatable {
  const ReligiousSectionsState();
  @override
  List<Object> get props => [];
}

class ReligiousSectionsInitial extends ReligiousSectionsState {}

class ReligiousSectionsLoaded extends ReligiousSectionsState {
  final List<ReligiousSection> sections;
  const ReligiousSectionsLoaded(this.sections);
  @override
  List<Object> get props => [sections];
}

// Bloc
class ReligiousSectionsBloc extends Bloc<ReligiousSectionsEvent, ReligiousSectionsState> {
  ReligiousSectionsBloc() : super(ReligiousSectionsInitial()) {
    on<FetchReligiousSections>((event, emit) {
      final List<ReligiousSection> loadedSections = event.sections
          .map((map) => ReligiousSection.fromMap(map))
          .toList();
      emit(ReligiousSectionsLoaded(loadedSections));
    });
  }
}

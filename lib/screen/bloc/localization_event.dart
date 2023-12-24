part of 'localization_bloc.dart';

sealed class LocalizationEvent extends Equatable {
  const LocalizationEvent();

  @override
  List<Object> get props => [];
}

class LoadLocalization extends LocalizationEvent {
  final Locale locale;
  const LoadLocalization(this.locale);

  @override
  List<Object> get props => [locale];
}

class LoadSavedLocalization extends LocalizationEvent {}

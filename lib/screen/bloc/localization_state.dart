part of 'localization_bloc.dart';

class LocalizationState extends Equatable {
  final Locale locale;
  const LocalizationState(this.locale);

//Default state
  factory LocalizationState.initial() {
    return const LocalizationState(Locale('en'));
  }

  LocalizationState copyWith(Locale locale) {
    return LocalizationState(locale ?? this.locale);
  }

  @override
  List<Object> get props => [locale];
}

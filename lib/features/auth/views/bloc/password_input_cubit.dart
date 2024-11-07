import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInputCubit extends Cubit<bool> {
  PasswordInputCubit() : super(false);

  void toggleVisibility() => emit(!state);
}
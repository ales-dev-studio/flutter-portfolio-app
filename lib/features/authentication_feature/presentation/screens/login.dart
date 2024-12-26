import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_portfolio/core/locator/locator.dart';
import 'package:personal_portfolio/core/routes/go_routes_path.dart';
import 'package:personal_portfolio/core/utils/app_snack_bar.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/validation_error_extensions.dart';
import 'package:personal_portfolio/core/utils/sized_context.dart';
import 'package:personal_portfolio/core/widgets/app_loading.dart';
import 'package:personal_portfolio/core/widgets/app_scaffold.dart';
import 'package:personal_portfolio/core/widgets/app_text_form_field.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_button.dart';
import 'package:personal_portfolio/core/widgets/general_appbar.dart';
import 'package:personal_portfolio/core/widgets/lists/app_single_child_scroll_view.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/authentication_status.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/login_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocProvider(
      create: (final BuildContext context) => locator<LoginBloc>(),
      child: AppScaffold(
        appBar: const GeneralAppBar(title: 'Login'),
        smallBody: AppSingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: context.sizePx.height * 0.2,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: _PhoneNumberInput(),
                  ),
                  const SizedBox(height: 16.0),
                  _Submit(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PhoneNumberInput extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (final BuildContext context, final LoginState state) {
        return AppTextFormField(
          onChanged: (final String phone) {
            context.read<LoginBloc>().add(
                  LoginPhoneChangedEvent(phone),
                );
          },
          labelText: 'Mobile number',
          maxLength: 11,
          autoFocus: true,
          textInputType: TextInputType.phone,
          textDirection: TextDirection.ltr,
          errorText: state.phoneNumber.displayError == null
              ? null
              : state.phoneNumber.error?.errorText(),
          prefixIcon: const Icon(Icons.phone),
        );
      },
    );
  }
}

class _Submit extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (final BuildContext context, final LoginState state) {
        if (state.authenticationStatus is AuthenticationCompleted) {
          final AuthenticationCompleted authenticationCompleted =
              state.authenticationStatus as AuthenticationCompleted;

          if (authenticationCompleted.status) {
            context.push(
              GoRoutesPath.verifyOtp,
              extra: state.phoneNumber.value,
            );
          }
        }

        if (state.authenticationStatus is AuthenticationError) {
          final AuthenticationError authenticationError =
              state.authenticationStatus as AuthenticationError;

          showSnackBar(authenticationError.message);
        }
      },
      builder: (final BuildContext context, final LoginState state) {
        return state.authenticationStatus is AuthenticationLoading
            ? const AppLoading()
            : AppButton(
                onPressed: state.isValid
                    ? () {
                        BlocProvider.of<LoginBloc>(context).add(
                          LoginSubmittedEvent(phone: state.phoneNumber.value),
                        );
                      }
                    : null,
                title: 'login',
                icon: Icons.check,
              );
      },
    );
  }
}

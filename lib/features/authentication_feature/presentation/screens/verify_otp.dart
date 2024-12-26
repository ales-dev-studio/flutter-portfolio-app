import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/locator/locator.dart';
import 'package:personal_portfolio/core/theme/colors.dart';
import 'package:personal_portfolio/core/utils/app_snack_bar.dart';
import 'package:personal_portfolio/core/utils/check_theme_status.dart';
import 'package:personal_portfolio/core/utils/sized_context.dart';
import 'package:personal_portfolio/core/widgets/app_loading.dart';
import 'package:personal_portfolio/core/widgets/app_scaffold.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/general_appbar.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/authentication_status.dart';
import 'package:personal_portfolio/features/authentication_feature/presentation/bloc/verify_otp_bloc.dart';
import 'package:sms_autofill/sms_autofill.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({super.key, required this.mobileNumber});

  final String mobileNumber;

  @override
  Widget build(final BuildContext context) {
    return BlocProvider(
      create: (final BuildContext context) => locator<VerifyOtpBloc>(),
      child: AppScaffold(
        appBar: const GeneralAppBar(
          title: '',
        ),
        smallBody: ListView(
          children: [
            AppVSpace(
              space: context.sizePx.height * 0.2,
            ),
            Text(t.otpToPhone(number: mobileNumber)),
            const AppVSpace(),
            Text(t.enterOtpCode),
            const AppVSpace(),
            BlocConsumer<VerifyOtpBloc, VerifyOtpState>(
              listener:
                  (final BuildContext context, final VerifyOtpState state) {
                if (state.authenticationStatus is AuthenticationCompleted) {
                  final AuthenticationCompleted authenticationCompleted =
                      state.authenticationStatus as AuthenticationCompleted;

                  if (authenticationCompleted.status) {
                    // context.push(GoRoutesPath.home);
                    showSnackBar('Success');
                  }
                }

                if (state.authenticationStatus is AuthenticationError) {
                  final AuthenticationError authenticationError =
                      state.authenticationStatus as AuthenticationError;

                  showSnackBar(authenticationError.message);
                }
              },
              builder:
                  (final BuildContext context, final VerifyOtpState state) {
                return state.authenticationStatus is AuthenticationLoading
                    ? const AppLoading()
                    : kIsWeb
                        ? PinInputTextField(
                            enableInteractiveSelection: true,
                            decoration: BoxLooseDecoration(
                              strokeColorBuilder: PinListenColorBuilder(
                                Theme.of(context).dividerColor,
                                Theme.of(context).dividerColor,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onChanged: (final String otp) {
                              context.read<VerifyOtpBloc>().add(
                                    VerifyOtpChangedEvent(otp, mobileNumber),
                                  );
                            },
                            keyboardType:
                                const TextInputType.numberWithOptions(),
                          )
                        : PinFieldAutoFill(
                            autoFocus: kIsWeb,
                            currentCode: state.otp,
                            decoration: BoxLooseDecoration(
                              strokeColorBuilder: PinListenColorBuilder(
                                Theme.of(context).dividerColor,
                                Theme.of(context).dividerColor,
                              ),
                              textStyle: TextStyle(
                                color: checkDarkMode(context)
                                    ? AppColors.white
                                    : Theme.of(context).primaryColor,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onCodeChanged: (final String? otp) {
                              context.read<VerifyOtpBloc>().add(
                                    VerifyOtpChangedEvent(otp, mobileNumber),
                                  );
                            },
                          );
              },
            ),
          ],
        ),
      ),
    );
  }
}

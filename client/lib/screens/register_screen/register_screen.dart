import 'package:client/generated/translations.g.dart';
import 'package:client/routes/app_router.dart';
import 'package:client/screens/register_screen/cubit/register_screen_cubit.dart';
import 'package:client/shared/enum/screen_status.dart';
import 'package:client/shared/helpers/dialog_helper.dart';
import 'package:client/shared/utils/app_colors.dart';
import 'package:client/shared/utils/validators.dart';
import 'package:client/shared/widgets/app_button.dart';
import 'package:client/shared/widgets/app_dismiss_keyboard.dart';
import 'package:client/shared/widgets/app_layout.dart';
import 'package:client/shared/widgets/app_text.dart';
import 'package:client/shared/widgets/forms/app_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AppDismissKeyboard(
      onWillPop: false,
      child: BlocProvider(
        create: (context) => RegisterScreenCubit(),
        child: MultiBlocListener(
          listeners: [
            BlocListener<RegisterScreenCubit, RegisterScreenState>(
              listenWhen: (previous, current) =>
                  previous.errorMessage != current.errorMessage &&
                  current.errorMessage != null,
              listener: (context, state) {
                showErrorDialog(context, content: state.errorMessage)
                    .then((value) {
                  context
                      .read<RegisterScreenCubit>()
                      .updateState((p0) => p0.copyWith(errorMessage: null));
                });
              },
            ),
            BlocListener<RegisterScreenCubit, RegisterScreenState>(
              listenWhen: (previous, current) =>
                  previous.status != current.status,
              listener: (context, state) {
                if (state.status == ScreenStatus.success) {
                  showSuccessDialog(
                    context,
                    title: tr(LocaleKeys.App_Success),
                    content: tr(LocaleKeys.Auth_RegisterSuccessfully),
                  ).then((value) {
                    Get.toNamed(Routes.login);
                  });
                }
              },
            ),
          ],
          child: AppLayout(
              showAppBar: false,
              showLeading: false,
              resizeToAvoidBottomInset: true,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: BlocBuilder<RegisterScreenCubit, RegisterScreenState>(
                  builder: (context, state) {
                    return Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: Wrap(
                          runSpacing: 16,
                          children: [
                            AppTextFormField(
                                validations: const [
                                  Validators.validateNotEmpty
                                ],
                                label: tr(LocaleKeys.Auth_Username),
                                placeholder: tr(LocaleKeys.Auth_EnterUsername),
                                onchanged: (_) {
                                  context
                                      .read<RegisterScreenCubit>()
                                      .updateState(
                                          (p0) => p0.copyWith(username: _));
                                }),
                            AppTextFormField(
                                validations: const [
                                  Validators.validatePassword
                                ],
                                label: tr(LocaleKeys.Auth_Password),
                                placeholder: tr(LocaleKeys.Auth_EnterPassword),
                                obscureText: true,
                                onchanged: (_) {
                                  context
                                      .read<RegisterScreenCubit>()
                                      .updateState(
                                          (p0) => p0.copyWith(password: _));
                                }),
                            AppTextFormField(
                                validations: [
                                  (data) => Validators.validateConfirmPassword(
                                      state.password, data)
                                ],
                                label: tr(LocaleKeys.Auth_ConfirmPassword),
                                obscureText: true,
                                placeholder:
                                    tr(LocaleKeys.Auth_EnterConfirmPassword),
                                onchanged: (_) {
                                  context
                                      .read<RegisterScreenCubit>()
                                      .updateState((p0) =>
                                          p0.copyWith(confirmPassword: _));
                                }),
                            AppTextFormField(
                                validations: const [Validators.validateEmail],
                                label: tr(LocaleKeys.Auth_Email),
                                placeholder: tr(LocaleKeys.Auth_EnterEmail),
                                onchanged: (_) {
                                  context
                                      .read<RegisterScreenCubit>()
                                      .updateState(
                                          (p0) => p0.copyWith(email: _));
                                }),
                            AppButton(
                                width: MediaQuery.of(context).size.width,
                                title: tr(LocaleKeys.Auth_Register),
                                onPressed: () {
                                  if (_formKey.currentState != null &&
                                      _formKey.currentState!.validate()) {
                                    context
                                        .read<RegisterScreenCubit>()
                                        .register();
                                  }
                                }),
                            GestureDetector(
                              onTap: () => Get.toNamed(Routes.login),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Wrap(
                                    spacing: 4,
                                    children: [
                                      AppText(
                                        tr(LocaleKeys.Auth_DoYouHaveAccount),
                                        fontSize: 15,
                                      ),
                                      AppText(
                                        tr(LocaleKeys.Auth_Login),
                                        color: AppColors.darkPurple,
                                        fontSize: 15,
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )),
        ),
      ),
    );
  }
}

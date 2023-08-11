import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/screen/auth/auth_text_form_field.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/app_widget.dart';
import 'package:groovvee/views/utils/widgets/common/app_scaffold.dart';
import 'package:groovvee/views/utils/widgets/common/buttons.dart';

import '../../../constantes.dart';
import '../../utils/widgets/common/widget_bar.dart';


class ResetPasswordScreen extends ConsumerStatefulWidget {
  const ResetPasswordScreen({super.key});

  static const routeName = 'reset-password';

  @override
  ConsumerState<ResetPasswordScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<ResetPasswordScreen> {
  late final _formKey = GlobalKey<FormState>();

  //late final _localizations = context.l10n;

  late var _isFormValid = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _onFormChanged());
  }

  @override
  Widget build(BuildContext context) {
    // final isResettingPassword = ref.watch(
    //   authViewModel.select((state) => state.isResettingPassword),
    // );
    //
    // final emailAddress = ref.watch(
    //   authViewModel.select((state) => state.emailAddress),
    // );
    //
    // final auth = ref.watch(authViewModel.notifier);

    return GauzyScaffold(
      content: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(context.dx(56.0)),
          child: Form(
            key: _formKey,
            onChanged: _onFormChanged,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AuthTopBar(),
                const Space.vertical(32.0),
                Text(
                  '${AppString.forgotPassword}?',
                  style: context.textStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30.0,
                  ),
                ),
                const Space.vertical(4.0),
                Text(
                  AppString.resetYourPassword,
                  style: context.textStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    colour: white,
                  ),
                ),
                const Space.vertical(48.0),
                AuthTextFormField(
                  labelText: AppString.emailAddress,
                  keyboardType: TextInputType.emailAddress,
                  // initialValue: emailAddress,
                  // validator: (value) {
                  //   auth.update(emailAddress: value!.trim());
                  //   return value.trim().isValidEmailAddress ? null : '';
                  // },
                ),
                const Space.vertical(48.0),
                BigButton(
                  //isBusy: isResettingPassword,
                  labelText: AppString.submit,
                  isEnabled: _isFormValid,
                  onPressed: _onSubmit,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onFormChanged() {
    setState(() => _isFormValid = _formKey.currentState!.validate());
  }

  void _onSubmit() {
    context.unfocus();
  }
}

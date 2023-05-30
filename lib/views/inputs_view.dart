import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsView extends StatelessWidget {
  const InputsView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firstName': '',
      'lastName': '',
      'email': '',
      'password': '',
      'role': '',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Inputs and Forms')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const SizedBox(height: 30),
                CustomInputField(
                  formProperty: 'firstName',
                  formValues: formValues,
                  labelText: 'First Name',
                  hintText: 'User first name',
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  formProperty: 'lastName',
                  formValues: formValues,
                  labelText: 'Last Name',
                  hintText: 'User last name',
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  formProperty: 'email',
                  formValues: formValues,
                  labelText: 'Email',
                  hintText: 'User email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  formProperty: 'password',
                  formValues: formValues,
                  labelText: 'Password',
                  hintText: 'New password',
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField(
                    hint: const Text('User Role'),
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer'),
                      ),
                      DropdownMenuItem(
                        value: 'Tester',
                        child: Text('Tester'),
                      )
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? '';
                    }),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                        child: Center(
                      child: Text('REGISTER'),
                    )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

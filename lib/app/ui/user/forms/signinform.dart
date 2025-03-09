import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:qubit/app/controllers/user_controller.dart';
import 'package:qubit/app/controllers/validators.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());
    final formKey = GlobalKey<FormState>();

    void sendSignIn() {
      if (formKey.currentState!.validate()) {
        userController.signIn();
      } else {
        Get.snackbar(
          "Error de Formulario",
          "Formulario inválido",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: const Color.fromARGB(91, 142, 147, 254),
          duration: const Duration(seconds: 5),
        );
      }
    }

    return Container(
      constraints: BoxConstraints(
        minWidth: 360,
        maxWidth: 500,
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Image.asset(
                "lib/assets/images/Qubit-POS-sf.png",
                width: 320,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 40,
                ),
                child: Text(
                  "Bienvenido!!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                width: 400,
                child: TextFormField(
                  controller: userController.emailController,
                  validator: (value) {
                    if (!Validators().validateMail(value)) {
                      return "Email no válido";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(labelText: "Email"),
                ),
              ),
              SizedBox(
                width: 400,
                child: TextFormField(
                  controller: userController.passwordController,
                  validator: (value) {
                    if (!Validators().validateNumandLetters(value)) {
                      return "Password no válido";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(labelText: "Password"),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: FilledButton.icon(
                  onPressed: () {
                    sendSignIn();
                  },
                  icon: const Icon(Icons.login),
                  label: const Text("Ingresar"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 6,
                    right: 6,
                  ),
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.password),
                    label: const Text("Olvidó su Password?"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text("O registrése con..."),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4,
                        right: 4,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mail,
                          color: Colors.blue,
                          size: 48,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4,
                        right: 4,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 40,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4,
                        right: 4,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.microsoft,
                          size: 40,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4,
                        right: 4,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.apple,
                          color: Colors.blue,
                          size: 48,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4,
                        right: 4,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.google,
                          size: 40,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:clothes_app/users/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, cons) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: cons.maxHeight,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //signup screen header
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 285,
                    child: Image.asset('images/register.jpg'),
                  ),


                  //signup screen signup form
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.all(
                            Radius.circular(60),
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              color: Colors.black26,
                              offset: Offset(0, -3),
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 30, 8),
                        child: Column(
                          children: [
                            //name-email-password || signup button
                            Form(
                              key: formKey,
                              child: Column(
                                children: [
                                  //name
                                  TextFormField(
                                    controller: nameController,
                                    validator: (val) =>
                                    val == '' ? 'Please Write name' : null,
                                    decoration: InputDecoration(
                                      // prefix: const Icon(
                                      //   Icons.email,
                                      //   color: Colors.black,
                                      // ),
                                      hintText: 'Name',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.white60)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.white60)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.white60)),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.white60)),
                                      contentPadding:
                                      const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  //email
                                  TextFormField(
                                    controller: emailController,
                                    validator: (val) =>
                                    val == '' ? 'Please Write email' : null,
                                    decoration: InputDecoration(
                                      // prefix: const Icon(
                                      //   Icons.email,
                                      //   color: Colors.black,
                                      // ),
                                      hintText: 'Email',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.white60)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.white60)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.white60)),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.white60)),
                                      contentPadding:
                                      const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  Obx(
                                        () => TextFormField(
                                      controller: passwordController,
                                      obscureText: isObsecure.value,
                                      validator: (val) => val == ''
                                          ? 'Please Write password'
                                          : null,
                                      decoration: InputDecoration(
                                        // prefix: const Icon(
                                        //   Icons.email,
                                        //   color: Colors.black,
                                        // ),
                                        suffixIcon: Obx(
                                              () => GestureDetector(
                                            onTap: () {
                                              isObsecure.value =
                                              !isObsecure.value;
                                            },
                                            child: Icon(
                                              isObsecure.value
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        hintText: 'Password',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                                color: Colors.white60)),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                                color: Colors.white60)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                                color: Colors.white60)),
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                                color: Colors.white60)),
                                        contentPadding:
                                        const EdgeInsets.symmetric(
                                            horizontal: 14, vertical: 6),
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  Material(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                    child: InkWell(
                                      onTap: () {},
                                      borderRadius: BorderRadius.circular(30),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 28),
                                        child: Text(
                                          'SignUp',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 16,),

                            //already have an account button
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Already have an Account',
                                  style: TextStyle(color: Colors.white),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.to(LoginScreen());
                                  },
                                  child: const Text(
                                    'Login Here',
                                    style:
                                    TextStyle(color: Colors.purpleAccent),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

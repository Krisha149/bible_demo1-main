
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/src/response.dart';
import '../Services/api_service.dart';
import '../pages/auth/auth_controller.dart';
import '../pages/otp1/otp1_view.dart';
import '../resource/font_family.dart';
import 'continue.dart';
import 'otherbtn.dart';

class BottomSheetApp extends StatefulWidget {
  const BottomSheetApp({super.key});

  @override
  State<BottomSheetApp> createState() => _BottomSheetAppState();
}

class _BottomSheetAppState extends State<BottomSheetApp>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;
  late AuthController authController;

  final _formKey = GlobalKey<FormState>();

  bool _obscurePassword = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController nameController = TextEditingController();


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    authController = AuthController();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      authController.redirectToNextScreen();
    }
  }

  InputDecoration _inputDecoration(String hint, {Widget? suffix}) {
    return InputDecoration(
      hintText: hint,
      suffixIcon: suffix,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.blueGrey, width: 3),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  Widget _dividerWithText() {
    return Row(
      children: const [
        Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("OR"),
        ),
        Expanded(child: Divider()),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  color: const Color(0xFFDD800C),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                tabs: const [
                  Tab(text: "Login"),
                  Tab(text: "Signup"),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          Expanded(
            child: Form(
              key: _formKey,
              child: TabBarView(
                controller: _tabController,
                children: [
                  _authTab(isSignup: false),
                  _authTab(isSignup: true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _authTab({required bool isSignup}) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (isSignup)
          Text("Name", style: TextStyle(fontFamily: fontF, fontWeight: FontWeight.w700)),
        if (isSignup)
          const SizedBox(height: 8),
        if (isSignup)
          TextFormField(
            controller: nameController,
            decoration: _inputDecoration("Enter your name"),
            validator: (v) => v!.isEmpty ? "Name required" : null,
          ),

        if (isSignup) const SizedBox(height: 20),

        Text("Email", style: TextStyle(fontFamily: fontF, fontWeight: FontWeight.w700)),
        const SizedBox(height: 8),
        TextFormField(
          controller: emailController,
          decoration: _inputDecoration("Enter email or phone"),
          validator: (v) {
            if (v!.isEmpty) return "Email Required";
            if (v.contains("@")) {
              if (!v.endsWith("@gmail.com")) {
                return "Only gmail allowed";
              }
            } else if (v.length != 10) {
              return "Invalid phone number";
            }
            return null;
          },
        ),

        const SizedBox(height: 20),

        Text("Password", style: TextStyle(fontFamily: fontF, fontWeight: FontWeight.w700)),
        const SizedBox(height: 8),
        TextFormField(
          controller: passController,
          obscureText: _obscurePassword,
          decoration: _inputDecoration(
            "Enter password",
            suffix: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
          validator: (v) => v!.length < 6 ? "Min 6 characters" : null,
        ),

        const SizedBox(height: 25),

        isSignup ?
        ButtonWidget(
          text:"Confirm",
          // onTap: _submit,

          onTap: () async {
            Response success = await ApiService.signup(
              name :nameController.text,
              email :emailController.text,
              password : passController.text,
            );

            if (success.statusCode == 200 || success.statusCode== 201) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Signup Successful")),
              );
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Signup failed")),
              );
            }
          },
        ):


        ButtonWidget(
          text: "Log In",
          // onTap: _submit,

          onTap: () async {
            final success = await ApiService.login(
              email :emailController.text,
              password : passController.text,
            );

            if (success.statusCode == 200 || success.statusCode == 201) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => Otp1View()),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Login Failed")),
              );
            }
          },
        ),

        const SizedBox(height: 25),

        _dividerWithText(),

        const SizedBox(height: 20),

        ButtonOther(
          text: 'Continue with Google',
          icon: 'assets/Icon_img/google.png',
          onTap: null,
        ),
        const SizedBox(height: 10),

        ButtonOther(
          text: 'Continue with Facebook',
          icon: 'assets/Icon_img/facebook.png',
          onTap: null,
        ),
        const SizedBox(height: 10),

        ButtonOther(
          text: 'Continue with Apple',
          icon: 'assets/Icon_img/apple.png',
          onTap: null,
        ),
      ],
    );
  }
}

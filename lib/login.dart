import 'package:blue_crown/Signup.dart';
import 'package:blue_crown/bottombar.dart';
import 'package:blue_crown/methods/continermethod.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xFF141414),
                      fontSize: 34,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                  Text(
                    'Log in to continue.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF909090),
                      fontSize: 21,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  textFormMethod(
                      isPrefixIcon: Icon(Icons.mail_outline),
                      Controller: _emailController,
                      hintText: 'Email Address / Mobile number'),
                  SizedBox(
                    height: 15,
                  ),
                  textFormMethod(
                      isPrefixIcon: Icon(Icons.lock),
                      Controller: _passwordController,
                      hintText: 'Password',
                      isSuffixicon: true),
                  Text(
                    'Forgot your password?',
                    style: TextStyle(
                      color: Color(0xFF0D2243),
                      fontSize: 12,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      height: 4,
                    ),
                  ),
                  myContainer(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Color(0xFF909090),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                      },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xFF0D2243),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'OR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      height: 0.09,
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/img.png',
                          height: 20,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Sign In with Google',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5400000214576721),
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  )
                ]),
          ),
        ));
  }

  textFormMethod({
    required isPrefixIcon,
    required TextEditingController Controller,
    required String hintText,
    bool isSuffixicon = false,
    GestureTapCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 5),
      child: TextFormField(
        controller: Controller,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Color(0xFFACA3A5),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          prefixIcon: isPrefixIcon,
          suffixIcon: isSuffixicon
              ? GestureDetector(
                  onTap: onTap,
                  child: Image.asset(
                    'assets/images/Hide-Password.png',
                  ))
              : SizedBox(),
          hintText: hintText,
        ),
      ),
    );
  }
  Widget myContainer(context){
    return WidgetUtils.containerMethod(
        text:"Login",

        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BottomBarPage()));
          // Your onTap logic here
        });
  }

}

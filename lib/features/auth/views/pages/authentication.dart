import 'package:flutter/material.dart';
import 'package:melodify/core/theme/color_palette.dart';
import 'package:melodify/core/widgets/app_bar.dart';
import 'package:melodify/features/auth/views/pages/sign_in.dart';
import 'package:melodify/features/auth/views/pages/sign_up.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7),
                BlendMode.darken,
              ),
              child: Image.asset(
                'assets/images/authentication_background.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
            ),
          ),
          const CustomizedAppBar(isAuthPage: true),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/spotify_logo_white.png',
                height: 60,
              ),
              const SizedBox(height: 20),
              _DescriptionText(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(40),
                child: _AuthenticationButtons(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _AuthenticationButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => SignUpPage(),
              ),
            );
          },
          child: const Text(
            'Sign up',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        OutlinedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/google_icon.png',
                height: 20,
              ),
              const SizedBox(width: 12),
              const Text(
                'Continue with Google',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => SignInPage(),
              ),
            );
          },
          child: const Text(
            'Log in',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}

class _DescriptionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        text: 'Countless songs.\n Now on ',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Melodify.',
            style: TextStyle(
              color: ColorPalette.primary,
            ),
          ),
        ],
      ),
    );
  }
}

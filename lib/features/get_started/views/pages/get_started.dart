import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melodify/core/helpers/current_theme.dart';
import 'package:melodify/core/theme/color_palette.dart';
import 'package:melodify/features/auth/views/pages/authentication.dart';
import 'package:melodify/features/get_started/bloc/theme_cubit.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.8),
                BlendMode.darken,
              ),
              child: Image.asset(
                'assets/images/get_started_background.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 70,
              horizontal: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/spotify_full_logo.png',
                  height: 60,
                ),
                const Spacer(),
                _DescriptionText(),
                const SizedBox(height: 10),
                Text(
                  'Which one do you prefer?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
                const SizedBox(height: 40),
                _ToggleThemeButtons(),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const AuthenticationPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ToggleThemeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Material(
                color: context.isDark
                    ? Colors.grey.withOpacity(0.5)
                    : Colors.grey.withOpacity(0.1),
                child: InkWell(
                  onTap: () =>
                      context.read<ThemeCubit>().toggleTheme(ThemeMode.dark),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      context.isDark
                          ? Icons.dark_mode
                          : Icons.dark_mode_outlined,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Dark Mode',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Material(
                color: !context.isDark
                    ? Colors.grey.withOpacity(0.5)
                    : Colors.grey.withOpacity(0.1),
                child: InkWell(
                  onTap: () =>
                      context.read<ThemeCubit>().toggleTheme(ThemeMode.light),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      !context.isDark
                          ? Icons.light_mode
                          : Icons.light_mode_outlined,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Light Mode',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ],
        ),
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
        text: 'Melodify - a ',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Spotify',
            style: TextStyle(
              color: ColorPalette.primary,
            ),
          ),
          TextSpan(
            text: ' redesigned one',
          ),
        ],
      ),
    );
  }
}

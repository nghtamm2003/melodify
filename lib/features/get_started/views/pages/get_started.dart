import 'package:flutter/material.dart';
import 'package:melodify/core/theme/color_palette.dart';

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
              horizontal: 30,
              vertical: 70,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/spotify_full_logo.png',
                  height: 60,
                ),
                const Spacer(),
                RichText(
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
                ),
                const SizedBox(height: 10),
                const Text(
                  'Which one do you prefer?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.grey.withOpacity(0.5),
                            child: InkWell(
                              onTap: () {},
                              child: const SizedBox(
                                width: 50,
                                height: 50,
                                child: Icon(
                                  Icons.dark_mode_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Dark Mode',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.grey.withOpacity(0.5),
                            child: InkWell(
                              onTap: () {},
                              child: const SizedBox(
                                width: 50,
                                height: 50,
                                child: Icon(
                                  Icons.light_mode_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Light Mode',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 0,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
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

import 'package:dndapp/color_scheme.dart';
import 'package:dndapp/controllers/profile_page_controller.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ProfilePageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ProfilePageController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color(alternateColor),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(alternateColor),
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset(
                            'images/profile-picture.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _controller.user?.displayName as String,
                            style: const TextStyle(
                              fontSize: 26,
                              color: Color(primaryTextColor),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Outfit',
                              letterSpacing: 0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                            child: Text(
                              _controller.user?.email as String,
                              style: const TextStyle(
                                color: Color(secondaryTextColor),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.06,
                    width: MediaQuery.sizeOf(context).width * 0.65,
                    child: FilledButton(
                      onPressed: () {
                        _controller.logout(context);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.5);
                            }
                            return const Color(
                                0xFFC7363B); // Use the component's default.
                          },
                        ),
                      ),
                      child: const Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Text('Sair',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0,
                              ))),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../controllers/login_page_controller.dart';
import '../color_scheme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  //final GoogleSignIn _googleSignIn = GoogleSignIn();
  late LoginPageController _controller;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = LoginPageController();
    _controller.initState(context);
    _controller.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _controller.emailLoginTextFieldController ??= TextEditingController();

    _controller.passwordLoginTextFieldController ??= TextEditingController();

    _controller.usernameCreateTextFieldController ??= TextEditingController();

    _controller.emailCreateTextFieldController ??= TextEditingController();

    _controller.passwordCreateTextFieldController ??= TextEditingController();

    _controller.passwordConfirmTextFieldController ??= TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Container(
              width: 100,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              alignment: const AlignmentDirectional(0, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                      child: Container(
                        width: double.infinity,
                        constraints: const BoxConstraints(
                          maxWidth: 602,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        alignment: const AlignmentDirectional(-1, 0),
                        child: const Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                child: Text(
                                  'Dungeons and Dragons',
                                  style: TextStyle(
                                    color: Color(primaryTextColor),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 30,
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 700,
                      constraints: const BoxConstraints(
                        maxWidth: 602,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        child: Column(
                          children: [
                            Align(
                              alignment: const Alignment(-1, 0),
                              child: TabBar(
                                isScrollable: true,
                                labelColor: const Color(primaryTextColor),
                                unselectedLabelColor:
                                    const Color(primaryTextColor),
                                labelPadding:
                                    const EdgeInsets.only(left: 16, right: 12),
                                labelStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0,
                                ),
                                unselectedLabelStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0,
                                ),
                                indicatorColor: Colors.deepPurple,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 12, 16, 12),
                                tabs: const [
                                  Tab(
                                    text: 'Entrar',
                                  ),
                                  Tab(
                                    text: 'Cadastrar',
                                  ),
                                ],
                                controller: _controller.tabBarController,
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _controller.tabBarController,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              12, 0, 12, 12),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 16, 0, 24),
                                            child: Text(
                                              'Comece preenchendo os campos.',
                                              style: TextStyle(
                                                color:
                                                    Color(secondaryTextColor),
                                                fontSize: 14,
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          Form(
                                            key: formKey,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 16),
                                                  child: TextFormField(
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    controller: _controller
                                                        .emailLoginTextFieldController,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Email',
                                                      labelStyle:
                                                          const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Color(
                                                            primaryTextColor),
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0,
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Color(
                                                              alternateColor),
                                                          width: 2,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Color(
                                                              primaryTextColor),
                                                          width: 2,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color:
                                                              Color(errorColor),
                                                          width: 2,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color:
                                                              Color(errorColor),
                                                          width: 2,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                      contentPadding:
                                                          const EdgeInsets.all(
                                                              24),
                                                    ),
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0,
                                                    ),
                                                    validator: _controller
                                                        .emailLoginTextFieldValidator,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 16),
                                                  child: TextFormField(
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    controller: _controller
                                                        .passwordLoginTextFieldController,
                                                    autofocus: false,
                                                    obscureText: !_controller
                                                        .passwordLoginTextFieldVisibility,
                                                    decoration: InputDecoration(
                                                      labelText: 'Senha',
                                                      labelStyle:
                                                          const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0,
                                                      ),
                                                      hintStyle:
                                                          const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0,
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Color(
                                                              alternateColor),
                                                          width: 2,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Color(
                                                              primaryTextColor),
                                                          width: 2,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color:
                                                              Color(errorColor),
                                                          width: 2,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color:
                                                              Color(errorColor),
                                                          width: 2,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                      contentPadding:
                                                          const EdgeInsets.all(
                                                              24),
                                                      suffixIcon: InkWell(
                                                        onTap: () => setState(
                                                          () => _controller
                                                                  .passwordLoginTextFieldVisibility =
                                                              !_controller
                                                                  .passwordLoginTextFieldVisibility,
                                                        ),
                                                        focusNode: FocusNode(
                                                            skipTraversal:
                                                                true),
                                                        child: Icon(
                                                          _controller.passwordLoginTextFieldVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          color: const Color(
                                                              secondaryTextColor),
                                                          size: 24,
                                                        ),
                                                      ),
                                                    ),
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(
                                                          primaryTextColor),
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0,
                                                    ),
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    validator: _controller
                                                        .passwordLoginTextFieldValidator,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            0, 0, 0, 16),
                                                    child: SizedBox(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.07,
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.65,
                                                      child: FilledButton(
                                                        onPressed: () {
                                                          _controller
                                                              .signin(context);
                                                        },
                                                        style: ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStateProperty
                                                                  .resolveWith<
                                                                      Color?>(
                                                            (Set<MaterialState>
                                                                states) {
                                                              if (states.contains(
                                                                  MaterialState
                                                                      .pressed)) {
                                                                return Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .primary
                                                                    .withOpacity(
                                                                        0.5);
                                                              }
                                                              return const Color(
                                                                  0xFFC7363B); // Use the component's default.
                                                            },
                                                          ),
                                                        ),
                                                        child: const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    16),
                                                            child: Text(
                                                                'Entrar',
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0,
                                                                ))),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0, 0),
                                                  child: SizedBox(
                                                    height: 40,
                                                    child: TextButton(
                                                      onPressed: () {
                                                        debugPrint(
                                                            'forgotPasswordButton pressed ...');
                                                      },
                                                      child: const Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(24, 0,
                                                                    24, 0),
                                                        child: Text(
                                                          'Esqueci minha senha',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  primaryTextColor)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                1, 12, 0, 24),
                                                    child: Text(
                                                      'Ou entre com',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Color(
                                                            secondaryTextColor),
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0, 0),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      debugPrint(
                                                          'loginGoogleButton pressed ...');
                                                    },
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .resolveWith<
                                                                  Color?>(
                                                        (Set<MaterialState>
                                                            states) {
                                                          if (states.contains(
                                                              MaterialState
                                                                  .pressed)) {
                                                            return Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.5);
                                                          }
                                                          return Colors
                                                              .white; // Use the component's default.
                                                        },
                                                      ),
                                                    ),
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .all(16),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                              FontAwesomeIcons
                                                                  .google,
                                                              color: Colors
                                                                  .black87),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 20),
                                                            child: Text(
                                                              'Continuar com o Google',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      primaryTextColor),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 14),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              12, 0, 12, 12),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 16, 0, 24),
                                            child: Text(
                                              'Comece preenchendo os campos.',
                                              style: TextStyle(
                                                color:
                                                    Color(secondaryTextColor),
                                                fontSize: 14,
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0, 0, 0, 16),
                                            child: TextFormField(
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              controller: _controller
                                                  .usernameCreateTextFieldController,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Nome de usuário',
                                                labelStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0,
                                                ),
                                                hintStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color:
                                                        Color(alternateColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color:
                                                        Color(primaryTextColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(errorColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(errorColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.all(24),
                                              ),
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(primaryTextColor),
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0,
                                              ),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              validator: _controller
                                                  .usernameCreateTextFieldValidator,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0, 0, 0, 16),
                                            child: TextFormField(
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              controller: _controller
                                                  .emailCreateTextFieldController,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Email',
                                                labelStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      Color(secondaryTextColor),
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0,
                                                ),
                                                hintStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      Color(secondaryTextColor),
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color:
                                                        Color(alternateColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color:
                                                        Color(primaryTextColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(errorColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(errorColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.all(24),
                                              ),
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(primaryTextColor),
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0,
                                              ),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              validator: _controller
                                                  .emailCreateTextFieldValidator,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0, 0, 0, 16),
                                            child: TextFormField(
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              controller: _controller
                                                  .passwordCreateTextFieldController,
                                              autofocus: false,
                                              obscureText: !_controller
                                                  .passwordCreateTextFieldVisibility,
                                              decoration: InputDecoration(
                                                labelText: 'Senha',
                                                labelStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      Color(secondaryTextColor),
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0,
                                                ),
                                                hintStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      Color(secondaryTextColor),
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color:
                                                        Color(alternateColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color:
                                                        Color(primaryTextColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(errorColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(errorColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.all(24),
                                                suffixIcon: InkWell(
                                                  onTap: () => setState(
                                                    () => _controller
                                                            .passwordCreateTextFieldVisibility =
                                                        !_controller
                                                            .passwordCreateTextFieldVisibility,
                                                  ),
                                                  focusNode: FocusNode(
                                                      skipTraversal: true),
                                                  child: Icon(
                                                    _controller.passwordCreateTextFieldVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    color: const Color(
                                                        secondaryTextColor),
                                                    size: 24,
                                                  ),
                                                ),
                                              ),
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(primaryTextColor),
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0,
                                              ),
                                              validator: _controller
                                                  .passwordCreateTextFieldValidator,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0, 0, 0, 16),
                                            child: TextFormField(
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              controller: _controller
                                                  .passwordConfirmTextFieldController,
                                              autofocus: false,
                                              obscureText: !_controller
                                                  .passwordConfirmTextFieldVisibility,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Confirmação de senha',
                                                labelStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      Color(secondaryTextColor),
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0,
                                                ),
                                                hintStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      Color(secondaryTextColor),
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color:
                                                        Color(alternateColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color:
                                                        Color(primaryTextColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(errorColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(errorColor),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.all(24),
                                                suffixIcon: InkWell(
                                                  onTap: () => setState(
                                                    () => _controller
                                                            .passwordConfirmTextFieldVisibility =
                                                        !_controller
                                                            .passwordConfirmTextFieldVisibility,
                                                  ),
                                                  focusNode: FocusNode(
                                                      skipTraversal: true),
                                                  child: Icon(
                                                    _controller.passwordConfirmTextFieldVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    color: const Color(
                                                        secondaryTextColor),
                                                    size: 24,
                                                  ),
                                                ),
                                              ),
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(primaryTextColor),
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0,
                                              ),
                                              validator: _controller
                                                  .passwordConfirmTextFieldValidator,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0, 0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 16),
                                              child: SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.65,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.07,
                                                child: FilledButton(
                                                  onPressed: () {
                                                    _controller.signup(context);
                                                  },
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .resolveWith<
                                                                Color?>(
                                                      (Set<MaterialState>
                                                          states) {
                                                        if (states.contains(
                                                            MaterialState
                                                                .pressed)) {
                                                          return Theme.of(
                                                                  context)
                                                              .colorScheme
                                                              .primary
                                                              .withOpacity(0.5);
                                                        }
                                                        return const Color(
                                                            0xFFC7363B); // Use the component's default.
                                                      },
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    'Cadastrar-se',
                                                    style: TextStyle(
                                                      fontFamily: 'Readex Pro',
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                      letterSpacing: 0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(1, 12, 0, 24),
                                              child: Text(
                                                'Ou cadastre-se com',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color:
                                                      Color(secondaryTextColor),
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0, 0),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                debugPrint(
                                                    'loginGoogleButton pressed ...');
                                              },
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty
                                                        .resolveWith<Color?>(
                                                  (Set<MaterialState> states) {
                                                    if (states.contains(
                                                        MaterialState
                                                            .pressed)) {
                                                      return Theme.of(context)
                                                          .colorScheme
                                                          .primary
                                                          .withOpacity(0.5);
                                                    }
                                                    return Colors
                                                        .white; // Use the component's default.
                                                  },
                                                ),
                                              ),
                                              child: const Padding(
                                                padding:
                                                    EdgeInsetsDirectional.all(
                                                        16),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                        FontAwesomeIcons.google,
                                                        color: Colors.black87),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 20),
                                                      child: Text(
                                                        'Continuar com o Google',
                                                        style: TextStyle(
                                                            color: Color(
                                                                primaryTextColor),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

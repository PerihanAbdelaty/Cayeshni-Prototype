import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'complete_profile_model.dart';
export 'complete_profile_model.dart';

import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';


class CompleteProfileWidget extends StatefulWidget {
  const CompleteProfileWidget({super.key});

  @override
  State<CompleteProfileWidget> createState() => _CompleteProfileWidgetState();
}

class _CompleteProfileWidgetState extends State<CompleteProfileWidget>
    with TickerProviderStateMixin {
  late CompleteProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompleteProfileModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 40.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.safePop();
          },
          child: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).primary,
            size: 32.0,
          ),
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            '9o9kjhty' /* Complete Profile */,
          ),
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Outfit',
                letterSpacing: 0.0,
              ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: const BoxDecoration(),
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/620/600',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'r6npjsue' /* Upload a photo for us to easil... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
                // Padding(
                //   padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                //   child: FFButtonWidget(
                //     onPressed: () {
                //       print('idFrontUpolad pressed ...');
                //     },
                //     text: FFLocalizations.of(context).getText(
                //       'iyapwd4v' /* Upload ID Front */,
                //     ),
                //     options: FFButtonOptions(
                //       width: 350.0,
                //       height: 50.0,
                //       padding:
                //           const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                //       iconPadding:
                //           const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                //       color: FlutterFlowTheme.of(context).secondaryBackground,
                //       textStyle:
                //           FlutterFlowTheme.of(context).titleSmall.override(
                //                 fontFamily: 'Plus Jakarta Sans',
                //                 color: FlutterFlowTheme.of(context).primary,
                //                 letterSpacing: 0.0,
                //               ),
                //       elevation: 3.0,
                //       borderSide: BorderSide(
                //         color: FlutterFlowTheme.of(context).primary,
                //         width: 1.0,
                //       ),
                //       borderRadius: BorderRadius.circular(8.0),
                //     ),
                //   ).animateOnPageLoad(
                //       animationsMap['buttonOnPageLoadAnimation1']!),
                // ),
                
Padding(
  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
  child: FFButtonWidget(
    onPressed: () async {
      // Pick an image from the gallery or camera
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        // Save the image path locally using SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('user_image_front', image.path);

        // Optionally, provide feedback that the image was uploaded
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('ID Front uploaded successfully!')),
        );
      }
    },
    text: FFLocalizations.of(context).getText(
      'iyapwd4v' /* Upload ID Front */,
    ),
    options: FFButtonOptions(
      width: 350.0,
      height: 50.0,
      padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
      color: FlutterFlowTheme.of(context).secondaryBackground,
      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
            fontFamily: 'Plus Jakarta Sans',
            color: FlutterFlowTheme.of(context).primary,
            letterSpacing: 0.0,
          ),
      elevation: 3.0,
      borderSide: BorderSide(
        color: FlutterFlowTheme.of(context).primary,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
  ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation1']!),
),
                // Padding(
                //   padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                //   child: FFButtonWidget(
                //     onPressed: () {
                //       print('idBackUpolad pressed ...');
                //     },
                //     text: FFLocalizations.of(context).getText(
                //       '1tufxn8b' /* Upload ID Back */,
                //     ),
                //     options: FFButtonOptions(
                //       width: 350.0,
                //       height: 50.0,
                //       padding:
                //           const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                //       iconPadding:
                //           const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                //       color: FlutterFlowTheme.of(context).secondaryBackground,
                //       textStyle:
                //           FlutterFlowTheme.of(context).titleSmall.override(
                //                 fontFamily: 'Plus Jakarta Sans',
                //                 color: FlutterFlowTheme.of(context).primary,
                //                 letterSpacing: 0.0,
                //               ),
                //       elevation: 3.0,
                //       borderSide: BorderSide(
                //         color: FlutterFlowTheme.of(context).primary,
                //         width: 1.0,
                //       ),
                //       borderRadius: BorderRadius.circular(8.0),
                //     ),
                //   ).animateOnPageLoad(
                //       animationsMap['buttonOnPageLoadAnimation2']!),
                // ),

                Padding(
  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
  child: FFButtonWidget(
    onPressed: () async {
      // Pick an image from the gallery or camera
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        // Save the image path locally using SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('user_image_back', image.path);

        // Optionally, provide feedback that the image was uploaded
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('ID Back uploaded successfully!')),
        );
      }
    },
    text: FFLocalizations.of(context).getText(
      '1tufxn8b' /* Upload ID Front */,
    ),
    options: FFButtonOptions(
      width: 350.0,
      height: 50.0,
      padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
      color: FlutterFlowTheme.of(context).secondaryBackground,
      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
            fontFamily: 'Plus Jakarta Sans',
            color: FlutterFlowTheme.of(context).primary,
            letterSpacing: 0.0,
          ),
      elevation: 3.0,
      borderSide: BorderSide(
        color: FlutterFlowTheme.of(context).primary,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
  ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation1']!),
),

                // Padding(
                //   padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                //   child: FFButtonWidget(
                //     onPressed: () {
                //       print('servRecUpolad pressed ...');
                //     },
                //     text: FFLocalizations.of(context).getText(
                //       '6mr2se4f' /* Upload Services Receipt */,
                //     ),
                //     options: FFButtonOptions(
                //       width: 350.0,
                //       height: 50.0,
                //       padding:
                //           const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                //       iconPadding:
                //           const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                //       color: FlutterFlowTheme.of(context).secondaryBackground,
                //       textStyle:
                //           FlutterFlowTheme.of(context).titleSmall.override(
                //                 fontFamily: 'Plus Jakarta Sans',
                //                 color: FlutterFlowTheme.of(context).primary,
                //                 letterSpacing: 0.0,
                //               ),
                //       elevation: 3.0,
                //       borderSide: BorderSide(
                //         color: FlutterFlowTheme.of(context).primary,
                //         width: 1.0,
                //       ),
                //       borderRadius: BorderRadius.circular(8.0),
                //     ),
                //   ).animateOnPageLoad(
                //       animationsMap['buttonOnPageLoadAnimation3']!),
                // ),

                Padding(
  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
  child: FFButtonWidget(
    onPressed: () async {
      // Pick an image from the gallery or camera
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        // Save the image path locally using SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('user_image_servrec', image.path);

        // Optionally, provide feedback that the image was uploaded
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Services Receipt uploaded successfully!')),
        );
      }
    },
    text: FFLocalizations.of(context).getText(
      '6mr2se4f' /* Upload Services Receipt */,
    ),
    options: FFButtonOptions(
      width: 350.0,
      height: 50.0,
      padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
      color: FlutterFlowTheme.of(context).secondaryBackground,
      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
            fontFamily: 'Plus Jakarta Sans',
            color: FlutterFlowTheme.of(context).primary,
            letterSpacing: 0.0,
          ),
      elevation: 3.0,
      borderSide: BorderSide(
        color: FlutterFlowTheme.of(context).primary,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
  ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation1']!),
),
                
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.goNamed(
                        'paymentPlan_new',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                          ),
                        },
                      );
                    },
                    text: FFLocalizations.of(context).getText(
                      'hbhd3bdt' /* Complete Profile */,
                    ),
                    options: FFButtonOptions(
                      width: 230.0,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['buttonOnPageLoadAnimation4']!),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

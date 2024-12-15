import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'terms_of_sevice_model.dart';
export 'terms_of_sevice_model.dart';

class TermsOfSeviceWidget extends StatefulWidget {
  const TermsOfSeviceWidget({super.key});

  @override
  State<TermsOfSeviceWidget> createState() => _TermsOfSeviceWidgetState();
}

class _TermsOfSeviceWidgetState extends State<TermsOfSeviceWidget> {
  late TermsOfSeviceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsOfSeviceModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Terms_of_sevice'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 5.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 6.0,
              buttonSize: 16.0,
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                logFirebaseEvent('TERMS_OF_SEVICE_arrow_back_ICN_ON_TAP');
                logFirebaseEvent('IconButton_navigate_to');

                context.pushNamed('Settings');
              },
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(-0.3, 0.0),
            child: Text(
              'Terms of sevice',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Maruburi',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 650.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Text(
                      'Terms of Service\n1. Acceptance of Terms\nWelcome to [Your App Name]. By accessing or using our service, you agree to be bound by these Terms of Service, including any additional guidelines and future modifications. If you do not agree to these terms, please refrain from using our service.\n\n2. Description of Service\n[Your App Name] is a social networking platform designed for university students to connect, share, and collaborate. The service provides features such as posting content, interacting with others, and accessing university-specific resources.\n\n3. Eligibility\nYou must be a current university student or recent graduate to use this service. By using [Your App Name], you confirm that you meet this eligibility requirement. We reserve the right to verify your eligibility status at any time and may suspend or terminate access if eligibility requirements are not met.\n\n4. Account Security\nYou are responsible for maintaining the confidentiality of your account information, including your username and password. You agree to notify us immediately of any unauthorized use of your account or any other security breaches. We are not liable for any loss or damage arising from your failure to comply with this security obligation.\n\n5. User Conduct\nYou agree to use [Your App Name] responsibly and ethically. Prohibited actions include, but are not limited to:\n\nPosting offensive, discriminatory, or harmful content\nSharing or distributing false information or spam\nHarassing, bullying, or intimidating other users\nImpersonating others or misrepresenting your identity\nEngaging in any unlawful activities\n6. Content Ownership and Rights\nBy posting content on [Your App Name], you grant us a non-exclusive, royalty-free, worldwide license to use, display, and distribute your content on our platform. You retain all ownership rights to your content and are solely responsible for the content you post.\n\n7. Privacy Policy\nYour privacy is important to us. Please review our Privacy Policy to understand how we collect, use, and protect your personal information.\n\n8. Termination\nWe reserve the right to suspend or terminate your access to [Your App Name] at our discretion, without prior notice, if you violate these terms or engage in actions detrimental to the community or platform.\n\n9. Limitation of Liability\n[Your App Name] is provided \"as is\" and \"as available,\" and we make no warranties or representations regarding the service\'s functionality or content. We are not liable for any direct, indirect, incidental, or consequential damages arising from your use of the service.\n\n10. Modifications to the Terms\nWe may revise these Terms of Service at any time. If we make material changes, we will notify you through the service or via email. Continued use of [Your App Name] after changes become effective constitutes acceptance of the revised terms.\n\n11. Contact Information\nIf you have questions or concerns regarding these terms, please contact us at [contact email or support link].\n',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Roboto',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

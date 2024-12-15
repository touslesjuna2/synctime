import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'community_rules_model.dart';
export 'community_rules_model.dart';

class CommunityRulesWidget extends StatefulWidget {
  const CommunityRulesWidget({super.key});

  @override
  State<CommunityRulesWidget> createState() => _CommunityRulesWidgetState();
}

class _CommunityRulesWidgetState extends State<CommunityRulesWidget> {
  late CommunityRulesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommunityRulesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Community_Rules'});
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
                logFirebaseEvent('COMMUNITY_RULES_arrow_back_ICN_ON_TAP');
                logFirebaseEvent('IconButton_navigate_to');

                context.pushNamed('Settings');
              },
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(-0.3, 0.0),
            child: Text(
              'Community rules',
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
              Column(
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
                          'Community Rules\n1. Respect for All Members\nWe are a diverse community of students, and we expect all users to treat each other with respect and kindness. Discrimination, harassment, hate speech, or abusive behavior of any kind will not be tolerated. This includes, but is not limited to, language or behavior that targets individuals or groups based on race, gender, sexual orientation, religion, ethnicity, or disability.\n\n2. No Bullying or Harassment\nAny form of bullying, intimidation, or harassment is strictly prohibited. This includes targeting users with offensive messages, stalking, threats, or attempts to publicly humiliate others. We are committed to creating a supportive community, and any reports of harassment will be taken seriously.\n\n3. Academic Integrity\nPlagiarism, cheating, or any behavior that compromises academic integrity is not allowed. This community is a place to collaborate and learn, but sharing test answers, assignments, or other academic work inappropriately is prohibited.\n\n4. No Inappropriate Content\nContent that is sexually explicit, violent, or otherwise inappropriate for a university community is not permitted. This includes images, videos, or discussions that are intended to shock or offend. Violators will be warned, and repeated offenses may result in account suspension.\n\n5. No Spam or Self-Promotion\nAvoid spamming the community with repetitive posts, irrelevant links, or self-promotion. While we encourage students to share their work or initiatives, excessive self-promotion and irrelevant advertising will be removed. If you wish to promote an event or initiative, please use designated channels or seek approval from the admins.\n\n6. Be Supportive and Constructive\nThis is a community built for learning, sharing, and support. When giving feedback, be constructive and polite. If you disagree with someone, please express it respectfully and focus on facts rather than personal attacks.\n\n7. Privacy Respect\nDo not share personal information about yourself or others without permission. This includes phone numbers, addresses, personal emails, or any sensitive information. Respect the privacy of other users and do not take screenshots or share private conversations without consent.\n\n8. No Impersonation or False Information\nDo not impersonate other users, professors, or any university staff. Additionally, do not spread false information or rumors. Providing misleading information disrupts trust within the community and can lead to severe consequences.\n\n9. Report Issues Responsibly\nIf you see content that violates these rules, please report it to the admin team. However, please use the report feature responsibly. False reporting to target other users is not allowed and may lead to penalties.\n\n10. Consequences of Violations\nBreaking any of these rules may lead to temporary or permanent suspension from the app, depending on the severity of the violation. We aim to create a positive space, and we reserve the right to take appropriate actions to maintain a healthy community.\n\n11. Seek Help if Needed\nIf you’re struggling with mental health, academic stress, or personal challenges, remember that this community is here to support you. Reach out to available resources or talk to someone you trust. This is a judgment-free zone, and we encourage an open and supportive environment.\n\n12. Updates to Community Rules\nThese rules may be updated from time to time to ensure the best experience for everyone. We will notify users of major changes, and continued use of the app implies acceptance of any updates.\n',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ja'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? jaText = '',
  }) =>
      [enText, jaText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // MainPage
  {
    'gpz7tgva': {
      'en': 'Cambridge University',
      'ja': '',
    },
    'iz0e2sxq': {
      'en': 'School Infomation',
      'ja': '',
    },
    'qzry6jr3': {
      'en': '학사정보',
      'ja': '',
    },
    'w5rdo8tv': {
      'en': '학사정보',
      'ja': '',
    },
    'codzigqz': {
      'en': '학사정보',
      'ja': '',
    },
    'kqqw2w58': {
      'en': '학사정보',
      'ja': '',
    },
    '6r4y71ay': {
      'en': '학사정보',
      'ja': '',
    },
    'sxff3sy6': {
      'en': 'Favorite Board',
      'ja': '',
    },
    '8nwjjmr4': {
      'en': 'More >',
      'ja': '',
    },
    'gslw2iya': {
      'en': 'Category Name',
      'ja': '',
    },
    'c5nz18n3': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Timeblock
  {
    'j6q4ru7g': {
      'en': 'Timeblock',
      'ja': '',
    },
    '7kk5ymx0': {
      'en': '1학년 1학기',
      'ja': '',
    },
    '734xz7gr': {
      'en': '시간표 이상헌',
      'ja': '',
    },
    'k0rck2lu': {
      'en': 'Timeblock',
      'ja': '',
    },
  },
  // BoardList
  {
    'mwcd354r': {
      'en': '게시판',
      'ja': '',
    },
    'aj4hvfgd': {
      'en': '내가 쓴 글',
      'ja': '',
    },
    'it9wvyrh': {
      'en': '댓글 단 글 ',
      'ja': '',
    },
    'xu4wf07x': {
      'en': '스크랩',
      'ja': '',
    },
    '6ezrzc8r': {
      'en': 'HOT 게시판',
      'ja': '',
    },
    'vnlwny8q': {
      'en': 'BEST 게시판',
      'ja': '',
    },
    'blhjwo9v': {
      'en': 'Pinned',
      'ja': '',
    },
    'tdhuld82': {
      'en': '자유 게시판',
      'ja': '',
    },
    'uwffehri': {
      'en': '비밀 게시판',
      'ja': '',
    },
    'gz238ypk': {
      'en': '졸업생 게시판',
      'ja': '',
    },
    'g60nyksc': {
      'en': '새내기 게시판',
      'ja': '',
    },
    '2r5qhhw3': {
      'en': '교내 정보 게시판',
      'ja': '',
    },
    '4ii4k9e5': {
      'en': '교외 정보 게시판',
      'ja': '',
    },
    'e6w9xkfu': {
      'en': 'Special',
      'ja': '',
    },
    'thsnxdjn': {
      'en': '강의 평가',
      'ja': '',
    },
    '1zncswni': {
      'en': '장터 게시판',
      'ja': '',
    },
    'qyhioxf1': {
      'en': '토론 게시판',
      'ja': '',
    },
    '2kcj9xgx': {
      'en': 'All',
      'ja': '',
    },
    'jhho0rvp': {
      'en': '다른 게시판을 검색해보세요',
      'ja': '',
    },
    '4huey9lg': {
      'en': 'Board',
      'ja': '',
    },
  },
  // Settings
  {
    'bcpeimrb': {
      'en': 'Settings',
      'ja': '',
    },
    'izqbjtol': {
      'en': 'Nickname',
      'ja': '',
    },
    'ab840m0l': {
      'en': 'Realname',
      'ja': '',
    },
    'ezzujbtc': {
      'en': 'aaaaaaa University',
      'ja': '',
    },
    '2ttday5f': {
      'en': 'Dept. of Philosophy',
      'ja': '',
    },
    '5vn1z7i0': {
      'en': 'Account',
      'ja': '',
    },
    'pj7kbbdf': {
      'en': 'User ID',
      'ja': '',
    },
    'a6p7zbe0': {
      'en': '',
      'ja': '',
    },
    'las9hpei': {
      'en': 'Department settings',
      'ja': '',
    },
    'egakj9dc': {
      'en': 'Change password',
      'ja': '',
    },
    'jpr7rm7o': {
      'en': 'Change email',
      'ja': '',
    },
    '0lxh9aeb': {
      'en': 'Community',
      'ja': '',
    },
    '17885lad': {
      'en': 'Change nickname',
      'ja': '',
    },
    'le5vewr3': {
      'en': 'Change profile image',
      'ja': '',
    },
    'w4ysbp6k': {
      'en': 'Restriction history',
      'ja': '',
    },
    'c9t4nxtl': {
      'en': 'Keywords of Interest Settings',
      'ja': '',
    },
    'n7nu5ezn': {
      'en': 'Community rules',
      'ja': '',
    },
    'kxogdqwh': {
      'en': 'Application',
      'ja': '',
    },
    'xc487yxz': {
      'en': 'Dark mode',
      'ja': '',
    },
    'ott79dx1': {
      'en': 'Notification settings',
      'ja': '',
    },
    '1433t2gk': {
      'en': 'Passcode lock',
      'ja': '',
    },
    'jvp58h27': {
      'en': 'Clear cache data',
      'ja': '',
    },
    'sppk60u5': {
      'en': 'Support',
      'ja': '',
    },
    '7gepmhaa': {
      'en': 'App version',
      'ja': '',
    },
    'hxkkbpqs': {
      'en': '1.0',
      'ja': '',
    },
    'rs48d42b': {
      'en': 'FAQ',
      'ja': '',
    },
    'k8q2xrg7': {
      'en': 'Notice',
      'ja': '',
    },
    'g2w2nc7y': {
      'en': 'Terms of Service',
      'ja': '',
    },
    'hkp9y5mm': {
      'en': 'Privacy policy',
      'ja': '',
    },
    '8dwi96bm': {
      'en': 'Youth Protection Policy',
      'ja': '',
    },
    'yx0ogxdx': {
      'en': 'Etc',
      'ja': '',
    },
    'gz46osuo': {
      'en': 'Agreement settings',
      'ja': '',
    },
    'om4czh79': {
      'en': 'Delete account',
      'ja': '',
    },
    'qm86xv8e': {
      'en': 'Logout',
      'ja': '',
    },
    'o4f9fbj4': {
      'en': 'Settings',
      'ja': '',
    },
  },
  // Webviewex
  {
    'tr8pqarg': {
      'en': 'Home',
      'ja': '',
    },
  },
  // ChangePassword
  {
    '9c2xakme': {
      'en': 'Change password',
      'ja': '',
    },
    'whfth9wg': {
      'en': 'New password',
      'ja': '',
    },
    'bijlbkjl': {
      'en': ' 8-20 characters',
      'ja': '',
    },
    'nq6pt0xd': {
      'en': '',
      'ja': '',
    },
    '5wc4t145': {
      'en': 'New password',
      'ja': '',
    },
    '75s8y5x5': {
      'en': 'Confirm new password',
      'ja': '',
    },
    '33kb30aw': {
      'en': 'Current password',
      'ja': '',
    },
    'zeczmgzq': {
      'en': 'Current password',
      'ja': '',
    },
    'gxwr56xl': {
      'en': 'Change password',
      'ja': '',
    },
    '6ehvff06': {
      'en': 'Home',
      'ja': '',
    },
  },
  // ChangeEmail
  {
    'ly9tnkz9': {
      'en': 'Change email',
      'ja': '',
    },
    'xspp2a7e': {
      'en': 'Email',
      'ja': '',
    },
    'e70wwsux': {
      'en': '',
      'ja': '',
    },
    'bqv8dmlf': {
      'en': 'Account password',
      'ja': '',
    },
    '1a92ffyi': {
      'en': 'Current password',
      'ja': '',
    },
    'ei1loxp2': {
      'en': 'Change email',
      'ja': '',
    },
    'b6kgv6im': {
      'en': 'Home',
      'ja': '',
    },
  },
  // ChangeNickname
  {
    '1b1wu0ek': {
      'en': 'Change nickname',
      'ja': '',
    },
    'wuih1mzm': {
      'en': 'New nickname',
      'ja': '',
    },
    'x5ix9dez': {
      'en': 'Nickname',
      'ja': '',
    },
    'ko3xuquc': {
      'en': '\"Once set, the nickname cannot be changed for 30 days.\"\n',
      'ja': '',
    },
    'frza8wle': {
      'en': 'Change nickname',
      'ja': '',
    },
    '4sta7f3t': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Change_Profile_Image
  {
    'vfxs1rxt': {
      'en': 'Change profile image',
      'ja': '',
    },
    '5d5pd32l': {
      'en': 'Change Photo',
      'ja': '',
    },
    '5al6k25n': {
      'en':
          'Upload a new photo below in order to change your avatar seen by others.',
      'ja': '',
    },
    '5mjubcq4': {
      'en': 'Upload Image',
      'ja': '',
    },
    'xb6gngmz': {
      'en': 'Save Changes',
      'ja': '',
    },
    'a9146z0n': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Department_settings
  {
    'k7rp7o92': {
      'en': 'Department settings',
      'ja': '',
    },
    '8ztmvgr4': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Restriction_history
  {
    'y7990jfn': {
      'en': 'Restriction history',
      'ja': '',
    },
    'za417d4y': {
      'en': '(쿼리로 잡아야함)',
      'ja': '',
    },
    '632jjz8u': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Keywords_of_Interset
  {
    '2zo14wov': {
      'en': 'Keywords of interest settings',
      'ja': '',
    },
    'wbxwy18s': {
      'en': '(쿼리로 잡아야함)',
      'ja': '',
    },
    'ctgtvohy': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Community_Rules
  {
    'wu5h50m4': {
      'en': 'Community rules',
      'ja': '',
    },
    'qnonzc9d': {
      'en':
          'Community Rules\n1. Respect for All Members\nWe are a diverse community of students, and we expect all users to treat each other with respect and kindness. Discrimination, harassment, hate speech, or abusive behavior of any kind will not be tolerated. This includes, but is not limited to, language or behavior that targets individuals or groups based on race, gender, sexual orientation, religion, ethnicity, or disability.\n\n2. No Bullying or Harassment\nAny form of bullying, intimidation, or harassment is strictly prohibited. This includes targeting users with offensive messages, stalking, threats, or attempts to publicly humiliate others. We are committed to creating a supportive community, and any reports of harassment will be taken seriously.\n\n3. Academic Integrity\nPlagiarism, cheating, or any behavior that compromises academic integrity is not allowed. This community is a place to collaborate and learn, but sharing test answers, assignments, or other academic work inappropriately is prohibited.\n\n4. No Inappropriate Content\nContent that is sexually explicit, violent, or otherwise inappropriate for a university community is not permitted. This includes images, videos, or discussions that are intended to shock or offend. Violators will be warned, and repeated offenses may result in account suspension.\n\n5. No Spam or Self-Promotion\nAvoid spamming the community with repetitive posts, irrelevant links, or self-promotion. While we encourage students to share their work or initiatives, excessive self-promotion and irrelevant advertising will be removed. If you wish to promote an event or initiative, please use designated channels or seek approval from the admins.\n\n6. Be Supportive and Constructive\nThis is a community built for learning, sharing, and support. When giving feedback, be constructive and polite. If you disagree with someone, please express it respectfully and focus on facts rather than personal attacks.\n\n7. Privacy Respect\nDo not share personal information about yourself or others without permission. This includes phone numbers, addresses, personal emails, or any sensitive information. Respect the privacy of other users and do not take screenshots or share private conversations without consent.\n\n8. No Impersonation or False Information\nDo not impersonate other users, professors, or any university staff. Additionally, do not spread false information or rumors. Providing misleading information disrupts trust within the community and can lead to severe consequences.\n\n9. Report Issues Responsibly\nIf you see content that violates these rules, please report it to the admin team. However, please use the report feature responsibly. False reporting to target other users is not allowed and may lead to penalties.\n\n10. Consequences of Violations\nBreaking any of these rules may lead to temporary or permanent suspension from the app, depending on the severity of the violation. We aim to create a positive space, and we reserve the right to take appropriate actions to maintain a healthy community.\n\n11. Seek Help if Needed\nIf you’re struggling with mental health, academic stress, or personal challenges, remember that this community is here to support you. Reach out to available resources or talk to someone you trust. This is a judgment-free zone, and we encourage an open and supportive environment.\n\n12. Updates to Community Rules\nThese rules may be updated from time to time to ensure the best experience for everyone. We will notify users of major changes, and continued use of the app implies acceptance of any updates.\n',
      'ja': '',
    },
    '32xfq3c6': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Timeblock_list
  {
    '1l0ohjd6': {
      'en': '(쿼리로 잡아야함)',
      'ja': '',
    },
    'xh2jpk66': {
      'en': '(쿼리로 잡아야함)',
      'ja': '',
    },
    'obtg4ae1': {
      'en': '(쿼리로 잡아야함)',
      'ja': '',
    },
    '6ghngk8h': {
      'en': '(쿼리로 잡아야함)',
      'ja': '',
    },
    '0mk7vsgn': {
      'en': '(쿼리로 잡아야함)',
      'ja': '',
    },
    't020e6ms': {
      'en': '(쿼리로 잡아야함)',
      'ja': '',
    },
    'iunmaql2': {
      'en': '(쿼리로 잡아야함)',
      'ja': '',
    },
    '9pjx2t6a': {
      'en': 'Timetable List',
      'ja': '',
    },
    'gcbfe1sf': {
      'en': 'Home',
      'ja': '',
    },
  },
  // a_Select_School
  {
    'dba2j2zp': {
      'en': '어느학교이신가요?',
      'ja': '',
    },
    'sc11p7wi': {
      'en': 'Option 1',
      'ja': '',
    },
    'fa00yam0': {
      'en': 'Option 2',
      'ja': '',
    },
    'ncnbskot': {
      'en': 'Option 3',
      'ja': '',
    },
    'jgp4ikb2': {
      'en': 'Country',
      'ja': '',
    },
    '08emmefy': {
      'en': 'Search...',
      'ja': '',
    },
    'q9bjsxyi': {
      'en': 'Option 1',
      'ja': '',
    },
    'b1u3esg7': {
      'en': 'Option 2',
      'ja': '',
    },
    'uxi0nugz': {
      'en': 'Option 3',
      'ja': '',
    },
    'pc3n2fql': {
      'en': 'University',
      'ja': '',
    },
    '8ww3v09w': {
      'en': 'Search...',
      'ja': '',
    },
    '63g3p75a': {
      'en': 'Start',
      'ja': '',
    },
    'ktioq65d': {
      'en': 'Home',
      'ja': '',
    },
  },
  // c_Verification_select
  {
    'goj4fg1q': {
      'en': '인증 절차를 진행함.',
      'ja': '',
    },
    'v8hk0byc': {
      'en': 'School Mail\n(immediate)',
      'ja': '',
    },
    'wa4jkj68': {
      'en': 'certificate\n(a few days)',
      'ja': '',
    },
    'ktwgyoxc': {
      'en': 'Home',
      'ja': '',
    },
  },
  // a_Forgot_Password
  {
    'jsic2ilp': {
      'en': 'Everytime',
      'ja': '',
    },
    'cd807y04': {
      'en': 'Forgot Password',
      'ja': '',
    },
    '6292dokx': {
      'en': 'Please fill ~~',
      'ja': '',
    },
    'q12x4v2n': {
      'en': 'Email',
      'ja': '',
    },
    'bknfrbwo': {
      'en': 'verification number',
      'ja': '',
    },
    'jqzbb7nq': {
      'en': 'Verify',
      'ja': '',
    },
    'jdjkxq8m': {
      'en': 'next',
      'ja': '',
    },
    'vidhexdi': {
      'en': 'Home',
      'ja': '',
    },
  },
  // b_Make_New_Password
  {
    '1d22ejnh': {
      'en': 'Everytime',
      'ja': '',
    },
    '6dlecz4x': {
      'en': 'Change your Password',
      'ja': '',
    },
    'i2lcwnyu': {
      'en': '새 비밀번호',
      'ja': '',
    },
    'h2lxupny': {
      'en': '새 비밀번호 확인',
      'ja': '',
    },
    'yvlxglnv': {
      'en':
          'Confirm  // 이메일과 변경된 비밀번호를 동시에 보내줘야함. 이메일>로컬 \n(이메일이 캐시인 캐시파일을  서버에서 동적으로 보관. )',
      'ja': '',
    },
    '0snywaxs': {
      'en': 'Home',
      'ja': '',
    },
  },
  // c_complete
  {
    'r6wmoxoi': {
      'en': 'Everytime',
      'ja': '',
    },
    'jrqgisoh': {
      'en': 'Your password\nis changed!',
      'ja': '',
    },
    'jfcyyty7': {
      'en': 'Start!',
      'ja': '',
    },
    '7a4mt48e': {
      'en': 'Home',
      'ja': '',
    },
  },
  // d1_Email_school
  {
    '11v1gnlc': {
      'en': '인증 절차를 진행함.',
      'ja': '',
    },
    'swliuad6': {
      'en': 'School Mail\n(immediate)',
      'ja': '',
    },
    'apoobyx5': {
      'en': '학교 이메일을 통한 인증절차를 진행할게요',
      'ja': '',
    },
    'c73wiap5': {
      'en': 'Email',
      'ja': '',
    },
    'wd1494o6': {
      'en': 'verification number',
      'ja': '',
    },
    'msgi97zf': {
      'en': 'Verify',
      'ja': '',
    },
    '07k729ae': {
      'en': '5분 안에 입력하셔야 합니다.',
      'ja': '',
    },
    'zjewwhuz': {
      'en': 'Next',
      'ja': '',
    },
    'r3xmzfks': {
      'en': '임시 학교 번호 표',
      'ja': '',
    },
    '9hry9tbl': {
      'en': 'Home',
      'ja': '',
    },
  },
  // d2_Certificate
  {
    'ckplg8ao': {
      'en': '인증 절차를 진행함.',
      'ja': '',
    },
    '98ksxczf': {
      'en': 'certificate\n(a few days)',
      'ja': '',
    },
    'vane8193': {
      'en':
          '내부 직원이 직접 첨부된 파일을 기준으로 학교 구성원 여부를 심사합니다\n*~~은 확인 후 관련 서류 파기를 원칙으로 하며 철저한 익명성 원칙을 고수합니다.',
      'ja': '',
    },
    'gofvbqub': {
      'en': 'File_upload',
      'ja': '',
    },
    'vqjta3bm': {
      'en': '예시: 졸업장, 재학증명서, 휴학증명서 등 \n파일형식: jpg, jpeg, png, pdf',
      'ja': '',
    },
    '0pihbhdx': {
      'en': 'next',
      'ja': '',
    },
    'tcktrqsk': {
      'en': 'Home',
      'ja': '',
    },
  },
  // e1_Verification_complete
  {
    'jmac7vl8': {
      'en': 'Verified!',
      'ja': '',
    },
    'bwzjr8t4': {
      'en': '당신의 계정이 본교 재학생임이 확인되었습니다.\n귀하의 프로필과 설정을 지정해주세요!',
      'ja': '',
    },
    'wz8alxlp': {
      'en': 'next',
      'ja': '',
    },
    'xfjh9rxo': {
      'en': 'Home',
      'ja': '',
    },
  },
  // e2_Verification_Progress
  {
    '5uhwe437': {
      'en': 'Verifing...',
      'ja': '',
    },
    'eobu10e4': {
      'en': '귀하의 계정은 본교재학생인지 확인중에 있습니다.\n1~2영업일 내에 가급적 빠른 시일내에 확인해드리겠습니다.',
      'ja': '',
    },
    'welnodfq': {
      'en': '과정에 문제가 있거나 오랜 기간동안 인증중인 경우\n아래의 문의하기를 통해 연락주세요.\n해결해드리겠습니다.',
      'ja': '',
    },
    'z28byvoa': {
      'en': '문의하기',
      'ja': '',
    },
    'zu6f382o': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Notification_Settings
  {
    '6ht8yhq8': {
      'en': 'Notification settings',
      'ja': '',
    },
    'svh39jym': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Passcode_lock
  {
    'yjsb83tq': {
      'en': 'Passcode lock',
      'ja': '',
    },
    'f4k9utfn': {
      'en': 'passcode lock',
      'ja': '',
    },
    'o64r9z9p': {
      'en': 'Change passcode lock',
      'ja': '',
    },
    '3z4d7zvv': {
      'en': 'Use Face ID',
      'ja': '',
    },
    '0u6kaxqs': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Notice
  {
    'vxd3me08': {
      'en': 'Notice',
      'ja': '',
    },
    'o45c1nu2': {
      'en': 'Home',
      'ja': '',
    },
  },
  // FAQ
  {
    'crqzt250': {
      'en': 'FAQ',
      'ja': '',
    },
    '7969f0nx': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Terms_of_sevice
  {
    'b626e5vp': {
      'en': 'Terms of sevice',
      'ja': '',
    },
    'ymlmb55m': {
      'en':
          'Terms of Service\n1. Acceptance of Terms\nWelcome to [Your App Name]. By accessing or using our service, you agree to be bound by these Terms of Service, including any additional guidelines and future modifications. If you do not agree to these terms, please refrain from using our service.\n\n2. Description of Service\n[Your App Name] is a social networking platform designed for university students to connect, share, and collaborate. The service provides features such as posting content, interacting with others, and accessing university-specific resources.\n\n3. Eligibility\nYou must be a current university student or recent graduate to use this service. By using [Your App Name], you confirm that you meet this eligibility requirement. We reserve the right to verify your eligibility status at any time and may suspend or terminate access if eligibility requirements are not met.\n\n4. Account Security\nYou are responsible for maintaining the confidentiality of your account information, including your username and password. You agree to notify us immediately of any unauthorized use of your account or any other security breaches. We are not liable for any loss or damage arising from your failure to comply with this security obligation.\n\n5. User Conduct\nYou agree to use [Your App Name] responsibly and ethically. Prohibited actions include, but are not limited to:\n\nPosting offensive, discriminatory, or harmful content\nSharing or distributing false information or spam\nHarassing, bullying, or intimidating other users\nImpersonating others or misrepresenting your identity\nEngaging in any unlawful activities\n6. Content Ownership and Rights\nBy posting content on [Your App Name], you grant us a non-exclusive, royalty-free, worldwide license to use, display, and distribute your content on our platform. You retain all ownership rights to your content and are solely responsible for the content you post.\n\n7. Privacy Policy\nYour privacy is important to us. Please review our Privacy Policy to understand how we collect, use, and protect your personal information.\n\n8. Termination\nWe reserve the right to suspend or terminate your access to [Your App Name] at our discretion, without prior notice, if you violate these terms or engage in actions detrimental to the community or platform.\n\n9. Limitation of Liability\n[Your App Name] is provided \"as is\" and \"as available,\" and we make no warranties or representations regarding the service\'s functionality or content. We are not liable for any direct, indirect, incidental, or consequential damages arising from your use of the service.\n\n10. Modifications to the Terms\nWe may revise these Terms of Service at any time. If we make material changes, we will notify you through the service or via email. Continued use of [Your App Name] after changes become effective constitutes acceptance of the revised terms.\n\n11. Contact Information\nIf you have questions or concerns regarding these terms, please contact us at [contact email or support link].\n',
      'ja': '',
    },
    'a25rarku': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Privacy_policy
  {
    'egfso0gk': {
      'en': 'Privacy policy',
      'ja': '',
    },
    'p7grwakn': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Youth_protection_policy
  {
    '671pxkcv': {
      'en': 'Youth protection policy',
      'ja': '',
    },
    'ik5cpewh': {
      'en':
          'Youth Protection Policy\n\nOur company, Bizlum Co., Ltd. (\"the Company\"), aims to protect adolescents by preventing harmful information and creating a safe online environment based on the \"Act on Promotion of Information and Communications Network Utilization and Information Protection.\"\nPurpose and Basic Principles for Youth Protection\n\nThe Company strives to provide services in a safe environment where adolescents can grow in a healthy and well-rounded way.\nAccess Restriction and Control of Harmful Information\n\nThe Company prevents minors from being exposed to harmful information by monitoring posts and systems. Any harmful posts are reported to the support center. Additionally, we block and restrict obscene and violent content in accordance with our community guidelines.\nEducation for Youth Protection\n\nThe Company provides education for relevant personnel on legal regulations, youth protection policies, detection and handling methods of harmful information, and reporting procedures.\nCounseling and Grievance Handling for Harmful Information\n\nThe Company offers counseling and guidance to minimize damage caused by harmful information. Users can contact the youth protection officer or dedicated support team for assistance.\n',
      'ja': '',
    },
    'iondrxrn': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Agreement_settings
  {
    'gp86mkwq': {
      'en': 'Agreement settings',
      'ja': '',
    },
    'g2jb19xx': {
      'en': 'Consent to Receive Advertising Information',
      'ja': '',
    },
    'ki6skhu9': {
      'en':
          'Various personalized advertising information will be sent until consent is withdrawn or the membership is canceled.',
      'ja': '',
    },
    'e55o9ja2': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Delete_account
  {
    'r79nsrfb': {
      'en': 'Delete account',
      'ja': '',
    },
    'k7evj8zw': {
      'en': 'Account password',
      'ja': '',
    },
    '7pwy7upo': {
      'en': 'Current password',
      'ja': '',
    },
    '552tj3oe': {
      'en':
          '→  \"If you repeatedly deactivate and reactivate your account, re-registration may be restricted to prevent service abuse. For the first deactivation, re-registration is restricted for 1 day based on the registration time. If repeated more than twice, re-registration is restricted for 30 days.\"',
      'ja': '',
    },
    '9g4o1b0q': {
      'en':
          '→ \"After account deletion, personal information and data, such as schedules, will be deleted and cannot be recovered.\"\n',
      'ja': '',
    },
    'y2ov7pu0': {
      'en':
          '→ \"Even if you re-register, usage restriction records on bulletin boards, etc., are not reset.\"\n',
      'ja': '',
    },
    'a6o2e4f7': {
      'en':
          '→ \"Posts you have created will not be deleted and will be displayed under an anonymous nickname.\"\n',
      'ja': '',
    },
    'u66mbfqn': {
      'en': '→ \"Please refer to the Privacy Policy for more details.\"\n',
      'ja': '',
    },
    'qniouyph': {
      'en': 'Delete account',
      'ja': '',
    },
    'u1oswoof': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Enable_passcode
  {
    'sx0b3sva': {
      'en': 'Enable passcode',
      'ja': '',
    },
    'jkc94n7j': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Test
  {
    '0rp7cukg': {
      'en': 'Page Title',
      'ja': '',
    },
    '8nymkjce': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Loginmain
  {
    'u5w90d4w': {
      'en': 'Sync',
      'ja': '',
    },
    'rif7vlcc': {
      'en': 'Hi',
      'ja': '',
    },
    '1utnquo1': {
      'en': 'Continue with Google',
      'ja': '',
    },
    'gxe7eudb': {
      'en': 'Continue with Apple',
      'ja': '',
    },
    'stny9e1i': {
      'en': 'Or ',
      'ja': '',
    },
    'vxqgrind': {
      'en': 'Email',
      'ja': '',
    },
    'e1w1nrij': {
      'en': 'Continue with ID',
      'ja': '',
    },
    'h3x2vula': {
      'en': 'Password',
      'ja': '',
    },
    '6k14ivm5': {
      'en': 'Start',
      'ja': '',
    },
    '8e3l8ge8': {
      'en': 'Home',
      'ja': '',
    },
  },
  // f_Verification_inquiry
  {
    'zuqyetu6': {
      'en': '문의',
      'ja': '',
    },
    '68sktf35': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Loginmain_Email
  {
    'l6jao0uu': {
      'en': 'Sync',
      'ja': '',
    },
    'irc5vual': {
      'en': 'Create an account by using the form below.',
      'ja': '',
    },
    'sa1ivay1': {
      'en': 'Tip: 학교 아이디로 Email을 가입할 경우 추가 학교 인증절차가 생략됩니다.',
      'ja': '',
    },
    'ou6ivjwz': {
      'en': 'Email',
      'ja': '',
    },
    'nhbnnjz9': {
      'en': 'Send',
      'ja': '',
    },
    'spqwntg8': {
      'en': 'Verification Code',
      'ja': '',
    },
    'wbnl7l70': {
      'en': 'Check',
      'ja': '',
    },
    'gb7olyb3': {
      'en': 'Password',
      'ja': '',
    },
    'zpbyff9l': {
      'en': 'Password Check',
      'ja': '',
    },
    '6769vget': {
      'en': '[필수] 이용약관 동의',
      'ja': '',
    },
    'j6axzosk': {
      'en': '[필수] 이용약관 동의',
      'ja': '',
    },
    'tbbtc8m9': {
      'en': 'Continue with ID',
      'ja': '',
    },
    'cvgg488p': {
      'en': 'Home',
      'ja': '',
    },
  },
  // a_profile
  {
    '5y0tac5p': {
      'en': 'Make A Profile',
      'ja': '',
    },
    'v839gynv': {
      'en': 'Username',
      'ja': '',
    },
    'mek0nln3': {
      'en': 'Major',
      'ja': '',
    },
    'v0wbh573': {
      'en': 'Option 1',
      'ja': '',
    },
    'en6651tl': {
      'en': 'Option 2',
      'ja': '',
    },
    '4efb84th': {
      'en': 'Option 3',
      'ja': '',
    },
    'm7r5zbq9': {
      'en': 'Status',
      'ja': '',
    },
    'zhclmhlp': {
      'en': 'Search...',
      'ja': '',
    },
    '9nwxj8jp': {
      'en': 'next',
      'ja': '',
    },
    '5d4dmuel': {
      'en': 'Home',
      'ja': '',
    },
  },
  // ViewBoard
  {
    '5dgcr974': {
      'en': '전전 용어 정리',
      'ja': '',
    },
    '7omork5l': {
      'en': '어제 출첵했나요?',
      'ja': '',
    },
    'vthdxhez': {
      'en': '시험 꿀팁',
      'ja': '',
    },
    'idjwgydu': {
      'en': 'Title',
      'ja': '',
    },
    'v6yc6g2b': {
      'en':
          'What is going on? Today I was going to school and saw something floating ...',
      'ja': '',
    },
    'bizahudi': {
      'en': '11/30',
      'ja': '',
    },
    'ychmwt2t': {
      'en': '익명',
      'ja': '',
    },
    'gpa6tcds': {
      'en': 'Board Name',
      'ja': '',
    },
    '3wwcvn6n': {
      'en': '연세대 신촌캠',
      'ja': '',
    },
    'gs739x4k': {
      'en': 'Create Post',
      'ja': '',
    },
    '1sid11mr': {
      'en': 'Home',
      'ja': '',
    },
  },
  // CreatePost
  {
    'ldm7bek6': {
      'en': '',
      'ja': '',
    },
    'm9oon90z': {
      'en': 'Title',
      'ja': '',
    },
    'vxzdxztz': {
      'en': 'Content',
      'ja': '',
    },
    'ekb1r82h': {
      'en': 'Rules',
      'ja': '',
    },
    '1b6jblec': {
      'en': 'Board',
      'ja': '',
    },
    't05q2g7h': {
      'en': 'Custom Rule from Board Manager',
      'ja': '',
    },
    'luxiky48': {
      'en': 'Community',
      'ja': '',
    },
    'z5ru1bwr': {
      'en': 'Community Rule from Synctime Developers',
      'ja': '',
    },
    'kqnnc1k2': {
      'en': 'Write Post',
      'ja': '',
    },
    '27y8xfox': {
      'en': 'QnA',
      'ja': '',
    },
    'fbf9siy1': {
      'en': 'Home',
      'ja': '',
    },
  },
  // CreateBoard
  {
    'z14zqgsq': {
      'en': 'Page Title',
      'ja': '',
    },
    'vpsjjjom': {
      'en': 'Home',
      'ja': '',
    },
  },
  // ViewPost
  {
    'fw1a8c3c': {
      'en': '익명',
      'ja': '',
    },
    'x57zdhwa': {
      'en': '24/11/30 02:55',
      'ja': '',
    },
    '50c4wzd5': {
      'en': 'Board Name',
      'ja': '',
    },
    'yzs5tk1j': {
      'en': '연세대 신촌캠',
      'ja': '',
    },
    'hwn3yjqd': {
      'en': '',
      'ja': '',
    },
    '15kbri7q': {
      'en': 'Write Comment',
      'ja': '',
    },
    '76uxa93q': {
      'en': 'Home',
      'ja': '',
    },
  },
  // SearchBoard
  {
    'hapnbywv': {
      'en': 'Home',
      'ja': '',
    },
  },
  // Timetable_settings_CMP
  {
    'itdbfro8': {
      'en': '이름 변경',
      'ja': '',
    },
    '577gjwpm': {
      'en': '공개 범위 변경',
      'ja': '',
    },
    'q4i5znr5': {
      'en': '테마 및 스타일 변경',
      'ja': '',
    },
    'bvd1oxeh': {
      'en': '이미지로 저장',
      'ja': '',
    },
    '1v89jn3v': {
      'en': 'URL 공유',
      'ja': '',
    },
    'hmofirz1': {
      'en': '삭제',
      'ja': '',
    },
  },
  // Material2ActionSheetSimple
  {
    'hr8fomt7': {
      'en': 'Share',
      'ja': '',
    },
    'azcyds7q': {
      'en': 'Get Link',
      'ja': '',
    },
    '77jk0ftt': {
      'en': 'Edit',
      'ja': '',
    },
    'lnz8dn7s': {
      'en': 'Delete',
      'ja': '',
    },
  },
  // Timetable_settings_change_name_CMP
  {
    '1dq529cg': {
      'en': 'Change Timetable\'s Name',
      'ja': '',
    },
    'py8q5fel': {
      'en': 'Write here',
      'ja': '',
    },
    'vg69ol3n': {
      'en': 'Subject',
      'ja': '',
    },
  },
  // Timetable_settings_choose_Theme_CMP
  {
    '1oxwkn3n': {
      'en': 'Choose Theme',
      'ja': '',
    },
    'jc0gtsme': {
      'en': 'Theme 1',
      'ja': '',
    },
    'dguwl505': {
      'en': 'Theme 2',
      'ja': '',
    },
    'mbayl056': {
      'en': 'Theme 3',
      'ja': '',
    },
  },
  // alert_check_CMP
  {
    'lmrma8fu': {
      'en': 'Notification Title',
      'ja': '',
    },
    'rie91vgr': {
      'en': 'Some body copy that is present in this small notification.',
      'ja': '',
    },
  },
  // alert_general_CMP
  {
    'c6btr8tm': {
      'en': 'Notification ',
      'ja': '',
    },
  },
  // alert_CMP
  {
    'o3olpxka': {
      'en': 'No',
      'ja': '',
    },
    'vx55ypq5': {
      'en': 'Yes',
      'ja': '',
    },
  },
  // BoardAppBar
  {
    '4mh6zsn7': {
      'en': 'Board Name',
      'ja': '',
    },
    'dfl2egl6': {
      'en': '연세대 신촌캠',
      'ja': '',
    },
  },
  // AnonymCheckBoxRow
  {
    '1t0w1y2y': {
      'en': 'Anonym',
      'ja': '',
    },
  },
  // SchoolPlease_CMP
  {
    'kffcz3sk': {
      'en': 'School Login Please^^',
      'ja': '',
    },
    'auuvsuv8': {
      'en': '학교사람만 사용가능',
      'ja': '',
    },
    'o2vnzoci': {
      'en': 'Verify!',
      'ja': '',
    },
  },
  // CommentsCountComponent
  {
    '2p8mvqnh': {
      'en': '3',
      'ja': '',
    },
  },
  // LikesCountComponent
  {
    'g3w78wog': {
      'en': '11',
      'ja': '',
    },
  },
  // Miscellaneous
  {
    '3sk0lavx': {
      'en': '',
      'ja': '',
    },
    'o581gyko': {
      'en': '',
      'ja': '',
    },
    'k90lebt8': {
      'en': '',
      'ja': '',
    },
    'ze6u9g6b': {
      'en': '',
      'ja': '',
    },
    'ds9qdez8': {
      'en': '',
      'ja': '',
    },
    'cpro1nj2': {
      'en': '',
      'ja': '',
    },
    '4oq3cq6j': {
      'en': '',
      'ja': '',
    },
    'biuymnj0': {
      'en': '',
      'ja': '',
    },
    '4xi8b7s7': {
      'en': '',
      'ja': '',
    },
    '858qcix9': {
      'en': '',
      'ja': '',
    },
    't5dxyeqd': {
      'en': '',
      'ja': '',
    },
    'hrdezao2': {
      'en': '',
      'ja': '',
    },
    'tulwjiin': {
      'en': '',
      'ja': '',
    },
    'bjv24cor': {
      'en': '',
      'ja': '',
    },
    'msnk3qnb': {
      'en': '',
      'ja': '',
    },
    'kilihj0m': {
      'en': '',
      'ja': '',
    },
    'jsfeyjaf': {
      'en': '',
      'ja': '',
    },
    'f6xbmpeb': {
      'en': '',
      'ja': '',
    },
    'ga5h1rtx': {
      'en': '',
      'ja': '',
    },
    'o5w0qr7c': {
      'en': '',
      'ja': '',
    },
    'qc847itb': {
      'en': '',
      'ja': '',
    },
    'r5u1miak': {
      'en': '',
      'ja': '',
    },
    '1ex31nlv': {
      'en': '',
      'ja': '',
    },
    '1u0tupdt': {
      'en': '',
      'ja': '',
    },
    '5tce6xt0': {
      'en': '',
      'ja': '',
    },
    '4wfrex39': {
      'en': '',
      'ja': '',
    },
    'qknjh31w': {
      'en': '',
      'ja': '',
    },
    '9ut7ugp6': {
      'en': '',
      'ja': '',
    },
  },
].reduce((a, b) => a..addAll(b));

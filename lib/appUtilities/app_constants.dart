import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppConstants {
  static Color fourFontColor = Colors.transparent;
  static Color sixFontColor = Colors.transparent;
  static Color wicketFontColor = Colors.transparent;
  static Color fourBgColor = Colors.transparent;
  static Color sixBgColor = Colors.transparent;
  static Color wicketBgColor = Colors.transparent;

  void statusBarColor(Color color) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: color,
            /* set Status bar color in Android devices. */
            statusBarIconBrightness: Brightness.light,
            /* set Status bar icons color in Android devices.*/
            statusBarBrightness: Brightness.dark)
        /* set Status bar icon color in iOS. */
        );
  }

  static const String socket_dev_server_url = 'http://scores-server.vision11.org:3456/';
  static const String socket_dev2_server_url = 'http://3.7.205.106:8070/';
  static const String socket_live_server_url = 'https://scores.vision11.org:8070/';
  static const String socket_server_url = socket_live_server_url;

  //static const String base_live_api_url = 'https://api.vision11.org/';
  static const String base_live_api_url = 'https://api.vision11.org/';
  static const String base_stage_api_url = 'http://new-rgdev.vision11.org/';
  static const String base_stage2_api_url = 'http://api-stage.vision11.org/';
  static const String base_stage3_api_url = 'https://new-apistage.vision11.org/';
  static const String base_dev_api_url = 'http://new-dev.vision11.org/';
  static const String base_stage4_api_url = 'https://new-apistage.vision11.org/';
  static const String base_api_url = base_stage4_api_url;
  //changes url

  static bool deadlinevalue = true;
  static const String aadhaar_verify_server_url = 'https://verify.vision11.in/';
  static const String pan_verify_server_url = 'https://panverify.vision11.in/';
  static double latitude = 0.0;
  static double longitude = 0.0;
  static const String tds_base_url = 'https://verify.vision11.in/api/tds/';
  static late String headers = "";
  static int lineup = 0;

  static String sportsName = '';
  static String userAgent = 'dart:io';
  static bool isDigilockerRequest = false;
  static bool isThisDirectVerify = false;
  // static const String base_api_url = 'http://fantasy.rgisports.com/repos/vision11/';
  // static String web_pages_url = "https://test.vision11.in/app/";
  static String web_pages_url = "https://vision11.in/app/";
  static bool isIphone14ProMax = false;
  static String non_kyc_message = "";
  static bool isIOS = Platform.isIOS;
  static bool isFromAddCash = false;
  static final String SHARED_PREFERENCE_USER_PT_VERIEID = "user_pt_verified";
  static String terms_url = web_pages_url + "terms-conditions";
  //static String fantasy_point_url = web_pages_url + "fantasy_point_system";
  static String fantasy_point_url = web_pages_url + "points-system";
  //static String privacy_url = web_pages_url + "privacy_policy";
  static String privacy_url = web_pages_url + "privacy-policy";
  //static String about_us_url = web_pages_url + "about_us";
  static String about_us_url = web_pages_url + "about-us";
  //static String how_to_play_url = web_pages_url + "how_to_play";
  static String how_to_play_url = web_pages_url + "howtoplay";
  static bool? androidPlatform;
  static String responsible_play_url = web_pages_url + "responsible-play-policy";
  //static String legality_url = web_pages_url + "legalities-app";
  static String legality_url = web_pages_url + "legalitiy";
  static String apk_url = "";
  static String refer_url = "";
  static String fb_url = "https://www.facebook.com/vision11official/";
  static String rupee = "₹";
  static String invite_bonus = "500";
  static String signup_bonus = "25";
  static String token = "";
  // static String cashfree_notify_url = "https://manage.vision11.org/admin/cashfree-notify";
  static String cashfree_notify_url = "https://payment.vision11.in/admin/cashfree-notify";
  static String twitter_url = "https://twitter.com/vision11ofc";
  static String youtube_url = "https://www.youtube.com/c/Vision11official";
  static String instagram_url = "https://www.instagram.com/vision11official/";
  static String telegram_url = "https://t.me/Vision11Official";
  // static String cash_free_app_id = "702513840c0cbfe82786c6e0d15207";
  static String cash_free_app_id = "165926a4b232d6af395ebf2558629561";
  //static String paytm_mid = "VISION15147168410696";
  static String paytm_mid = "scwjLb38844989010019";
  static bool isFilter = false;
  static bool isLoaderShowing = false;
  static bool isDeadlineDialogShowing = false;
  static bool isMatchFirstLoad = false;
  static String versionCode = '0';
  static int idfyActive = 0;
  static int isTdsCertificateEnable = 0;
  static int isAddCashGst = 0;
  static Duration remainingTime = Duration(milliseconds: 0);
  static Timer? timer;
  static List<String>? supportedAbis;
  static late BuildContext context;
  static int selectedTeamNameNumber = 1;
  static int isActiveSlotIndex = 0;
  static String paytmRouter_mid = "216820000000000076831";

//  =================== MESSAGES ============================

  static String get getNoInternetMsg => "Internet not available.";

  static String get getTechnicalErrorMsg => "Technical Error";

  static String get notPermittedMsg => "You can't login using these credentials";

  static String get successMsg => "Success";

  static String get somethingWentWrongMsg => "Something Went Wrong";

  static String get invalidCredentialsMsg => "Invalid Credentials";

  static String get technicalErrorMsg => "TECHNICAL ERROR";

//  ==================================== URLS AND OTHER =====================

  static String get textRegular => 'sans-serif';

  static String get textBold => 'MontserratBold';
  static String get HackmanW00HeavyItalic => 'HackmanW00-HeavyItalic';

  static String get textSemiBold => 'sans-serif-medium';

  static String get localNotifStorage => '_localNotifStorage';

  static String get localCouriorStorage => '_localCouriorStorageJSON_ARY';

//  ======================== REPLACEMENTS =======================

  static String get replaceString4 => 'amp;';
  static String get VerifyEmailOrMobile => "VerifyEmailOrMobile";
  static String get compareTeam => "CompareTeam";
  static String get withdrawCash => 'WithdrawCash';
  static String get affiliateTransfer => 'AffiliateTransfer';
  static String get homePage => "HomePage";
  static String get visionWebView => "VisionWebView";
  static String get paymentWebView => "PaymentWebView";
  static String get promoteAppDetails => "PromoteAppDetails";
  static String get promoteApp => "PromoteApp";
  static String get teamEarnings => "TeamEarnings";
  static String get earnContests => "EarnContests";
  static String get affiliateMatches => "AffiliateMatches";
  static String get affiliateProgram => "AffiliateProgram";
  static String get promoterUserStats => "PromoterUserStats";
  static String get promoterLeaderboard => "PromoterLeaderboard";
  static String get userStats => "UserStats";
  static String get addBalance => "AddBalance";
  static String get paymentOptions => "PaymentOptions";
  static String get homeLeaderboard => "HomeLeaderboard";
  static String get recentTransactions => "RecentTransactions";
  static String get breakupPlayerPoints => "BreakupPlayerPoints";
  static String get liveFinishContestDetails => "LiveFinishContestDetails";
  static String get liveFinishContests => "LiveFinishContests";
  static String get h2hPlayers => "H2hPlayers";
  static String get inviteContestCode => "InviteContestCode";
  static String get myJoinTeams => "MyJoinTeams";
  static String get winningBreakupManager => "WinningBreakupManager";
  static String get privateContest => "PrivateContest";
  static String get teamPreview => "TeamPreview";
  static String get chooseCandVc => "ChooseCandVc";
  static String get playerInfo => "PlayerInfo";
  static String get allContests => "AllContests";
  static String get createTeam => "CreateTeam";
  static String get quickCreateTeam => "QuickCreateTeam";
  static String get upcomingContestDetails => "UpcomingContestDetails";
  static String get upcomingContests => "UpcomingContests";
  static String get referList => "ReferList";
  static String get contactUs => "ContactUs";
  static String get verifyAccount => "VerifyAccount";
  static String get userNotifications => "UserNotifications";
  static String get referAndEarn => "ReferAndEarn";
  static String get userProfile => "UserProfile";
  static String get wallet => "Wallet";
  static String get setTeamName => "SetTeamName";
  static String get changePassword => "ChangePassword";
  static String get otpVerify => "OtpVerify";
  static String get register => "Register";
  static String get forgotPassword => "ForgotPassword";
  static String get loginPage => "LoginPage";
  static String get verifyAccountDetail => "verifyAccountDetail";
  static String get verifyAadhaarV2 => "VerifyAadhaarV2";
  static String get verifyPanV2 => "VerifyPanV2";
  static String get tdsCertificate => "TdsCertificate";
  static String get verifyPanDetail => "VerifyPanDetail";
  static String get verifyBankDetail => "VerifyBankDetail";
  static String get verifyMailDetail => "VerifyMailDetail";
  static String get deleteAccount => "DeleteAccount";
  static String get tDSDashboard => "TDSDashboard";
  static String get myProfile => "MyProfile";
  static String get verifyAadharDetail => "VerifyAadharDetail";
  static String get specialOfferView => "specialOfferView";
  static String get tenOnePoupConent => '''
<p style="font-family: 'Inter'; font-size: 13px; color: #060709; font-weight: 400;">
  <p>Hey champions, now you can create a team of up to 10 players from 1 team.</p>
  <p>Choose at least 1 player from the other team.</p>
  <p>You can only take 1-8 players from each section.</p>
  <p>You must select at least 1 player from every section.</p>
</p>
''';
  static String get battingPoupConent => '''
<p style="font-family: 'Inter'; font-size: 13px; color: #060709; font-weight: 400;"></p>
<p>3 players (max) from one team</p>
<p>Select 5 Batsmen for your team</p>
<p>Multiple Wicketkeepers are allowed</p>
<p>Team Credit Limit is 45</p>
<p>More runs means more Points</p>
<p>Earn points for batting performances only</p>
''';
  static String get bowlingPoupConent => '''
<p style="font-family: 'Inter'; font-size: 13px; color: #060709; font-weight: 400;"></p>
<p>3 players (max) from one team</p>
<p>Select 5 Batsmen for your team</p>
<p>Selecting Wicket-Keepers is not allowed</p>
<p>Team Credit Limit is 45</p>
<p><More wickets means more Points</p>
<p>Earn points for batting performances only</p>
''';
  static String get reversePoupConent => '''
<p style="font-family: 'Inter'; font-size: 13px; color: #060709; font-weight: 400;"></p>
<p>Make a team of 11 players</p>
<p>Choose 1-4 Wicket Keepers, 3-6 Batsmen, 1-4 All Rounders, and 3-6 Bowlers</p>
<p>Use up to 100 Credits to create a team</p>
<p>Maximum of 7 players from one team</p>
<p>Get points for batting, bowling & fielding performances of your playing 11. Choose your worst 11 players. The team with the least fantasy score will be the winner.</p>
<p>If you choose a non-playing player, you will get the fantasy points of the player who scores the maximum fantasy points from the team.</p>
''';
  static String get h2hPopupContent => '''
<p style="font-family: 'Inter'; font-size: 13px; color: #060709; font-weight: 400;"></p>
<p>Introducing Vision11’s Exclusive Showdown Mode:</p>
<p>You can play even without selecting 11 players. Experience the thrill of one-on-one fantasy sports battles.</p>
<p>Choose your champions, face off!</p>
<p>Select your player.</p>
<p>Unleash the power, and dominate the game!</p>
''';
  static String get shortPopupContent => '''
 
      <div style="font-family: 'Inter'; font-size: 13px; color: #060709; font-weight: 400; line-height: 1.5;">
  <p><strong>Play in Match Slots</strong><br>Now, each match is divided into multiple slots. Choose a slot and join the action!</p>
  <p><strong>Pick 1 Player</strong><br>Select just ONE player to compete in short head-to-head fantasy leagues.</p>
  <p><strong>Quick & Exciting</strong><br>Short contests, real-time thrills-perfect for fast-paced fantasy fun!</p>
</div>

  ''';

  static var channelTypes = ['Select Chanel Type', 'Facebook', 'YouTube', 'Twitter', 'Instagram', 'Telegram', 'Other'];

  static var items = [
    // 'Andaman & Nicobar Islands',
    // 'Arunachal Pradesh',
    // 'Bihar',
    // 'Chandigarh',
    // 'Chhattisgarh',
    // 'Dadra & Nagar Haveli',
    // 'Daman & Diu',
    // 'Delhi',
    // 'Goa',
    // 'Gujarat',
    // 'Haryana',
    // 'Himachal Pradesh',
    // 'Jammu & Kashmir',
    // 'Jharkhand',
    // 'Karnataka',
    // 'Kerala',
    // 'Lakshadweep',
    // 'Madhya Pradesh',
    // 'Maharashtra',
    // 'Manipur',
    // 'Meghalaya',
    // 'Mizoram',
    // 'Pondicherry',
    // 'Punjab',
    // 'Rajasthan',
    // 'Tamil Nadu',
    // 'Tripura',
    // 'Uttaranchal',
    // 'Uttar Pradesh',
    // 'West Bengal'

    'Andaman and Nicobar Islands',
    'Arunachal Pradesh',
    'Bihar',
    'Chandigarh',
    'Chhattisgarh',
    'Dadra And Nagar Haveli',
    'Delhi',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jammu And Kashmir',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Pondicherry',
    'Punjab',
    'Rajasthan',
    'Tamil Nadu',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal'
  ];

  static final String orgId = "60026954784";
  static final String zohoClientId = "1000.PM8HYUFRT4E7DSHXY2LPXMC7TI363X";

  static final String SHARED_PREFERENCE_DOB = "date_of_birth";
  static final String SHARED_PREFERENCES_IS_LOGGED_IN = "is_logged_in";
  static final String SHARED_PREFERENCE_USER_ID = "user_id";
  static final String SHARED_PREFERENCE_USER_TOKEN = "user_token";
  static final String SHARED_PREFERENCE_USER_NAME = "user_name";
  static final String SHARED_PREFERENCE_USER_EMAIL = "user_email";
  static final String SHARED_PREFERENCE_USER_MOBILE = "user_mobile";
  static final String SHARED_PREFERENCE_LINK_PAYTM = "paytm_link";
  static final String SHARED_PREFERENCE_DOWNLOADED_PDF = "pdf_team";
  static final String SHARED_PREFERENCE_FRESHDESK_TOKEN = "freshdesk_token";
  static final String SHARED_PREFERENCE_FRESHDESK_TICKET_ID = "freshdesk_ticket_id";
  static final String SHARED_PREFERENCE_FRESHDESK_FEEDBACK_CALL = "freshdesk_feedback_call";

  static final String SHARED_PREFERENCE_USER_MOBILE_VERIFY_STATUS = "user_mobile_verify_status";
  static final String SHARED_PREFERENCE_USER_EMAIL_VERIFY_STATUS = "user_email_verify_status";
  static final String SHARED_PREFERENCE_USER_PAN_VERIFY_STATUS = "user_pan_verify_status";
  static final String SHARED_PREFERENCE_USER_BANK_VERIFY_STATUS = "user_bank_verify_status";
  static final String LOGIN_REGISTER_TYPE = "login_register_type";
  static final String FROM = "from";
  static String sportKey = "";
  static final String SHARED_PREFERENCE_USER_FCM_TOKEN = "user_fcm_token";
  static final String SHARED_PREFERENCE_USER_REFER_CODE = "user_refer_code";
  static final String SPORT_KEY = "sport_key";
  static final String MATCH_STATUS = "match_status";
  static final String KEY_BANNER_IMAGE = "banner_image";
  static final String IS_VISIBLE_AFFILIATE = "is_visible_affiliate";
  static final String IS_VISIBLE_PROMOTE = "is_visible_promote";
  static final String IS_VISIBLE_PROMOTER_LEADERBOARD = "is_visible_promoter_leaderboard";
  static final String IS_VISIBLE_PROMOTER_REQUEST = "is_visible_promoter_requested";
  static final String SHARED_PREFERENCE_ADD_CASH_LIMIT = "add_cash_limit";
  static final String SportTabSlected = "SportTabSlected";

  static final String SHARED_PREFERENCE_USER_TEAM_NAME = "user_team_name";
  static final String SHARED_PREFERENCE_USER_STATE_NAME = "user_state_name";
  static final String SHARED_PREFERENCE_USER_PIC = "user_pic_url";
  static final String SHARED_PREFERENCES_ACCESS_TOKEN = "access_token";
  static final String SHARED_PREFERENCES_CLIENT_ACCESS_TOKEN = "client_access_token";
  static final String SHARED_SPORTS_LIST = "SHARED_SPORTS_LIST";
  static final String SERVER_DATE_TIME = "SERVER_DATE_TIME";

  static final String FILTER_CONDITION = "filter_condition";

  static final String IS_MULTI_SPORTS_ENABLE = "IS_MULTI_SPORTS_ENABLE";
  static final String MULTI_SPORTS = "MULTI_SPORTS";
  static final String VERIFIED = "Verified";
  static final String UNVERIFIED = "Unverified";
  static final String PAYTM = "paytm";
  static final String NO_TEAM_CREATED = "You have not created any team yet !!";
  static final String SOMETHING_WENT_WRONG = "Oops! Something went Wrong";
  static final int OTP_SEND_TIME = 60 * 1000;
  static final int SPLASH_TIMEOUT = 1500;
  static final String APP_NAME = "Vision11";
  static final String RAZORPAY = "razorPay";
  static final int MIN_BANK_WITHDRAW_AMOUNT = 100;
  static final int MIN_PAYTM_WITHDRAW_AMOUNT = 100;
  static final int MIN_BANK_INSTANT_WITHDRAW_AMOUNT = 100;

  static final int MAX_PAYTM_WITHDRAW_AMOUNT = 10000;
  static final int MAX_BANK_WITHDRAW_AMOUNT = 200000;
  static final int MAX_BANK_INSTANT_WITHDRAW_AMOUNT = 50000;
  static double DEFAULT_PERCENT = 0;
  static final String SHARED_PREFERENCE_TICKET_OLD_LENGTH = "oldLength";

  static final String API_VERSION = "1.1";
  static final String ACCEPT_HEADER = "application/vnd.md.api.v" + API_VERSION + "+json";
  static final String KEY_WINING_PERCENT = "key_winning_percent";

  static final int KEY_LIVE_MATCH = 1;
  static final int KEY_UPCOMING_MATCH = 2;
  static final int KEY_FINISHED_MATCH = 3;

  //PAN STATUS
  static final int KEY_PAN_VERIFIED = 1;
  static final int KEY_PAN_UNVERIFIED = 0;
  static final int KEY_PAN_NOT_REQUESTED = -1;
  static final int KEY_PAN_REJECTED = 2;

  //BANK STATUS
  static final int KEY_BANK_VERIFIED = 1;
  static final int KEY_BANK_UNVERIFIED = 0;
  static final int KEY_BANK_NOT_REQUESTED = -1;
  static final int KEY_BANK_REJECTED = 2;

  //EMAIL STATUS
  static final int KEY_EMAIL_VERIFIED = 1;
  static final int KEY_EMAIL_UNVERIFIED = 0;

  //MOBILE_STATUS
  static final int KEY_MOBILE_VERIFIED = 1;
  static final int KEY_MOBILE_UNVERIFIED = 0;

  //Player Role
  static final String KEY_PLAYER_ROLE_BAT = "batsman";

  static final String KEY_PLAYER_ROLE_ATT = "attacker";
  static final String KEY_PLAYER_ROLE_ALL_R = "allrounder";
  static final String KEY_PLAYER_ROLE_BOL = "bowler";
  static final String KEY_PLAYER_ROLE_KEEP = "keeper";
  static final String KEY_PLAYER_ROLE_PACER = "pacer";
  static final String KEY_PLAYER_ROLE_SPIN = "spin";

  //That use for ic_switch_team data
  static final String KEY_MATCH_KEY = "key_match_key";
  static final String KEY_WINING_AMOUNT = "key_wining_amount";
  static final String KEY_TEAM_VS = "key_team_vs";
  static final String KEY_TEAM_FIRST_URL = "key_team_first_url";
  static final String KEY_TEAM_SECOND_URL = "key_team_second_url";
  static final String KEY_TEAM_ID = "key_team_id";
  static final String KEY_TEAM_ID2 = "key_team_id2";
  static final String KEY_CONTEST_KEY = "key_contest_key";
  static final String KEY_IS_FOR_JOIN_CONTEST = "key_is_for_join_contest";
  static final String KEY_CONTEST_DATA = "key_contest_data";
  static final String KEY_USER_BALANCE = "key_user_balance";
  static final String KEY_USER_CASH_REWARD = "key_user_cash_reward";
  static final String KEY_USER_GST_REFUND = "key_user_gst_refund";
  static final String KEY_USER_BONUS_BALANCE = "key_user_bonus_balance";
  static final String KEY_USER_WINING_AMOUNT = "key_user_wining_amount";
  static final String KEY_USER_REFERRAL_AFFILIATION = "key_user_referral_affiliation";
  static final String KEY_USER_TOTAL_BALANCE = "key_user_total_balance";
  static final String CONTEST_ID = "CONTEST_ID";

  //key for fantsy type
  static final String KEY_IS_BATTING_FANTASY = "KEY_IS_BATTING_FANTASY";
  static final String KEY_IS_BOWLING_FANTASY = "KEY_IS_BOWLING_FANTASY";
  static final String KEY_IS_LIVE_FANTASY = "KEY_IS_LIVE_FANTASY";
  static final String KEY_IS_SECOND_INNING_FANTASY = "KEY_IS_SECOND_INNING_FANTASY";
  static final String KEY_IS_REVERSE_FANTASY = "KEY_IS_REVERSE_FANTASY";

  static final int FULL_MATCH_FANTASY_TYPE = 0;
  static final int LIVE_FANTASY_TYPE = 1;
  static final int BATTING_FANTASY_TYPE = 2;
  static final int BOWLING_FANTASY_TYPE = 3;
  static final int SECOND_INNINGS_FANTASY_TYPE = 4;
  static final int REVERSE_FANTASY = 5;
  static final String? ADHARTEXT = "ADHAR";
  static final String? XML = "xml";
  static final String? SECRET="ZDk2MDMwMWVmZWU4NDczYjhiMjQyMWMzMmQ4OGYwNTA=";
  static final String? ACCOUNTID="7de346849233/01d19b73-6a89-4ee6-85df-179bfabb94f5";
  static final String? APIKEY="40767118-2c7a-11ef-a102-9e0a819012ed";
  static final String? CALLBACKURL="https://manage.vision11.org/admin/aadhar_verify_webhook";

  static final String KEY_FANTASY_TYPE = "KEY_FANTASY_TYPE";
  static final String KEY_FANTASY_SLOT_ID = "KEY_FANTASY_SLOT_ID";

  static final String KEY_FANTASY_SLOTS = "KEY_FANTASY_SLOTS";
  static final String KEY_PROMTER_LEADERBOARD_ID = "key_promoter_leaderboard_id";

  static final String KEY_STATUS_HEADER_TEXT = "key_status_header_text";
  static final String KEY_STATUS_IS_TIMER_HEADER = "key_status_is_timer_text";
  static final String KEY_IS_FOR_SWITCH_TEAM = "key_is_for_switch_team";

  static final String KEY_TEAM_COUNT = "key_team_count";

  static final String KEY_STATUS_IS_FOR_CONTEST_DETAILS = "key_is_for_contest_details";
  static String SKIP_CREATETEAM_INSTRUCTION = "SKIP_CREATETEAM_INSTRUCTION";
  static String SKIP_CREATECVC_INSTRUCTION = "SKIP_CREATECVC_INSTRUCTION";

  static final String KEY_TEAM_LIST_WK = "key_team_list_wk";
  static final String KEY_TEAM_LIST_BAT = "key_team_list_bat";
  static final String KEY_TEAM_LIST_AR = "key_team_list_ar";
  static final String KEY_TEAM_LIST_BOWL = "key_team_list_bowl";
  static final String KEY_TEAM_LIST_C = "KEY_TEAM_LIST_C";
  static final String KEY_TEAM_NAME = "key_team_name";
  static final String KEY_TEAM1_FULL_NAME = "key_team1_full_name";
  static final String KEY_TEAM2_FULL_NAME = "key_team2_full_name";
  static final String KEY_TEAM1_SCORE = "key_team1_score";
  static final String KEY_TEAM2_SCORE = "key_team2_score";
  static final String KEY_TEXT = "key_text";

  static final String KEY_ALL_CONTEST = "key_all_contest";
  static final String ERROR_MSG = "We are facing problem...We will be right back!";

  //TAGS
  static final String TAG_CRICKET = "CRICKET";
  static final String TAG_H2H = "ONE_PLAYER";
  static final String TAG_twoStar = "2 Star";
  static final String TAG_KhoKho = "KHOKHO";
  static final String TAG_LIVE = "LIVE";
  static final String TAG_FOOTBALL = "FOOTBALL";
  static final String TAG_BASKETBALL = "BASKETBALL";
  static final String TAG_BASEBALL = "BASEBALL";
  static final String TAG_HANDBALL = "HANDBALL";
  static final String TAG_HOCKEY = "HOCKEY";
  static final String TAG_KABADDI = "KABADDI";

  /// TODO: more option navigation keys ================

  static final String TAG_PROFILE = "profile";
  static final String TAG_VERIFY_ACCOUNT = "verify_account";
  static final String TAG_DOWNLOAD_TDS_CERTIFICATE = "download_TDS_certificate";
  static final String TAG_FANTASY_POINT_SYSTEM = "fantasy_point_system";
  static final String TAG_REFER_LIST = "refer_list";
  static final String TAG_PRIVACY_POLICY = "privacy_policy";
  static final String TAG_TERMS_CONDITION = "terms_condition";
  static final String TAG_ABOUT_US = "about_us";
  static final String TAG_HOW_TO_PLAY = "how_to_play";
  static final String TAG_RESPONSIBLE_PLAY = "responsible_play";
  static final String TAG_LEGALITY = "legality";
  static final String TAG_CONTACT_US = "contact_us";
  static final String TAG_PROMOTER_APP = "promoter_app";
  static final String TAG_DELETE_ACCOUNT = "delete_account";
  static final String TAG_AFFILIATE = "affiliate";
  static final String TAG_LOGOUT = "logout";

  //CRICKET TAG
  static final String WK = "WK";
  static final String BAT = "BAT";
  static final String AR = "AR";
  static final String BOWL = "BOWL";
  //Player Role for Football
  static final String KEY_PLAYER_ROLE_DEF = "Defender";
  static final String KEY_PLAYER_ROLE_ST = "Forward";
  static final String KEY_PLAYER_ROLE_GK = "Goalkeeper";
  static final String KEY_PLAYER_ROLE_MID = "Midfielder";
  static final String KEY_PLAYER_ROLE_STR = "Striker";
  static final String KEY_PLAYER_ROLE_RD = "raider";
  //FOOTBALL TAG
  static final String GK = "GK";
  static final String DEF = "DEF";
  static final String MID = "MID";
  static final String ST = "ST";
  static final String ALL = "ALL";
  static final String RAIDER = "RAIDER";
  //Player Role for BasketBall(NBA)
  static final String KEY_PLAYER_ROLE_PG = "Point guard"; //1-4
  static final String KEY_PLAYER_ROLE_SG = "Shooting guard"; //1-4
  static final String KEY_PLAYER_ROLE_SF = "Small forward"; //1-4
  static final String KEY_PLAYER_ROLE_PF = "Power forward"; //1-4
  static final String KEY_PLAYER_ROLE_C = "Center"; //1-4

  static final String PG = "PG";
  static final String SG = "SG";
  static final String SF = "SF";
  static final String PF = "PF";
  static final String C = "C";

  //Player Role for BaseBall
  static final String KEY_PLAYER_ROLE_OF = "Outfielder";
  static final String KEY_PLAYER_ROLE_IF = "Infielder";
  static final String KEY_PLAYER_ROLE_PITCHER = "Pitcher";
  static final String KEY_PLAYER_ROLE_KALL = "allrounder";
  static final String KEY_PLAYER_ROLE_CATCHER = "Catcher";
  static final String KEY_PLAYER_ROLE_DEFENDER = "Defender";
  //BASEBALL TAG
  static final String OF = "OF";
  static final String IF = "IF";
  static final String PIT = "P";
  static final String CAT = "C";

  // Playing Status
  static final String PLAYING = "playing";
  static final String NOT_PLAYING = "not_playing";
  static final String BOTH = "both";

  //Home Pop Up Banner
  static final String PREVIOUS_DATE = "previous_date";
  static final String PREVIOUS_H2H_DATE = "previous_h2h_date";
  static final String PREVIOUS_SHORT_FANTSAY_DATE = "previous_short_fantasy_date";
  static final String PREVIOUS_BATTING_DATE = "previous_batting_date";
  static final String PREVIOUS_BOWLING_DATE = "previous_bowling_date";
  static final String PREVIOUS_REVERSE_DATE = "previous_reverse_date";
  static final String PREVIOUS_TENONE_DATE = "previous_tenone_date";
  static final String IS_NIGHT_BANNER_SHOWN = "is_night_banner_shown";
  static final String IS_MORNING_BANNER_SHOWN = "is_morning_banner_shown";
  static final String IS_AFTERNOON_BANNER_SHOWN = "is_afternoon_banner_shown";
  static final String IS_EVENING_BANNER_SHOWN = "is_evening_banner_shown";
  static final String NIGHT_START_TIME = "00:00:00";
  static final String NIGHT_END_TIME = "05:59:59";
  static final String MORNING_START_TIME = "06:00:00";
  static final String MORNING_END_TIME = "11:59:59";
  static final String AFTERNOON_START_TIME = "12:00:00";
  static final String AFTERNOON_END_TIME = "17:59:59";
  static final String EVENING_START_TIME = "18:00:00";
  static final String EVENING_END_TIME = "23:59:59";

  static final String PROMOTER_LEADERBOARD_URL = "promoter_leaderboard_url";
  static final String TEAMNAME = "teamname";
  static final String IS_KYC_OFFER_SHOW = "is_kyc_offer_show";
  static final String KYC_OFFER_WEB_URL = "kyc_offer_web_url";
  static final String BONUS_WALLET_SHOW = "bonus_wallet_show";
  static final String CASH_REWARD_SHOW = "cash_reward";
  static final String IS_SHOW_CASH_REWARD_SHOW = "is_show_cash_reward";
  static final String PRIVATE_CONTEST_COMMISION = "private_contest_commission";

  static String shield_site_id = "a3de421669151e85bde71a871b6d0e95fa3af5cc";
  static String shield_secret_key = "7eca696600000000a3de421669151e85bde71a871b6d0e95fa3af5cc";

  static final String SHIELD_SETUP = "sheild_setup";
  static final String forgot = "forgot";
  static final String forgotpass = "Forgot Password?";
  static final String forgotpassTitletext = "Email/Mobile Number";
  static final String forgotpasshinttext = "Enter Email Id/Mobile Number";
  static final String forgotNextButtonText = "NEXT";
  static final String forgotpasshelpText = "Don't worry, we are here to help you.";

  //forgot validation
  static String forgotValidations = "Please enter correct email/ mobile number";

//Wallet Screen Strings
  static final String Main = "/main";
  static final String My_Balance = "My Balance";
  static final String Current_Balance = "Current Balance";
  static final String Rupee_Sign = "₹";
  static final String Add_Cash = "+Add Cash";
  static final String Null = 'null';
  static final String Verify_To_Withdraw = "Verify To Withdraw";
  static final String WITHDRAW = "WITHDRAW";
  static final String Winning_To_Deposit_Offer = "Winning to Deposit offer";
  static final String Bank_Instant = "bank_instant";
  static final String INSTANT = "INSTANT";
  static final String Withdraw_Bank_Type = "bank";
  static final String NORMAL = "NORMAL";
  static final String TRANSFER = "TRANSFER";
  static final String Cash_Bonus = "Cash Bonus";
  static final String Transfer_To_Deposited_Wallet = "Transfer to Deposited Wallet";
  static final String My_Transactions = "My Transactions";
  static final String Wallet = "Wallet";
  static final String TDS_Dashboard = "TDS Dashboard";
  static final String Affiliation_Balance = "Affiliation Balance";
  static final String Amount = "Amount";
  static final String Enter_Amount = "Enter Amount";
  static final String Addcash = 'addcash';
  static final String Match = "match";
  static final String Leaderboard = "leaderboard";
  static final String Paytm_Instant = "paytm_instant";
  static final String Contest = "contest";
  static final String vs = "vs";
  static final String ToolTip_msg_For_Join_Any_Public_Contest = "Money that you can use to join any public contests";

  ///Validation error strings
  static final String Please_Enter_Amount = "Please enter amount";
  static final String Please_Enter_Amount_Greater_Than_0 = "Please enter amount greater than 0";
  static final String Please_Enter_Valid_Amount = "Please enter valid amount";

  ///Font family
  static final String InterFamily = "Inter";

  ///Edit Profile Screen
  static final String EDIT_PROFILE = "Edit Profile";
  static final String MSG_PROFILE_VISIBILITY = "Profile photo will be visible on your leaderboard";
  static final String TEAM_NAME = "Team Name";
  static final String HINT_TEAM_NAME = "Enter team name";
  static final String LABEL_EMAIL = "Email";
  static final String HINT_EMAIL_ADDRESS = "Enter email address";
  static final String LABEL_CONTACT_NO = "Contact Number";
  static final String LABEL_DATE_OF_BIRTH = "Date of Birth";
  static final String LABEL_CHANGE_PASSWORD = "Change Password";
}

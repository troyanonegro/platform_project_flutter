library app_userdata;

/// Secure Storage Keychain/KeyStore
const String APP_SECURE_TOKEN = "cn.contender_app.secure.token"; /// String
const String APP_SECURE_USER_ID = "cn.contender_app.secure.userId"; /// int
const String APP_SECURE_CUSTOMER_ID = "cn.contender_app.secure.customerId"; /// int
/// Shared Preferences
const String APP_PREF_CATALOG = "cn.contender_app.preference.catalog"; /// bool
const String APP_PREF_USERNAME = "cn.contender_app.preference.username"; /// String
/// Date and Time
const String APP_TIME_FORMAT_24HRS = 'HH:mm';
const String APP_TIME_FORMAT_12HRS = 'hh:mm';
const String APP_TIME_FORMAT_AM_PM = 'a';
const String APP_TIME_FORMAT_12HRS_AM_PM = 'hh:mm a';
const String APP_DATE_FORMAT_SERVER_DATE_ONLY = 'yyyy-MM-dd';
const String APP_DATE_FORMAT_VIEW_DATE_ONLY = 'd MMM y';
const String APP_DATE_FORMAT_VIEW_DAY_MONTH_ONLY = 'd MMM';
const String APP_DATE_FORMAT_SERVER_DATE_TIME = 'yyyy-MM-dd hh:mm';
const String APP_DATE_FORMAT_SERVER_DATE_TIME2 = 'yyyy-MM-dd hh:mm:ss';

//Symbol   Meaning                Presentation       Example
//------   -------                ------------       -------
//G        era designator         (Text)             AD
//y        year                   (Number)           1996
//M        month in year          (Text & Number)    July & 07
//L        standalone month       (Text & Number)    July & 07
//d        day in month           (Number)           10
//c        standalone day         (Number)           10
//h        hour in am/pm (1~12)   (Number)           12
//H        hour in day (0~23)     (Number)           0
//m        minute in hour         (Number)           30
//s        second in minute       (Number)           55
//S        fractional second      (Number)           978
//E        day of week            (Text)             Tuesday
//D        day in year            (Number)           189
//a        am/pm marker           (Text)             PM
//k        hour in day (1~24)     (Number)           24
//K        hour in am/pm (0~11)   (Number)           0
//z        time zone              (Text)             Pacific Standard Time
//Z        time zone (RFC 822)    (Number)           -0800
//v        time zone (generic)    (Text)             Pacific Time
//Q        quarter                (Text)             Q3
//'        escape for text        (Delimiter)        'Date='
//''       single quote           (Literal)          'o''clock'
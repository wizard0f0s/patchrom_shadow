.class public Landroid/net/wifi/WifiWisprClient;
.super Landroid/os/Handler;
.source "WifiWisprClient.java"


# static fields
.field private static final ABORT_RESPONSE_MESSAGE_TYPE:I = 0x96

.field private static final AUTHENTICATION_NOTIFICATION_MESSAGE_TYPE:I = 0x78

.field private static final AUTHENTICATION_PENDING_CODE:I = 0xc9

.field private static final AUTHENTICATION_RESPONSE_MESSAGE_TYPE:I = 0x8c

.field private static final EVENT_ABORT_LOGIN:I = 0x4

.field private static final EVENT_AUTH_POLL:I = 0x3

.field private static final EVENT_LOGIN_START:I = 0x1

.field private static final EVENT_LOGOFF:I = 0x5

.field private static final EVENT_PROXY_START:I = 0x2

.field private static final GATEWAY_INTERNAL_ERROR_CODE:I = 0xff

#the value of this static final field might be set in the static constructor
.field private static final HOTSPOT_ENABLED:Z = false

.field public static final ICON_HOTSPOT_LOGIN_FAIL:I = 0x10802cd

.field public static final ICON_HOTSPOT_LOGIN_SUCCESS:I = 0x10802ce

.field private static final INITIAL_GET_URL:Ljava/lang/String; = "http://rsc.att.com/library/test/success.html"

.field private static final INITIAL_PROBE_RETRY_LIMIT:I = 0x5

.field private static final INITIAL_REDIRECT_MESSAGE_TYPE:I = 0x64

.field private static final IP_ADDR_TAG:Ljava/lang/String; = "IpAddr="

.field private static final LOGIN_ABORTED_CODE:I = 0x97

.field private static final LOGIN_FAILED_CODE:I = 0x64

.field private static final LOGIN_SUCCEEDED_CODE:I = 0x32

.field private static final LOGOFF_NOTIFICATION_MESSAGE_TYPE:I = 0x82

.field private static final LOGOFF_SUCCEEDED_CODE:I = 0x96

.field private static final MAC_ADDR_TAG:Ljava/lang/String; = "MacAddr="

.field private static final NETWORK_ADMIN_ERROR_CODE:I = 0x69

.field public static final NOTIFY_HOTSPOT_AUTHENTICATION_FAILED:I = 0x3

.field public static final NOTIFY_HOTSPOT_NETWORK_FAILED:I = 0x2

.field public static final NOTIFY_HOTSPOT_NONE:I = -0x1

.field public static final NOTIFY_HOTSPOT_NOSIM_FAILED:I = 0x4

.field public static final NOTIFY_HOTSPOT_SUCCESS:I = 0x1

.field private static final NO_ERROR_CODE:I = 0x0

.field private static final NO_SIM_RETRY_LIMIT:I = 0xf

.field private static final NO_WISPR_MESSAGE_FOUND:I = -0x1

.field private static final PARAM_NOT_DEFINED:I = -0x1

.field private static final PARAM_SEPERATOR_TAG:Ljava/lang/String; = "&amp;"

.field private static final PROXY_DETECTION_CODE:I = 0xc8

.field private static final PROXY_NOTIFICATION_MESSAGE_TYPE:I = 0x6e

.field private static final RADIUS_SERVER_CODE:I = 0x66

.field private static final SESSION_ERROR_TIMEOUT:I = -0x2

.field private static final SESSION_RETRY_INTERVAL:I = 0x7d0

.field private static final SESSION_RETRY_LIMIT:I = 0x3

.field private static final SESSION_TIMEOUT_INTERVAL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "WifiWisprClient"

.field private static final VALUE_SEPERATOR_TAG:Ljava/lang/String; = "="

.field public static final WISPR_ABORT_FAILED:I = 0x1fb

.field public static final WISPR_ABORT_SUCCESSFUL:I = 0x1fa

.field public static final WISPR_LOGIN_FAILED_AUTHENTICATION:I = 0x1f6

.field public static final WISPR_LOGIN_FAILED_NETWORK:I = 0x1f5

.field public static final WISPR_LOGIN_FAILED_NOSIM:I = 0x1f7

.field public static final WISPR_LOGIN_SUCCESSFUL:I = 0x1f4

.field public static final WISPR_LOGOFF_FAILED:I = 0x1f9

.field public static final WISPR_LOGOFF_SUCCESSFUL:I = 0x1f8

.field public static mHotSpotNotifType:I


# instance fields
.field private ABORT_URL_PARAM:Ljava/lang/String;

.field private ACCESS_LOCATION_PARAM:Ljava/lang/String;

.field private ACCESS_PROCEDURE_PARAM:Ljava/lang/String;

.field private AUTHENTICATION_SEED_PARAM:Ljava/lang/String;

.field private DELAY_PARAM:Ljava/lang/String;

.field private LOCATION_NAME_PARAM:Ljava/lang/String;

.field private LOGINRESULTS_URL_PARAM:Ljava/lang/String;

.field private LOGIN_URL_PARAM:Ljava/lang/String;

.field private LOGOFF_URL_PARAM:Ljava/lang/String;

.field private MESSAGE_TYPE_PARAM:Ljava/lang/String;

.field private NEXT_URL_PARAM:Ljava/lang/String;

.field private REPLY_MESSAGE_PARAM:Ljava/lang/String;

.field private RESPONSE_CODE_PARAM:Ljava/lang/String;

.field private WISP_ACCESS_GATEWAY_PARAM:Ljava/lang/String;

.field private mAbortLogin:Z

.field private mAbortLoginUrl:Ljava/lang/String;

.field private mAccessLocation:Ljava/lang/String;

.field private mAccessProcedure:Ljava/lang/String;

.field private mAuthSeed:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDelay:I

.field private mInitialGetURL:Ljava/lang/String;

.field private mInitialRetryCounter:I

.field private mIpAddr:Ljava/lang/String;

.field private mLocationName:Ljava/lang/String;

.field private mLogOffUrl:Ljava/lang/String;

.field private mLoginResultsUrl:Ljava/lang/String;

.field private mLoginUrl:Ljava/lang/String;

.field private mMacAddr:Ljava/lang/String;

.field private mMessageType:I

.field private mMsgType:Ljava/lang/String;

.field private mPassWord:Ljava/lang/String;

.field private mResponseCode:I

.field private mRetryCounter:I

.field private mRspCode:Ljava/lang/String;

.field private mSIMmsisdn:Ljava/lang/String;

.field private mServerResponse:Ljava/lang/String;

.field private mSignature:Ljava/lang/String;

.field private mTarget:Landroid/os/Handler;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    const/4 v0, -0x1

    sput v0, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    .line 124
    const-string/jumbo v0, "ro.mot.wifi.hotspot"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_12

    move v0, v2

    :goto_f
    sput-boolean v0, Landroid/net/wifi/WifiWisprClient;->HOTSPOT_ENABLED:Z

    return-void

    :cond_12
    move v0, v1

    goto :goto_f
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;)V
    .registers 6
    .parameter "context"
    .parameter "looper"
    .parameter "target"

    .prologue
    const-string v1, ""

    .line 202
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 146
    const-string v0, ""

    iput-object v1, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    .line 147
    const-string v0, ""

    iput-object v1, p0, Landroid/net/wifi/WifiWisprClient;->mIpAddr:Ljava/lang/String;

    .line 158
    const-string v0, "http://rsc.att.com/library/test/success.html"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mInitialGetURL:Ljava/lang/String;

    .line 159
    const-string v0, "5551234567"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    .line 160
    const-string v0, "2b00042f7481c7b056c4b410d28f33cf"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mPassWord:Ljava/lang/String;

    .line 162
    const-string v0, "WISPAccessGatewayParam>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->WISP_ACCESS_GATEWAY_PARAM:Ljava/lang/String;

    .line 163
    const-string v0, "AccessProcedure>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ACCESS_PROCEDURE_PARAM:Ljava/lang/String;

    .line 164
    const-string v0, "AccessLocation>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ACCESS_LOCATION_PARAM:Ljava/lang/String;

    .line 165
    const-string v0, "LocationName>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOCATION_NAME_PARAM:Ljava/lang/String;

    .line 166
    const-string v0, "LoginURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGIN_URL_PARAM:Ljava/lang/String;

    .line 167
    const-string v0, "AbortLoginURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ABORT_URL_PARAM:Ljava/lang/String;

    .line 168
    const-string v0, "MessageType>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->MESSAGE_TYPE_PARAM:Ljava/lang/String;

    .line 169
    const-string v0, "AuthenticationSeed>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->AUTHENTICATION_SEED_PARAM:Ljava/lang/String;

    .line 170
    const-string v0, "ResponseCode>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    .line 171
    const-string v0, "NextURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->NEXT_URL_PARAM:Ljava/lang/String;

    .line 172
    const-string v0, "Delay>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->DELAY_PARAM:Ljava/lang/String;

    .line 173
    const-string v0, "ReplyMessage>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->REPLY_MESSAGE_PARAM:Ljava/lang/String;

    .line 174
    const-string v0, "LoginResultsURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGINRESULTS_URL_PARAM:Ljava/lang/String;

    .line 175
    const-string v0, "LogoffURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGOFF_URL_PARAM:Ljava/lang/String;

    .line 197
    const-string/jumbo v0, "s9o3j9324oi234uo"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mSignature:Ljava/lang/String;

    .line 203
    iput-object p3, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    .line 204
    iput-object p1, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    .line 205
    return-void
.end method

.method public static checkIfHotSpot(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 14
    .parameter "ssid"
    .parameter "context"

    .prologue
    const/16 v11, 0x22

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 697
    sget-boolean v7, Landroid/net/wifi/WifiWisprClient;->HOTSPOT_ENABLED:Z

    if-eqz v7, :cond_17

    if-eqz p0, :cond_17

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x7

    if-ge v7, v8, :cond_19

    :cond_17
    move v7, v9

    .line 725
    :goto_18
    return v7

    .line 705
    :cond_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v2, v7, v10

    .line 706
    .local v2, lastPos:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 707
    .local v1, cr:Landroid/content/ContentResolver;
    const-string/jumbo v7, "wifi_hotspot_mask_ssid"

    invoke-static {v1, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 708
    .local v6, mHotSpotMask:Ljava/lang/String;
    const-string/jumbo v7, "wifi_hotspot_ssid_1"

    invoke-static {v1, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 709
    .local v3, mHotSpot1:Ljava/lang/String;
    const-string/jumbo v7, "wifi_hotspot_ssid_2"

    invoke-static {v1, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 710
    .local v4, mHotSpot2:Ljava/lang/String;
    const-string/jumbo v7, "wifi_hotspot_ssid_3"

    invoke-static {v1, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, mHotSpot3:Ljava/lang/String;
    if-eqz v6, :cond_47

    if-eqz v3, :cond_47

    if-eqz v4, :cond_47

    if-nez v5, :cond_49

    :cond_47
    move v7, v9

    .line 712
    goto :goto_18

    .line 714
    :cond_49
    const/4 v7, 0x2

    if-lt v2, v7, :cond_58

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_76

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_76

    .line 715
    :cond_58
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, checkString:Ljava/lang/String;
    :goto_5c
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_74

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_74

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_74

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7f

    :cond_74
    move v7, v10

    .line 723
    goto :goto_18

    .line 717
    .end local v0           #checkString:Ljava/lang/String;
    :cond_76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #checkString:Ljava/lang/String;
    goto :goto_5c

    :cond_7f
    move v7, v9

    .line 725
    goto :goto_18
.end method

.method private cleanString(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "taggedString"

    .prologue
    const-string v8, "?"

    const-string v7, ":"

    const-string v6, "/"

    const-string v5, "."

    const-string v4, "-"

    .line 390
    const-string v1, "%3A"

    const-string v2, ":"

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2F"

    const-string v3, "/"

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%3F"

    const-string v3, "?"

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2E"

    const-string v3, "."

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2D"

    const-string v3, "-"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, cleanedString:Ljava/lang/String;
    const-string v1, "%3a"

    const-string v2, ":"

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2f"

    const-string v3, "/"

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%3f"

    const-string v3, "?"

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2e"

    const-string v3, "."

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2d"

    const-string v3, "-"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    return-object v0
.end method

.method public static clearHotSpotNotification(Landroid/content/Context;Z)V
    .registers 6
    .parameter "context"
    .parameter "mNotificationShown"

    .prologue
    const/4 v3, 0x1

    const-string v2, "WifiWisprClient"

    .line 733
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 735
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-nez v0, :cond_e

    .line 750
    :goto_d
    return-void

    .line 739
    :cond_e
    sget v1, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    if-ne v1, v3, :cond_23

    .line 740
    const-string v1, "WifiWisprClient"

    const-string v1, "cancel(ICON_HOTSPOT_LOGIN_SUCCESS)"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const v1, 0x10802ce

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 749
    :cond_1f
    :goto_1f
    const/4 v1, -0x1

    sput v1, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    goto :goto_d

    .line 742
    :cond_23
    sget v1, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    if-le v1, v3, :cond_35

    .line 743
    const-string v1, "WifiWisprClient"

    const-string v1, "cancel(ICON_HOTSPOT_LOGIN_FAIL)"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const v1, 0x10802cd

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1f

    .line 745
    :cond_35
    if-eqz p1, :cond_1f

    .line 746
    const-string v1, "WifiWisprClient"

    const-string v1, "cancel(ICON_NETWORKS_AVAILABLE)"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const v1, 0x10802db

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1f
.end method

.method private executeAuthRequestPost()I
    .registers 22

    .prologue
    .line 460
    const-string v18, "WISPR LOGIN request started"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 461
    const/4 v10, 0x0

    .line 464
    .local v10, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "?"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 465
    .local v12, loginEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 466
    .local v17, postUrl:Ljava/lang/String;
    const-string v4, ""

    .line 467
    .local v4, content:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "="

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 468
    .local v5, contentPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mAuthSeed:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mSignature:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/net/wifi/WifiWisprClient;->getWisprHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiWisprClient;->mPassWord:Ljava/lang/String;

    .line 470
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4d} :catch_25a

    .line 472
    .local v16, nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-lez v12, :cond_91

    .line 473
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v12, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 475
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "LoginUrl Content = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 477
    :cond_91
    :goto_91
    const/16 v18, -0x1

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_12a

    .line 478
    const-string v18, "&amp;"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 479
    .local v15, nextContentPosition:I
    const/16 v18, -0x1

    move v0, v15

    move/from16 v1, v18

    if-eq v0, v1, :cond_f8

    .line 480
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const/16 v19, 0x0

    const-string v20, "="

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    move-object v0, v4

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "="

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object v0, v4

    move/from16 v1, v20

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    const-string v18, "&amp;"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v15

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 483
    const-string v18, "="

    const/16 v19, 0x0

    move-object v0, v4

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    goto :goto_91

    .line 485
    :cond_f8
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const/16 v19, 0x0

    const-string v20, "="

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    move-object v0, v4

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "="

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12a
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4f .. :try_end_12a} :catch_274
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_12a} :catch_25a

    .line 494
    .end local v15           #nextContentPosition:I
    :cond_12a
    :goto_12a
    :try_start_12a
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v19, "username"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v19, "password"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mPassWord:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Android."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "ro.build.version.release"

    const-string/jumbo v20, "unknown"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 499
    .local v13, mobileVersion:Ljava/lang/String;
    const-string/jumbo v18, "ro.product.model"

    const-string/jumbo v19, "unknown"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 500
    .local v14, modelId:Ljava/lang/String;
    const-string v3, "Motorola-WISPr1.0"

    .line 501
    .local v3, appVersion:Ljava/lang/String;
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "attdevicetype"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "attdeviceOS"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "attwifiversion"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 507
    .local v7, httpParams:Lorg/apache/http/params/HttpParams;
    const/16 v18, 0x2710

    move-object v0, v7

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 508
    const/16 v18, 0x2710

    move-object v0, v7

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 509
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_1d0} :catch_25a

    .line 511
    .end local v10           #httpclient:Lorg/apache/http/client/HttpClient;
    .local v11, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_1d0
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    new-instance v18, Ljava/net/URI;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 512
    .local v8, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v18, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 513
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 515
    invoke-interface {v11, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 516
    .local v9, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    .line 517
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiWisprClient;->getWisprMessageType()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    .line 518
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AuthResponse= \n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " <Response> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V
    :try_end_249
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_249} :catch_26f

    move-object v10, v11

    .line 523
    .end local v3           #appVersion:Ljava/lang/String;
    .end local v4           #content:Ljava/lang/String;
    .end local v5           #contentPosition:I
    .end local v7           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v8           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v11           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v12           #loginEnd:I
    .end local v13           #mobileVersion:Ljava/lang/String;
    .end local v14           #modelId:Ljava/lang/String;
    .end local v16           #nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v17           #postUrl:Ljava/lang/String;
    .restart local v10       #httpclient:Lorg/apache/http/client/HttpClient;
    :goto_24a
    if-eqz v10, :cond_253

    .line 524
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 526
    :cond_253
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    move/from16 v18, v0

    return v18

    .line 519
    :catch_25a
    move-exception v18

    move-object/from16 v6, v18

    .line 520
    .local v6, e1:Ljava/lang/Exception;
    :goto_25d
    const/16 v18, -0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    .line 521
    const-string v18, "ProbeResponse== SESSION_ERROR_TIMEOUT\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    goto :goto_24a

    .line 519
    .end local v6           #e1:Ljava/lang/Exception;
    .end local v10           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #appVersion:Ljava/lang/String;
    .restart local v4       #content:Ljava/lang/String;
    .restart local v5       #contentPosition:I
    .restart local v7       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v11       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v12       #loginEnd:I
    .restart local v13       #mobileVersion:Ljava/lang/String;
    .restart local v14       #modelId:Ljava/lang/String;
    .restart local v16       #nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v17       #postUrl:Ljava/lang/String;
    :catch_26f
    move-exception v18

    move-object/from16 v6, v18

    move-object v10, v11

    .end local v11           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v10       #httpclient:Lorg/apache/http/client/HttpClient;
    goto :goto_25d

    .line 491
    .end local v3           #appVersion:Ljava/lang/String;
    .end local v7           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v13           #mobileVersion:Ljava/lang/String;
    .end local v14           #modelId:Ljava/lang/String;
    :catch_274
    move-exception v18

    goto/16 :goto_12a
.end method

.method private executePostUrl(Ljava/lang/String;)I
    .registers 10
    .parameter "postUrl"

    .prologue
    .line 531
    const-string v6, "WISPR POST request started"

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 532
    const/4 v4, 0x0

    .line 534
    .local v4, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_6
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 535
    .local v1, httpParams:Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 536
    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 537
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_7f

    .line 539
    .end local v4           #httpclient:Lorg/apache/http/client/HttpClient;
    .local v5, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_1a
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 540
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 542
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " WISPR Posting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 543
    invoke-interface {v5, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 544
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    .line 545
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executePostRESPONSE= \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 546
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->getWisprMessageType()I

    move-result v6

    iput v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_72} :catch_85

    move-object v4, v5

    .line 550
    .end local v1           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v2           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v4       #httpclient:Lorg/apache/http/client/HttpClient;
    :goto_73
    if-eqz v4, :cond_7c

    .line 551
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 553
    :cond_7c
    iget v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    return v6

    .line 547
    :catch_7f
    move-exception v6

    move-object v0, v6

    .line 548
    .local v0, e1:Ljava/lang/Exception;
    :goto_81
    const/4 v6, -0x2

    iput v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    goto :goto_73

    .line 547
    .end local v0           #e1:Ljava/lang/Exception;
    .end local v4           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v1       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v5       #httpclient:Lorg/apache/http/client/HttpClient;
    :catch_85
    move-exception v6

    move-object v0, v6

    move-object v4, v5

    .end local v5           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v4       #httpclient:Lorg/apache/http/client/HttpClient;
    goto :goto_81
.end method

.method private executeProbeRequestGet()I
    .registers 9

    .prologue
    .line 433
    const-string v6, "WISPR PROBE request started"

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 434
    const/4 v3, 0x0

    .line 436
    .local v3, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_6
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 437
    .local v1, httpParams:Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 438
    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 439
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_6e

    .line 441
    .end local v3           #httpclient:Lorg/apache/http/client/HttpClient;
    .local v4, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_1a
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v6, p0, Landroid/net/wifi/WifiWisprClient;->mInitialGetURL:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 442
    .local v5, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 444
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 445
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    .line 446
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->getWisprMessageType()I

    move-result v6

    iput v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    .line 447
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ProbeResponse= \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " <Response> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_61} :catch_79

    move-object v3, v4

    .line 452
    .end local v1           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v4           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v5           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpclient:Lorg/apache/http/client/HttpClient;
    :goto_62
    if-eqz v3, :cond_6b

    .line 453
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 455
    :cond_6b
    iget v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    return v6

    .line 448
    :catch_6e
    move-exception v6

    move-object v0, v6

    .line 449
    .local v0, e1:Ljava/lang/Exception;
    :goto_70
    const/4 v6, -0x2

    iput v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    .line 450
    const-string v6, "ProbeResponse= SESSION_ERROR_TIMEOUT\n"

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    goto :goto_62

    .line 448
    .end local v0           #e1:Ljava/lang/Exception;
    .end local v3           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v1       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v4       #httpclient:Lorg/apache/http/client/HttpClient;
    :catch_79
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #httpclient:Lorg/apache/http/client/HttpClient;
    goto :goto_70
.end method

.method public static getPersistedHotSpotAutoConnect(Landroid/content/Context;)Z
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v5, "wifi_hotspot_autoconnect"

    .line 803
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 805
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_9
    const-string/jumbo v2, "wifi_hotspot_autoconnect"

    invoke-static {v0, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_f
    .catch Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException; {:try_start_9 .. :try_end_f} :catch_16

    move-result v2

    if-ne v2, v3, :cond_14

    move v2, v3

    .line 808
    :goto_13
    return v2

    :cond_14
    move v2, v4

    .line 805
    goto :goto_13

    .line 806
    :catch_16
    move-exception v2

    move-object v1, v2

    .line 807
    .local v1, e:Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
    const-string/jumbo v2, "wifi_hotspot_autoconnect"

    invoke-static {v0, v5, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v4

    .line 808
    goto :goto_13
.end method

.method private static native getWisprHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private getWisprMessageType()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 397
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiWisprClient;->WISP_ACCESS_GATEWAY_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_15

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiWisprClient;->MESSAGE_TYPE_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_17

    :cond_15
    move v0, v2

    .line 401
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->MESSAGE_TYPE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_16
.end method

.method private handleAbortLoginResponse()V
    .registers 3

    .prologue
    .line 648
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    .line 649
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    sparse-switch v0, :sswitch_data_2e

    .line 662
    :goto_d
    return-void

    .line 651
    :sswitch_e
    const-string v0, "LOGIN SUCCESS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGOFF_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLogOffUrl:Ljava/lang/String;

    .line 653
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    goto :goto_d

    .line 656
    :sswitch_20
    const-string v0, "LOGIN_ABORTED_CODE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1fa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d

    .line 649
    nop

    :sswitch_data_2e
    .sparse-switch
        0x32 -> :sswitch_e
        0x97 -> :sswitch_20
    .end sparse-switch
.end method

.method private handleAuthPollResponse()V
    .registers 4

    .prologue
    const/4 v1, 0x2

    .line 619
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    .line 620
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    sparse-switch v0, :sswitch_data_4e

    .line 643
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    .line 646
    :goto_11
    return-void

    .line 622
    :sswitch_12
    const-string v0, "LOGIN SUCCESS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGOFF_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLogOffUrl:Ljava/lang/String;

    .line 624
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11

    .line 628
    :sswitch_27
    const-string v0, "LOGIN FAILURE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 629
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto :goto_11

    .line 634
    :sswitch_30
    const-string v0, "AUTH PENDING"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->DELAY_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    .line 636
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_45

    .line 638
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    .line 640
    :cond_45
    const/4 v0, 0x3

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_11

    .line 620
    nop

    :sswitch_data_4e
    .sparse-switch
        0x32 -> :sswitch_12
        0x64 -> :sswitch_27
        0xc9 -> :sswitch_30
    .end sparse-switch
.end method

.method private handleLogOffResponse()V
    .registers 3

    .prologue
    .line 664
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    .line 665
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    packed-switch v0, :pswitch_data_28

    .line 671
    const-string v0, "LOGOFF FAILURE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 675
    :goto_19
    return-void

    .line 667
    :pswitch_1a
    const-string v0, "LOGOFF SUCCESS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_19

    .line 665
    nop

    :pswitch_data_28
    .packed-switch 0x96
        :pswitch_1a
    .end packed-switch
.end method

.method private handleProxyNotification()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 567
    const-string v0, "PROXY DETECTED - RETRY"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    .line 569
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3d

    .line 570
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiWisprClient;->NEXT_URL_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_27

    .line 571
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->NEXT_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mInitialGetURL:Ljava/lang/String;

    .line 573
    :cond_27
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->DELAY_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    .line 575
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    if-ne v0, v2, :cond_35

    .line 577
    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    .line 582
    :cond_35
    :goto_35
    const/4 v0, 0x2

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    .line 583
    return-void

    .line 580
    :cond_3d
    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    goto :goto_35
.end method

.method private logWisprMessage(Ljava/lang/String;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 678
    const-string v3, ""

    .line 679
    .local v3, srvDate:Ljava/lang/String;
    const-string v2, ""

    .line 682
    .local v2, logFile:Ljava/lang/String;
    :try_start_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "MM.dd.HH.mm.ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 683
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiWisprClient."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_33

    move-result-object v2

    .line 693
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    :goto_2d
    const-string v4, "WifiWisprClient"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void

    .line 690
    :catch_33
    move-exception v4

    move-object v1, v4

    .line 691
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2d
.end method

.method private parseGetMacIpFromResponse(Ljava/lang/String;)V
    .registers 7
    .parameter "initialGetResponse"

    .prologue
    const/4 v4, -0x1

    const-string v2, "&amp;"

    const-string v2, "MacAddr="

    const-string v2, "IpAddr="

    .line 371
    :try_start_7
    const-string v2, "MacAddr="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_45

    .line 372
    const-string v2, "MacAddr="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "MacAddr="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    .line 373
    .local v1, startIndex:I
    const-string v2, "&amp;"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 374
    .local v0, endIndex:I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAC_ADDR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 377
    .end local v0           #endIndex:I
    .end local v1           #startIndex:I
    :cond_45
    const-string v2, "IpAddr="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_83

    .line 378
    const-string v2, "IpAddr="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "IpAddr="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    .line 379
    .restart local v1       #startIndex:I
    const-string v2, "&amp;"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 380
    .restart local v0       #endIndex:I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mIpAddr:Ljava/lang/String;

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP_ADDR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_83} :catch_84

    .line 387
    .end local v0           #endIndex:I
    .end local v1           #startIndex:I
    :cond_83
    :goto_83
    return-void

    .line 385
    :catch_84
    move-exception v2

    goto :goto_83
.end method

.method private parseHandleAuthNotification()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 586
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    .line 588
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    sparse-switch v0, :sswitch_data_66

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authentication Failure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 613
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    .line 616
    :goto_29
    return-void

    .line 590
    :sswitch_2a
    const-string v0, "LOGIN SUCCESS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGOFF_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLogOffUrl:Ljava/lang/String;

    .line 592
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_29

    .line 596
    :sswitch_3f
    const-string v0, "LOGIN FAILURE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 597
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto :goto_29

    .line 602
    :sswitch_48
    const-string v0, "AUTH PENDING"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->DELAY_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    .line 604
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5d

    .line 606
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    .line 608
    :cond_5d
    const/4 v0, 0x3

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_29

    .line 588
    nop

    :sswitch_data_66
    .sparse-switch
        0x32 -> :sswitch_2a
        0x64 -> :sswitch_3f
        0xc9 -> :sswitch_48
    .end sparse-switch
.end method

.method private parseProbeResponse()V
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ACCESS_PROCEDURE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mAccessProcedure:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ACCESS_LOCATION_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mAccessLocation:Ljava/lang/String;

    .line 558
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOCATION_NAME_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLocationName:Ljava/lang/String;

    .line 559
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->AUTHENTICATION_SEED_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mAuthSeed:Ljava/lang/String;

    .line 560
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGIN_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ABORT_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mAbortLoginUrl:Ljava/lang/String;

    .line 562
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    .line 563
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parseGetMacIpFromResponse(Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method private parserGetWisprParamInt(Ljava/lang/String;)I
    .registers 4
    .parameter "Param"

    .prologue
    const/4 v1, -0x1

    .line 425
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    .line 428
    :goto_a
    return v0

    :cond_b
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_a
.end method

.method private parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "Param"

    .prologue
    .line 409
    const-string v1, "-3"

    .line 411
    .local v1, result:Ljava/lang/String;
    :try_start_2
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4b

    .line 412
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v3, v4

    .line 413
    .local v2, startIndex:I
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "</"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v0, v3, v4

    .line 414
    .local v0, endIndex:I
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_4b} :catch_4c

    .line 420
    .end local v0           #endIndex:I
    .end local v2           #startIndex:I
    :cond_4b
    :goto_4b
    return-object v1

    .line 418
    :catch_4c
    move-exception v3

    goto :goto_4b
.end method

.method private retryWisprRequest(I)V
    .registers 5
    .parameter "event"

    .prologue
    .line 351
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_41

    .line 353
    const-string v0, "WifiWisprClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying: Attempt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Response Code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Msg Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    .line 364
    :goto_40
    return-void

    .line 356
    :cond_41
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_4f

    .line 357
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_40

    .line 361
    :cond_4f
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_40
.end method

.method private startLoginRequest()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const-string v5, "WifiWisprClient"

    .line 326
    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 327
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 328
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_4c

    const/4 v2, 0x0

    :goto_15
    iput-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    .line 329
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    .line 330
    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_33

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    if-nez v2, :cond_6f

    .line 331
    :cond_33
    iget v2, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_51

    .line 332
    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v3, 0x1f7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 333
    const-string v2, "WifiWisprClient"

    const-string v2, "Login Aborted -- No SIM/Invalid SIM"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_4b
    return-void

    .line 328
    :cond_4c
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    .line 335
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETRY ATTEMPT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 336
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v4, v2, v3}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4b

    .line 339
    :cond_6f
    const-string v2, "WifiWisprClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v2, 0x0

    iput v2, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@attmobilityandroid.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSISDN Number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 344
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    goto/16 :goto_4b
.end method


# virtual methods
.method public cancelLogin()V
    .registers 2

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiWisprClient;->mAbortLogin:Z

    .line 321
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    .line 322
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x2

    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b0

    .line 298
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    .line 301
    :goto_9
    return-void

    .line 213
    :pswitch_a
    const-string v0, "WISPR START LOGIN"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 214
    const-string v0, "http://rsc.att.com/library/test/success.html"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mInitialGetURL:Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->startLoginRequest()V

    goto :goto_9

    .line 218
    :pswitch_17
    const-string v0, "WISPR START INITIAL PROBE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->executeProbeRequestGet()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    .line 220
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    sparse-switch v0, :sswitch_data_b8

    .line 262
    const-string v0, "mMessageType == SESSION_ERROR_DEFAULT"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto :goto_9

    .line 222
    :sswitch_30
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mInitialRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWisprClient;->mInitialRetryCounter:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_47

    .line 224
    const-string v0, "WISPR LOGGEDIN_..RECONFIRM"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    .line 226
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    .line 230
    :cond_47
    const-string v0, "WISPR LOGGEDIN_..CONFIRMED"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9

    .line 235
    :sswitch_54
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->parseProbeResponse()V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mResponseCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 237
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    if-eqz v0, :cond_77

    .line 238
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto :goto_9

    .line 241
    :cond_77
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->executeAuthRequestPost()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    .line 242
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_87

    .line 243
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->parseHandleAuthNotification()V

    goto :goto_9

    .line 245
    :cond_87
    const-string v0, "mMessageType != AUTHENTICATION_NOTIFICATION_MESSAGE_TYPE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto/16 :goto_9

    .line 250
    :sswitch_91
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_9c

    .line 251
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->handleProxyNotification()V

    goto/16 :goto_9

    .line 253
    :cond_9c
    const-string v0, "mResponseCode != PROXY_DETECTION_CODE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto/16 :goto_9

    .line 258
    :sswitch_a6
    const-string v0, "mMessageType == SESSION_ERROR_TIMEOUT"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto/16 :goto_9

    .line 211
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_17
    .end packed-switch

    .line 220
    :sswitch_data_b8
    .sparse-switch
        -0x2 -> :sswitch_a6
        -0x1 -> :sswitch_30
        0x64 -> :sswitch_54
        0x6e -> :sswitch_91
    .end sparse-switch
.end method

.method public setHotSpotNotification(IZ)V
    .registers 14
    .parameter "notifType"
    .parameter "mNotificationShown"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const v5, 0x1040470

    const v7, 0x10802cd

    const/4 v6, 0x0

    .line 759
    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 760
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-nez v1, :cond_1e

    .line 761
    const-string v2, "WifiWisprClient"

    const-string v3, "notificationManager == null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_1d
    :goto_1d
    return-void

    .line 764
    :cond_1e
    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Landroid/net/wifi/WifiWisprClient;->clearHotSpotNotification(Landroid/content/Context;Z)V

    .line 766
    sput p1, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    .line 768
    sget v2, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_60

    .line 769
    new-instance v0, Landroid/app/Notification;

    const v2, 0x10802ce

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v4, 0x104046e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v0, v2, v3, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 770
    .local v0, notif:Landroid/app/Notification;
    const/16 v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 771
    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v5, 0x104046e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v8, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 774
    const v2, 0x10802ce

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1d

    .line 775
    .end local v0           #notif:Landroid/app/Notification;
    :cond_60
    sget v2, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_95

    .line 776
    new-instance v0, Landroid/app/Notification;

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v3, 0x104046f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v7, v2, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 777
    .restart local v0       #notif:Landroid/app/Notification;
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 778
    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v5, 0x1040471

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v8, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 783
    invoke-virtual {v1, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1d

    .line 784
    .end local v0           #notif:Landroid/app/Notification;
    :cond_95
    sget v2, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_cb

    .line 785
    new-instance v0, Landroid/app/Notification;

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v3, 0x104046f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v7, v2, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 786
    .restart local v0       #notif:Landroid/app/Notification;
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 787
    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v5, 0x1040471

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v8, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 790
    invoke-virtual {v1, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1d

    .line 791
    .end local v0           #notif:Landroid/app/Notification;
    :cond_cb
    sget v2, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1d

    .line 792
    new-instance v0, Landroid/app/Notification;

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v3, 0x104046f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v7, v2, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 793
    .restart local v0       #notif:Landroid/app/Notification;
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 794
    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v5, 0x1040471

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v8, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 797
    invoke-virtual {v1, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1d
.end method

.method public startLogin()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 305
    :try_start_1
    const-string/jumbo v1, "whash"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_7} :catch_10

    .line 310
    :goto_7
    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    .line 311
    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mInitialRetryCounter:I

    .line 312
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    .line 313
    return-void

    .line 307
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 308
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "WifiWisprClient"

    const-string v2, "ERR: Could not load libwhash.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public startLogoff()V
    .registers 2

    .prologue
    .line 316
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    .line 317
    return-void
.end method

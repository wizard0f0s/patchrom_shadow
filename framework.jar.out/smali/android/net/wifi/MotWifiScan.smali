.class public Landroid/net/wifi/MotWifiScan;
.super Ljava/lang/Object;
.source "MotWifiScan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/MotWifiScan$MotPNOCtrl;,
        Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final MOT_WIFI_MOD_PNO:I = 0x0

.field private static final PNO_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "MotWifiScan"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMotPNOCtrl:Landroid/net/wifi/MotWifiScan$MotPNOCtrl;

.field private mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

.field private mPluggedType:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOn:Z

.field private mSupplicantConnected:Z

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private mWifiState:I

.field public mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V
    .registers 8
    .parameter "context"
    .parameter "tracker"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v3, p0, Landroid/net/wifi/MotWifiScan;->mSupplicantConnected:Z

    .line 83
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    iput-object v1, p0, Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 86
    iput v3, p0, Landroid/net/wifi/MotWifiScan;->mPluggedType:I

    .line 87
    iput-boolean v4, p0, Landroid/net/wifi/MotWifiScan;->mScreenOn:Z

    .line 88
    iput v4, p0, Landroid/net/wifi/MotWifiScan;->mWifiState:I

    .line 90
    new-instance v1, Landroid/net/wifi/MotWifiScan$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/MotWifiScan$1;-><init>(Landroid/net/wifi/MotWifiScan;)V

    iput-object v1, p0, Landroid/net/wifi/MotWifiScan;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    .line 258
    iput-object p2, p0, Landroid/net/wifi/MotWifiScan;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    .line 261
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MotWifiScan"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 263
    new-instance v1, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;-><init>(Landroid/net/wifi/MotWifiScan;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    .line 265
    iput v3, p0, Landroid/net/wifi/MotWifiScan;->mPluggedType:I

    .line 266
    iput-boolean v4, p0, Landroid/net/wifi/MotWifiScan;->mScreenOn:Z

    .line 271
    new-instance v1, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;

    invoke-direct {v1, p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;-><init>(Landroid/net/wifi/MotWifiScan;)V

    iput-object v1, p0, Landroid/net/wifi/MotWifiScan;->mMotPNOCtrl:Landroid/net/wifi/MotWifiScan$MotPNOCtrl;

    .line 275
    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan;->registerForBroadcasts()V

    .line 277
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/MotWifiScan;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Landroid/net/wifi/MotWifiScan;->mPluggedType:I

    return v0
.end method

.method static synthetic access$002(Landroid/net/wifi/MotWifiScan;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Landroid/net/wifi/MotWifiScan;->mPluggedType:I

    return p1
.end method

.method static synthetic access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/MotWifiScan;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Landroid/net/wifi/MotWifiScan;->mWifiState:I

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/MotWifiScan;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Landroid/net/wifi/MotWifiScan;->mWifiState:I

    return p1
.end method

.method static synthetic access$300(Landroid/net/wifi/MotWifiScan;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScan;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$302(Landroid/net/wifi/MotWifiScan;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/net/wifi/MotWifiScan;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$400(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/SupplicantState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/wifi/MotWifiScan;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/wifi/MotWifiScan;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScan;->mSupplicantConnected:Z

    return v0
.end method

.method static synthetic access$602(Landroid/net/wifi/MotWifiScan;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/net/wifi/MotWifiScan;->mSupplicantConnected:Z

    return p1
.end method

.method static synthetic access$700(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotPNOCtrl;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mMotPNOCtrl:Landroid/net/wifi/MotWifiScan$MotPNOCtrl;

    return-object v0
.end method

.method private registerForBroadcasts()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 283
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 285
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 287
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 289
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 291
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 294
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.motorola.wifi.MotWifiScan.action.CHANGE_SCAN_FREQ"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 297
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 303
    return-void
.end method


# virtual methods
.method public notifyDriverPNO()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 810
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v3, v2, v3}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessage(Landroid/os/Message;)Z

    .line 816
    const/4 v0, 0x1

    return v0
.end method

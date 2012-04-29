.class Landroid/net/wifi/MotWifiScan$MotPNOCtrl;
.super Ljava/lang/Object;
.source "MotWifiScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MotWifiScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotPNOCtrl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;
    }
.end annotation


# static fields
.field public static final MOT_ACTION_PNO_CHANGE_SCAN_FREQ:Ljava/lang/String; = "com.motorola.wifi.MotWifiScan.action.CHANGE_SCAN_FREQ"

.field private static final PNO_CHECK_STEPS:I = 0x6

.field public static final PNO_CMD_CHANGE_SCAN_FREQ:I = 0x3

.field public static final PNO_CMD_DRIVER_EVENT:I = 0x7

.field public static final PNO_CMD_DRIVER_EVENT_CHECK:I = 0x8

.field public static final PNO_CMD_PLUG_CHANGE:I = 0x4

.field public static final PNO_CMD_START:I = 0x1

.field public static final PNO_CMD_STOP:I = 0x2

.field public static final PNO_CMD_SUPP_CONNECTION_CHANGE:I = 0x6

.field public static final PNO_CMD_SUPP_STATE_CHANGE:I = 0x5

.field private static final PNO_DEFAULT_SCAN_CYCLE_BCM:I = 0x258

.field private static final PNO_DEFAULT_SCAN_CYCLE_TI:I = 0x64

.field public static final PNO_RUNNING:I = 0x1

.field public static final PNO_SCANNING:I = 0x2

.field public static final PNO_STOPPED:I = 0x0

.field private static final PNO_TAG:Ljava/lang/String; = "MotPNOCtrl"


# instance fields
.field private isTIWifi:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mPNOChangeScanFreqIntent:Landroid/app/PendingIntent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private pnoCheckStep:I

.field private pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

.field private pnoNextStep:I

.field private pnoState:I

.field final synthetic this$0:Landroid/net/wifi/MotWifiScan;


# direct methods
.method constructor <init>(Landroid/net/wifi/MotWifiScan;)V
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x2d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 365
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-boolean v6, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->isTIWifi:Z

    .line 357
    iput-object v4, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    .line 358
    iput v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    .line 359
    iput v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    .line 367
    #getter for: Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/MotWifiScan;->access$400(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 368
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.wifi.MotWifiScan.action.CHANGE_SCAN_FREQ"

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 369
    .local v1, scanFreqIntent:Landroid/content/Intent;
    #getter for: Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/MotWifiScan;->access$400(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mPNOChangeScanFreqIntent:Landroid/app/PendingIntent;

    .line 371
    #getter for: Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/MotWifiScan;->access$400(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 372
    .local v0, pm:Landroid/os/PowerManager;
    const-string v2, "MotPNOCtrl"

    invoke-virtual {v0, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 373
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 375
    iput v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    .line 376
    iput v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    .line 379
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->getWifiInterface()V

    .line 381
    iget-boolean v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->isTIWifi:Z

    if-eqz v2, :cond_66

    .line 382
    new-array v2, v6, [Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    iput-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    .line 383
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    new-instance v3, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    const/16 v4, 0x13b

    invoke-direct {v3, p0, v7, v4}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;-><init>(Landroid/net/wifi/MotWifiScan$MotPNOCtrl;II)V

    aput-object v3, v2, v5

    .line 391
    :goto_65
    return-void

    .line 385
    :cond_66
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    iput-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    .line 386
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    new-instance v3, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    const/16 v4, 0x12c

    invoke-direct {v3, p0, v7, v4}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;-><init>(Landroid/net/wifi/MotWifiScan$MotPNOCtrl;II)V

    aput-object v3, v2, v5

    .line 387
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    new-instance v3, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    const/16 v4, 0x1e0

    invoke-direct {v3, p0, v4, v5}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;-><init>(Landroid/net/wifi/MotWifiScan$MotPNOCtrl;II)V

    aput-object v3, v2, v6

    goto :goto_65
.end method

.method private setAlarm()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 430
    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    if-lt v2, v4, :cond_d

    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    if-eqz v2, :cond_d

    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-eq v2, v4, :cond_e

    .line 451
    :cond_d
    :goto_d
    return-void

    .line 433
    :cond_e
    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    array-length v3, v3

    if-ge v2, v3, :cond_d

    .line 438
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    iget v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    iget v2, v2, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;->duration:I

    if-lez v2, :cond_d

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 445
    .local v0, triggerTime:J
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    iget v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    iget v2, v2, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;->duration:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 446
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mPNOChangeScanFreqIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_d
.end method

.method private verifyPNO()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 458
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiState:I
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    move v3, v5

    .line 499
    :goto_c
    return v3

    .line 463
    :cond_d
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mScreenOn:Z
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$300(Landroid/net/wifi/MotWifiScan;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v3, v5

    .line 465
    goto :goto_c

    .line 468
    :cond_17
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$400(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_sleep_policy"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 472
    .local v2, wifiSleepPolicy:I
    if-nez v2, :cond_2c

    move v3, v5

    .line 474
    goto :goto_c

    .line 477
    :cond_2c
    if-ne v2, v6, :cond_30

    move v3, v5

    .line 480
    goto :goto_c

    .line 483
    :cond_30
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3d

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mPluggedType:I
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$000(Landroid/net/wifi/MotWifiScan;)I

    move-result v3

    if-eqz v3, :cond_3d

    move v3, v5

    .line 487
    goto :goto_c

    .line 490
    :cond_3d
    const-string v3, "MotPNOCtrl"

    const-string/jumbo v4, "verifyPNO: the Wifi sleep policy allows PNO now"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v3, v3, Landroid/net/wifi/MotWifiScan;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 493
    .local v1, theWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 495
    .local v0, suppState:Landroid/net/wifi/SupplicantState;
    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v3, :cond_57

    move v3, v5

    .line 497
    goto :goto_c

    :cond_57
    move v3, v6

    .line 499
    goto :goto_c
.end method


# virtual methods
.method public changeScanFreq()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 569
    iget v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-eq v1, v3, :cond_8

    move v1, v4

    .line 611
    :goto_7
    return v1

    .line 574
    :cond_8
    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->verifyPNO()Z

    move-result v1

    if-nez v1, :cond_13

    .line 576
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    move v1, v3

    .line 577
    goto :goto_7

    .line 580
    :cond_13
    iget v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    array-length v2, v2

    if-lt v1, v2, :cond_1c

    move v1, v3

    .line 583
    goto :goto_7

    .line 586
    :cond_1c
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 587
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    aget-object v1, v1, v2

    iget v0, v1, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;->scanCycleTime:I

    .line 589
    .local v0, newScanCycleTime:I
    if-gtz v0, :cond_31

    .line 590
    iget-boolean v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->isTIWifi:Z

    if-eqz v1, :cond_45

    .line 591
    const/16 v0, 0x64

    .line 597
    :cond_31
    :goto_31
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v1, v1, Landroid/net/wifi/MotWifiScan;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateTracker;->runPNO(I)Z

    move-result v1

    if-nez v1, :cond_48

    .line 600
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 601
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    move v1, v4

    .line 602
    goto :goto_7

    .line 593
    :cond_45
    const/16 v0, 0x258

    goto :goto_31

    .line 608
    :cond_48
    iget v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    .line 609
    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->setAlarm()V

    .line 610
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    move v1, v3

    .line 611
    goto :goto_7
.end method

.method public checkDrivePNO()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 751
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 752
    .local v1, theWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 754
    .local v0, suppState:Landroid/net/wifi/SupplicantState;
    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_14

    .line 788
    :goto_13
    return-void

    .line 760
    :cond_14
    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v2, :cond_29

    .line 762
    iput v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    .line 763
    iput v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    .line 764
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    .line 765
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_13

    .line 770
    :cond_29
    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_5a

    .line 771
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    .line 772
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z

    .line 773
    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    .line 774
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v2}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v5, v4, v5}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_13

    .line 782
    :cond_5a
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    .line 783
    iput v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    .line 784
    iput v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    .line 785
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 786
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->start()Z

    goto :goto_13
.end method

.method public getWifiInterface()V
    .registers 5

    .prologue
    const-string/jumbo v3, "tiwlan0"

    .line 796
    const-string/jumbo v1, "wifi.interface"

    const-string/jumbo v2, "tiwlan0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, wifiInterface:Ljava/lang/String;
    const-string/jumbo v1, "tiwlan0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 798
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->isTIWifi:Z

    .line 802
    :goto_19
    return-void

    .line 800
    :cond_1a
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->isTIWifi:Z

    goto :goto_19
.end method

.method public handleDrivePNO()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const-string v2, "MotPNOCtrl"

    .line 719
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-eq v0, v1, :cond_10

    .line 720
    const-string v0, "MotPNOCtrl"

    const-string v0, "handleDrivePNO: PNO is not in RUNNING state, do nothing"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :goto_f
    return-void

    .line 729
    :cond_10
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    .line 731
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 732
    const-string v0, "MotPNOCtrl"

    const-string v0, "handleDrivePNO: will start scanning now"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    .line 734
    iput v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    .line 735
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v0, v0, Landroid/net/wifi/MotWifiScan;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    .line 736
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v0, v0, Landroid/net/wifi/MotWifiScan;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z

    .line 738
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v1}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v2, v3}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_f
.end method

.method public onMsg(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 396
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_3e

    .line 422
    const-string v0, "MotPNOCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnMsg: unknown msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_1d
    return-void

    .line 398
    :pswitch_1e
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->start()Z

    goto :goto_1d

    .line 401
    :pswitch_22
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    goto :goto_1d

    .line 404
    :pswitch_26
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->changeScanFreq()Z

    goto :goto_1d

    .line 407
    :pswitch_2a
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->suppStateChange()V

    goto :goto_1d

    .line 410
    :pswitch_2e
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->suppConnectionChange()V

    goto :goto_1d

    .line 413
    :pswitch_32
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->plugChange()V

    goto :goto_1d

    .line 416
    :pswitch_36
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->handleDrivePNO()V

    goto :goto_1d

    .line 419
    :pswitch_3a
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->checkDrivePNO()V

    goto :goto_1d

    .line 396
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_32
        :pswitch_2a
        :pswitch_2e
        :pswitch_36
        :pswitch_3a
    .end packed-switch
.end method

.method public plugChange()V
    .registers 3

    .prologue
    .line 506
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->verifyPNO()Z

    move-result v0

    if-nez v0, :cond_f

    .line 508
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    .line 517
    :cond_e
    :goto_e
    return-void

    .line 512
    :cond_f
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-nez v0, :cond_e

    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->verifyPNO()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 514
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->start()Z

    goto :goto_e
.end method

.method public start()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "MotPNOCtrl"

    .line 523
    iget v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-ne v1, v4, :cond_a

    move v1, v4

    .line 564
    :goto_9
    return v1

    .line 528
    :cond_a
    iget v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 530
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    .line 533
    :cond_12
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 534
    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->verifyPNO()Z

    move-result v1

    if-nez v1, :cond_24

    .line 536
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    move v1, v3

    .line 537
    goto :goto_9

    .line 542
    :cond_24
    iget-boolean v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->isTIWifi:Z

    if-eqz v1, :cond_5a

    .line 543
    const/16 v0, 0x64

    .line 547
    .local v0, initScanCycleTime:I
    :goto_2a
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    array-length v1, v1

    if-lez v1, :cond_3d

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;->scanCycleTime:I

    if-lez v1, :cond_3d

    .line 548
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    aget-object v1, v1, v3

    iget v0, v1, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;->scanCycleTime:I

    .line 551
    :cond_3d
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v1, v1, Landroid/net/wifi/MotWifiScan;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateTracker;->runPNO(I)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 552
    const-string v1, "MotPNOCtrl"

    const-string/jumbo v1, "start: PNO start return failed "

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iput v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    .line 554
    iput v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    .line 555
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    move v1, v3

    .line 556
    goto :goto_9

    .line 545
    .end local v0           #initScanCycleTime:I
    :cond_5a
    const/16 v0, 0x258

    .restart local v0       #initScanCycleTime:I
    goto :goto_2a

    .line 558
    :cond_5d
    iput v4, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    .line 559
    iput v4, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    .line 560
    const-string v1, "MotPNOCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start: PNO start ok with init freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->setAlarm()V

    .line 563
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    move v1, v4

    .line 564
    goto :goto_9
.end method

.method public stop()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 618
    iget v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-nez v1, :cond_a

    .line 619
    iput v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    move v1, v4

    .line 643
    :goto_9
    return v1

    .line 623
    :cond_a
    iget v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    .line 624
    iput v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    .line 625
    iput v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    .line 626
    iput v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    .line 627
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    move v1, v4

    .line 628
    goto :goto_9

    .line 631
    :cond_1c
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 632
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v1, v1, Landroid/net/wifi/MotWifiScan;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->stopPNO()Z

    move-result v0

    .line 633
    .local v0, s:Z
    if-eqz v0, :cond_2b

    .line 640
    :cond_2b
    iput v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    .line 641
    iput v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    .line 642
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    move v1, v0

    .line 643
    goto :goto_9
.end method

.method public suppConnectionChange()V
    .registers 3

    .prologue
    .line 698
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantConnected:Z
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$600(Landroid/net/wifi/MotWifiScan;)Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 701
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    .line 714
    :cond_10
    :goto_10
    return-void

    .line 704
    :cond_11
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantConnected:Z
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$600(Landroid/net/wifi/MotWifiScan;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->verifyPNO()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 706
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->start()Z

    goto :goto_10
.end method

.method public suppStateChange()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 653
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$500(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_1c

    .line 654
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-ne v0, v2, :cond_14

    .line 656
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    .line 691
    :cond_13
    :goto_13
    return-void

    .line 658
    :cond_14
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-ne v0, v3, :cond_13

    .line 660
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    goto :goto_13

    .line 669
    :cond_1c
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-eq v0, v2, :cond_13

    .line 674
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-eq v0, v3, :cond_13

    .line 679
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$500(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_42

    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$500(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_42

    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$500(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_13

    .line 682
    :cond_42
    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->verifyPNO()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 688
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->start()Z

    goto :goto_13
.end method

.class Landroid/net/wifi/WifiStateTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V
    .registers 6
    .parameter
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 3488
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 3489
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3490
    #getter for: Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3491
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_use_static_ip"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3493
    const-string/jumbo v1, "wifi_static_ip"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3495
    const-string/jumbo v1, "wifi_static_gateway"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3497
    const-string/jumbo v1, "wifi_static_netmask"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3499
    const-string/jumbo v1, "wifi_static_dns1"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3501
    const-string/jumbo v1, "wifi_static_dns2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3503
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 13
    .parameter "selfChange"

    .prologue
    const/4 v10, 0x1

    .line 3506
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3508
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v7

    .line 3510
    .local v7, wasStaticIp:Z
    const/4 v3, 0x0

    .local v3, oDns2:I
    move v2, v3

    .local v2, oDns1:I
    move v6, v3

    .local v6, oMsk:I
    move v4, v3

    .local v4, oGw:I
    move v5, v3

    .line 3511
    .local v5, oIp:I
    if-eqz v7, :cond_39

    .line 3512
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v5, v8, Landroid/net/DhcpInfo;->ipAddress:I

    .line 3513
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v4, v8, Landroid/net/DhcpInfo;->gateway:I

    .line 3514
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v6, v8, Landroid/net/DhcpInfo;->netmask:I

    .line 3515
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v2, v8, Landroid/net/DhcpInfo;->dns1:I

    .line 3516
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v3, v8, Landroid/net/DhcpInfo;->dns2:I

    .line 3518
    :cond_39
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #calls: Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$700(Landroid/net/wifi/WifiStateTracker;)V

    .line 3520
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$800(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v8

    sget-object v9, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-ne v8, v9, :cond_4d

    .line 3541
    :cond_4c
    :goto_4c
    return-void

    .line 3524
    :cond_4d
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v8

    if-ne v7, v8, :cond_89

    if-eqz v7, :cond_b3

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpInfo;->ipAddress:I

    if-ne v5, v8, :cond_89

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpInfo;->gateway:I

    if-ne v4, v8, :cond_89

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpInfo;->netmask:I

    if-ne v6, v8, :cond_89

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpInfo;->dns1:I

    if-ne v2, v8, :cond_89

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpInfo;->dns2:I

    if-eq v3, v8, :cond_b3

    :cond_89
    move v0, v10

    .line 3533
    .local v0, changed:Z
    :goto_8a
    if-eqz v0, :cond_4c

    .line 3534
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8, v10}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 3535
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #calls: Landroid/net/wifi/WifiStateTracker;->configureInterface()V
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$900(Landroid/net/wifi/WifiStateTracker;)V

    .line 3536
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 3537
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$1100(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    iget-object v10, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v10}, Landroid/net/wifi/WifiStateTracker;->access$1000(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3538
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4c

    .line 3524
    .end local v0           #changed:Z
    .end local v1           #msg:Landroid/os/Message;
    :cond_b3
    const/4 v8, 0x0

    move v0, v8

    goto :goto_8a
.end method

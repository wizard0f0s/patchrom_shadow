.class Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 3546
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 3547
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3548
    return-void
.end method

.method private getValue()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3585
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_17

    move v0, v3

    :goto_16
    return v0

    :cond_17
    move v0, v2

    goto :goto_16
.end method

.method private getValueSecure()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3593
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_networks_secure_available_notification_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_17

    move v0, v3

    :goto_16
    return v0

    :cond_17
    move v0, v2

    goto :goto_16
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 3567
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3569
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->getValue()Z

    move-result v1

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateTracker;->access$1202(Landroid/net/wifi/WifiStateTracker;Z)Z

    .line 3572
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->getValueSecure()Z

    move-result v1

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNotificationSecuredEnabled:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateTracker;->access$1302(Landroid/net/wifi/WifiStateTracker;Z)Z

    .line 3574
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$1200(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNotificationSecuredEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$1300(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 3578
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 3581
    :cond_2c
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #calls: Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$1400(Landroid/net/wifi/WifiStateTracker;)V

    .line 3582
    return-void
.end method

.method public register()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3551
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3552
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3555
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->getValue()Z

    move-result v2

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateTracker;->access$1202(Landroid/net/wifi/WifiStateTracker;Z)Z

    .line 3558
    const-string/jumbo v1, "wifi_networks_secure_available_notification_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3560
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->getValueSecure()Z

    move-result v2

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNotificationSecuredEnabled:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateTracker;->access$1302(Landroid/net/wifi/WifiStateTracker;Z)Z

    .line 3563
    return-void
.end method

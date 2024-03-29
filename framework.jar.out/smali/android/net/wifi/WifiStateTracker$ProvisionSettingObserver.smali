.class Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisionSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 3669
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 3670
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3671
    return-void
.end method

.method private getValue()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3692
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "phone_provisioned"

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


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 3682
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3684
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;->getValue()Z

    move-result v1

    #setter for: Landroid/net/wifi/WifiStateTracker;->mPhoneProvisioned:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateTracker;->access$1502(Landroid/net/wifi/WifiStateTracker;Z)Z

    .line 3685
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mPhoneProvisioned:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$1500(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3686
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$1600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 3689
    :cond_1e
    return-void
.end method

.method public register()V
    .registers 4

    .prologue
    .line 3674
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3675
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "phone_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3677
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;->getValue()Z

    move-result v2

    #setter for: Landroid/net/wifi/WifiStateTracker;->mPhoneProvisioned:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateTracker;->access$1502(Landroid/net/wifi/WifiStateTracker;Z)Z

    .line 3678
    return-void
.end method

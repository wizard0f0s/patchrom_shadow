.class Landroid/net/wifi/MotWifiScan$1;
.super Landroid/content/BroadcastReceiver;
.source "MotWifiScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MotWifiScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/MotWifiScan;


# direct methods
.method constructor <init>(Landroid/net/wifi/MotWifiScan;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 106
    const-string/jumbo v6, "plugged"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, pluggedType:I
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mPluggedType:I
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$000(Landroid/net/wifi/MotWifiScan;)I

    move-result v6

    if-eq v6, v1, :cond_38

    .line 110
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mPluggedType:I
    invoke-static {v6, v1}, Landroid/net/wifi/MotWifiScan;->access$002(Landroid/net/wifi/MotWifiScan;I)I

    .line 112
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v7}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v7

    invoke-virtual {v7, v9, v10, v9}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    .end local v1           #pluggedType:I
    :cond_38
    :goto_38
    return-void

    .line 119
    :cond_39
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 121
    const-string/jumbo v6, "wifi_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 122
    .local v5, wifiState:I
    const-string/jumbo v6, "previous_wifi_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 127
    .local v2, previousWifiState:I
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mWifiState:I
    invoke-static {v6, v5}, Landroid/net/wifi/MotWifiScan;->access$202(Landroid/net/wifi/MotWifiScan;I)I

    .line 131
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiState:I
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)I

    move-result v6

    if-ne v6, v8, :cond_70

    .line 132
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v7}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v7

    invoke-virtual {v7, v9, v11, v9}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_38

    .line 136
    :cond_70
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiState:I
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)I

    move-result v6

    if-ne v6, v12, :cond_38

    .line 137
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v7}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v7

    invoke-virtual {v7, v9, v8, v9}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_38

    .line 144
    .end local v2           #previousWifiState:I
    .end local v5           #wifiState:I
    :cond_8c
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 148
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mScreenOn:Z
    invoke-static {v6, v8}, Landroid/net/wifi/MotWifiScan;->access$302(Landroid/net/wifi/MotWifiScan;Z)Z

    .line 152
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v7}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v7

    invoke-virtual {v7, v9, v11, v9}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_38

    .line 159
    :cond_ad
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e0

    .line 161
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mScreenOn:Z
    invoke-static {v6, v9}, Landroid/net/wifi/MotWifiScan;->access$302(Landroid/net/wifi/MotWifiScan;Z)Z

    .line 162
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$400(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_sleep_policy"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 171
    .local v4, wifiSleepPolicy:I
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v7}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v7

    invoke-virtual {v7, v9, v8, v9}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_38

    .line 179
    .end local v4           #wifiSleepPolicy:I
    :cond_e0
    const-string v6, "com.motorola.wifi.MotWifiScan.action.CHANGE_SCAN_FREQ"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fd

    .line 182
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v7}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v7

    invoke-virtual {v7, v9, v12, v9}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_38

    .line 187
    :cond_fd
    const-string v6, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_130

    .line 188
    const-string v6, "newState"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SupplicantState;

    .line 191
    .local v3, s:Landroid/net/wifi/SupplicantState;
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$500(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/SupplicantState;

    move-result-object v6

    if-eq v6, v3, :cond_38

    .line 192
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v6, v3}, Landroid/net/wifi/MotWifiScan;->access$502(Landroid/net/wifi/MotWifiScan;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;

    .line 194
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v7}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v9, v8, v9}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_38

    .line 200
    .end local v3           #s:Landroid/net/wifi/SupplicantState;
    :cond_130
    const-string v6, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 201
    const-string v6, "connected"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 204
    .local v3, s:Z
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantConnected:Z
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$600(Landroid/net/wifi/MotWifiScan;)Z

    move-result v6

    if-eq v6, v3, :cond_38

    .line 205
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mSupplicantConnected:Z
    invoke-static {v6, v3}, Landroid/net/wifi/MotWifiScan;->access$602(Landroid/net/wifi/MotWifiScan;Z)Z

    .line 207
    iget-object v6, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v6}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v7}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v9, v8, v9}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_38
.end method

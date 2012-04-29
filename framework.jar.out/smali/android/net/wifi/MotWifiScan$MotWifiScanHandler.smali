.class Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
.super Landroid/os/Handler;
.source "MotWifiScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MotWifiScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotWifiScanHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/MotWifiScan;


# direct methods
.method public constructor <init>(Landroid/net/wifi/MotWifiScan;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 227
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->this$0:Landroid/net/wifi/MotWifiScan;

    .line 228
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 229
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 235
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1a

    .line 251
    :goto_5
    return-void

    .line 240
    :pswitch_6
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotPNOCtrl:Landroid/net/wifi/MotWifiScan$MotPNOCtrl;
    invoke-static {v1}, Landroid/net/wifi/MotWifiScan;->access$700(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotPNOCtrl;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->onMsg(Landroid/os/Message;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_5

    .line 248
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 249
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MotWifiScan"

    const-string v2, "FATAL error in MotWifiScanHandler.handleMessage(), MUST catch:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 235
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

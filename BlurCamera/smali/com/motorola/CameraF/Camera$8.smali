.class Lcom/motorola/CameraF/Camera$8;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camera;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5764
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$8;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 5765
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$8;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v3}, Lcom/motorola/CameraF/Camera$ImageCapture;->getLastCaptureUri()Landroid/net/Uri;

    move-result-object v2

    .line 5766
    .local v2, u:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5767
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5768
    const-string v3, "image/jpeg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5769
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5771
    :try_start_0
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$8;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$8;->this$0:Lcom/motorola/CameraF/Camera;

    const v5, 0x7f0b002b

    invoke-virtual {v4, v5}, Lcom/motorola/CameraF/Camera;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/CameraF/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5776
    :goto_0
    return-void

    .line 5773
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 5774
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$8;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$8;->this$0:Lcom/motorola/CameraF/Camera;

    const v5, 0x7f0b0032

    invoke-virtual {v4, v5}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$2900(Lcom/motorola/CameraF/Camera;Ljava/lang/String;)V

    goto :goto_0
.end method

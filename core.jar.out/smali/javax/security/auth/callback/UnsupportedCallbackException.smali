.class public Ljavax/security/auth/callback/UnsupportedCallbackException;
.super Ljava/lang/Exception;
.source "UnsupportedCallbackException.java"


# static fields
.field private static final serialVersionUID:J = -0x5f63c70ff58df497L


# instance fields
.field private callback:Ljavax/security/auth/callback/Callback;


# direct methods
.method public constructor <init>(Ljavax/security/auth/callback/Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 39
    iput-object p1, p0, Ljavax/security/auth/callback/UnsupportedCallbackException;->callback:Ljavax/security/auth/callback/Callback;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/callback/Callback;Ljava/lang/String;)V
    .registers 3
    .parameter "callback"
    .parameter "message"

    .prologue
    .line 52
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Ljavax/security/auth/callback/UnsupportedCallbackException;->callback:Ljavax/security/auth/callback/Callback;

    .line 54
    return-void
.end method


# virtual methods
.method public getCallback()Ljavax/security/auth/callback/Callback;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Ljavax/security/auth/callback/UnsupportedCallbackException;->callback:Ljavax/security/auth/callback/Callback;

    return-object v0
.end method

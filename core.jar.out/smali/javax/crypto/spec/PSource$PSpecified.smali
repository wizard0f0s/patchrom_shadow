.class public final Ljavax/crypto/spec/PSource$PSpecified;
.super Ljavax/crypto/spec/PSource;
.source "PSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/spec/PSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PSpecified"
.end annotation


# static fields
.field public static final DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;


# instance fields
.field private final p:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v0}, Ljavax/crypto/spec/PSource$PSpecified;-><init>()V

    sput-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 70
    const-string v0, "PSpecified"

    invoke-direct {p0, v0}, Ljavax/crypto/spec/PSource;-><init>(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    .line 72
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 84
    const-string v0, "PSpecified"

    invoke-direct {p0, v0}, Ljavax/crypto/spec/PSource;-><init>(Ljava/lang/String;)V

    .line 85
    if-nez p1, :cond_e

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_e
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    .line 91
    iget-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    return-void
.end method


# virtual methods
.method public getValue()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v1, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 101
    .local v0, result:[B
    iget-object v1, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    iget-object v2, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    return-object v0
.end method

.class public Ljavax/crypto/spec/IvParameterSpec;
.super Ljava/lang/Object;
.source "IvParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final iv:[B


# direct methods
.method public constructor <init>([B)V
    .registers 5
    .parameter "iv"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_e

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "iv == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_e
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    .line 47
    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .parameter "iv"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p1, :cond_9

    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_f

    .line 70
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 72
    :cond_f
    if-ltz p2, :cond_13

    if-gez p3, :cond_19

    .line 73
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 75
    :cond_19
    new-array v0, p3, [B

    iput-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    .line 76
    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    return-void
.end method


# virtual methods
.method public getIV()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-object v1, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 86
    .local v0, res:[B
    iget-object v1, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    iget-object v2, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-object v0
.end method

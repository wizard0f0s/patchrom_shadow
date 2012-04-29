.class public Ljavax/crypto/spec/PBEKeySpec;
.super Ljava/lang/Object;
.source "PBEKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final iterationCount:I

.field private final keyLength:I

.field private password:[C

.field private final salt:[B


# direct methods
.method public constructor <init>([C)V
    .registers 5
    .parameter "password"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_12

    .line 44
    new-array v0, v2, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 49
    :goto_a
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 50
    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 51
    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 52
    return-void

    .line 46
    :cond_12
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 47
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method public constructor <init>([C[BI)V
    .registers 7
    .parameter "password"
    .parameter "salt"
    .parameter "iterationCount"

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    if-nez p2, :cond_e

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "salt == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_e
    array-length v0, p2

    if-nez v0, :cond_19

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "salt.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_19
    if-gtz p3, :cond_23

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iterationCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_23
    if-nez p1, :cond_39

    .line 126
    new-array v0, v2, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 131
    :goto_29
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 132
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 134
    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 135
    return-void

    .line 128
    :cond_39
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 129
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29
.end method

.method public constructor <init>([C[BII)V
    .registers 8
    .parameter "password"
    .parameter "salt"
    .parameter "iterationCount"
    .parameter "keyLength"

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-nez p2, :cond_e

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "salt == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_e
    array-length v0, p2

    if-nez v0, :cond_19

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "salt.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_19
    if-gtz p3, :cond_23

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iterationCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_23
    if-gtz p4, :cond_2d

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyLength <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2d
    if-nez p1, :cond_43

    .line 88
    new-array v0, v2, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 93
    :goto_33
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 94
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 96
    iput p4, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 97
    return-void

    .line 90
    :cond_43
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 91
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33
.end method


# virtual methods
.method public final clearPassword()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 143
    return-void
.end method

.method public final getIterationCount()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    return v0
.end method

.method public final getKeyLength()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    return v0
.end method

.method public final getPassword()[C
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    if-nez v1, :cond_d

    .line 154
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The password has been cleared"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_d
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, v1

    new-array v0, v1, [C

    .line 157
    .local v0, result:[C
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    iget-object v2, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    return-object v0
.end method

.method public final getSalt()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    if-nez v1, :cond_7

    .line 169
    const/4 v1, 0x0

    .line 173
    :goto_6
    return-object v1

    .line 171
    :cond_7
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 172
    .local v0, result:[B
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    iget-object v2, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 173
    goto :goto_6
.end method

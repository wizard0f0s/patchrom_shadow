.class public Ljavax/crypto/KeyAgreement;
.super Ljava/lang/Object;
.source "KeyAgreement.java"


# static fields
.field private static final engine:Lorg/apache/harmony/security/fortress/Engine;

.field private static final rndm:Ljava/security/SecureRandom;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/crypto/KeyAgreementSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyAgreement"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/KeyAgreement;->engine:Lorg/apache/harmony/security/fortress/Engine;

    .line 42
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/KeyAgreement;->rndm:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .parameter "keyAgreeSpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    .line 66
    iput-object p3, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    .line 68
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p0, :cond_8

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 104
    :cond_8
    sget-object v1, Ljavax/crypto/KeyAgreement;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 105
    :try_start_b
    sget-object v0, Ljavax/crypto/KeyAgreement;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    new-instance v2, Ljavax/crypto/KeyAgreement;

    sget-object v0, Ljavax/crypto/KeyAgreement;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/KeyAgreementSpi;

    sget-object v3, Ljavax/crypto/KeyAgreement;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v3, v3, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v2, v0, v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 108
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 133
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 134
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider is null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_10
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 137
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_1c

    .line 138
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_1c
    invoke-static {p0, v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 163
    if-nez p1, :cond_a

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_a
    if-nez p0, :cond_12

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 169
    :cond_12
    sget-object v1, Ljavax/crypto/KeyAgreement;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 170
    :try_start_15
    sget-object v0, Ljavax/crypto/KeyAgreement;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 171
    new-instance v2, Ljavax/crypto/KeyAgreement;

    sget-object v0, Ljavax/crypto/KeyAgreement;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/KeyAgreementSpi;

    invoke-direct {v2, v0, p1, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 173
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_28

    throw v0
.end method


# virtual methods
.method public final doPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 4
    .parameter "key"
    .parameter "lastPhase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final generateSecret([BI)I
    .registers 4
    .parameter "sharedSecret"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret([BI)I

    move-result v0

    return v0
.end method

.method public final generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 3
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public final generateSecret()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    sget-object v1, Ljavax/crypto/KeyAgreement;->rndm:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 187
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 4
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 204
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    sget-object v1, Ljavax/crypto/KeyAgreement;->rndm:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 224
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 247
    return-void
.end method

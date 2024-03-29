.class public Ljavax/net/ssl/SSLContext;
.super Ljava/lang/Object;
.source "SSLContext.java"


# static fields
.field private static DEFAULT:Ljavax/net/ssl/SSLContext; = null

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final SERVICE:Ljava/lang/String; = "SSLContext"


# instance fields
.field private final protocol:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/net/ssl/SSLContextSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "SSLContext"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .parameter "contextSpi"
    .parameter "provider"
    .parameter "protocol"

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Ljavax/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    .line 185
    iput-object p3, p0, Ljavax/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    .line 186
    iput-object p1, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    .line 187
    return-void
.end method

.method public static getDefault()Ljavax/net/ssl/SSLContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v0

    .line 59
    :try_start_3
    sget-object v1, Ljavax/net/ssl/SSLContext;->DEFAULT:Ljavax/net/ssl/SSLContext;

    if-nez v1, :cond_f

    .line 60
    const-string v1, "Default"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Ljavax/net/ssl/SSLContext;->DEFAULT:Ljavax/net/ssl/SSLContext;

    .line 62
    :cond_f
    sget-object v1, Ljavax/net/ssl/SSLContext;->DEFAULT:Ljavax/net/ssl/SSLContext;

    monitor-exit v0

    return-object v1

    .line 63
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .registers 5
    .parameter "protocol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p0, :cond_a

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocol is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_a
    sget-object v1, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 99
    :try_start_d
    sget-object v0, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    new-instance v2, Ljavax/net/ssl/SSLContext;

    sget-object v0, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljavax/net/ssl/SSLContextSpi;

    sget-object v3, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v3, v3, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v2, v0, v3, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 101
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_24

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .registers 5
    .parameter "protocol"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 124
    if-nez p1, :cond_a

    .line 125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_18

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_18
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 131
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_24

    .line 132
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_24
    invoke-static {p0, v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    .registers 5
    .parameter "protocol"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 155
    if-nez p1, :cond_a

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_a
    if-nez p0, :cond_14

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocol is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_14
    sget-object v1, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 162
    :try_start_17
    sget-object v0, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 163
    new-instance v2, Ljavax/net/ssl/SSLContext;

    sget-object v0, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljavax/net/ssl/SSLContextSpi;

    invoke-direct {v2, v0, p1, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 164
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public static setDefault(Ljavax/net/ssl/SSLContext;)V
    .registers 3
    .parameter "sslContext"

    .prologue
    .line 74
    if-nez p0, :cond_a

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslContext == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_a
    sget-object v0, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v0

    .line 78
    :try_start_d
    sput-object p0, Ljavax/net/ssl/SSLContext;->DEFAULT:Ljavax/net/ssl/SSLContext;

    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw v1
.end method


# virtual methods
.method public final createSSLEngine()Ljavax/net/ssl/SSLEngine;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method public final createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .registers 4
    .parameter "peerHost"
    .parameter "peerPort"

    .prologue
    .line 268
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLContextSpi;->engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method public final getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .registers 5
    .parameter "km"
    .parameter "tm"
    .parameter "sr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLContextSpi;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 224
    return-void
.end method

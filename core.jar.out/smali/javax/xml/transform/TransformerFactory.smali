.class public abstract Ljavax/xml/transform/TransformerFactory;
.super Ljava/lang/Object;
.source "TransformerFactory.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Ljavax/xml/transform/TransformerFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-direct {v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;-><init>()V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/transform/TransformerFactory;
    .registers 6
    .parameter "factoryClassName"
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 91
    if-nez p0, :cond_a

    .line 92
    new-instance v2, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    const-string v3, "factoryClassName == null"

    invoke-direct {v2, v3}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_a
    if-nez p1, :cond_14

    .line 95
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 98
    :cond_14
    if-eqz p1, :cond_22

    :try_start_16
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 101
    .local v1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1b
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/xml/transform/TransformerFactory;

    return-object p0

    .line 98
    .end local v1           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0
    :cond_22
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_25} :catch_28
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_25} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_25} :catch_38

    move-result-object v2

    move-object v1, v2

    goto :goto_1b

    .line 102
    .end local p0
    :catch_28
    move-exception v2

    move-object v0, v2

    .line 103
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    invoke-direct {v2, v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 104
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_30
    move-exception v2

    move-object v0, v2

    .line 105
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    invoke-direct {v2, v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 106
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_38
    move-exception v2

    move-object v0, v2

    .line 107
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    invoke-direct {v2, v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public abstract getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getErrorListener()Ljavax/xml/transform/ErrorListener;
.end method

.method public abstract getFeature(Ljava/lang/String;)Z
.end method

.method public abstract getURIResolver()Ljavax/xml/transform/URIResolver;
.end method

.method public abstract newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformer()Ljavax/xml/transform/Transformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setErrorListener(Ljavax/xml/transform/ErrorListener;)V
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract setURIResolver(Ljavax/xml/transform/URIResolver;)V
.end method

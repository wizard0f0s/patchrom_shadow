.class Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
.super Ljava/lang/Error;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/xml/datatype/FactoryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationError"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x32938e56a417b293L


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .parameter "msg"
    .parameter "x"

    .prologue
    .line 339
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 340
    iput-object p2, p0, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;->exception:Ljava/lang/Exception;

    .line 341
    return-void
.end method


# virtual methods
.method getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method

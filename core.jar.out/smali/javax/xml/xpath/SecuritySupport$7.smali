.class final Ljavax/xml/xpath/SecuritySupport$7;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/xml/xpath/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cl:Ljava/lang/ClassLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Ljavax/xml/xpath/SecuritySupport$7;->val$cl:Ljava/lang/ClassLoader;

    iput-object p2, p0, Ljavax/xml/xpath/SecuritySupport$7;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 143
    iget-object v1, p0, Ljavax/xml/xpath/SecuritySupport$7;->val$cl:Ljava/lang/ClassLoader;

    if-nez v1, :cond_b

    .line 144
    iget-object v1, p0, Ljavax/xml/xpath/SecuritySupport$7;->val$name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 148
    .local v0, ris:Ljava/io/InputStream;
    :goto_a
    return-object v0

    .line 146
    .end local v0           #ris:Ljava/io/InputStream;
    :cond_b
    iget-object v1, p0, Ljavax/xml/xpath/SecuritySupport$7;->val$cl:Ljava/lang/ClassLoader;

    iget-object v2, p0, Ljavax/xml/xpath/SecuritySupport$7;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0       #ris:Ljava/io/InputStream;
    goto :goto_a
.end method

.class public Landroid/net/wifi/WifiConfiguration$EnterpriseField;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnterpriseField"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiConfiguration;

.field private value:Ljava/lang/String;

.field private varName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "varName"

    .prologue
    .line 103
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->this$0:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value:Ljava/lang/String;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public value()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value:Ljava/lang/String;

    return-object v0
.end method

.method public varName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName:Ljava/lang/String;

    return-object v0
.end method

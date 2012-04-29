.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x19

.field static final TRANSACTION_acquireWifiLock:I = 0x14

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x2

.field static final TRANSACTION_disableNetwork:I = 0x5

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_enableNetwork:I = 0x4

.field static final TRANSACTION_getConfiguredNetworks:I = 0x1

.field static final TRANSACTION_getConnectedDevList:I = 0x21

.field static final TRANSACTION_getConnectionInfo:I = 0xc

.field static final TRANSACTION_getDhcpInfo:I = 0x13

.field static final TRANSACTION_getNumAllowedChannels:I = 0xf

.field static final TRANSACTION_getScanResults:I = 0x8

.field static final TRANSACTION_getValidChannelCounts:I = 0x11

.field static final TRANSACTION_getWifiApConfiguration:I = 0x1f

.field static final TRANSACTION_getWifiApEnabledState:I = 0x1e

.field static final TRANSACTION_getWifiEnabledState:I = 0xe

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x17

.field static final TRANSACTION_isMulticastEnabled:I = 0x18

.field static final TRANSACTION_manageSta:I = 0x22

.field static final TRANSACTION_notifyDriverPNO:I = 0x23

.field static final TRANSACTION_pingSupplicant:I = 0x6

.field static final TRANSACTION_reassociate:I = 0xb

.field static final TRANSACTION_reconnect:I = 0xa

.field static final TRANSACTION_releaseMulticastLock:I = 0x1a

.field static final TRANSACTION_releaseWifiLock:I = 0x16

.field static final TRANSACTION_removeNetwork:I = 0x3

.field static final TRANSACTION_saveConfiguration:I = 0x12

.field static final TRANSACTION_setNumAllowedChannels:I = 0x10

.field static final TRANSACTION_setWifiApConfiguration:I = 0x20

.field static final TRANSACTION_setWifiApEnabled:I = 0x1d

.field static final TRANSACTION_setWifiEnabled:I = 0xd

.field static final TRANSACTION_startScan:I = 0x7

.field static final TRANSACTION_startWpsPbc:I = 0x1b

.field static final TRANSACTION_startWpsPin:I = 0x1c

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x15


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_3
    return-object v1

    .line 31
    :cond_4
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_3b0

    .line 423
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_7
    return v9

    .line 47
    :sswitch_8
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v9, 0x1

    goto :goto_7

    .line 52
    :sswitch_f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    .line 54
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 56
    const/4 v9, 0x1

    goto :goto_7

    .line 60
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_20
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3f

    .line 63
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 68
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_33
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    .line 69
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/4 v9, 0x1

    goto :goto_7

    .line 66
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #_result:I
    :cond_3f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_33

    .line 75
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_41
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v5

    .line 79
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v5, :cond_59

    const/4 v9, 0x1

    :goto_54
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v9, 0x1

    goto :goto_7

    .line 80
    :cond_59
    const/4 v9, 0x0

    goto :goto_54

    .line 85
    .end local v0           #_arg0:I
    .end local v5           #_result:Z
    :sswitch_5b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7b

    const/4 v9, 0x1

    move v2, v9

    .line 90
    .local v2, _arg1:Z
    :goto_6c
    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v5

    .line 91
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v5, :cond_7e

    const/4 v9, 0x1

    :goto_76
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v9, 0x1

    goto :goto_7

    .line 89
    .end local v2           #_arg1:Z
    .end local v5           #_result:Z
    :cond_7b
    const/4 v9, 0x0

    move v2, v9

    goto :goto_6c

    .line 92
    .restart local v2       #_arg1:Z
    .restart local v5       #_result:Z
    :cond_7e
    const/4 v9, 0x0

    goto :goto_76

    .line 97
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Z
    .end local v5           #_result:Z
    :sswitch_80
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v5

    .line 101
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v5, :cond_99

    const/4 v9, 0x1

    :goto_93
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 102
    :cond_99
    const/4 v9, 0x0

    goto :goto_93

    .line 107
    .end local v0           #_arg0:I
    .end local v5           #_result:Z
    :sswitch_9b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v5

    .line 109
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v5, :cond_b0

    const/4 v9, 0x1

    :goto_aa
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 110
    :cond_b0
    const/4 v9, 0x0

    goto :goto_aa

    .line 115
    .end local v5           #_result:Z
    :sswitch_b2
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c8

    const/4 v9, 0x1

    move v0, v9

    .line 118
    .local v0, _arg0:Z
    :goto_bf
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Z)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 117
    .end local v0           #_arg0:Z
    :cond_c8
    const/4 v9, 0x0

    move v0, v9

    goto :goto_bf

    .line 124
    :sswitch_cb
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 126
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 128
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 132
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_dd
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()Z

    move-result v5

    .line 134
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v5, :cond_f2

    const/4 v9, 0x1

    :goto_ec
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 135
    :cond_f2
    const/4 v9, 0x0

    goto :goto_ec

    .line 140
    .end local v5           #_result:Z
    :sswitch_f4
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()Z

    move-result v5

    .line 142
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v5, :cond_109

    const/4 v9, 0x1

    :goto_103
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 143
    :cond_109
    const/4 v9, 0x0

    goto :goto_103

    .line 148
    .end local v5           #_result:Z
    :sswitch_10b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()Z

    move-result v5

    .line 150
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v5, :cond_120

    const/4 v9, 0x1

    :goto_11a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 151
    :cond_120
    const/4 v9, 0x0

    goto :goto_11a

    .line 156
    .end local v5           #_result:Z
    :sswitch_122
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 158
    .local v5, _result:Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v5, :cond_13b

    .line 160
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v9, 0x1

    invoke-virtual {v5, p3, v9}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 166
    :goto_138
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 164
    :cond_13b
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_138

    .line 170
    .end local v5           #_result:Landroid/net/wifi/WifiInfo;
    :sswitch_140
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_15d

    const/4 v9, 0x1

    move v0, v9

    .line 173
    .restart local v0       #_arg0:Z
    :goto_14d
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v5

    .line 174
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v5, :cond_160

    const/4 v9, 0x1

    :goto_157
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 172
    .end local v0           #_arg0:Z
    .end local v5           #_result:Z
    :cond_15d
    const/4 v9, 0x0

    move v0, v9

    goto :goto_14d

    .line 175
    .restart local v0       #_arg0:Z
    .restart local v5       #_result:Z
    :cond_160
    const/4 v9, 0x0

    goto :goto_157

    .line 180
    .end local v0           #_arg0:Z
    .end local v5           #_result:Z
    :sswitch_162
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v5

    .line 182
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 188
    .end local v5           #_result:I
    :sswitch_174
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getNumAllowedChannels()I

    move-result v5

    .line 190
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 196
    .end local v5           #_result:I
    :sswitch_186
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1a7

    const/4 v9, 0x1

    move v2, v9

    .line 201
    .restart local v2       #_arg1:Z
    :goto_197
    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setNumAllowedChannels(IZ)Z

    move-result v5

    .line 202
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v5, :cond_1aa

    const/4 v9, 0x1

    :goto_1a1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 200
    .end local v2           #_arg1:Z
    .end local v5           #_result:Z
    :cond_1a7
    const/4 v9, 0x0

    move v2, v9

    goto :goto_197

    .line 203
    .restart local v2       #_arg1:Z
    .restart local v5       #_result:Z
    :cond_1aa
    const/4 v9, 0x0

    goto :goto_1a1

    .line 208
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Z
    .end local v5           #_result:Z
    :sswitch_1ac
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getValidChannelCounts()[I

    move-result-object v5

    .line 210
    .local v5, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 212
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 216
    .end local v5           #_result:[I
    :sswitch_1be
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v5

    .line 218
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v5, :cond_1d3

    const/4 v9, 0x1

    :goto_1cd
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 219
    :cond_1d3
    const/4 v9, 0x0

    goto :goto_1cd

    .line 224
    .end local v5           #_result:Z
    :sswitch_1d5
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v5

    .line 226
    .local v5, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v5, :cond_1ee

    .line 228
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v9, 0x1

    invoke-virtual {v5, p3, v9}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 234
    :goto_1eb
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 232
    :cond_1ee
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1eb

    .line 238
    .end local v5           #_result:Landroid/net/DhcpInfo;
    :sswitch_1f3
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 242
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_222

    .line 247
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource;

    .line 252
    .local v4, _arg3:Landroid/os/WorkSource;
    :goto_212
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v5

    .line 253
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v5, :cond_224

    const/4 v9, 0x1

    :goto_21c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 250
    .end local v4           #_arg3:Landroid/os/WorkSource;
    .end local v5           #_result:Z
    :cond_222
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/os/WorkSource;
    goto :goto_212

    .line 254
    .restart local v5       #_result:Z
    :cond_224
    const/4 v9, 0x0

    goto :goto_21c

    .line 259
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Landroid/os/WorkSource;
    .end local v5           #_result:Z
    :sswitch_226
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 263
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_246

    .line 264
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 269
    .local v2, _arg1:Landroid/os/WorkSource;
    :goto_23d
    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 267
    .end local v2           #_arg1:Landroid/os/WorkSource;
    :cond_246
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/WorkSource;
    goto :goto_23d

    .line 275
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Landroid/os/WorkSource;
    :sswitch_248
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 278
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v5

    .line 279
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v5, :cond_261

    const/4 v9, 0x1

    :goto_25b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 280
    :cond_261
    const/4 v9, 0x0

    goto :goto_25b

    .line 285
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v5           #_result:Z
    :sswitch_263
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 292
    :sswitch_271
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v5

    .line 294
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v5, :cond_286

    const/4 v9, 0x1

    :goto_280
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 295
    :cond_286
    const/4 v9, 0x0

    goto :goto_280

    .line 300
    .end local v5           #_result:Z
    :sswitch_288
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 304
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 311
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_29e
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 318
    :sswitch_2ac
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 323
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/IWifiManager$Stub;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 324
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v5, :cond_2c9

    const/4 v9, 0x1

    :goto_2c3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 325
    :cond_2c9
    const/4 v9, 0x0

    goto :goto_2c3

    .line 330
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_2cb
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->startWpsPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 344
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_2e9
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_314

    .line 347
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 353
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_2fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_316

    const/4 v9, 0x1

    move v2, v9

    .line 354
    .local v2, _arg1:Z
    :goto_304
    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v5

    .line 355
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v5, :cond_319

    const/4 v9, 0x1

    :goto_30e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 350
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg1:Z
    .end local v5           #_result:Z
    :cond_314
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_2fc

    .line 353
    :cond_316
    const/4 v9, 0x0

    move v2, v9

    goto :goto_304

    .line 356
    .restart local v2       #_arg1:Z
    .restart local v5       #_result:Z
    :cond_319
    const/4 v9, 0x0

    goto :goto_30e

    .line 361
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg1:Z
    .end local v5           #_result:Z
    :sswitch_31b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v5

    .line 363
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 369
    .end local v5           #_result:I
    :sswitch_32d
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 371
    .local v5, _result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v5, :cond_346

    .line 373
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    const/4 v9, 0x1

    invoke-virtual {v5, p3, v9}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 379
    :goto_343
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 377
    :cond_346
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_343

    .line 383
    .end local v5           #_result:Landroid/net/wifi/WifiConfiguration;
    :sswitch_34b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_367

    .line 386
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 391
    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_35e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 389
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :cond_367
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_35e

    .line 397
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_369
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectedDevList()Ljava/util/List;

    move-result-object v8

    .line 399
    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/wifi/StaInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 401
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 405
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/wifi/StaInfo;>;"
    :sswitch_37b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 409
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_395

    const/4 v9, 0x1

    move v2, v9

    .line 410
    .restart local v2       #_arg1:Z
    :goto_38c
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->manageSta(Ljava/util/List;Z)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 409
    .end local v2           #_arg1:Z
    :cond_395
    const/4 v9, 0x0

    move v2, v9

    goto :goto_38c

    .line 416
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_398
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->notifyDriverPNO()Z

    move-result v5

    .line 418
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    if-eqz v5, :cond_3ad

    const/4 v9, 0x1

    :goto_3a7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 419
    :cond_3ad
    const/4 v9, 0x0

    goto :goto_3a7

    .line 43
    nop

    :sswitch_data_3b0
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_41
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_80
        0x6 -> :sswitch_9b
        0x7 -> :sswitch_b2
        0x8 -> :sswitch_cb
        0x9 -> :sswitch_dd
        0xa -> :sswitch_f4
        0xb -> :sswitch_10b
        0xc -> :sswitch_122
        0xd -> :sswitch_140
        0xe -> :sswitch_162
        0xf -> :sswitch_174
        0x10 -> :sswitch_186
        0x11 -> :sswitch_1ac
        0x12 -> :sswitch_1be
        0x13 -> :sswitch_1d5
        0x14 -> :sswitch_1f3
        0x15 -> :sswitch_226
        0x16 -> :sswitch_248
        0x17 -> :sswitch_263
        0x18 -> :sswitch_271
        0x19 -> :sswitch_288
        0x1a -> :sswitch_29e
        0x1b -> :sswitch_2ac
        0x1c -> :sswitch_2cb
        0x1d -> :sswitch_2e9
        0x1e -> :sswitch_31b
        0x1f -> :sswitch_32d
        0x20 -> :sswitch_34b
        0x21 -> :sswitch_369
        0x22 -> :sswitch_37b
        0x23 -> :sswitch_398
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

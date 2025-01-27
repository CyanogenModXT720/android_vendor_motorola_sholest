.class public abstract Lcom/motorola/android/locationproxy/ILocationProxy$Stub;
.super Landroid/os/Binder;
.source "ILocationProxy.java"

# interfaces
.implements Lcom/motorola/android/locationproxy/ILocationProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/ILocationProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/locationproxy/ILocationProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.locationproxy.ILocationProxy"

.field static final TRANSACTION_getDefaultSuplServer:I = 0x2

.field static final TRANSACTION_getSuplServer:I = 0x1

.field static final TRANSACTION_registerMtlrListener:I = 0x6

.field static final TRANSACTION_resetSuplServer:I = 0x4

.field static final TRANSACTION_responseMtlr:I = 0x5

.field static final TRANSACTION_setSuplServer:I = 0x3

.field static final TRANSACTION_unregisterMtlrListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/locationproxy/ILocationProxy;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_3
    return-object v1

    .line 29
    :cond_4
    const-string v1, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/motorola/android/locationproxy/ILocationProxy;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Lcom/motorola/android/locationproxy/ILocationProxy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/motorola/android/locationproxy/ILocationProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "com.motorola.android.locationproxy.ILocationProxy"

    .line 41
    sparse-switch p1, :sswitch_data_be

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_b
    return v3

    .line 45
    :sswitch_c
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 46
    goto :goto_b

    .line 50
    :sswitch_13
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->getSuplServer()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 54
    goto :goto_b

    .line 58
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_24
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->getDefaultSuplServer()Ljava/lang/String;

    move-result-object v2

    .line 60
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 62
    goto :goto_b

    .line 66
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_35
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->setSuplServer(Ljava/lang/String;)Z

    move-result v2

    .line 70
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v2, :cond_4d

    move v3, v4

    :goto_48
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 72
    goto :goto_b

    :cond_4d
    move v3, v6

    .line 71
    goto :goto_48

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_4f
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->resetSuplServer()Z

    move-result v2

    .line 78
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_63

    move v3, v4

    :goto_5e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 80
    goto :goto_b

    :cond_63
    move v3, v6

    .line 79
    goto :goto_5e

    .line 84
    .end local v2           #_result:Z
    :sswitch_65
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_84

    move v0, v4

    .line 88
    .local v0, _arg0:Z
    :goto_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->responseMtlr(ZI)Z

    move-result v2

    .line 90
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_86

    move v3, v4

    :goto_7f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 92
    goto :goto_b

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :cond_84
    move v0, v6

    .line 86
    goto :goto_71

    .restart local v0       #_arg0:Z
    .restart local v1       #_arg1:I
    .restart local v2       #_result:Z
    :cond_86
    move v3, v6

    .line 91
    goto :goto_7f

    .line 96
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_88
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/IMtlrListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/locationproxy/IMtlrListener;

    move-result-object v0

    .line 99
    .local v0, _arg0:Lcom/motorola/android/locationproxy/IMtlrListener;
    invoke-virtual {p0, v0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->registerMtlrListener(Lcom/motorola/android/locationproxy/IMtlrListener;)Z

    move-result v2

    .line 100
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_a5

    move v3, v4

    :goto_9f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 102
    goto/16 :goto_b

    :cond_a5
    move v3, v6

    .line 101
    goto :goto_9f

    .line 106
    .end local v0           #_arg0:Lcom/motorola/android/locationproxy/IMtlrListener;
    .end local v2           #_result:Z
    :sswitch_a7
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->unregisterMtlrListener()Z

    move-result v2

    .line 108
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v2, :cond_bc

    move v3, v4

    :goto_b6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 110
    goto/16 :goto_b

    :cond_bc
    move v3, v6

    .line 109
    goto :goto_b6

    .line 41
    :sswitch_data_be
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_65
        0x6 -> :sswitch_88
        0x7 -> :sswitch_a7
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method

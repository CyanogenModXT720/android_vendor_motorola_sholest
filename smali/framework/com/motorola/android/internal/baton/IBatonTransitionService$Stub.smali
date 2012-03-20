.class public abstract Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub;
.super Landroid/os/Binder;
.source "IBatonTransitionService.java"

# interfaces
.implements Lcom/motorola/android/internal/baton/IBatonTransitionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/baton/IBatonTransitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.internal.baton.IBatonTransitionService"

.field static final TRANSACTION_createBatonTransition:I = 0x1

.field static final TRANSACTION_registerServiceCallback:I = 0x4

.field static final TRANSACTION_setBatonParcels:I = 0x2

.field static final TRANSACTION_terminateBatonTransition:I = 0x6

.field static final TRANSACTION_unregisterServiceCallback:I = 0x5

.field static final TRANSACTION_updateBatonParcels:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.motorola.android.internal.baton.IBatonTransitionService"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/baton/IBatonTransitionService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_3
    return-object v1

    .line 26
    :cond_4
    const-string v1, "com.motorola.android.internal.baton.IBatonTransitionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/motorola/android/internal/baton/IBatonTransitionService;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/motorola/android/internal/baton/IBatonTransitionService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v4, 0x1

    const-string v5, "com.motorola.android.internal.baton.IBatonTransitionService"

    .line 38
    sparse-switch p1, :sswitch_data_ae

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 42
    :sswitch_b
    const-string v3, "com.motorola.android.internal.baton.IBatonTransitionService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 43
    goto :goto_a

    .line 47
    :sswitch_12
    const-string v3, "com.motorola.android.internal.baton.IBatonTransitionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_35

    .line 52
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 57
    .local v1, _arg1:Landroid/content/Intent;
    :goto_29
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub;->createBatonTransition(Ljava/lang/String;Landroid/content/Intent;)I

    move-result v2

    .line 58
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 60
    goto :goto_a

    .line 55
    .end local v1           #_arg1:Landroid/content/Intent;
    .end local v2           #_result:I
    :cond_35
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/Intent;
    goto :goto_29

    .line 64
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/content/Intent;
    :sswitch_37
    const-string v3, "com.motorola.android.internal.baton.IBatonTransitionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    sget-object v3, Lcom/motorola/android/internal/baton/BatonParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/internal/baton/BatonParcel;

    .line 68
    .local v0, _arg0:[Lcom/motorola/android/internal/baton/BatonParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub;->setBatonParcels([Lcom/motorola/android/internal/baton/BatonParcel;I)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 71
    goto :goto_a

    .line 75
    .end local v0           #_arg0:[Lcom/motorola/android/internal/baton/BatonParcel;
    .end local v1           #_arg1:I
    :sswitch_50
    const-string v3, "com.motorola.android.internal.baton.IBatonTransitionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    sget-object v3, Lcom/motorola/android/internal/baton/BatonParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/internal/baton/BatonParcel;

    .line 79
    .restart local v0       #_arg0:[Lcom/motorola/android/internal/baton/BatonParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub;->updateBatonParcels([Lcom/motorola/android/internal/baton/BatonParcel;I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 82
    goto :goto_a

    .line 86
    .end local v0           #_arg0:[Lcom/motorola/android/internal/baton/BatonParcel;
    .end local v1           #_arg1:I
    :sswitch_69
    const-string v3, "com.motorola.android.internal.baton.IBatonTransitionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/baton/IBatonServiceCallback;

    move-result-object v0

    .line 90
    .local v0, _arg0:Lcom/motorola/android/internal/baton/IBatonServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub;->registerServiceCallback(Lcom/motorola/android/internal/baton/IBatonServiceCallback;I)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 93
    goto :goto_a

    .line 97
    .end local v0           #_arg0:Lcom/motorola/android/internal/baton/IBatonServiceCallback;
    .end local v1           #_arg1:I
    :sswitch_82
    const-string v3, "com.motorola.android.internal.baton.IBatonTransitionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/baton/IBatonServiceCallback;

    move-result-object v0

    .line 101
    .restart local v0       #_arg0:Lcom/motorola/android/internal/baton/IBatonServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub;->unregisterServiceCallback(Lcom/motorola/android/internal/baton/IBatonServiceCallback;I)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 104
    goto/16 :goto_a

    .line 108
    .end local v0           #_arg0:Lcom/motorola/android/internal/baton/IBatonServiceCallback;
    .end local v1           #_arg1:I
    :sswitch_9c
    const-string v3, "com.motorola.android.internal.baton.IBatonTransitionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub;->terminateBatonTransition(I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 113
    goto/16 :goto_a

    .line 38
    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_37
        0x3 -> :sswitch_50
        0x4 -> :sswitch_69
        0x5 -> :sswitch_82
        0x6 -> :sswitch_9c
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

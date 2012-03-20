.class public abstract Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IBatonServiceCallback.java"

# interfaces
.implements Lcom/motorola/android/internal/baton/IBatonServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/baton/IBatonServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.internal.baton.IBatonServiceCallback"

.field static final TRANSACTION_onBatonAnimationsCompleted:I = 0x3

.field static final TRANSACTION_onBatonAnimationsStarted:I = 0x2

.field static final TRANSACTION_onBatonLayerShown:I = 0x1

.field static final TRANSACTION_onError:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.motorola.android.internal.baton.IBatonServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/baton/IBatonServiceCallback;
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
    const-string v1, "com.motorola.android.internal.baton.IBatonServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/motorola/android/internal/baton/IBatonServiceCallback;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/motorola/android/internal/baton/IBatonServiceCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v3, 0x1

    const-string v4, "com.motorola.android.internal.baton.IBatonServiceCallback"

    .line 38
    sparse-switch p1, :sswitch_data_4a

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 42
    :sswitch_b
    const-string v2, "com.motorola.android.internal.baton.IBatonServiceCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 43
    goto :goto_a

    .line 47
    :sswitch_12
    const-string v2, "com.motorola.android.internal.baton.IBatonServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub;->onBatonLayerShown()V

    move v2, v3

    .line 49
    goto :goto_a

    .line 53
    :sswitch_1c
    const-string v2, "com.motorola.android.internal.baton.IBatonServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub;->onBatonAnimationsStarted(I)V

    move v2, v3

    .line 57
    goto :goto_a

    .line 61
    .end local v0           #_arg0:I
    :sswitch_2a
    const-string v2, "com.motorola.android.internal.baton.IBatonServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub;->onBatonAnimationsCompleted(I)V

    move v2, v3

    .line 65
    goto :goto_a

    .line 69
    .end local v0           #_arg0:I
    :sswitch_38
    const-string v2, "com.motorola.android.internal.baton.IBatonServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub;->onError(ILjava/lang/String;)V

    move v2, v3

    .line 75
    goto :goto_a

    .line 38
    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2a
        0x4 -> :sswitch_38
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

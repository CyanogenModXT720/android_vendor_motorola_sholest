.class public abstract Lcom/motorola/spellchecker/ISpellingCheckClient$Stub;
.super Landroid/os/Binder;
.source "ISpellingCheckClient.java"

# interfaces
.implements Lcom/motorola/spellchecker/ISpellingCheckClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/spellchecker/ISpellingCheckClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/spellchecker/ISpellingCheckClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.spellchecker.ISpellingCheckClient"

.field static final TRANSACTION_onServiceEnabledStatusChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.motorola.spellchecker.ISpellingCheckClient"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/spellchecker/ISpellingCheckClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/spellchecker/ISpellingCheckClient;
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
    const-string v1, "com.motorola.spellchecker.ISpellingCheckClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/motorola/spellchecker/ISpellingCheckClient;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Lcom/motorola/spellchecker/ISpellingCheckClient;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/motorola/spellchecker/ISpellingCheckClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/spellchecker/ISpellingCheckClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 9
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
    const/4 v2, 0x1

    const-string v3, "com.motorola.spellchecker.ISpellingCheckClient"

    .line 41
    sparse-switch p1, :sswitch_data_2a

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 45
    :sswitch_b
    const-string v1, "com.motorola.spellchecker.ISpellingCheckClient"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 46
    goto :goto_a

    .line 50
    :sswitch_12
    const-string v1, "com.motorola.spellchecker.ISpellingCheckClient"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    move v0, v2

    .line 53
    .local v0, _arg0:Z
    :goto_1e
    invoke-virtual {p0, v0}, Lcom/motorola/spellchecker/ISpellingCheckClient$Stub;->onServiceEnabledStatusChanged(Z)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 55
    goto :goto_a

    .line 52
    .end local v0           #_arg0:Z
    :cond_26
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1e

    .line 41
    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_12
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

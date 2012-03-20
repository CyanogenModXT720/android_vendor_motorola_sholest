.class Lcom/motorola/spellchecker/ISpellingCheckClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISpellingCheckClient.java"

# interfaces
.implements Lcom/motorola/spellchecker/ISpellingCheckClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/spellchecker/ISpellingCheckClient$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/motorola/spellchecker/ISpellingCheckClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 66
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/spellchecker/ISpellingCheckClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    const-string v0, "com.motorola.spellchecker.ISpellingCheckClient"

    return-object v0
.end method

.method public onServiceEnabledStatusChanged(Z)V
    .registers 7
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 78
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 80
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_a
    const-string v2, "com.motorola.spellchecker.ISpellingCheckClient"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 81
    if-eqz p1, :cond_26

    move v2, v4

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v2, p0, Lcom/motorola/spellchecker/ISpellingCheckClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_28

    .line 86
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 89
    return-void

    :cond_26
    move v2, v3

    .line 81
    goto :goto_12

    .line 86
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 86
    throw v2
.end method

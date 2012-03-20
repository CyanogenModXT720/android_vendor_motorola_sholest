.class public Lcom/motorola/android/media/MediaScannerConnectionExt;
.super Ljava/lang/Object;
.source "MediaScannerConnectionExt.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;,
        Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScannerConnectionExt"


# instance fields
.field private mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/media/IMediaScannerListener$Stub;

.field private mService:Landroid/media/IMediaScannerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;)V
    .registers 4
    .parameter "context"
    .parameter "client"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/motorola/android/media/MediaScannerConnectionExt$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/media/MediaScannerConnectionExt$1;-><init>(Lcom/motorola/android/media/MediaScannerConnectionExt;)V

    iput-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mListener:Landroid/media/IMediaScannerListener$Stub;

    .line 98
    iput-object p1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/media/MediaScannerConnectionExt;)Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .registers 4

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    :try_start_1
    iget-boolean v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z

    if-nez v1, :cond_19

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/media/IMediaScannerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z

    .line 114
    .end local v0           #intent:Landroid/content/Intent;
    :cond_19
    monitor-exit p0

    .line 115
    return-void

    .line 114
    :catchall_1b
    move-exception v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_1
    iget-boolean v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_d

    .line 127
    :try_start_5
    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_12

    .line 133
    :goto_a
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z

    .line 135
    :cond_d
    monitor-exit p0

    .line 136
    return-void

    .line 135
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v0

    .line 128
    :catch_12
    move-exception v0

    goto :goto_a
.end method

.method public declared-synchronized isConnected()Z
    .registers 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 189
    const-string v0, "MediaScannerConnectionExt"

    const-string v1, "Connected to Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    monitor-enter p0

    .line 192
    :try_start_8
    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    .line 193
    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

    if-eqz v0, :cond_1b

    .line 194
    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

    invoke-interface {v0}, Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;->onMediaScannerConnected()V

    .line 196
    :cond_1b
    monitor-exit p0

    .line 197
    return-void

    .line 196
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 204
    const-string v0, "MediaScannerConnectionExt"

    const-string v1, "Disconnected from Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    monitor-enter p0

    .line 207
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    .line 208
    monitor-exit p0

    .line 209
    return-void

    .line 208
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public scanFile(Ljava/util/ArrayList;Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;)V
    .registers 7
    .parameter
    .parameter "appType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "MediaScannerConnectionExt"

    .line 164
    monitor-enter p0

    .line 165
    :try_start_3
    iget-object v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z

    if-nez v1, :cond_16

    .line 166
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not connected to MediaScannerService"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    .line 169
    :cond_16
    if-eqz p1, :cond_1e

    :try_start_18
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_56

    move-result v1

    if-eqz v1, :cond_20

    .line 170
    :cond_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_13

    .line 182
    :goto_1f
    return-void

    .line 173
    :cond_20
    :try_start_20
    const-string v2, "MediaScannerConnectionExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scanning file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " apptype: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    invoke-virtual {p2}, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mListener:Landroid/media/IMediaScannerListener$Stub;

    invoke-interface {v1, p1, v2, v3}, Landroid/media/IMediaScannerService;->requestScanMultiFile(Ljava/util/List;ILandroid/media/IMediaScannerListener;)V
    :try_end_54
    .catchall {:try_start_20 .. :try_end_54} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_54} :catch_56

    .line 181
    :goto_54
    :try_start_54
    monitor-exit p0

    goto :goto_1f

    .line 176
    :catch_56
    move-exception v1

    move-object v0, v1

    .line 178
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MediaScannerConnectionExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to scan file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_54 .. :try_end_77} :catchall_13

    goto :goto_54
.end method

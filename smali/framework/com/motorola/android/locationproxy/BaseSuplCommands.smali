.class public abstract Lcom/motorola/android/locationproxy/BaseSuplCommands;
.super Ljava/lang/Object;
.source "BaseSuplCommands.java"

# interfaces
.implements Lcom/motorola/android/locationproxy/ISuplCommands;


# instance fields
.field protected mCloseSocketRegistrants:Landroid/os/RegistrantList;

.field protected mContext:Landroid/content/Context;

.field protected mMtlr2Registrants:Landroid/os/RegistrantList;

.field protected mMtlrRegistrants:Landroid/os/RegistrantList;

.field protected mMtlrStatusRegistrants:Landroid/os/RegistrantList;

.field protected mOpenSocketRegistrants:Landroid/os/RegistrantList;

.field protected mSocketDataRegistrants:Landroid/os/RegistrantList;

.field protected mStateMonitor:Ljava/lang/Object;

.field protected mTlsRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mOpenSocketRegistrants:Landroid/os/RegistrantList;

    .line 28
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mCloseSocketRegistrants:Landroid/os/RegistrantList;

    .line 29
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mSocketDataRegistrants:Landroid/os/RegistrantList;

    .line 30
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mTlsRegistrants:Landroid/os/RegistrantList;

    .line 31
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrRegistrants:Landroid/os/RegistrantList;

    .line 32
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlr2Registrants:Landroid/os/RegistrantList;

    .line 33
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrStatusRegistrants:Landroid/os/RegistrantList;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public registerForSuplRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 43
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_13

    .line 44
    new-instance v0, Landroid/os/Registrant;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 46
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_d
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mOpenSocketRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 48
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_8a

    .line 51
    .end local v0           #r:Landroid/os/Registrant;
    :cond_13
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_26

    .line 52
    new-instance v0, Landroid/os/Registrant;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 54
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_20
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mSocketDataRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 56
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_8d

    .line 59
    .end local v0           #r:Landroid/os/Registrant;
    :cond_26
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_39

    .line 60
    new-instance v0, Landroid/os/Registrant;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 62
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_33
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mCloseSocketRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 64
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_90

    .line 67
    .end local v0           #r:Landroid/os/Registrant;
    :cond_39
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_4d

    .line 68
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 70
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_47
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mTlsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 72
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_93

    .line 75
    .end local v0           #r:Landroid/os/Registrant;
    :cond_4d
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_61

    .line 76
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 78
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_5b
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 80
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_96

    .line 83
    .end local v0           #r:Landroid/os/Registrant;
    :cond_61
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_75

    .line 84
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 86
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_6f
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlr2Registrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 88
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_99

    .line 91
    .end local v0           #r:Landroid/os/Registrant;
    :cond_75
    and-int/lit8 v1, p2, 0x40

    if-eqz v1, :cond_89

    .line 92
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0x40

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 94
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_83
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 96
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_9c

    .line 98
    .end local v0           #r:Landroid/os/Registrant;
    :cond_89
    return-void

    .line 48
    .restart local v0       #r:Landroid/os/Registrant;
    :catchall_8a
    move-exception v2

    :try_start_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v2

    .line 56
    :catchall_8d
    move-exception v2

    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v2

    .line 64
    :catchall_90
    move-exception v2

    :try_start_91
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v2

    .line 72
    :catchall_93
    move-exception v2

    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v2

    .line 80
    :catchall_96
    move-exception v2

    :try_start_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v2

    .line 88
    :catchall_99
    move-exception v2

    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v2

    .line 96
    :catchall_9c
    move-exception v2

    :try_start_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw v2
.end method

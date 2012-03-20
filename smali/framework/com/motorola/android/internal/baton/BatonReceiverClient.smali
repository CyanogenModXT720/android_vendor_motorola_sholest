.class public Lcom/motorola/android/internal/baton/BatonReceiverClient;
.super Ljava/lang/Object;
.source "BatonReceiverClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;
    }
.end annotation


# static fields
.field private static final BATON_LAYER_SHOWN:I = 0x134

.field private static final ON_ERROR:I = 0x135

.field private static final PHASE_ANIMATION_COMPLETED:I = 0x133

.field private static final PHASE_ANIMATION_STARTED:I = 0x132

.field private static final QUEUE_SESSION_STARTED:I = 0x1

.field private static final QUEUE_SESSION_STOPPED:I = 0x0

.field private static final QUEUE_SESSION_UPDATED:I = 0x2

.field private static final RECEIVER_ACTIVITY_CREATED:I = 0x12f

.field private static final RECEIVER_ACTIVITY_PAUSED:I = 0x131

.field private static final RECEIVER_ACTIVITY_SHOWN:I = 0x130

.field private static final SERVICE_CONNECTED:I = 0x12d

.field private static final SERVICE_DISCONNECTED:I = 0x12e

.field private static final TIME_OUT:I = 0x136

.field private static final sBatonReceiverClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Lcom/motorola/android/internal/baton/BatonReceiverClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mConnectionReceiver:Landroid/content/ServiceConnection;

.field private mIsServiceBound:Z

.field private mIsServiceConnected:Z

.field private mService:Lcom/motorola/android/internal/baton/IBatonTransitionService;

.field private mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->sBatonReceiverClients:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mActivity:Landroid/app/Activity;

    .line 63
    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    .line 64
    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mService:Lcom/motorola/android/internal/baton/IBatonTransitionService;

    .line 65
    iput-boolean v1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mIsServiceConnected:Z

    .line 66
    iput-boolean v1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mIsServiceBound:Z

    .line 254
    new-instance v0, Lcom/motorola/android/internal/baton/BatonReceiverClient$2;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$2;-><init>(Lcom/motorola/android/internal/baton/BatonReceiverClient;)V

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mConnectionReceiver:Landroid/content/ServiceConnection;

    .line 70
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mActivity:Landroid/app/Activity;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Lcom/motorola/android/internal/baton/IBatonTransitionService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mService:Lcom/motorola/android/internal/baton/IBatonTransitionService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/android/internal/baton/BatonReceiverClient;Lcom/motorola/android/internal/baton/IBatonTransitionService;)Lcom/motorola/android/internal/baton/IBatonTransitionService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mService:Lcom/motorola/android/internal/baton/IBatonTransitionService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mIsServiceConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/motorola/android/internal/baton/BatonReceiverClient;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mIsServiceConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    return-object v0
.end method

.method private bindReceiverToService(Landroid/app/Activity;)Z
    .registers 7
    .parameter "activity"

    .prologue
    .line 237
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.motorola.android.internal.baton.service.BatonTransitionService.REMOTE_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.motorola.android.internal.baton.service"

    const-string v4, "com.motorola.android.internal.baton.service.BatonTransitionService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v3, "BatonTransition ReceiverClient"

    const-string v4, "Binding"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v2, 0x0

    .line 245
    .local v2, success:Z
    :try_start_16
    iget-object v3, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mConnectionReceiver:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_1c} :catch_1e

    move-result v2

    .line 251
    :goto_1d
    return v2

    .line 247
    :catch_1e
    move-exception v3

    move-object v0, v3

    .line 248
    .local v0, e:Ljava/lang/SecurityException;
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/motorola/android/internal/baton/BatonReceiverClient;
    .registers 4
    .parameter "key"

    .prologue
    .line 79
    sget-object v1, Lcom/motorola/android/internal/baton/BatonReceiverClient;->sBatonReceiverClients:Ljava/util/Map;

    monitor-enter v1

    .line 82
    :try_start_3
    sget-object v2, Lcom/motorola/android/internal/baton/BatonReceiverClient;->sBatonReceiverClients:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/baton/BatonReceiverClient;

    .local v0, instance:Lcom/motorola/android/internal/baton/BatonReceiverClient;
    if-nez v0, :cond_17

    .line 84
    new-instance v0, Lcom/motorola/android/internal/baton/BatonReceiverClient;

    .end local v0           #instance:Lcom/motorola/android/internal/baton/BatonReceiverClient;
    invoke-direct {v0, p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient;-><init>(Landroid/app/Activity;)V

    .line 86
    .restart local v0       #instance:Lcom/motorola/android/internal/baton/BatonReceiverClient;
    sget-object v2, Lcom/motorola/android/internal/baton/BatonReceiverClient;->sBatonReceiverClients:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_17
    monitor-exit v1

    return-object v0

    .line 89
    .end local v0           #instance:Lcom/motorola/android/internal/baton/BatonReceiverClient;
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2
.end method


# virtual methods
.method public onCreate(Landroid/content/Intent;[Lcom/motorola/android/internal/baton/Baton;)V
    .registers 11
    .parameter "intent"
    .parameter "batons"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    const-string v6, "com.motorola.android.internal.baton.TRANSITION_ID"

    const-string v4, "BatonTransition ReceiverClient"

    .line 107
    const-string v2, "BatonTransition ReceiverClient"

    const-string v2, "activity created"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_19

    .line 109
    const-string v2, "BatonTransition ReceiverClient"

    const-string v2, "activity null"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_18
    return-void

    .line 114
    :cond_19
    const-string v2, "com.motorola.android.internal.baton.TRANSITION_ID"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.motorola.android.internal.baton.TRANSITION_ID"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v7, :cond_35

    .line 116
    :cond_2d
    const-string v2, "BatonTransition ReceiverClient"

    const-string v2, "Transition ID null"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 130
    :cond_35
    if-eqz p2, :cond_3b

    aget-object v2, p2, v5

    if-nez v2, :cond_43

    .line 131
    :cond_3b
    const-string v2, "BatonTransition ReceiverClient"

    const-string v2, "Batons null"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 137
    :cond_43
    aget-object v2, p2, v5

    invoke-virtual {v2}, Lcom/motorola/android/internal/baton/Baton;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_60

    .line 138
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setVisible(Z)V

    .line 139
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 140
    .local v0, showTimer:Ljava/util/Timer;
    new-instance v1, Lcom/motorola/android/internal/baton/BatonReceiverClient$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$1;-><init>(Lcom/motorola/android/internal/baton/BatonReceiverClient;)V

    .line 152
    .local v1, task:Ljava/util/TimerTask;
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 158
    .end local v0           #showTimer:Ljava/util/Timer;
    .end local v1           #task:Ljava/util/TimerTask;
    :cond_60
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->bindReceiverToService(Landroid/app/Activity;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mIsServiceBound:Z

    if-nez v2, :cond_72

    .line 159
    const-string v2, "BatonTransition ReceiverClient"

    const-string v2, "Cannot Bind"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 163
    :cond_72
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    if-eqz v2, :cond_7e

    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    invoke-static {v2}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->access$100(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;)Z

    move-result v2

    if-nez v2, :cond_93

    .line 164
    :cond_7e
    new-instance v2, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    invoke-direct {v2, p0, p1, p2}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;-><init>(Lcom/motorola/android/internal/baton/BatonReceiverClient;Landroid/content/Intent;[Lcom/motorola/android/internal/baton/Baton;)V

    iput-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    .line 166
    const-string v2, "com.motorola.android.internal.baton.TRANSITION_ID"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    const/16 v3, 0x12f

    const/4 v4, 0x0

    invoke-static {v2, v3, v7, v4}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->access$200(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;IILjava/lang/Object;)V

    goto :goto_18

    .line 169
    :cond_93
    const-string v2, "BatonTransition ReceiverClient"

    const-string v2, "Already running Baton animation for this activity"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, "BatonTransition ReceiverClient"

    .line 222
    const-string v0, "BatonTransition ReceiverClient"

    const-string v0, "activity destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-boolean v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mIsServiceBound:Z

    if-eqz v0, :cond_21

    .line 224
    const-string v0, "BatonTransition ReceiverClient"

    const-string v0, "Unbinding"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mConnectionReceiver:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 226
    iput-boolean v3, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mIsServiceBound:Z

    .line 227
    iput-boolean v3, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mIsServiceConnected:Z

    .line 230
    :cond_21
    sget-object v0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->sBatonReceiverClients:Ljava/util/Map;

    iget-object v1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iput-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    .line 232
    iput-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mActivity:Landroid/app/Activity;

    .line 233
    iput-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mService:Lcom/motorola/android/internal/baton/IBatonTransitionService;

    .line 234
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;[Lcom/motorola/android/internal/baton/Baton;)V
    .registers 5
    .parameter "intent"
    .parameter "batons"

    .prologue
    .line 188
    const-string v0, "BatonTransition ReceiverClient"

    const-string v1, "activity onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->onCreate(Landroid/content/Intent;[Lcom/motorola/android/internal/baton/Baton;)V

    .line 190
    return-void
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 215
    const-string v0, "BatonTransition ReceiverClient"

    const-string v1, "activity paused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->access$100(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 217
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    const/16 v1, 0x131

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->access$200(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;IILjava/lang/Object;)V

    .line 219
    :cond_1c
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 6
    .parameter "hasFocus"

    .prologue
    .line 204
    if-nez p1, :cond_3

    .line 212
    :cond_2
    :goto_2
    return-void

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->access$100(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    const-string v0, "BatonTransition ReceiverClient"

    const-string v1, "activity shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient;->mSession:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    const/16 v1, 0x130

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->access$200(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;IILjava/lang/Object;)V

    goto :goto_2
.end method

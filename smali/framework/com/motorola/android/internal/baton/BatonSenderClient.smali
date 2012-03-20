.class public Lcom/motorola/android/internal/baton/BatonSenderClient;
.super Ljava/lang/Object;
.source "BatonSenderClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;
    }
.end annotation


# static fields
.field private static final BATON_LAYER_SHOWN:I = 0x6a

.field private static final FOR_RESULT:I = 0x1

.field private static final FROM_CHILD:I = 0x2

.field private static final IF_NEEDED:I = 0x3

.field private static final ON_ERROR:I = 0x6b

.field private static final PHASE_ANIMATION_COMPLETED:I = 0x69

.field private static final PHASE_ANIMATION_STARTED:I = 0x68

.field private static final SENDER_START_TRANSITION:I = 0x67

.field private static final SERVICE_CONNECTED:I = 0x65

.field private static final SERVICE_DISCONNECTED:I = 0x66

.field private static final SIMPLE:I

.field private static final sBatonSenderClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Lcom/motorola/android/internal/baton/BatonSenderClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mConnectionSender:Landroid/content/ServiceConnection;

.field private mIsServiceBound:Z

.field private mIsServiceConnected:Z

.field private mService:Lcom/motorola/android/internal/baton/IBatonTransitionService;

.field mServiceComponentName:Landroid/content/ComponentName;

.field private mSession:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/android/internal/baton/BatonSenderClient;->sBatonSenderClients:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mActivity:Landroid/app/Activity;

    .line 70
    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mSession:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    .line 71
    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mService:Lcom/motorola/android/internal/baton/IBatonTransitionService;

    .line 72
    iput-boolean v1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mIsServiceConnected:Z

    .line 74
    iput-boolean v1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mIsServiceBound:Z

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mVelocity:F

    .line 257
    new-instance v0, Lcom/motorola/android/internal/baton/BatonSenderClient$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/baton/BatonSenderClient$1;-><init>(Lcom/motorola/android/internal/baton/BatonSenderClient;)V

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mConnectionSender:Landroid/content/ServiceConnection;

    .line 170
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mActivity:Landroid/app/Activity;

    .line 171
    return-void
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/baton/BatonSenderClient;)Lcom/motorola/android/internal/baton/IBatonTransitionService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mService:Lcom/motorola/android/internal/baton/IBatonTransitionService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/android/internal/baton/BatonSenderClient;Lcom/motorola/android/internal/baton/IBatonTransitionService;)Lcom/motorola/android/internal/baton/IBatonTransitionService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mService:Lcom/motorola/android/internal/baton/IBatonTransitionService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/baton/BatonSenderClient;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mIsServiceConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/android/internal/baton/BatonSenderClient;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mIsServiceConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/android/internal/baton/BatonSenderClient;)Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mSession:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/internal/baton/BatonSenderClient;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/android/internal/baton/BatonSenderClient;Landroid/content/Intent;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/internal/baton/BatonSenderClient;->startActivity(Landroid/content/Intent;II)V

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/motorola/android/internal/baton/BatonSenderClient;
    .registers 4
    .parameter "key"

    .prologue
    .line 87
    sget-object v1, Lcom/motorola/android/internal/baton/BatonSenderClient;->sBatonSenderClients:Ljava/util/Map;

    monitor-enter v1

    .line 90
    :try_start_3
    sget-object v2, Lcom/motorola/android/internal/baton/BatonSenderClient;->sBatonSenderClients:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/baton/BatonSenderClient;

    .local v0, instance:Lcom/motorola/android/internal/baton/BatonSenderClient;
    if-nez v0, :cond_17

    .line 92
    new-instance v0, Lcom/motorola/android/internal/baton/BatonSenderClient;

    .end local v0           #instance:Lcom/motorola/android/internal/baton/BatonSenderClient;
    invoke-direct {v0, p0}, Lcom/motorola/android/internal/baton/BatonSenderClient;-><init>(Landroid/app/Activity;)V

    .line 94
    .restart local v0       #instance:Lcom/motorola/android/internal/baton/BatonSenderClient;
    sget-object v2, Lcom/motorola/android/internal/baton/BatonSenderClient;->sBatonSenderClients:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_17
    monitor-exit v1

    return-object v0

    .line 97
    .end local v0           #instance:Lcom/motorola/android/internal/baton/BatonSenderClient;
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method private startActivity(Landroid/content/Intent;II)V
    .registers 6
    .parameter "intent"
    .parameter "requestCode"
    .parameter "startType"

    .prologue
    .line 174
    packed-switch p3, :pswitch_data_1e

    .line 190
    :goto_3
    :pswitch_3
    return-void

    .line 176
    :pswitch_4
    const-string v0, "BatonTransition SenderClient"

    const-string v1, "Starting activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 180
    :pswitch_11
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 185
    :pswitch_17
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_3

    .line 174
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_11
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method

.method private startActivityGeneric(Landroid/content/Intent;I[Lcom/motorola/android/internal/baton/Baton;I)V
    .registers 12
    .parameter "intent"
    .parameter "requestCode"
    .parameter "batons"
    .parameter "startType"

    .prologue
    const-string v2, "BatonTransition SenderClient"

    .line 196
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_e

    .line 197
    const-string v0, "BatonTransition SenderClient"

    const-string v0, "activity null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_d
    return-void

    .line 200
    :cond_e
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 201
    .local v6, resolve:Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_34

    .line 202
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Activity to handle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_34
    if-nez p3, :cond_3a

    .line 208
    invoke-direct {p0, p1, p2, p4}, Lcom/motorola/android/internal/baton/BatonSenderClient;->startActivity(Landroid/content/Intent;II)V

    goto :goto_d

    .line 212
    :cond_3a
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/baton/BatonSenderClient;->startAndBindSenderToService(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mIsServiceBound:Z

    if-nez v0, :cond_48

    .line 214
    invoke-direct {p0, p1, p2, p4}, Lcom/motorola/android/internal/baton/BatonSenderClient;->startActivity(Landroid/content/Intent;II)V

    goto :goto_d

    .line 218
    :cond_48
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mSession:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mSession:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->access$000(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 219
    :cond_54
    new-instance v0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;-><init>(Lcom/motorola/android/internal/baton/BatonSenderClient;Landroid/content/Intent;I[Lcom/motorola/android/internal/baton/Baton;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mSession:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    .line 227
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mSession:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    const/16 v1, 0x67

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->access$100(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;IILjava/lang/Object;)V

    goto :goto_d

    .line 223
    :cond_6a
    const-string v0, "BatonTransition SenderClient"

    const-string v0, "Already running Baton animation for this activity!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private startAndBindSenderToService(Landroid/app/Activity;)Z
    .registers 7
    .parameter "activity"

    .prologue
    .line 234
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.motorola.android.internal.baton.service.BatonTransitionService.REMOTE_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.motorola.android.internal.baton.service"

    const-string v4, "com.motorola.android.internal.baton.service.BatonTransitionService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const/4 v2, 0x0

    .line 242
    .local v2, success:Z
    :try_start_f
    iget-object v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mServiceComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_19

    .line 243
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mServiceComponentName:Landroid/content/ComponentName;

    .line 246
    :cond_19
    iget-object v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mServiceComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_24

    .line 247
    iget-object v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mConnectionSender:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_23} :catch_25

    move-result v2

    .line 254
    :cond_24
    :goto_24
    return v2

    .line 249
    :catch_25
    move-exception v3

    move-object v0, v3

    .line 250
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "BatonTransition SenderClient"

    const-string v4, "No permissions to access service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v2, 0x0

    goto :goto_24
.end method


# virtual methods
.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 151
    const-string v0, "BatonTransition ReceiverClient"

    const-string v1, "activity destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mIsServiceBound:Z

    if-eqz v0, :cond_1a

    .line 153
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mConnectionSender:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 154
    iput-boolean v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mIsServiceBound:Z

    .line 155
    iput-boolean v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mIsServiceConnected:Z

    .line 156
    iput-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mServiceComponentName:Landroid/content/ComponentName;

    .line 158
    :cond_1a
    sget-object v0, Lcom/motorola/android/internal/baton/BatonSenderClient;->sBatonSenderClients:Ljava/util/Map;

    iget-object v1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iput-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mSession:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    .line 160
    iput-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mActivity:Landroid/app/Activity;

    .line 161
    iput-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mService:Lcom/motorola/android/internal/baton/IBatonTransitionService;

    .line 162
    return-void
.end method

.method public startActivity(Landroid/content/Intent;F)V
    .registers 10
    .parameter "intent"
    .parameter "velocityX"

    .prologue
    const/4 v6, 0x1

    .line 143
    new-array v0, v6, [Lcom/motorola/android/internal/baton/Baton;

    const/4 v2, 0x0

    new-instance v3, Lcom/motorola/android/internal/baton/Baton;

    iget-object v4, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5, v6}, Lcom/motorola/android/internal/baton/Baton;-><init>(Landroid/view/View;II)V

    aput-object v3, v0, v2

    .line 145
    .local v0, batons:[Lcom/motorola/android/internal/baton/Baton;
    const/4 v1, 0x0

    .line 146
    .local v1, type:I
    iput p2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mVelocity:F

    .line 147
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/motorola/android/internal/baton/BatonSenderClient;->startActivityGeneric(Landroid/content/Intent;I[Lcom/motorola/android/internal/baton/Baton;I)V

    .line 148
    return-void
.end method

.method public startActivity(Landroid/content/Intent;[Lcom/motorola/android/internal/baton/Baton;)V
    .registers 5
    .parameter "intent"
    .parameter "batons"

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, type:I
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/motorola/android/internal/baton/BatonSenderClient;->startActivityGeneric(Landroid/content/Intent;I[Lcom/motorola/android/internal/baton/Baton;I)V

    .line 112
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I[Lcom/motorola/android/internal/baton/Baton;)V
    .registers 5
    .parameter "intent"
    .parameter "requestCode"
    .parameter "batons"

    .prologue
    .line 131
    const/4 v0, 0x1

    .line 132
    .local v0, type:I
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/android/internal/baton/BatonSenderClient;->startActivityGeneric(Landroid/content/Intent;I[Lcom/motorola/android/internal/baton/Baton;I)V

    .line 133
    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I[Lcom/motorola/android/internal/baton/Baton;)V
    .registers 5
    .parameter "intent"
    .parameter "requestCode"
    .parameter "batons"

    .prologue
    .line 137
    const/4 v0, 0x3

    .line 138
    .local v0, type:I
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/android/internal/baton/BatonSenderClient;->startActivityGeneric(Landroid/content/Intent;I[Lcom/motorola/android/internal/baton/Baton;I)V

    .line 139
    return-void
.end method

.class Lcom/motorola/android/internal/baton/BatonSenderClient$1;
.super Ljava/lang/Object;
.source "BatonSenderClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/baton/BatonSenderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/baton/BatonSenderClient;)V
    .registers 2
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$1;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 261
    const-string v0, "BatonTransition SenderClient"

    const-string v1, "Service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$1;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {p2}, Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/baton/IBatonTransitionService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$202(Lcom/motorola/android/internal/baton/BatonSenderClient;Lcom/motorola/android/internal/baton/IBatonTransitionService;)Lcom/motorola/android/internal/baton/IBatonTransitionService;

    .line 263
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$1;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$302(Lcom/motorola/android/internal/baton/BatonSenderClient;Z)Z

    .line 264
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$1;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$400(Lcom/motorola/android/internal/baton/BatonSenderClient;)Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 265
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$1;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$400(Lcom/motorola/android/internal/baton/BatonSenderClient;)Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->access$100(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;IILjava/lang/Object;)V

    .line 267
    :cond_2b
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 271
    const-string v0, "BatonTransition SenderClient"

    const-string v1, "Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$1;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$302(Lcom/motorola/android/internal/baton/BatonSenderClient;Z)Z

    .line 273
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$1;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    iput-object v3, v0, Lcom/motorola/android/internal/baton/BatonSenderClient;->mServiceComponentName:Landroid/content/ComponentName;

    .line 274
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$1;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$400(Lcom/motorola/android/internal/baton/BatonSenderClient;)Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 275
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$1;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$400(Lcom/motorola/android/internal/baton/BatonSenderClient;)Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->access$100(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;IILjava/lang/Object;)V

    .line 277
    :cond_26
    return-void
.end method

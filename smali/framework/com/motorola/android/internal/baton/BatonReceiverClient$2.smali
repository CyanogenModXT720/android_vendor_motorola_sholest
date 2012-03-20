.class Lcom/motorola/android/internal/baton/BatonReceiverClient$2;
.super Ljava/lang/Object;
.source "BatonReceiverClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/baton/BatonReceiverClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/baton/BatonReceiverClient;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$2;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 258
    const-string v0, "BatonTransition ReceiverClient"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$2;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {p2}, Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/baton/IBatonTransitionService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$302(Lcom/motorola/android/internal/baton/BatonReceiverClient;Lcom/motorola/android/internal/baton/IBatonTransitionService;)Lcom/motorola/android/internal/baton/IBatonTransitionService;

    .line 260
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$2;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$402(Lcom/motorola/android/internal/baton/BatonReceiverClient;Z)Z

    .line 261
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$2;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$500(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 262
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$2;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$500(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    move-result-object v0

    const/16 v1, 0x12d

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->access$200(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;IILjava/lang/Object;)V

    .line 264
    :cond_2b
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 268
    const-string v0, "BatonTransition ReceiverClient"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$2;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$402(Lcom/motorola/android/internal/baton/BatonReceiverClient;Z)Z

    .line 270
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$2;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$500(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 271
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$2;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$500(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    move-result-object v0

    const/16 v1, 0x12e

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->access$200(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;IILjava/lang/Object;)V

    .line 273
    :cond_22
    return-void
.end method

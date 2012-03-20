.class Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$2;
.super Ljava/util/TimerTask;
.source "BatonReceiverClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;)V
    .registers 2
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$2;->this$1:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 306
    const-string v0, "BatonTransition ReceiverSession"

    const-string v1, "Time out 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$2;->this$1:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    iget-object v0, v0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$500(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 308
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$2;->this$1:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    iget-object v0, v0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$500(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    move-result-object v0

    const/16 v1, 0x136

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->access$200(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;IILjava/lang/Object;)V

    .line 310
    :cond_20
    return-void
.end method

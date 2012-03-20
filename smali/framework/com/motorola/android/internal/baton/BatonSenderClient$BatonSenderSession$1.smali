.class Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$1;
.super Ljava/util/TimerTask;
.source "BatonSenderClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;)V
    .registers 2
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$1;->this$1:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const-string v4, "Time out"

    .line 302
    const-string v0, "BatonTransition SenderSession"

    const-string v1, "Time out"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$1;->this$1:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    iget-object v0, v0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$400(Lcom/motorola/android/internal/baton/BatonSenderClient;)Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 304
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$1;->this$1:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    iget-object v0, v0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$400(Lcom/motorola/android/internal/baton/BatonSenderClient;)Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    move-result-object v0

    const/16 v1, 0x6b

    const/4 v2, -0x1

    const-string v3, "Time out"

    invoke-static {v0, v1, v2, v4}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->access$100(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;IILjava/lang/Object;)V

    .line 306
    :cond_23
    return-void
.end method

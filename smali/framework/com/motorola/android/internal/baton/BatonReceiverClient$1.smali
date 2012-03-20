.class Lcom/motorola/android/internal/baton/BatonReceiverClient$1;
.super Ljava/util/TimerTask;
.source "BatonReceiverClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/baton/BatonReceiverClient;->onCreate(Landroid/content/Intent;[Lcom/motorola/android/internal/baton/Baton;)V
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
    .line 142
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$1;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$1;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$000(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 144
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$1;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$000(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/motorola/android/internal/baton/BatonReceiverClient$1$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$1$1;-><init>(Lcom/motorola/android/internal/baton/BatonReceiverClient$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 150
    :cond_16
    return-void
.end method

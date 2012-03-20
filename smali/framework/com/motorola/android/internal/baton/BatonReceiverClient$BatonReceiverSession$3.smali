.class Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$3;
.super Ljava/lang/Object;
.source "BatonReceiverClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->showActivity()V
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
    .line 566
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$3;->this$1:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$3;->this$1:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    iget-object v0, v0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$000(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVisible(Z)V

    .line 568
    return-void
.end method

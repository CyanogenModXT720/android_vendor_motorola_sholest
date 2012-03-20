.class Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$4;
.super Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub;
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
    .line 631
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$4;->this$1:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    invoke-direct {p0}, Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatonAnimationsCompleted(I)V
    .registers 5
    .parameter "phase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$4;->this$1:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    const/16 v1, 0x133

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->access$200(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;IILjava/lang/Object;)V

    .line 617
    return-void
.end method

.method public onBatonAnimationsStarted(I)V
    .registers 5
    .parameter "phase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 622
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$4;->this$1:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    const/16 v1, 0x132

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->access$200(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;IILjava/lang/Object;)V

    .line 623
    return-void
.end method

.method public onBatonLayerShown()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$4;->this$1:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    const/16 v1, 0x134

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->access$200(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;IILjava/lang/Object;)V

    .line 628
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5
    .parameter "errorCode"
    .parameter "desc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$4;->this$1:Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;

    const/16 v1, 0x135

    invoke-static {v0, v1, p1, p2}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->access$200(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;IILjava/lang/Object;)V

    .line 634
    return-void
.end method

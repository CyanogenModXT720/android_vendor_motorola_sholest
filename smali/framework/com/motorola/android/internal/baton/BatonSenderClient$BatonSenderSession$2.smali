.class Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$2;
.super Lcom/motorola/android/internal/baton/IBatonServiceCallback$Stub;
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
    .line 555
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$2;->this$1:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

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
    .line 540
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$2;->this$1:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->access$100(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;IILjava/lang/Object;)V

    .line 541
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
    .line 546
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$2;->this$1:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->access$100(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;IILjava/lang/Object;)V

    .line 547
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
    .line 551
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$2;->this$1:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    const/16 v1, 0x6a

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->access$100(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;IILjava/lang/Object;)V

    .line 552
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
    .line 557
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$2;->this$1:Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;

    const/16 v1, 0x6b

    invoke-static {v0, v1, p1, p2}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->access$100(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;IILjava/lang/Object;)V

    .line 558
    return-void
.end method

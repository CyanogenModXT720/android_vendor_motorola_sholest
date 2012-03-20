.class public interface abstract Lcom/motorola/android/internal/baton/IBatonTransitionService;
.super Ljava/lang/Object;
.source "IBatonTransitionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/baton/IBatonTransitionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract createBatonTransition(Ljava/lang/String;Landroid/content/Intent;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerServiceCallback(Lcom/motorola/android/internal/baton/IBatonServiceCallback;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setBatonParcels([Lcom/motorola/android/internal/baton/BatonParcel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract terminateBatonTransition(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterServiceCallback(Lcom/motorola/android/internal/baton/IBatonServiceCallback;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateBatonParcels([Lcom/motorola/android/internal/baton/BatonParcel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

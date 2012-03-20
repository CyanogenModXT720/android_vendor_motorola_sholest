.class Lcom/motorola/android/internal/ui3d/CameraTransformable;
.super Landroid/graphics/Camera;
.source "World3DSkia.java"

# interfaces
.implements Lcom/motorola/android/internal/ui3d/Transformable;


# instance fields
.field mAlpha:F

.field mAlphaSet:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 549
    invoke-direct {p0}, Landroid/graphics/Camera;-><init>()V

    return-void
.end method


# virtual methods
.method public isAlphaSet()Z
    .registers 2

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/CameraTransformable;->mAlphaSet:Z

    return v0
.end method

.method public retrieveAndResetAlpha()F
    .registers 2

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/CameraTransformable;->mAlphaSet:Z

    if-eqz v0, :cond_a

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/CameraTransformable;->mAlphaSet:Z

    .line 566
    iget v0, p0, Lcom/motorola/android/internal/ui3d/CameraTransformable;->mAlpha:F

    .line 568
    :goto_9
    return v0

    :cond_a
    const/high16 v0, 0x3f80

    goto :goto_9
.end method

.method public setAlpha(F)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 555
    iput p1, p0, Lcom/motorola/android/internal/ui3d/CameraTransformable;->mAlpha:F

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/CameraTransformable;->mAlphaSet:Z

    .line 557
    return-void
.end method

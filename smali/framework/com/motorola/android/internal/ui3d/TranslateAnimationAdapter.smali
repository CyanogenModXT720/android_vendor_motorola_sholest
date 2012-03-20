.class public Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;
.super Lcom/motorola/android/internal/ui3d/AnimationAdapter;
.source "TranslateAnimationAdapter.java"


# instance fields
.field dst:[F

.field mTransformation:Landroid/view/animation/Transformation;

.field src:[F


# direct methods
.method public constructor <init>(Landroid/view/animation/TranslateAnimation;)V
    .registers 5
    .parameter "anim"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/AnimationAdapter;-><init>()V

    .line 31
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    .line 32
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->src:[F

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->dst:[F

    .line 36
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->initialize(Landroid/view/animation/Animation;)V

    .line 37
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->src:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 38
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->src:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 39
    return-void
.end method


# virtual methods
.method public applyToTransformable(Lcom/motorola/android/internal/ui3d/Transformable;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->dst:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->dst:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/motorola/android/internal/ui3d/Transformable;->translate(FFF)V

    .line 68
    return-void
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 8
    .parameter "time"
    .parameter "t"

    .prologue
    .line 56
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 57
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1, p2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    .line 59
    .local v1, more:Z
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 60
    .local v0, m:Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->dst:[F

    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;->src:[F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 62
    return v1
.end method

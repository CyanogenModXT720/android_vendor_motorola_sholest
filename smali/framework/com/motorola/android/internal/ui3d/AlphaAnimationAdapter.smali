.class Lcom/motorola/android/internal/ui3d/AlphaAnimationAdapter;
.super Lcom/motorola/android/internal/ui3d/AnimationAdapter;
.source "AlphaAnimationAdapter.java"


# instance fields
.field mAlpha:F

.field mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method constructor <init>(Landroid/view/animation/AlphaAnimation;)V
    .registers 3
    .parameter "a"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/AnimationAdapter;-><init>()V

    .line 24
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/AlphaAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    .line 29
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/ui3d/AlphaAnimationAdapter;->initialize(Landroid/view/animation/Animation;)V

    .line 30
    return-void
.end method


# virtual methods
.method public applyToTransformable(Lcom/motorola/android/internal/ui3d/Transformable;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 56
    iget v0, p0, Lcom/motorola/android/internal/ui3d/AlphaAnimationAdapter;->mAlpha:F

    invoke-interface {p1, v0}, Lcom/motorola/android/internal/ui3d/Transformable;->setAlpha(F)V

    .line 57
    return-void
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 7
    .parameter "time"
    .parameter "t"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/AlphaAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 48
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/AlphaAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/AlphaAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 49
    .local v0, more:Z
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/AlphaAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/motorola/android/internal/ui3d/AlphaAnimationAdapter;->mAlpha:F

    .line 51
    return v0
.end method

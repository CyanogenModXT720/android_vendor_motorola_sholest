.class public Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;
.super Lcom/motorola/android/internal/ui3d/Animation3D;
.source "Rotate3DAnimation.java"


# instance fields
.field mDx:I

.field mDy:I

.field mDz:I

.field mSx:I

.field mSy:I

.field mSz:I

.field mX:I

.field mY:I

.field mZ:I


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .parameter "dx"
    .parameter "dy"
    .parameter "dz"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/Animation3D;-><init>()V

    .line 24
    iput v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mSx:I

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mSy:I

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mSz:I

    .line 39
    iput p1, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mDx:I

    .line 40
    iput p2, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mDy:I

    .line 41
    iput p3, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mDz:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/Animation3D;-><init>()V

    .line 24
    iput v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mSx:I

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mSy:I

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mSz:I

    .line 29
    return-void
.end method


# virtual methods
.method public applyToTransformable(Lcom/motorola/android/internal/ui3d/Transformable;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 91
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mX:I

    if-eqz v0, :cond_a

    .line 92
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mX:I

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lcom/motorola/android/internal/ui3d/Transformable;->rotateX(F)V

    .line 94
    :cond_a
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mY:I

    if-eqz v0, :cond_14

    .line 95
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mY:I

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lcom/motorola/android/internal/ui3d/Transformable;->rotateY(F)V

    .line 97
    :cond_14
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mZ:I

    if-eqz v0, :cond_1e

    .line 98
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mZ:I

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lcom/motorola/android/internal/ui3d/Transformable;->rotateZ(F)V

    .line 99
    :cond_1e
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 50
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mDx:I

    if-eqz v0, :cond_e

    .line 51
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mSx:I

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mDx:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mX:I

    .line 52
    :cond_e
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mDy:I

    if-eqz v0, :cond_1c

    .line 53
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mSy:I

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mDy:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mY:I

    .line 54
    :cond_1c
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mDz:I

    if-eqz v0, :cond_2a

    .line 55
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mSz:I

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mDz:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mZ:I

    .line 56
    :cond_2a
    return-void
.end method

.method public getAngleX()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mX:I

    return v0
.end method

.method public getAngleY()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mY:I

    return v0
.end method

.method public getAngleZ()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Rotate3DAnimation;->mZ:I

    return v0
.end method

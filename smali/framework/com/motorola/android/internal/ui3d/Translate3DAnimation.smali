.class public Lcom/motorola/android/internal/ui3d/Translate3DAnimation;
.super Lcom/motorola/android/internal/ui3d/Animation3D;
.source "Translate3DAnimation.java"


# instance fields
.field mDx:I

.field mDy:I

.field mDz:I

.field mNewOrigin:Z

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

    .line 42
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/Animation3D;-><init>()V

    .line 27
    iput v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSx:I

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSy:I

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSz:I

    .line 30
    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mNewOrigin:Z

    .line 43
    iput p1, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mDx:I

    .line 44
    iput p2, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mDy:I

    .line 45
    iput p3, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mDz:I

    .line 46
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 8
    .parameter "fromX"
    .parameter "dx"
    .parameter "fromY"
    .parameter "dy"
    .parameter "fromZ"
    .parameter "dz"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/Animation3D;-><init>()V

    .line 27
    iput v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSx:I

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSy:I

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSz:I

    .line 30
    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mNewOrigin:Z

    .line 60
    iput p1, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSx:I

    .line 61
    iput p3, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSy:I

    .line 62
    iput p5, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSz:I

    .line 63
    iput p2, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mDx:I

    .line 64
    iput p4, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mDy:I

    .line 65
    iput p6, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mDz:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mNewOrigin:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/Animation3D;-><init>()V

    .line 27
    iput v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSx:I

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSy:I

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSz:I

    .line 30
    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mNewOrigin:Z

    .line 33
    return-void
.end method


# virtual methods
.method public applyToTransformable(Lcom/motorola/android/internal/ui3d/Transformable;)V
    .registers 5
    .parameter "t"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mNewOrigin:Z

    if-eqz v0, :cond_10

    .line 113
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSx:I

    int-to-float v0, v0

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSy:I

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSz:I

    int-to-float v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/motorola/android/internal/ui3d/Transformable;->translate(FFF)V

    .line 115
    :cond_10
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mX:I

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mY:I

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mZ:I

    if-eqz v0, :cond_28

    .line 116
    :cond_1c
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mZ:I

    int-to-float v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/motorola/android/internal/ui3d/Transformable;->translate(FFF)V

    .line 118
    :cond_28
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 96
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mDx:I

    if-eqz v0, :cond_b

    .line 97
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mDx:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mX:I

    .line 98
    :cond_b
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mDy:I

    if-eqz v0, :cond_16

    .line 99
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mDy:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mY:I

    .line 100
    :cond_16
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mDz:I

    if-eqz v0, :cond_21

    .line 101
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mDz:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mZ:I

    .line 102
    :cond_21
    return-void
.end method

.method public getX()I
    .registers 3

    .prologue
    .line 73
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSx:I

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getY()I
    .registers 3

    .prologue
    .line 80
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSy:I

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getZ()I
    .registers 3

    .prologue
    .line 87
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mSz:I

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Translate3DAnimation;->mZ:I

    add-int/2addr v0, v1

    return v0
.end method

.class public Lcom/motorola/android/internal/ui3d/Animation3DSet;
.super Landroid/view/animation/AnimationSet;
.source "Animation3DSet.java"

# interfaces
.implements Lcom/motorola/android/internal/ui3d/Locatable;


# instance fields
.field mAnimation:Lcom/motorola/android/internal/ui3d/Animation3DSet;

.field mDummyTrans:Landroid/view/animation/Transformation;

.field mWidget:Lcom/motorola/android/internal/ui3d/Widget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;->mDummyTrans:Landroid/view/animation/Transformation;

    .line 36
    iput-object p0, p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;->mAnimation:Lcom/motorola/android/internal/ui3d/Animation3DSet;

    .line 37
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "shareInterpolator"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 57
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;->mDummyTrans:Landroid/view/animation/Transformation;

    .line 41
    iput-object p0, p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;->mAnimation:Lcom/motorola/android/internal/ui3d/Animation3DSet;

    .line 42
    return-void
.end method


# virtual methods
.method public addAnimation(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter "a"

    .prologue
    .line 45
    invoke-static {p1}, Lcom/motorola/android/internal/ui3d/Animation3D;->getSupportedLocatable(Landroid/view/animation/Animation;)Lcom/motorola/android/internal/ui3d/Locatable;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-super {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 46
    return-void
.end method

.method public animate(J)V
    .registers 4
    .parameter "time"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;->mDummyTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 61
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;->mDummyTrans:Landroid/view/animation/Transformation;

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/android/internal/ui3d/Animation3DSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 62
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;->mWidget:Lcom/motorola/android/internal/ui3d/Widget;

    if-eqz v0, :cond_13

    .line 63
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;->mWidget:Lcom/motorola/android/internal/ui3d/Widget;

    invoke-virtual {v0}, Lcom/motorola/android/internal/ui3d/Widget;->notifyLocationChanged()V

    .line 64
    :cond_13
    return-void
.end method

.method public applyToTransformable(Lcom/motorola/android/internal/ui3d/Transformable;)V
    .registers 7
    .parameter "t"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Animation3DSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 74
    .local v1, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 76
    .local v2, count:I
    const/4 v4, 0x1

    sub-int v3, v2, v4

    .local v3, i:I
    :goto_d
    if-ltz v3, :cond_21

    .line 77
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 78
    .local v0, a:Landroid/view/animation/Animation;
    instance-of v4, v0, Lcom/motorola/android/internal/ui3d/Locatable;

    if-eqz v4, :cond_1e

    .line 79
    check-cast v0, Lcom/motorola/android/internal/ui3d/Locatable;

    .end local v0           #a:Landroid/view/animation/Animation;
    invoke-interface {v0, p1}, Lcom/motorola/android/internal/ui3d/Locatable;->applyToTransformable(Lcom/motorola/android/internal/ui3d/Transformable;)V

    .line 76
    :cond_1e
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    .line 82
    :cond_21
    return-void
.end method

.method public getWidget()Lcom/motorola/android/internal/ui3d/Widget;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;->mWidget:Lcom/motorola/android/internal/ui3d/Widget;

    return-object v0
.end method

.method public setWidget(Lcom/motorola/android/internal/ui3d/Widget;)V
    .registers 2
    .parameter "widget"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;->mWidget:Lcom/motorola/android/internal/ui3d/Widget;

    .line 50
    return-void
.end method

.class public abstract Lcom/motorola/android/internal/ui3d/Animation3D;
.super Landroid/view/animation/Animation;
.source "Animation3D.java"

# interfaces
.implements Lcom/motorola/android/internal/ui3d/Locatable;


# instance fields
.field mAnimation:Lcom/motorola/android/internal/ui3d/Animation3D;

.field mWidget:Lcom/motorola/android/internal/ui3d/Widget;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 90
    iput-object p0, p0, Lcom/motorola/android/internal/ui3d/Animation3D;->mAnimation:Lcom/motorola/android/internal/ui3d/Animation3D;

    .line 91
    return-void
.end method

.method static getOriginalAnimation(Lcom/motorola/android/internal/ui3d/Locatable;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "loc"

    .prologue
    .line 76
    instance-of v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;

    if-eqz v0, :cond_b

    .line 77
    check-cast p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;

    .end local p0
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->getOriginalAnimation()Landroid/view/animation/Animation;

    .line 83
    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0

    .line 78
    .restart local p0
    :cond_b
    instance-of v0, p0, Lcom/motorola/android/internal/ui3d/Animation3D;

    if-eqz v0, :cond_13

    .line 79
    check-cast p0, Lcom/motorola/android/internal/ui3d/Animation3D;

    .end local p0
    move-object v0, p0

    goto :goto_a

    .line 80
    .restart local p0
    :cond_13
    instance-of v0, p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;

    if-eqz v0, :cond_9

    .line 81
    check-cast p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;

    .end local p0
    move-object v0, p0

    goto :goto_a
.end method

.method static getSupportedLocatable(Landroid/view/animation/Animation;)Lcom/motorola/android/internal/ui3d/Locatable;
    .registers 4
    .parameter "a"

    .prologue
    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v1, 0x0

    .line 56
    .end local p0
    :goto_3
    return-object v1

    .line 49
    .restart local p0
    :cond_4
    instance-of v1, p0, Landroid/view/animation/TranslateAnimation;

    if-eqz v1, :cond_10

    .line 50
    new-instance v1, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;

    check-cast p0, Landroid/view/animation/TranslateAnimation;

    .end local p0
    invoke-direct {v1, p0}, Lcom/motorola/android/internal/ui3d/TranslateAnimationAdapter;-><init>(Landroid/view/animation/TranslateAnimation;)V

    goto :goto_3

    .line 51
    .restart local p0
    :cond_10
    instance-of v1, p0, Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_1c

    .line 52
    new-instance v1, Lcom/motorola/android/internal/ui3d/AlphaAnimationAdapter;

    check-cast p0, Landroid/view/animation/AlphaAnimation;

    .end local p0
    invoke-direct {v1, p0}, Lcom/motorola/android/internal/ui3d/AlphaAnimationAdapter;-><init>(Landroid/view/animation/AlphaAnimation;)V

    goto :goto_3

    .line 53
    .restart local p0
    :cond_1c
    instance-of v1, p0, Lcom/motorola/android/internal/ui3d/Animation3D;

    if-eqz v1, :cond_24

    .line 54
    check-cast p0, Lcom/motorola/android/internal/ui3d/Animation3D;

    .end local p0
    move-object v1, p0

    goto :goto_3

    .line 55
    .restart local p0
    :cond_24
    instance-of v1, p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;

    if-eqz v1, :cond_2c

    .line 56
    check-cast p0, Lcom/motorola/android/internal/ui3d/Animation3DSet;

    .end local p0
    move-object v1, p0

    goto :goto_3

    .line 59
    .restart local p0
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "World3D does not support this type of animation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, msg:Ljava/lang/String;
    instance-of v1, p0, Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_5c

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  Use Animation3DSet instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_56
    :goto_56
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_5c
    instance-of v1, p0, Landroid/view/animation/RotateAnimation;

    if-eqz v1, :cond_56

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  Use Rotate3DAnimation instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_56
.end method


# virtual methods
.method public animate(J)V
    .registers 4
    .parameter "time"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/android/internal/ui3d/Animation3D;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 109
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Animation3D;->mWidget:Lcom/motorola/android/internal/ui3d/Widget;

    if-eqz v0, :cond_d

    .line 110
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Animation3D;->mWidget:Lcom/motorola/android/internal/ui3d/Widget;

    invoke-virtual {v0}, Lcom/motorola/android/internal/ui3d/Widget;->notifyLocationChanged()V

    .line 111
    :cond_d
    return-void
.end method

.method public abstract applyToTransformable(Lcom/motorola/android/internal/ui3d/Transformable;)V
.end method

.method public getWidget()Lcom/motorola/android/internal/ui3d/Widget;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Animation3D;->mWidget:Lcom/motorola/android/internal/ui3d/Widget;

    return-object v0
.end method

.method public setWidget(Lcom/motorola/android/internal/ui3d/Widget;)V
    .registers 2
    .parameter "widget"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/Animation3D;->mWidget:Lcom/motorola/android/internal/ui3d/Widget;

    .line 95
    return-void
.end method

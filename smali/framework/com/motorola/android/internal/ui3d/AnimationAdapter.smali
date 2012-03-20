.class abstract Lcom/motorola/android/internal/ui3d/AnimationAdapter;
.super Lcom/motorola/android/internal/ui3d/Animation3D;
.source "AnimationAdapter.java"


# instance fields
.field mAnimation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/Animation3D;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFillAfter()Z
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v0

    return v0
.end method

.method public getFillBefore()Z
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getFillBefore()Z

    move-result v0

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method getOriginalAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getRepeatCount()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getStartOffset()J
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getZAdjustment()I
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v0

    return v0
.end method

.method public hasEnded()Z
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    return v0
.end method

.method public hasStarted()Z
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    return v0
.end method

.method public initialize(IIII)V
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 81
    return-void
.end method

.method protected initialize(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 29
    return-void
.end method

.method public isFillEnabled()Z
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->isFillEnabled()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 93
    return-void
.end method

.method public restrictDuration(J)V
    .registers 4
    .parameter "millis"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 97
    return-void
.end method

.method public scaleCurrentDuration(F)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 101
    return-void
.end method

.method public setDuration(J)V
    .registers 4
    .parameter "millis"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 105
    return-void
.end method

.method public setFillAfter(Z)V
    .registers 3
    .parameter "fillAfter"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 109
    return-void
.end method

.method public setFillBefore(Z)V
    .registers 3
    .parameter "fillBefore"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 113
    return-void
.end method

.method public setFillEnabled(Z)V
    .registers 3
    .parameter "fillEnabled"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 117
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "resID"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 125
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3
    .parameter "i"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 121
    return-void
.end method

.method public setRepeatCount(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 129
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 133
    return-void
.end method

.method public setStartOffset(J)V
    .registers 4
    .parameter "offset"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 137
    return-void
.end method

.method public setStartTime(J)V
    .registers 4
    .parameter "time"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 141
    return-void
.end method

.method public setZAdjustment(I)V
    .registers 3
    .parameter "z"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 145
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 149
    return-void
.end method

.method public startNow()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 153
    return-void
.end method

.method public willChangeBounds()Z
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/AnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v0

    return v0
.end method

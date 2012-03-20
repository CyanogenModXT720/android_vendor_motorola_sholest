.class public Lcom/motorola/android/internal/ui3d/Form;
.super Ljava/lang/Object;
.source "Form.java"


# static fields
.field public static final EASE_IN:I = 0x2

.field public static final EASE_IN_OUT:I = 0x3

.field public static final EASE_OUT:I = 0x1

.field public static final LINEAR:I = 0x0

.field public static final OVERSHOOT:I = 0x4


# instance fields
.field deltaScales:[F

.field duration:J

.field private interpolator:I

.field scales:[F

.field startTime:J

.field targetScales:[F


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v3, p0, Lcom/motorola/android/internal/ui3d/Form;->interpolator:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/internal/ui3d/Form;->duration:J

    .line 53
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    .line 54
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    .line 55
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->deltaScales:[F

    .line 59
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    aput v2, v0, v3

    .line 60
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    aput v2, v0, v5

    .line 61
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    aput v2, v0, v6

    .line 62
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aput v2, v0, v3

    .line 63
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aput v2, v0, v5

    .line 64
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aput v2, v0, v6

    .line 65
    return-void
.end method


# virtual methods
.method public adjustScales(FFF)V
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    iget-wide v0, p0, Lcom/motorola/android/internal/ui3d/Form;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 178
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    aput p1, v0, v4

    .line 179
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    aput p2, v0, v5

    .line 180
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    aput p3, v0, v6

    .line 187
    :goto_17
    return-void

    .line 183
    :cond_18
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aput p1, v0, v4

    .line 184
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aput p2, v0, v5

    .line 185
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aput p3, v0, v6

    .line 186
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Form;->startAnimation()V

    goto :goto_17
.end method

.method protected animationEnded()V
    .registers 1

    .prologue
    .line 170
    return-void
.end method

.method protected interpolate(F)F
    .registers 13
    .parameter "t"

    .prologue
    const/high16 v10, 0x4080

    const/high16 v9, 0x3f80

    .line 80
    iget v5, p0, Lcom/motorola/android/internal/ui3d/Form;->interpolator:I

    packed-switch v5, :pswitch_data_42

    move v5, p1

    .line 104
    :goto_a
    return v5

    .line 82
    :pswitch_b
    mul-float v5, p1, p1

    mul-float/2addr v5, p1

    goto :goto_a

    .line 85
    :pswitch_f
    sub-float v1, v9, p1

    .line 86
    .local v1, inv:F
    mul-float v5, v1, v1

    mul-float/2addr v5, v1

    sub-float v5, v9, v5

    goto :goto_a

    .line 89
    .end local v1           #inv:F
    :pswitch_17
    float-to-double v5, p1

    const-wide/high16 v7, 0x3fe0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_23

    .line 90
    mul-float v5, v10, p1

    mul-float/2addr v5, p1

    mul-float/2addr v5, p1

    goto :goto_a

    .line 92
    :cond_23
    sub-float v2, v9, p1

    .line 93
    .local v2, inv2:F
    mul-float v5, v10, v2

    mul-float/2addr v5, v2

    mul-float/2addr v5, v2

    sub-float v5, v9, v5

    goto :goto_a

    .line 96
    .end local v2           #inv2:F
    :pswitch_2c
    mul-float v5, p1, p1

    mul-float v0, v5, p1

    .line 97
    .local v0, ease:F
    sub-float v3, v9, p1

    .line 98
    .local v3, inv3:F
    mul-float v5, v3, v3

    const/high16 v6, 0x4100

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 99
    .local v4, sin:F
    mul-float v5, v4, p1

    sub-float v5, v0, v5

    goto :goto_a

    .line 80
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_17
        :pswitch_2c
    .end packed-switch
.end method

.method public reset()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    .line 190
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 191
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 193
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Form;->startAnimation()V

    .line 194
    return-void
.end method

.method public setDuration(J)V
    .registers 3
    .parameter "duration"

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/motorola/android/internal/ui3d/Form;->duration:J

    .line 174
    return-void
.end method

.method public setInterpolationMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 116
    if-ltz p1, :cond_5

    const/4 v0, 0x4

    if-le p1, v0, :cond_d

    .line 117
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Interpolation Mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_d
    iput p1, p0, Lcom/motorola/android/internal/ui3d/Form;->interpolator:I

    .line 120
    return-void
.end method

.method startAnimation()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->deltaScales:[F

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 164
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->deltaScales:[F

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 165
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->deltaScales:[F

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    aget v2, v2, v5

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/android/internal/ui3d/Form;->startTime:J

    .line 167
    return-void
.end method

.method protected update(J)V
    .registers 11
    .parameter "time"

    .prologue
    const-wide/16 v6, 0x0

    .line 125
    iget-wide v4, p0, Lcom/motorola/android/internal/ui3d/Form;->duration:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1e

    .line 128
    iget-wide v4, p0, Lcom/motorola/android/internal/ui3d/Form;->startTime:J

    sub-long v1, p1, v4

    .line 131
    .local v1, t:J
    cmp-long v4, v1, v6

    if-lez v4, :cond_1e

    .line 133
    iget-wide v4, p0, Lcom/motorola/android/internal/ui3d/Form;->duration:J

    cmp-long v4, v1, v4

    if-lez v4, :cond_1f

    .line 134
    iput-wide v6, p0, Lcom/motorola/android/internal/ui3d/Form;->duration:J

    .line 135
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Form;->updatePastDuration()V

    .line 137
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Form;->animationEnded()V

    .line 145
    .end local v1           #t:J
    :cond_1e
    :goto_1e
    return-void

    .line 139
    .restart local v1       #t:J
    :cond_1f
    iget-wide v4, p0, Lcom/motorola/android/internal/ui3d/Form;->duration:J

    sub-long/2addr v4, v1

    long-to-int v3, v4

    .line 140
    .local v3, timeLeft:I
    int-to-float v4, v3

    iget-wide v5, p0, Lcom/motorola/android/internal/ui3d/Form;->duration:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/ui3d/Form;->interpolate(F)F

    move-result v0

    .line 141
    .local v0, ratio:F
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/ui3d/Form;->updateWithRatio(F)V

    goto :goto_1e
.end method

.method protected updatePastDuration()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 149
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 150
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 151
    return-void
.end method

.method protected updateWithRatio(F)V
    .registers 9
    .parameter "ratio"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->deltaScales:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_1c

    .line 155
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/Form;->deltaScales:[F

    aget v2, v2, v3

    mul-float/2addr v2, p1

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 156
    :cond_1c
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->deltaScales:[F

    aget v0, v0, v4

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_34

    .line 157
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/Form;->deltaScales:[F

    aget v2, v2, v4

    mul-float/2addr v2, p1

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 158
    :cond_34
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->deltaScales:[F

    aget v0, v0, v5

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_4c

    .line 159
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Form;->scales:[F

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Form;->targetScales:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/Form;->deltaScales:[F

    aget v2, v2, v5

    mul-float/2addr v2, p1

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 160
    :cond_4c
    return-void
.end method

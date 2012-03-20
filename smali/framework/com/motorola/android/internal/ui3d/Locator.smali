.class public Lcom/motorola/android/internal/ui3d/Locator;
.super Ljava/lang/Object;
.source "Locator.java"

# interfaces
.implements Lcom/motorola/android/internal/ui3d/Locatable;


# static fields
.field private static final ANGLE_X:I = 0x3

.field private static final ANGLE_Y:I = 0x4

.field private static final ANGLE_Z:I = 0x5

.field public static final EASE_IN:I = 0x2

.field public static final EASE_IN_OUT:I = 0x3

.field public static final EASE_OUT:I = 0x1

.field public static final LINEAR:I = 0x0

.field public static final OVERSHOOT:I = 0x4

.field private static final RADIUS:I = 0x6

.field private static final VALUE_COUNT:I = 0x7

.field private static final X:I = 0x0

.field private static final Y:I = 0x1

.field private static final Z:I = 0x2


# instance fields
.field animationActive:Z

.field animationDelay:J

.field animationDuration:J

.field currentAnimationDuration:J

.field currentValues:[I

.field deltaValues:[I

.field private interpolator:I

.field myWidget:Lcom/motorola/android/internal/ui3d/Widget;

.field startTime:J

.field targetValues:[I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x7

    const-wide/16 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-wide v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->startTime:J

    .line 88
    iput-wide v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationDuration:J

    .line 93
    iput-wide v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationDelay:J

    .line 98
    iput-wide v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentAnimationDuration:J

    .line 103
    iput-boolean v3, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationActive:Z

    .line 125
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    .line 128
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    .line 131
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->deltaValues:[I

    .line 163
    iput v3, p0, Lcom/motorola/android/internal/ui3d/Locator;->interpolator:I

    return-void
.end method

.method private setValue(II)V
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    aput p2, v0, p1

    .line 315
    iget-wide v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 316
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    aput p2, v0, p1

    .line 317
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->deltaValues:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 318
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Locator;->notifyLocationChanged()V

    .line 322
    :goto_18
    return-void

    .line 320
    :cond_19
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/Locator;->startAnimation()V

    goto :goto_18
.end method

.method private setValues(IIIIII)V
    .registers 12
    .parameter "index1"
    .parameter "index2"
    .parameter "index3"
    .parameter "value1"
    .parameter "value2"
    .parameter "value3"

    .prologue
    const/4 v4, 0x0

    .line 290
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    aput p4, v0, p1

    .line 291
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    aput p5, v0, p2

    .line 292
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    aput p6, v0, p3

    .line 294
    iget-wide v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_31

    .line 295
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    aput p4, v0, p1

    .line 296
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    aput p5, v0, p2

    .line 297
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    aput p6, v0, p3

    .line 298
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->deltaValues:[I

    aput v4, v0, p1

    .line 299
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->deltaValues:[I

    aput v4, v0, p2

    .line 300
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->deltaValues:[I

    aput v4, v0, p3

    .line 301
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Locator;->notifyLocationChanged()V

    .line 305
    :goto_30
    return-void

    .line 303
    :cond_31
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/Locator;->startAnimation()V

    goto :goto_30
.end method

.method private startAnimation()V
    .registers 6

    .prologue
    .line 512
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_14

    .line 513
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Locator;->deltaValues:[I

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    aput v2, v1, v0

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 516
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationDelay:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/motorola/android/internal/ui3d/Locator;->startTime:J

    .line 517
    iget-wide v1, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationDuration:J

    iput-wide v1, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentAnimationDuration:J

    .line 518
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationActive:Z

    .line 520
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Locator;->notifyLocationChanged()V

    .line 521
    return-void
.end method


# virtual methods
.method public adjustLocation(III)V
    .registers 11
    .parameter "dx"
    .parameter "dy"
    .parameter "dz"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 477
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    aget v0, v0, v1

    add-int v4, v0, p1

    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    aget v0, v0, v2

    add-int v5, v0, p2

    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    aget v0, v0, v3

    add-int v6, v0, p3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/internal/ui3d/Locator;->setValues(IIIIII)V

    .line 481
    return-void
.end method

.method public adjustRadius(I)V
    .registers 4
    .parameter "dr"

    .prologue
    const/4 v1, 0x6

    .line 467
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    aget v0, v0, v1

    add-int/2addr v0, p1

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/internal/ui3d/Locator;->setValue(II)V

    .line 468
    return-void
.end method

.method public adjustRotation(III)V
    .registers 11
    .parameter "angX"
    .parameter "angY"
    .parameter "angZ"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 503
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    aget v0, v0, v1

    add-int v4, v0, p1

    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    aget v0, v0, v2

    add-int v5, v0, p2

    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    aget v0, v0, v3

    add-int v6, v0, p3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/internal/ui3d/Locator;->setValues(IIIIII)V

    .line 507
    return-void
.end method

.method public animate(J)V
    .registers 12
    .parameter "time"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x0

    .line 544
    iget-boolean v5, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationActive:Z

    if-eqz v5, :cond_25

    .line 547
    iget-wide v5, p0, Lcom/motorola/android/internal/ui3d/Locator;->startTime:J

    sub-long v2, p1, v5

    .line 549
    .local v2, t:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_22

    .line 551
    iget-wide v5, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentAnimationDuration:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_26

    .line 553
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    iget-object v6, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    invoke-static {v5, v7, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 556
    iput-boolean v7, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationActive:Z

    .line 559
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Locator;->animationEnded()V

    .line 572
    :cond_22
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Locator;->notifyLocationChanged()V

    .line 574
    .end local v2           #t:J
    :cond_25
    return-void

    .line 561
    .restart local v2       #t:J
    :cond_26
    iget-wide v5, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentAnimationDuration:J

    sub-long/2addr v5, v2

    long-to-int v4, v5

    .line 562
    .local v4, timeLeft:I
    int-to-float v5, v4

    iget-wide v6, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentAnimationDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/motorola/android/internal/ui3d/Locator;->interpolate(F)F

    move-result v1

    .line 565
    .local v1, ratio:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_34
    if-ge v0, v8, :cond_22

    .line 566
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    iget-object v6, p0, Lcom/motorola/android/internal/ui3d/Locator;->targetValues:[I

    aget v6, v6, v0

    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/Locator;->deltaValues:[I

    aget v7, v7, v0

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v5, v0

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_34
.end method

.method protected animationEnded()V
    .registers 1

    .prologue
    .line 531
    return-void
.end method

.method public applyToTransformable(Lcom/motorola/android/internal/ui3d/Transformable;)V
    .registers 8
    .parameter "c"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 589
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    aget v0, v0, v1

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    aget v0, v0, v2

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    aget v0, v0, v4

    if-eqz v0, :cond_29

    .line 592
    :cond_17
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/motorola/android/internal/ui3d/Transformable;->translate(FFF)V

    .line 596
    :cond_29
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    aget v0, v0, v5

    if-eqz v0, :cond_37

    .line 597
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    aget v0, v0, v5

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lcom/motorola/android/internal/ui3d/Transformable;->rotateX(F)V

    .line 599
    :cond_37
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    if-eqz v0, :cond_47

    .line 600
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lcom/motorola/android/internal/ui3d/Transformable;->rotateY(F)V

    .line 602
    :cond_47
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    if-eqz v0, :cond_57

    .line 603
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lcom/motorola/android/internal/ui3d/Transformable;->rotateZ(F)V

    .line 607
    :cond_57
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    if-eqz v0, :cond_68

    .line 609
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {p1, v3, v3, v0}, Lcom/motorola/android/internal/ui3d/Transformable;->translate(FFF)V

    .line 612
    :cond_68
    return-void
.end method

.method public getAngleX()I
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getAngleY()I
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getAngleZ()I
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getElapsedTime()J
    .registers 5

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationActive:Z

    if-eqz v0, :cond_c

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/motorola/android/internal/ui3d/Locator;->startTime:J

    sub-long/2addr v0, v2

    .line 410
    :goto_b
    return-wide v0

    :cond_c
    const-wide/16 v0, 0x0

    goto :goto_b
.end method

.method public getRadius()I
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public getTimeRemaining()J
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 394
    iget-boolean v2, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationActive:Z

    if-eqz v2, :cond_16

    .line 395
    iget-wide v2, p0, Lcom/motorola/android/internal/ui3d/Locator;->startTime:J

    iget-wide v4, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationDuration:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 396
    .local v0, t:J
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 398
    .end local v0           #t:J
    :goto_15
    return-wide v2

    :cond_16
    move-wide v2, v6

    goto :goto_15
.end method

.method public getWidget()Lcom/motorola/android/internal/ui3d/Widget;
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->myWidget:Lcom/motorola/android/internal/ui3d/Widget;

    return-object v0
.end method

.method public getX()I
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getY()I
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getZ()I
    .registers 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->currentValues:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method protected interpolate(F)F
    .registers 13
    .parameter "t"

    .prologue
    const/high16 v10, 0x4080

    const/high16 v9, 0x3f80

    .line 178
    iget v5, p0, Lcom/motorola/android/internal/ui3d/Locator;->interpolator:I

    packed-switch v5, :pswitch_data_42

    move v5, p1

    .line 202
    :goto_a
    return v5

    .line 180
    :pswitch_b
    mul-float v5, p1, p1

    mul-float/2addr v5, p1

    goto :goto_a

    .line 183
    :pswitch_f
    sub-float v1, v9, p1

    .line 184
    .local v1, inv:F
    mul-float v5, v1, v1

    mul-float/2addr v5, v1

    sub-float v5, v9, v5

    goto :goto_a

    .line 187
    .end local v1           #inv:F
    :pswitch_17
    float-to-double v5, p1

    const-wide/high16 v7, 0x3fe0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_23

    .line 188
    mul-float v5, v10, p1

    mul-float/2addr v5, p1

    mul-float/2addr v5, p1

    goto :goto_a

    .line 190
    :cond_23
    sub-float v2, v9, p1

    .line 191
    .local v2, inv2:F
    mul-float v5, v10, v2

    mul-float/2addr v5, v2

    mul-float/2addr v5, v2

    sub-float v5, v9, v5

    goto :goto_a

    .line 194
    .end local v2           #inv2:F
    :pswitch_2c
    mul-float v5, p1, p1

    mul-float v0, v5, p1

    .line 195
    .local v0, ease:F
    sub-float v3, v9, p1

    .line 196
    .local v3, inv3:F
    mul-float v5, v3, v3

    const/high16 v6, 0x4100

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 197
    .local v4, sin:F
    mul-float v5, v4, p1

    sub-float v5, v0, v5

    goto :goto_a

    .line 178
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_17
        :pswitch_2c
    .end packed-switch
.end method

.method protected notifyLocationChanged()V
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->myWidget:Lcom/motorola/android/internal/ui3d/Widget;

    if-eqz v0, :cond_9

    .line 384
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->myWidget:Lcom/motorola/android/internal/ui3d/Widget;

    invoke-virtual {v0}, Lcom/motorola/android/internal/ui3d/Widget;->notifyLocationChanged()V

    .line 386
    :cond_9
    return-void
.end method

.method public setAngleX(I)V
    .registers 3
    .parameter "angX"

    .prologue
    .line 353
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/ui3d/Locator;->setValue(II)V

    .line 354
    return-void
.end method

.method public setAngleY(I)V
    .registers 3
    .parameter "angY"

    .prologue
    .line 361
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/ui3d/Locator;->setValue(II)V

    .line 362
    return-void
.end method

.method public setAngleZ(I)V
    .registers 3
    .parameter "angZ"

    .prologue
    .line 370
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/ui3d/Locator;->setValue(II)V

    .line 371
    return-void
.end method

.method public setDelay(I)V
    .registers 4
    .parameter "delay"

    .prologue
    .line 435
    if-gez p1, :cond_a

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Delay must be 0 or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_a
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationDelay:J

    .line 439
    return-void
.end method

.method public setDuration(I)V
    .registers 4
    .parameter "duration"

    .prologue
    .line 422
    if-gez p1, :cond_a

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration must be 0 or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_a
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/motorola/android/internal/ui3d/Locator;->animationDuration:J

    .line 426
    return-void
.end method

.method public setInterpolationMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 214
    if-ltz p1, :cond_5

    const/4 v0, 0x4

    if-le p1, v0, :cond_d

    .line 215
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Interpolation Mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_d
    iput p1, p0, Lcom/motorola/android/internal/ui3d/Locator;->interpolator:I

    .line 218
    return-void
.end method

.method public setLocation(III)V
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 450
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/internal/ui3d/Locator;->setValues(IIIIII)V

    .line 451
    return-void
.end method

.method public setRadius(I)V
    .registers 3
    .parameter "radius"

    .prologue
    .line 458
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/ui3d/Locator;->setValue(II)V

    .line 459
    return-void
.end method

.method public setRotation(III)V
    .registers 11
    .parameter "angX"
    .parameter "angY"
    .parameter "angZ"

    .prologue
    .line 490
    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x5

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/internal/ui3d/Locator;->setValues(IIIIII)V

    .line 491
    return-void
.end method

.method public setWidget(Lcom/motorola/android/internal/ui3d/Widget;)V
    .registers 2
    .parameter "widget"

    .prologue
    .line 534
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/Locator;->myWidget:Lcom/motorola/android/internal/ui3d/Widget;

    .line 535
    return-void
.end method

.method public setX(I)V
    .registers 3
    .parameter "x"

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/ui3d/Locator;->setValue(II)V

    .line 330
    return-void
.end method

.method public setY(I)V
    .registers 3
    .parameter "y"

    .prologue
    .line 337
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/ui3d/Locator;->setValue(II)V

    .line 338
    return-void
.end method

.method public setZ(I)V
    .registers 3
    .parameter "z"

    .prologue
    .line 345
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/ui3d/Locator;->setValue(II)V

    .line 346
    return-void
.end method

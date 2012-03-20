.class public Lcom/motorola/aui/MultiTouchGestureDetector;
.super Ljava/lang/Object;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/aui/MultiTouchGestureDetector$1;,
        Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;,
        Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_FINGER_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MultiTouchGestureDetector"


# instance fields
.field private final detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

.field private finger:[Landroid/graphics/Point;

.field private isMultiTouch:Z

.field private lastNumFingers:I

.field private lockout:Z

.field private lockoutIndex:I

.field private mFuzz:F

.field private final mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

.field private numEventsToWait:I


# direct methods
.method public constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;)V
    .registers 8
    .parameter "listener"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const v0, 0x3da3d70a

    iput v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFuzz:F

    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    new-instance v1, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;

    invoke-direct {v1, p0, v4}, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;

    invoke-direct {v1, p0, v4}, Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;

    invoke-direct {v1, p0, v4}, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    .line 181
    new-array v0, v5, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->finger:[Landroid/graphics/Point;

    .line 182
    iput-boolean v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->isMultiTouch:Z

    .line 183
    iput-boolean v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lockout:Z

    .line 185
    iput v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->numEventsToWait:I

    .line 186
    iput v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lastNumFingers:I

    .line 157
    iput-object p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    .line 158
    iget-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    if-nez v0, :cond_4e

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnMultiTouchGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_4e
    iget-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->finger:[Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v2

    .line 162
    iget-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->finger:[Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v3

    .line 163
    return-void
.end method

.method static synthetic access$400(Lcom/motorola/aui/MultiTouchGestureDetector;)Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    return-object v0
.end method

.method private countFingers(Landroid/view/MotionEvent;)I
    .registers 11
    .parameter "ev"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 487
    const/4 v4, 0x2

    new-array v1, v4, [Z

    fill-array-data v1, :array_58

    .line 488
    .local v1, down:[Z
    const/4 v0, 0x0

    .line 492
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 493
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 494
    .local v2, fingerId:I
    if-gt v2, v8, :cond_29

    .line 495
    aput-boolean v8, v1, v2

    .line 496
    iget-object v4, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->finger:[Landroid/graphics/Point;

    aget-object v4, v4, v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 492
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 500
    .end local v2           #fingerId:I
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v8, v4, :cond_36

    .line 501
    aput-boolean v7, v1, v7

    .line 502
    aput-boolean v7, v1, v8

    .line 503
    :cond_36
    const/4 v4, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v4, v5, :cond_4b

    .line 504
    aput-boolean v7, v1, v7

    .line 509
    :cond_3f
    :goto_3f
    const/4 v3, 0x0

    :goto_40
    if-gt v3, v8, :cond_56

    .line 510
    aget-boolean v4, v1, v3

    if-eqz v4, :cond_48

    .line 511
    add-int/lit8 v0, v0, 0x1

    .line 509
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 505
    :cond_4b
    const/16 v4, 0x106

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v4, v5, :cond_3f

    .line 506
    aput-boolean v7, v1, v8

    goto :goto_3f

    .line 514
    :cond_56
    return v0

    .line 487
    nop

    :array_58
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "ev"

    .prologue
    const/high16 v12, 0x3f80

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 526
    iget-boolean v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->isMultiTouch:Z

    .line 529
    .local v6, wasMultiTouch:Z
    invoke-direct {p0, p1}, Lcom/motorola/aui/MultiTouchGestureDetector;->countFingers(Landroid/view/MotionEvent;)I

    move-result v4

    .line 531
    .local v4, numFingers:I
    if-ne v4, v8, :cond_39

    iget v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lastNumFingers:I

    if-ge v7, v8, :cond_39

    .line 535
    iput-boolean v11, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->isMultiTouch:Z

    .line 536
    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    invoke-interface {v7}, Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;->beginMultiTouch()V

    .line 541
    iput-boolean v10, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lockout:Z

    .line 542
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1b
    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    array-length v7, v7

    if-ge v1, v7, :cond_2c

    .line 543
    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    aget-object v7, v7, v1

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->finger:[Landroid/graphics/Point;

    invoke-virtual {v7, v8}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->initialize([Landroid/graphics/Point;)V

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 551
    :cond_2c
    const/4 v7, 0x3

    iput v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->numEventsToWait:I

    .line 600
    .end local v1           #index:I
    :cond_2f
    :goto_2f
    iput v4, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lastNumFingers:I

    .line 601
    if-nez v6, :cond_37

    iget-boolean v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->isMultiTouch:Z

    if-eqz v7, :cond_b2

    :cond_37
    move v7, v11

    :goto_38
    return v7

    .line 552
    :cond_39
    if-ne v4, v8, :cond_a3

    .line 553
    iget v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->numEventsToWait:I

    sub-int/2addr v7, v11

    iput v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->numEventsToWait:I

    .line 554
    iget v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->numEventsToWait:I

    if-gtz v7, :cond_2f

    .line 555
    iput v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->numEventsToWait:I

    .line 556
    iget-boolean v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lockout:Z

    if-nez v7, :cond_97

    .line 562
    const/4 v2, 0x0

    .line 563
    .local v2, maxDelta:F
    const/4 v5, 0x0

    .line 564
    .local v5, secondDelta:F
    const/4 v3, 0x0

    .line 565
    .local v3, maxDeltaIndex:I
    iput v10, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lockoutIndex:I

    :goto_4f
    iget v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lockoutIndex:I

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    array-length v8, v8

    if-ge v7, v8, :cond_7b

    .line 566
    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    iget v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lockoutIndex:I

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->finger:[Landroid/graphics/Point;

    invoke-virtual {v7, v8}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->getDelta([Landroid/graphics/Point;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 570
    .local v0, delta:F
    cmpl-float v7, v0, v2

    if-lez v7, :cond_75

    .line 571
    move v5, v2

    .line 572
    move v2, v0

    .line 573
    iget v3, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lockoutIndex:I

    .line 565
    :cond_6e
    :goto_6e
    iget v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lockoutIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lockoutIndex:I

    goto :goto_4f

    .line 574
    :cond_75
    cmpl-float v7, v0, v5

    if-lez v7, :cond_6e

    .line 575
    move v5, v0

    goto :goto_6e

    .line 578
    .end local v0           #delta:F
    :cond_7b
    sub-float v7, v2, v5

    iget v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFuzz:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2f

    .line 580
    iput v3, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lockoutIndex:I

    .line 581
    iput-boolean v11, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lockout:Z

    .line 582
    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    iget v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lockoutIndex:I

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->finger:[Landroid/graphics/Point;

    div-float v9, v5, v2

    sub-float v9, v12, v9

    invoke-virtual {v7, v8, v9}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->report([Landroid/graphics/Point;F)V

    goto :goto_2f

    .line 586
    .end local v2           #maxDelta:F
    .end local v3           #maxDeltaIndex:I
    .end local v5           #secondDelta:F
    :cond_97
    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    iget v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->lockoutIndex:I

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->finger:[Landroid/graphics/Point;

    invoke-virtual {v7, v8, v12}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->report([Landroid/graphics/Point;F)V

    goto :goto_2f

    .line 589
    :cond_a3
    if-nez v4, :cond_2f

    iget-boolean v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->isMultiTouch:Z

    if-eqz v7, :cond_2f

    .line 596
    iput-boolean v10, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->isMultiTouch:Z

    .line 597
    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    invoke-interface {v7}, Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;->endMultiTouch()V

    goto/16 :goto_2f

    :cond_b2
    move v7, v10

    .line 601
    goto :goto_38
.end method

.method public setThreshold(F)V
    .registers 2
    .parameter "value"

    .prologue
    .line 172
    iput p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFuzz:F

    .line 173
    return-void
.end method

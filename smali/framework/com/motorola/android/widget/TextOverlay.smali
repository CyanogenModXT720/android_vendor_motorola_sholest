.class public Lcom/motorola/android/widget/TextOverlay;
.super Landroid/view/View;
.source "TextOverlay.java"


# static fields
.field public static final ANCHOR_CENTER:I = 0x1

.field public static final ANCHOR_LEFT_TOP:I = 0x0

.field private static final ANIMATE_FRAME_DURATION:I = 0x21

.field private static final CLIPPATH_BORDER_SIZE:F = 12.0f

.field private static final CLIPPATH_X_RADIUS:F = 15.0f

.field private static final CLIPPATH_Y_RADIUS:F = 18.0f

.field private static final FTAREA_HEIGHT:I = 0x1050013

.field private static final FTAREA_WIDTH:I = 0x1050012

.field private static final LOG_TAG:Ljava/lang/String; = "TextOverlay"

.field private static final LOUPE_HIDE_ANIMATION:I = 0x10a0021

.field private static final LOUPE_SHOW_ANIMATION:I = 0x10a0020


# instance fields
.field private mAlpha:I

.field private mAnchor:I

.field private mClipPath:Landroid/graphics/Path;

.field private mHSV:[F

.field private mHeight:I

.field private mHideAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mIsLeftToRightText:Z

.field private mIsOnLeftSide:Z

.field private mLeft:I

.field private mLoupeHideAnimation:Landroid/view/animation/Animation;

.field private mLoupeShowAnimation:Landroid/view/animation/Animation;

.field private mParentView:Landroid/widget/FrameLayout;

.field private final mResFTAreaHeight:I

.field private final mResFTAreaWidth:I

.field private mScrollPosX:F

.field private mScrollPosY:F

.field private mShown:Z

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mTmpPt:Landroid/graphics/PointF;

.field private mTop:I

.field private mView:Landroid/widget/TextView;

.field private mWParams:Landroid/view/WindowManager$LayoutParams;

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowView:Landroid/widget/FrameLayout;

.field private mZoomX:F

.field private mZoomY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 79
    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosX:F

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosY:F

    .line 80
    iput v3, p0, Lcom/motorola/android/widget/TextOverlay;->mAnchor:I

    .line 81
    iput v2, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    iput v2, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomY:F

    .line 82
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    .line 84
    const/16 v1, 0xff

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mAlpha:I

    .line 85
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    .line 87
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    .line 91
    iput-boolean v4, p0, Lcom/motorola/android/widget/TextOverlay;->mIsOnLeftSide:Z

    .line 93
    new-instance v1, Lcom/motorola/android/widget/TextOverlay$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/widget/TextOverlay$1;-><init>(Lcom/motorola/android/widget/TextOverlay;)V

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mHideAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 108
    iput-boolean v3, p0, Lcom/motorola/android/widget/TextOverlay;->mShown:Z

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x1050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mResFTAreaWidth:I

    .line 111
    const v1, 0x1050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mResFTAreaHeight:I

    .line 113
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextOverlay;->initTextOverlay(Landroid/content/Context;)V

    .line 114
    invoke-virtual {p0, v4}, Lcom/motorola/android/widget/TextOverlay;->setDrawingCacheEnabled(Z)V

    .line 115
    const v1, 0x10a0020

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mLoupeShowAnimation:Landroid/view/animation/Animation;

    .line 116
    const v1, 0x10a0021

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mLoupeHideAnimation:Landroid/view/animation/Animation;

    .line 117
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mLoupeHideAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_77

    .line 118
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mLoupeHideAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mHideAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 121
    :goto_76
    return-void

    .line 120
    :cond_77
    const-string v1, "TextOverlay"

    const-string v2, "TextOverlay: mLoupeHideAnimation is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76
.end method

.method static synthetic access$000(Lcom/motorola/android/widget/TextOverlay;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/android/widget/TextOverlay;)Landroid/view/WindowManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/android/widget/TextOverlay;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/motorola/android/widget/TextOverlay;->mShown:Z

    return p1
.end method

.method private drawCursorOrSelection(Landroid/graphics/Canvas;)V
    .registers 21
    .parameter "canvas"

    .prologue
    .line 495
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 496
    .local v5, paint:Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 497
    .local v6, path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 498
    .local v8, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .line 499
    .local v7, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v4

    .line 500
    .local v4, lineHeight:F
    if-ne v8, v7, :cond_c0

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/widget/TextOverlay;->getDrawingCursorCenter(ILandroid/graphics/PointF;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    const/high16 v18, 0x3e80

    mul-float v18, v18, v4

    sub-float v17, v17, v18

    move-object v0, v6

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    const/high16 v18, 0x3f40

    mul-float v18, v18, v4

    add-float v17, v17, v18

    move-object v0, v6

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    sget-object v16, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 506
    const/high16 v16, 0x4000

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 532
    :goto_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->getColor()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/motorola/android/widget/TextOverlay;->getComplementaryColor(I)I

    move-result v16

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mAlpha:I

    move/from16 v16, v0

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 534
    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 535
    return-void

    .line 509
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/widget/TextOverlay;->getDrawingCursorCenter(ILandroid/graphics/PointF;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    const/high16 v17, 0x3f00

    add-float v10, v16, v17

    .line 511
    .local v10, x1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    const/high16 v17, 0x3e80

    mul-float v17, v17, v4

    sub-float v12, v16, v17

    .line 512
    .local v12, y11:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    const/high16 v17, 0x3f40

    mul-float v17, v17, v4

    add-float v13, v16, v17

    .line 513
    .local v13, y12:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/widget/TextOverlay;->getDrawingCursorCenter(ILandroid/graphics/PointF;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    const/high16 v17, 0x3f00

    add-float v11, v16, v17

    .line 515
    .local v11, x2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    const/high16 v17, 0x3e80

    mul-float v17, v17, v4

    sub-float v14, v16, v17

    .line 516
    .local v14, y21:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    const/high16 v17, 0x3f40

    mul-float v17, v17, v4

    add-float v15, v16, v17

    .line 518
    .local v15, y22:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 519
    .local v3, layout:Landroid/text/Layout;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    move/from16 v16, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v9, v16, v17

    .line 520
    .local v9, w:F
    invoke-virtual {v6, v10, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 521
    invoke-virtual {v6, v9, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 522
    invoke-virtual {v6, v9, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 523
    invoke-virtual {v6, v11, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 524
    invoke-virtual {v6, v11, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 525
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 526
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 527
    invoke-virtual {v6, v10, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 528
    invoke-virtual {v6, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 530
    sget-object v16, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_94
.end method

.method private drawLTRAndRTLText(Landroid/graphics/Canvas;)V
    .registers 22
    .parameter "canvas"

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_14

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 327
    .local v5, layout:Landroid/text/Layout;
    if-nez v5, :cond_15

    .line 383
    .end local v5           #layout:Landroid/text/Layout;
    :cond_14
    :goto_14
    return-void

    .line 328
    .restart local v5       #layout:Landroid/text/Layout;
    :cond_15
    invoke-virtual {v5}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    .line 329
    .local v13, textPaint:Landroid/graphics/Paint;
    invoke-virtual {v13}, Landroid/graphics/Paint;->getColor()I

    move-result v12

    .line 332
    .local v12, textColor:I
    const/16 v16, -0x1

    move v0, v12

    move/from16 v1, v16

    if-ne v0, v1, :cond_26

    .line 333
    const/high16 v12, -0x100

    .line 336
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3b

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 338
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosX:F

    move v14, v0

    .line 339
    .local v14, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosY:F

    move v15, v0

    .line 340
    .local v15, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mAnchor:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_71

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v14, v14, v16

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    .line 345
    :cond_71
    move v0, v14

    neg-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v15

    neg-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomY:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 349
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 350
    .local v6, paint:Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 351
    .local v7, path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    .line 352
    .local v11, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    .line 353
    .local v10, selEnd:I
    if-ne v11, v10, :cond_168

    .line 354
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    move-object v0, v5

    move v1, v11

    move-object v2, v7

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 355
    const/high16 v16, -0x1

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    sget-object v16, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 357
    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 364
    :goto_125
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mAlpha:I

    move/from16 v16, v0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 367
    if-eq v11, v10, :cond_13a

    .line 368
    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 371
    :cond_13a
    invoke-virtual {v13}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    .line 372
    .local v8, savedAlpha:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mAlpha:I

    move/from16 v16, v0

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 373
    invoke-virtual {v13}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    .line 374
    .local v9, savedColor:I
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 376
    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 377
    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    if-ne v11, v10, :cond_14

    .line 381
    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_14

    .line 360
    .end local v8           #savedAlpha:I
    .end local v9           #savedColor:I
    :cond_168
    invoke-virtual {v5, v11, v10, v7}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 361
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/motorola/android/widget/TextOverlay;->getComplementaryColor(I)I

    move-result v16

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    sget-object v16, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_125
.end method

.method private drawLeftToRightText(Landroid/graphics/Canvas;)V
    .registers 21
    .parameter "canvas"

    .prologue
    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object v3, v0

    if-nez v3, :cond_8

    .line 492
    :cond_7
    return-void

    .line 448
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 449
    .local v11, layout:Landroid/text/Layout;
    if-eqz v11, :cond_7

    .line 450
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/widget/TextOverlay;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 456
    .local v4, str:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    move-object v3, v0

    if-eqz v3, :cond_29

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 460
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosY:F

    move v3, v0

    float-to-int v3, v3

    invoke-virtual {v11, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v12

    .line 461
    .local v12, line:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosX:F

    move v3, v0

    invoke-virtual {v11, v12, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    .line 462
    .local v16, offset:I
    if-gez v16, :cond_40

    const/16 v16, 0x0

    .line 463
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    move/from16 v0, v16

    move v1, v3

    if-le v0, v1, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v16

    .line 466
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v3, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/widget/TextOverlay;->getCursorCenter(ILandroid/graphics/PointF;)V

    .line 467
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosX:F

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    move v5, v0

    mul-float v17, v3, v5

    .line 468
    .local v17, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosY:F

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mZoomY:F

    move v5, v0

    mul-float v18, v3, v5

    .line 471
    .local v18, ty:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v3, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/widget/TextOverlay;->getDrawingCursorCenter(ILandroid/graphics/PointF;)V

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mAnchor:I

    move v3, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_d1

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    move v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->y:F

    .line 478
    :cond_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    sub-float v3, v3, v17

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTmpPt:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    sub-float v5, v5, v18

    float-to-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 481
    invoke-direct/range {p0 .. p1}, Lcom/motorola/android/widget/TextOverlay;->drawCursorOrSelection(Landroid/graphics/Canvas;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v14

    .line 485
    .local v14, lineHeight:F
    invoke-virtual {v11}, Landroid/text/Layout;->getLineCount()I

    move-result v13

    .line 486
    .local v13, lineCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_101
    if-ge v10, v13, :cond_7

    .line 487
    invoke-virtual {v11, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 488
    .local v5, start:I
    invoke-virtual {v11, v10}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v6

    .line 489
    .local v6, end:I
    int-to-float v3, v10

    mul-float/2addr v3, v14

    float-to-int v15, v3

    .line 490
    .local v15, ly:I
    const/4 v7, 0x0

    int-to-float v8, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    move-object v9, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 486
    add-int/lit8 v10, v10, 0x1

    goto :goto_101
.end method

.method private getComplementaryColor(I)I
    .registers 7
    .parameter "color"

    .prologue
    const/high16 v4, 0x43b4

    const/4 v3, 0x0

    .line 302
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 303
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    aget v1, v0, v3

    const/high16 v2, 0x4334

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 304
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    aget v1, v1, v3

    cmpl-float v1, v1, v4

    if-lez v1, :cond_38

    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    aget v1, v1, v3

    sub-float/2addr v1, v4

    :goto_20
    aput v1, v0, v3

    .line 305
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    const/4 v1, 0x1

    const v2, 0x3eb33333

    aput v2, v0, v1

    .line 306
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    const/4 v1, 0x2

    const/high16 v2, 0x3f00

    aput v2, v0, v1

    .line 307
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0

    .line 304
    :cond_38
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mHSV:[F

    aget v1, v1, v3

    goto :goto_20
.end method

.method private getCursorCenter(ILandroid/graphics/PointF;)V
    .registers 10
    .parameter "cursorPos"
    .parameter "pt"

    .prologue
    .line 426
    iget-object v6, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 427
    .local v3, layout:Landroid/text/Layout;
    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 428
    .local v4, line:I
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 429
    .local v5, top:I
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 430
    .local v0, bottom:I
    invoke-virtual {v3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    float-to-int v1, v6

    .line 431
    .local v1, h1:I
    invoke-virtual {v3, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v6

    float-to-int v2, v6

    .line 432
    .local v2, h2:I
    add-int v6, v1, v2

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iput v6, p2, Landroid/graphics/PointF;->x:F

    .line 433
    add-int v6, v5, v0

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iput v6, p2, Landroid/graphics/PointF;->y:F

    .line 434
    return-void
.end method

.method private getDrawingCursorCenter(ILandroid/graphics/PointF;)V
    .registers 10
    .parameter "cursorPos"
    .parameter "pt"

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/motorola/android/widget/TextOverlay;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 438
    .local v4, str:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 439
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 440
    .local v1, line:I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 441
    .local v3, start:I
    iget-object v5, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    iput v5, p2, Landroid/graphics/PointF;->x:F

    .line 442
    iget-object v5, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v2

    .line 443
    .local v2, lineHeight:F
    int-to-float v5, v1

    mul-float/2addr v5, v2

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    sub-float/2addr v5, v6

    iput v5, p2, Landroid/graphics/PointF;->y:F

    .line 444
    return-void
.end method

.method private getText()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 285
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    if-eqz v1, :cond_20

    .line 286
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 287
    .local v0, transformation:Landroid/text/method/TransformationMethod;
    if-eqz v0, :cond_19

    .line 288
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 293
    .end local v0           #transformation:Landroid/text/method/TransformationMethod;
    :goto_18
    return-object v1

    .line 290
    .restart local v0       #transformation:Landroid/text/method/TransformationMethod;
    :cond_19
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_18

    .line 293
    .end local v0           #transformation:Landroid/text/method/TransformationMethod;
    :cond_20
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private initTextOverlay(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 126
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowManager:Landroid/view/WindowManager;

    .line 129
    invoke-static {p1}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v2

    .line 130
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    .line 131
    iget-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x218

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 134
    iget-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 135
    iget-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 136
    iget-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 137
    iget-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 138
    iget-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 139
    iget-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 140
    iget-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7d5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 141
    iget-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 144
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 145
    .local v0, transparent:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 146
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v2, v3, v7, v7}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 148
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 149
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mParentView:Landroid/widget/FrameLayout;

    .line 150
    iget-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mParentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mParentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 152
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowView:Landroid/widget/FrameLayout;

    .line 157
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 158
    .local v1, wParams:Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 159
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 162
    const v3, 0x108037a

    invoke-virtual {p0, v3}, Lcom/motorola/android/widget/TextOverlay;->setBackgroundResource(I)V

    .line 163
    return-void
.end method

.method private setAlpha(F)V
    .registers 3
    .parameter "a"

    .prologue
    .line 279
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    const/4 p1, 0x0

    .line 280
    :cond_6
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_e

    const/high16 p1, 0x3f80

    .line 281
    :cond_e
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/android/widget/TextOverlay;->mAlpha:I

    .line 282
    return-void
.end method

.method private setClipPath()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v3, 0x4140

    .line 270
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 271
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    sub-float/2addr v1, v4

    iget v2, p0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 274
    .local v0, rect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mClipPath:Landroid/graphics/Path;

    const/high16 v2, 0x4170

    const/high16 v3, 0x4190

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 276
    return-void
.end method

.method private updateDrawingParams()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, -0x1

    .line 386
    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 387
    .local v2, layout:Landroid/text/Layout;
    iput-boolean v14, p0, Lcom/motorola/android/widget/TextOverlay;->mIsLeftToRightText:Z

    .line 390
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 391
    .local v5, lp:Landroid/graphics/Paint;
    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    .line 394
    .local v9, textColor:I
    if-ne v9, v13, :cond_16

    .line 395
    const/high16 v9, -0x100

    .line 396
    :cond_16
    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 398
    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    iget v12, p0, Lcom/motorola/android/widget/TextOverlay;->mTextSize:F

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 399
    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 400
    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 403
    const/4 v6, 0x0

    .line 404
    .local v6, maxWidth:F
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 405
    .local v3, lineCount:I
    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v4

    .line 406
    .local v4, lineHeight:F
    invoke-direct {p0}, Lcom/motorola/android/widget/TextOverlay;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 407
    .local v8, str:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_49
    if-ge v1, v3, :cond_6a

    .line 408
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .line 409
    .local v7, start:I
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 410
    .local v0, end:I
    iget-object v11, p0, Lcom/motorola/android/widget/TextOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v8, v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v10

    .line 411
    .local v10, width:F
    cmpg-float v11, v6, v10

    if-gez v11, :cond_5e

    move v6, v10

    .line 418
    :cond_5e
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v13, :cond_67

    .line 419
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/motorola/android/widget/TextOverlay;->mIsLeftToRightText:Z

    .line 407
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 421
    .end local v0           #end:I
    .end local v7           #start:I
    .end local v10           #width:F
    :cond_6a
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v6, v11

    iput v11, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    .line 422
    int-to-float v11, v3

    mul-float/2addr v11, v4

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomY:F

    .line 423
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/motorola/android/widget/TextOverlay;->mShown:Z

    if-eqz v0, :cond_9

    .line 205
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mLoupeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/motorola/android/widget/TextOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    :cond_9
    return-void
.end method

.method public isShown()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/motorola/android/widget/TextOverlay;->mShown:Z

    return v0
.end method

.method public move(FF)V
    .registers 11
    .parameter "fingerX"
    .parameter "fingerY"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 212
    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p1, v4

    float-to-int v4, v4

    iput v4, p0, Lcom/motorola/android/widget/TextOverlay;->mLeft:I

    .line 213
    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    iget v5, p0, Lcom/motorola/android/widget/TextOverlay;->mResFTAreaHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/motorola/android/widget/TextOverlay;->mTop:I

    .line 214
    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mTop:I

    if-gez v4, :cond_60

    .line 215
    iput v7, p0, Lcom/motorola/android/widget/TextOverlay;->mTop:I

    .line 218
    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    iget v5, p0, Lcom/motorola/android/widget/TextOverlay;->mResFTAreaWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 219
    .local v1, left:I
    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mResFTAreaWidth:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    float-to-int v2, v4

    .line 220
    .local v2, right:I
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 221
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 222
    .local v3, screenWidth:I
    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_52

    .line 223
    iput-boolean v7, p0, Lcom/motorola/android/widget/TextOverlay;->mIsOnLeftSide:Z

    .line 229
    :cond_42
    :goto_42
    iget-boolean v4, p0, Lcom/motorola/android/widget/TextOverlay;->mIsOnLeftSide:Z

    if-eqz v4, :cond_5d

    .line 230
    iput v1, p0, Lcom/motorola/android/widget/TextOverlay;->mLeft:I

    .line 240
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #screenWidth:I
    :goto_48
    iget-object v4, p0, Lcom/motorola/android/widget/TextOverlay;->mParentView:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/motorola/android/widget/TextOverlay;->mLeft:I

    iget v6, p0, Lcom/motorola/android/widget/TextOverlay;->mTop:I

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 241
    return-void

    .line 225
    .restart local v0       #d:Landroid/view/Display;
    .restart local v1       #left:I
    .restart local v2       #right:I
    .restart local v3       #screenWidth:I
    :cond_52
    iget v4, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    if-le v2, v4, :cond_42

    .line 226
    iput-boolean v6, p0, Lcom/motorola/android/widget/TextOverlay;->mIsOnLeftSide:Z

    goto :goto_42

    .line 233
    :cond_5d
    iput v2, p0, Lcom/motorola/android/widget/TextOverlay;->mLeft:I

    goto :goto_48

    .line 237
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #screenWidth:I
    :cond_60
    iput-boolean v6, p0, Lcom/motorola/android/widget/TextOverlay;->mIsOnLeftSide:Z

    goto :goto_48
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 314
    iget-boolean v0, p0, Lcom/motorola/android/widget/TextOverlay;->mIsLeftToRightText:Z

    if-eqz v0, :cond_b

    .line 315
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextOverlay;->drawLeftToRightText(Landroid/graphics/Canvas;)V

    .line 318
    :goto_a
    return-void

    .line 317
    :cond_b
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextOverlay;->drawLTRAndRTLText(Landroid/graphics/Canvas;)V

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 298
    iget v0, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    iget v1, p0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/widget/TextOverlay;->setMeasuredDimension(II)V

    .line 299
    return-void
.end method

.method public setScrollPosition(FFI)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "anchor"

    .prologue
    .line 252
    iput p1, p0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosX:F

    .line 253
    iput p2, p0, Lcom/motorola/android/widget/TextOverlay;->mScrollPosY:F

    .line 254
    iput p3, p0, Lcom/motorola/android/widget/TextOverlay;->mAnchor:I

    .line 255
    return-void
.end method

.method public setSize(II)V
    .registers 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 264
    iput p1, p0, Lcom/motorola/android/widget/TextOverlay;->mWidth:I

    .line 265
    iput p2, p0, Lcom/motorola/android/widget/TextOverlay;->mHeight:I

    .line 266
    invoke-direct {p0}, Lcom/motorola/android/widget/TextOverlay;->setClipPath()V

    .line 267
    return-void
.end method

.method public setTextSize(F)V
    .registers 4
    .parameter "size"

    .prologue
    .line 258
    iput p1, p0, Lcom/motorola/android/widget/TextOverlay;->mTextSize:F

    .line 259
    iget v0, p0, Lcom/motorola/android/widget/TextOverlay;->mTextSize:F

    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    .line 260
    iget v0, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomX:F

    iput v0, p0, Lcom/motorola/android/widget/TextOverlay;->mZoomY:F

    .line 261
    return-void
.end method

.method public setView(Landroid/widget/TextView;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/motorola/android/widget/TextOverlay;->mView:Landroid/widget/TextView;

    .line 249
    return-void
.end method

.method public show()V
    .registers 4

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/motorola/android/widget/TextOverlay;->mShown:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1c

    .line 196
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay;->mWindowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/motorola/android/widget/TextOverlay;->mWParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/widget/TextOverlay;->mShown:Z

    .line 198
    invoke-direct {p0}, Lcom/motorola/android/widget/TextOverlay;->updateDrawingParams()V

    .line 199
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay;->mLoupeShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/motorola/android/widget/TextOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 201
    :cond_1c
    return-void
.end method

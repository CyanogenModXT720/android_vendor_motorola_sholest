.class public Lcom/motorola/android/widget/TextViewHelper;
.super Ljava/lang/Object;
.source "TextViewHelper.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/widget/TextViewHelper$Cursor;
    }
.end annotation


# static fields
.field private static final CURSOR_END:I = 0x2

.field private static final CURSOR_NONE:I = 0x0

.field private static final CURSOR_SELECTION:I = 0x3

.field private static final CURSOR_SENSITIVITY:I = 0x105000e

.field private static final CURSOR_START:I = 0x1

.field private static final EDGE_MARGIN:I = 0x1050011

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SELECT_TEXT:I = 0x1020028

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewHelper"

.field private static final MIN_SCROLL_SPEED:I = 0x105000f

.field private static final MSG_HIDE_CURSOR_HALO:I = 0x1

.field private static final OVERLAY_HEIGHT:I = 0x105000c

.field private static final OVERLAY_WIDTH:I = 0x105000b

.field private static final SCROLL_ACCELRATION_FACTOR:I = 0x1050010

.field private static final SCROLL_BOTTOM:I = 0x4

.field private static final SCROLL_FPS:I = 0x1e

.field private static final SCROLL_LEFT:I = 0x1

.field private static final SCROLL_RIGHT:I = 0x3

.field private static final SCROLL_TOP:I = 0x2

.field private static final SHOW_CURSOR_HALO_DELAY:I = 0x7d0

.field private static final STATUSBAR_HEIGHT:I = 0x1050004

.field private static final TARGET_TEXT_SIZE:I = 0x105000d


# instance fields
.field private mAllowScrolling:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mCursorHaloImage:Landroid/graphics/drawable/Drawable;

.field private mCursorSelected:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mHasWindowFocus:Z

.field private mLastScrollTime:J

.field private mLastTouchEvent:Landroid/view/MotionEvent;

.field private mMaxScrollX:I

.field private mMaxScrollY:I

.field private mResCursorSensitivity:I

.field private mResLoupeTextSize:F

.field private mResOverlayHeight:I

.field private mResOverlayWidth:I

.field private mResScrollAccelration:F

.field private mResScrollActivationMargin:I

.field private mResScrollFrameDuration:I

.field private mResScrollMinSpeed:I

.field private mResStatusBarHeight:I

.field private mScreenLocation:[I

.field private mScrollDirection:I

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mScrollSpeed:I

.field private mScrollTimerRunning:Z

.field private mShowCursorHalo:Z

.field private mShowTextOverlay:Ljava/lang/Runnable;

.field private mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

.field private mTimerRunning:Z

.field private final mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 6
    .parameter "context"
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    .line 98
    iput-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 99
    iput-boolean v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHasWindowFocus:Z

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScreenLocation:[I

    .line 103
    iput-boolean v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mAllowScrolling:Z

    .line 107
    iput-boolean v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollTimerRunning:Z

    .line 109
    iput-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastTouchEvent:Landroid/view/MotionEvent;

    .line 111
    new-instance v0, Lcom/motorola/android/widget/TextViewHelper$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/widget/TextViewHelper$1;-><init>(Lcom/motorola/android/widget/TextViewHelper;)V

    iput-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    .line 552
    new-instance v0, Lcom/motorola/android/widget/TextViewHelper$2;

    invoke-direct {v0, p0}, Lcom/motorola/android/widget/TextViewHelper$2;-><init>(Lcom/motorola/android/widget/TextViewHelper;)V

    iput-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowTextOverlay:Ljava/lang/Runnable;

    .line 641
    new-instance v0, Lcom/motorola/android/widget/TextViewHelper$3;

    invoke-direct {v0, p0}, Lcom/motorola/android/widget/TextViewHelper$3;-><init>(Lcom/motorola/android/widget/TextViewHelper;)V

    iput-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 126
    iput-object p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    .line 128
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 129
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 132
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->loadResources(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method static synthetic access$002(Lcom/motorola/android/widget/TextViewHelper;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/android/widget/TextViewHelper;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/android/widget/TextViewHelper;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/android/widget/TextViewHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollFrameDuration:I

    return v0
.end method

.method static synthetic access$1200(Lcom/motorola/android/widget/TextViewHelper;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/android/widget/TextViewHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$1400(Lcom/motorola/android/widget/TextViewHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollY:I

    return v0
.end method

.method static synthetic access$1500(Lcom/motorola/android/widget/TextViewHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollX:I

    return v0
.end method

.method static synthetic access$1602(Lcom/motorola/android/widget/TextViewHelper;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mAllowScrolling:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastTouchEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/motorola/android/widget/TextViewHelper;)Lcom/motorola/android/widget/TextOverlay;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/motorola/android/widget/TextViewHelper;Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->showTextOverlayAt(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/motorola/android/widget/TextViewHelper;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollTimerRunning:Z

    return p1
.end method

.method static synthetic access$302(Lcom/motorola/android/widget/TextViewHelper;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/widget/TextViewHelper;FF)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/widget/TextViewHelper;->getCursorOffset(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/android/widget/TextViewHelper;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->updateSelection(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/motorola/android/widget/TextViewHelper;Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->createAndShowTextOverlayAt(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/android/widget/TextViewHelper;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastScrollTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/motorola/android/widget/TextViewHelper;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastScrollTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/motorola/android/widget/TextViewHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollSpeed:I

    return v0
.end method

.method private createAndShowTextOverlayAt(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "ev"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    if-nez v0, :cond_1d

    .line 536
    new-instance v0, Lcom/motorola/android/widget/TextOverlay;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/android/widget/TextOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    .line 537
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/TextOverlay;->setView(Landroid/widget/TextView;)V

    .line 538
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    iget v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResOverlayWidth:I

    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mResOverlayHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/widget/TextOverlay;->setSize(II)V

    .line 543
    :cond_1d
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 546
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->showTextOverlayAt(Landroid/view/MotionEvent;)V

    .line 549
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 550
    return-void
.end method

.method private findNearestCursor(IIII)I
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 761
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/widget/TextViewHelper;->getDistanceToCursor(III)I

    move-result v1

    .line 762
    .local v1, distStart:I
    move v0, v1

    .line 763
    .local v0, distEnd:I
    if-eq p3, p4, :cond_b

    .line 764
    invoke-direct {p0, p1, p2, p4}, Lcom/motorola/android/widget/TextViewHelper;->getDistanceToCursor(III)I

    move-result v0

    .line 766
    :cond_b
    if-gt v1, v0, :cond_13

    .line 767
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mResCursorSensitivity:I

    if-gt v1, v2, :cond_19

    .line 768
    const/4 v2, 0x1

    .line 785
    :goto_12
    return v2

    .line 771
    :cond_13
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mResCursorSensitivity:I

    if-gt v0, v2, :cond_19

    .line 772
    const/4 v2, 0x2

    goto :goto_12

    .line 785
    :cond_19
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private getCursorLine(FF)I
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 342
    new-instance v0, Lcom/motorola/android/widget/TextViewHelper$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/widget/TextViewHelper$Cursor;-><init>(Lcom/motorola/android/widget/TextViewHelper;Lcom/motorola/android/widget/TextViewHelper$1;)V

    .line 343
    .local v0, cursor:Lcom/motorola/android/widget/TextViewHelper$Cursor;
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/widget/TextViewHelper;->getLineAndOffset(FFLcom/motorola/android/widget/TextViewHelper$Cursor;)V

    .line 344
    iget v1, v0, Lcom/motorola/android/widget/TextViewHelper$Cursor;->line:I

    return v1
.end method

.method private getCursorOffset(FF)I
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 348
    new-instance v0, Lcom/motorola/android/widget/TextViewHelper$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/widget/TextViewHelper$Cursor;-><init>(Lcom/motorola/android/widget/TextViewHelper;Lcom/motorola/android/widget/TextViewHelper$1;)V

    .line 349
    .local v0, cursor:Lcom/motorola/android/widget/TextViewHelper$Cursor;
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/widget/TextViewHelper;->getLineAndOffset(FFLcom/motorola/android/widget/TextViewHelper$Cursor;)V

    .line 350
    iget v1, v0, Lcom/motorola/android/widget/TextViewHelper$Cursor;->offset:I

    return v1
.end method

.method private getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;II)V
    .registers 16
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"
    .parameter "caps"
    .parameter "fn"

    .prologue
    .line 230
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 232
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 234
    .local v4, layout:Landroid/text/Layout;
    invoke-virtual {v4, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 235
    .local v5, line:I
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 236
    .local v6, top:I
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 238
    .local v0, bottom:I
    invoke-virtual {v4, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    const/high16 v8, 0x3f00

    sub-float v2, v7, v8

    .line 239
    .local v2, h1:F
    invoke-virtual {v4, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v7

    const/high16 v8, 0x3f00

    sub-float v3, v7, v8

    .line 241
    .local v3, h2:F
    const/4 v1, 0x0

    .line 243
    .local v1, dist:I
    if-nez p4, :cond_2c

    if-eqz p5, :cond_36

    .line 244
    :cond_2c
    sub-int v7, v0, v6

    shr-int/lit8 v1, v7, 0x2

    .line 246
    if-eqz p5, :cond_33

    .line 247
    add-int/2addr v6, v1

    .line 248
    :cond_33
    if-eqz p4, :cond_36

    .line 249
    sub-int/2addr v0, v1

    .line 252
    :cond_36
    const/high16 v7, 0x3f00

    cmpg-float v7, v2, v7

    if-gez v7, :cond_3e

    .line 253
    const/high16 v2, 0x3f00

    .line 254
    :cond_3e
    const/high16 v7, 0x3f00

    cmpg-float v7, v3, v7

    if-gez v7, :cond_46

    .line 255
    const/high16 v3, 0x3f00

    .line 257
    :cond_46
    cmpl-float v7, v2, v3

    if-nez v7, :cond_8b

    .line 258
    int-to-float v7, v6

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 259
    int-to-float v7, v0

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    :goto_52
    const/4 v7, 0x2

    if-ne p4, v7, :cond_a4

    .line 269
    int-to-float v7, v0

    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 270
    int-to-float v7, v1

    sub-float v7, v3, v7

    add-int v8, v0, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 271
    int-to-float v7, v0

    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 272
    int-to-float v7, v1

    add-float/2addr v7, v3

    add-int v8, v0, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 284
    :cond_6e
    :goto_6e
    const/4 v7, 0x2

    if-ne p5, v7, :cond_d8

    .line 285
    int-to-float v7, v6

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 286
    int-to-float v7, v1

    sub-float v7, v2, v7

    sub-int v8, v6, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 287
    int-to-float v7, v6

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 288
    int-to-float v7, v1

    add-float/2addr v7, v2

    sub-int v8, v6, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 299
    :cond_8a
    :goto_8a
    return-void

    .line 261
    :cond_8b
    int-to-float v7, v6

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 262
    add-int v7, v6, v0

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 264
    add-int v7, v6, v0

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 265
    int-to-float v7, v0

    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_52

    .line 273
    :cond_a4
    const/4 v7, 0x1

    if-ne p4, v7, :cond_6e

    .line 274
    int-to-float v7, v0

    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 275
    int-to-float v7, v1

    sub-float v7, v3, v7

    add-int v8, v0, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 277
    int-to-float v7, v1

    sub-float v7, v3, v7

    add-int v8, v0, v1

    int-to-float v8, v8

    const/high16 v9, 0x3f00

    sub-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 278
    int-to-float v7, v1

    add-float/2addr v7, v3

    add-int v8, v0, v1

    int-to-float v8, v8

    const/high16 v9, 0x3f00

    sub-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 280
    int-to-float v7, v1

    add-float/2addr v7, v3

    add-int v8, v0, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 281
    int-to-float v7, v0

    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_6e

    .line 289
    :cond_d8
    const/4 v7, 0x1

    if-ne p5, v7, :cond_8a

    .line 290
    int-to-float v7, v6

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 291
    int-to-float v7, v1

    sub-float v7, v2, v7

    sub-int v8, v6, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 293
    int-to-float v7, v1

    sub-float v7, v2, v7

    sub-int v8, v6, v1

    int-to-float v8, v8

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 294
    int-to-float v7, v1

    add-float/2addr v7, v2

    sub-int v8, v6, v1

    int-to-float v8, v8

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 296
    int-to-float v7, v1

    add-float/2addr v7, v2

    sub-int v8, v6, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 297
    int-to-float v7, v6

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8a
.end method

.method private getDistanceToCursor(III)I
    .registers 16
    .parameter "x"
    .parameter "y"
    .parameter "cursorPos"

    .prologue
    .line 749
    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 750
    .local v4, layout:Landroid/text/Layout;
    invoke-virtual {v4, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 751
    .local v5, line:I
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 752
    .local v6, top:I
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 753
    .local v0, bottom:I
    invoke-virtual {v4, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v2, v8

    .line 754
    .local v2, h1:I
    invoke-virtual {v4, p3}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v8

    float-to-int v3, v8

    .line 755
    .local v3, h2:I
    add-int v8, v2, v3

    shr-int/lit8 v1, v8, 0x1

    .line 756
    .local v1, h:I
    add-int v8, v6, v0

    shr-int/lit8 v7, v8, 0x1

    .line 757
    .local v7, v:I
    sub-int v8, p1, v1

    int-to-double v8, v8

    sub-int v10, p2, v7

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-int v8, v8

    return v8
.end method

.method private getLineAndOffset(FFLcom/motorola/android/widget/TextViewHelper$Cursor;)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "c"

    .prologue
    .line 326
    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    .line 327
    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    .line 330
    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    .line 331
    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    .line 334
    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 335
    .local v0, layout:Landroid/text/Layout;
    float-to-int v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    iput v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->line:I

    .line 336
    iget v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->line:I

    invoke-virtual {v0, v1, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    iput v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->offset:I

    .line 337
    iget v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->offset:I

    if-gez v1, :cond_3c

    const/4 v1, 0x0

    iput v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->offset:I

    .line 338
    :cond_3c
    iget v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->offset:I

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-le v1, v2, :cond_4e

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    iput v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->offset:I

    .line 339
    :cond_4e
    return-void
.end method

.method private getNonSpaceIndex(Ljava/lang/CharSequence;II)I
    .registers 5
    .parameter "str"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 368
    if-lt p2, p3, :cond_6

    if-ne p2, p3, :cond_15

    if-eqz p3, :cond_15

    .line 369
    :cond_6
    :goto_6
    if-gt p2, p3, :cond_24

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 370
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 373
    :cond_15
    :goto_15
    if-lt p2, p3, :cond_24

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 374
    add-int/lit8 p2, p2, -0x1

    goto :goto_15

    .line 376
    :cond_24
    return p2
.end method

.method private getSpaceIndex(Ljava/lang/CharSequence;II)I
    .registers 5
    .parameter "str"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 354
    if-lt p2, p3, :cond_6

    if-ne p2, p3, :cond_15

    if-eqz p3, :cond_15

    .line 355
    :cond_6
    :goto_6
    if-gt p2, p3, :cond_24

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_24

    .line 357
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 360
    :cond_15
    :goto_15
    if-lt p2, p3, :cond_24

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_24

    .line 362
    add-int/lit8 p2, p2, -0x1

    goto :goto_15

    .line 364
    :cond_24
    return p2
.end method

.method private getWordBegin(I)I
    .registers 9
    .parameter "cursorPos"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 381
    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 382
    .local v1, len:I
    if-nez v1, :cond_c

    move v4, v5

    .line 394
    :goto_b
    return v4

    .line 384
    :cond_c
    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 385
    .local v3, str:Ljava/lang/CharSequence;
    if-lt p1, v1, :cond_2b

    sub-int v4, v1, v6

    move v0, v4

    .line 386
    .local v0, index:I
    :goto_17
    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 387
    sub-int v4, v1, v6

    invoke-direct {p0, v3, v0, v4}, Lcom/motorola/android/widget/TextViewHelper;->getNonSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 388
    .local v2, start:I
    if-ne v2, v1, :cond_34

    move v4, v5

    goto :goto_b

    .end local v0           #index:I
    .end local v2           #start:I
    :cond_2b
    move v0, p1

    .line 385
    goto :goto_17

    .line 391
    .restart local v0       #index:I
    :cond_2d
    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .restart local v2       #start:I
    :cond_34
    move v4, v2

    .line 394
    goto :goto_b
.end method

.method private getWordEnd(I)I
    .registers 9
    .parameter "cursorPos"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 399
    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 400
    .local v2, len:I
    if-nez v2, :cond_c

    move v4, v5

    .line 413
    :goto_b
    return v4

    .line 402
    :cond_c
    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 403
    .local v3, str:Ljava/lang/CharSequence;
    if-lt p1, v2, :cond_2a

    sub-int v4, v2, v6

    move v1, v4

    .line 404
    .local v1, index:I
    :goto_17
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 405
    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/motorola/android/widget/TextViewHelper;->getNonSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 406
    .local v0, end:I
    if-ne v0, v5, :cond_2c

    move v4, v5

    goto :goto_b

    .end local v0           #end:I
    .end local v1           #index:I
    :cond_2a
    move v1, p1

    .line 403
    goto :goto_17

    .line 407
    .restart local v0       #end:I
    .restart local v1       #index:I
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    :goto_2e
    move v4, v0

    .line 413
    goto :goto_b

    .line 410
    .end local v0           #end:I
    :cond_30
    sub-int v4, v2, v6

    invoke-direct {p0, v3, v1, v4}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    .restart local v0       #end:I
    goto :goto_2e
.end method

.method private handleAutoScrolling(Landroid/view/MotionEvent;)V
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 566
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastTouchEvent:Landroid/view/MotionEvent;

    .line 567
    iput v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollSpeed:I

    .line 568
    iput v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollDirection:I

    .line 569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 572
    .local v0, action:I
    if-eq v0, v6, :cond_15

    if-ne v0, v7, :cond_19

    .line 574
    :cond_15
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->stopScrolling()V

    .line 626
    :goto_18
    return-void

    .line 580
    :cond_19
    if-nez v0, :cond_5d

    .line 581
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollX:I

    .line 583
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollY:I

    .line 588
    :cond_5d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 589
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 590
    .local v2, y:F
    iget v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_89

    .line 591
    const/4 v3, 0x4

    iput v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollDirection:I

    .line 592
    iget v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollMinSpeed:I

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollAccelration:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollSpeed:I

    .line 594
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    if-lez v3, :cond_11a

    .line 595
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->startScrolling()V

    goto :goto_18

    .line 598
    :cond_89
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_c0

    .line 599
    const/4 v3, 0x2

    iput v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollDirection:I

    .line 600
    iget v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollMinSpeed:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollAccelration:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollSpeed:I

    .line 602
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollY:I

    if-ge v3, v4, :cond_11a

    .line 603
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->startScrolling()V

    goto/16 :goto_18

    .line 606
    :cond_c0
    iget v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_e4

    .line 607
    iput v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollDirection:I

    .line 608
    iget v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollMinSpeed:I

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollAccelration:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollSpeed:I

    .line 610
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    if-lez v3, :cond_11a

    .line 611
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->startScrolling()V

    goto/16 :goto_18

    .line 614
    :cond_e4
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_11a

    .line 615
    iput v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollDirection:I

    .line 616
    iget v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollMinSpeed:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollAccelration:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollSpeed:I

    .line 618
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollX:I

    if-ge v3, v4, :cond_11a

    .line 619
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->startScrolling()V

    goto/16 :goto_18

    .line 625
    :cond_11a
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->stopScrolling()V

    goto/16 :goto_18
.end method

.method private isInCursorControlMode()Z
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 216
    const/4 v0, 0x1

    .line 218
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isReadOnly(Landroid/widget/TextView;)Z
    .registers 5
    .parameter "tv"

    .prologue
    .line 871
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 872
    .local v1, movement:Landroid/text/method/MovementMethod;
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    .line 873
    .local v0, input:Landroid/text/method/KeyListener;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 874
    .local v2, str:Ljava/lang/CharSequence;
    if-eqz v1, :cond_14

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_14
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_1a
    instance-of v3, v2, Landroid/text/Spannable;

    if-eqz v3, :cond_22

    if-nez v0, :cond_22

    .line 877
    const/4 v3, 0x1

    .line 879
    :goto_21
    return v3

    :cond_22
    const/4 v3, 0x0

    goto :goto_21
.end method

.method public static isReadWrite(Landroid/widget/TextView;)Z
    .registers 5
    .parameter "tv"

    .prologue
    .line 883
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 884
    .local v1, movement:Landroid/text/method/MovementMethod;
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    .line 885
    .local v0, input:Landroid/text/method/KeyListener;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 886
    .local v2, str:Ljava/lang/CharSequence;
    if-eqz v1, :cond_14

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_14
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_1a
    instance-of v3, v2, Landroid/text/Editable;

    if-eqz v3, :cond_22

    if-eqz v0, :cond_22

    .line 889
    const/4 v3, 0x1

    .line 891
    :goto_21
    return v3

    :cond_22
    const/4 v3, 0x0

    goto :goto_21
.end method

.method private loadResources(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x1050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResStatusBarHeight:I

    .line 138
    const v1, 0x105000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResLoupeTextSize:F

    .line 139
    const v1, 0x105000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResCursorSensitivity:I

    .line 140
    const v1, 0x105000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollMinSpeed:I

    .line 141
    const v1, 0x1050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollAccelration:F

    .line 142
    const v1, 0x1050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    .line 143
    const/16 v1, 0x21

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollFrameDuration:I

    .line 144
    const v1, 0x105000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResOverlayWidth:I

    .line 145
    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResOverlayHeight:I

    .line 146
    const v1, 0x1080379

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    .line 147
    return-void
.end method

.method private selectWordBoundary(I)V
    .registers 11
    .parameter "cursorPos"

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 418
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 419
    .local v2, len:I
    if-nez v2, :cond_c

    .line 457
    .end local p0
    :cond_b
    :goto_b
    return-void

    .line 421
    .restart local p0
    :cond_c
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 422
    .local v4, str:Ljava/lang/CharSequence;
    if-lt p1, v2, :cond_45

    sub-int v5, v2, v7

    move v1, v5

    .line 423
    .local v1, index:I
    :goto_17
    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 424
    invoke-direct {p0, v4, v1, v8}, Lcom/motorola/android/widget/TextViewHelper;->getNonSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 425
    .local v3, start:I
    sub-int v5, v2, v7

    invoke-direct {p0, v4, v1, v5}, Lcom/motorola/android/widget/TextViewHelper;->getNonSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 428
    .local v0, end:I
    if-ne v3, v6, :cond_4f

    .line 429
    if-eq v0, v2, :cond_31

    if-ne v0, v6, :cond_47

    .line 431
    :cond_31
    move v3, p1

    .line 432
    move v0, p1

    .line 455
    :goto_33
    if-ltz v3, :cond_b

    if-ltz v0, :cond_b

    .line 456
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_b

    .end local v0           #end:I
    .end local v1           #index:I
    .end local v3           #start:I
    .restart local p0
    :cond_45
    move v1, p1

    .line 422
    goto :goto_17

    .line 435
    .restart local v0       #end:I
    .restart local v1       #index:I
    .restart local v3       #start:I
    :cond_47
    move v3, v0

    .line 436
    sub-int v5, v2, v7

    invoke-direct {p0, v4, v0, v5}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_33

    .line 440
    :cond_4f
    if-eq v0, v2, :cond_57

    sub-int v5, v1, v3

    sub-int v6, v0, v1

    if-ge v5, v6, :cond_60

    .line 441
    :cond_57
    add-int/lit8 v0, v3, 0x1

    .line 442
    invoke-direct {p0, v4, v3, v8}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    goto :goto_33

    .line 445
    :cond_60
    move v3, v0

    .line 446
    sub-int v5, v2, v7

    invoke-direct {p0, v4, v0, v5}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_33

    .line 451
    .end local v0           #end:I
    .end local v3           #start:I
    :cond_68
    invoke-direct {p0, v4, v1, v8}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 452
    .restart local v3       #start:I
    sub-int v5, v2, v7

    invoke-direct {p0, v4, v1, v5}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    .restart local v0       #end:I
    goto :goto_33
.end method

.method private showTextOverlayAt(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "ev"

    .prologue
    .line 512
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mResLoupeTextSize:F

    invoke-virtual {v3, v4}, Lcom/motorola/android/widget/TextOverlay;->setTextSize(F)V

    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 515
    .local v1, tx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 516
    .local v2, ty:F
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 517
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 518
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 519
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 520
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 525
    .local v0, layout:Landroid/text/Layout;
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3b

    const/4 v2, 0x0

    .line 526
    :cond_3b
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_49

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 527
    :cond_49
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Lcom/motorola/android/widget/TextOverlay;->setScrollPosition(FFI)V

    .line 530
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/motorola/android/widget/TextOverlay;->move(FF)V

    .line 531
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {v3}, Lcom/motorola/android/widget/TextOverlay;->show()V

    .line 532
    return-void
.end method

.method private startScrolling()V
    .registers 3

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollTimerRunning:Z

    if-nez v0, :cond_14

    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollTimerRunning:Z

    .line 631
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 632
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastScrollTime:J

    .line 634
    :cond_14
    return-void
.end method

.method private stopScrolling()V
    .registers 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollTimerRunning:Z

    .line 639
    return-void
.end method

.method private updateSelection(I)Z
    .registers 8
    .parameter "cursorPos"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 493
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 494
    .local v1, selStart:I
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 495
    .local v0, selEnd:I
    if-ne v1, v0, :cond_1f

    .line 496
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1d
    :goto_1d
    move v2, v5

    .line 508
    :goto_1e
    return v2

    .line 497
    .restart local p0
    :cond_1f
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-ne v2, v5, :cond_35

    .line 498
    if-lt p1, v0, :cond_27

    move v2, v4

    goto :goto_1e

    .line 499
    :cond_27
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1d

    .line 501
    .restart local p0
    :cond_35
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4c

    .line 502
    if-gt p1, v1, :cond_3e

    move v2, v4

    goto :goto_1e

    .line 503
    :cond_3e
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1d

    .line 505
    .restart local p0
    :cond_4c
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1d

    .line 506
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->selectWordBoundary(I)V

    goto :goto_1d
.end method


# virtual methods
.method public drawCursorHalo(Landroid/graphics/Canvas;)V
    .registers 20
    .parameter "canvas"

    .prologue
    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 177
    .local v9, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 178
    .local v8, selEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    move v12, v0

    if-eqz v12, :cond_73

    if-ne v9, v8, :cond_73

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 181
    .local v5, layout:Landroid/text/Layout;
    move v7, v9

    .line 182
    .local v7, point:I
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 183
    .local v6, line:I
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 184
    .local v10, top:I
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v5, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 186
    .local v2, bottom:I
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v3, v12

    .line 188
    .local v3, h1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 189
    .local v4, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 190
    .local v11, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    div-int/lit8 v13, v11, 0x2

    sub-int v13, v3, v13

    add-int v14, v10, v2

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v4, 0x2

    sub-int/2addr v14, v15

    div-int/lit8 v15, v11, 0x2

    add-int/2addr v15, v3

    add-int v16, v10, v2

    div-int/lit8 v16, v16, 0x2

    div-int/lit8 v17, v4, 0x2

    add-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    .end local v2           #bottom:I
    .end local v3           #h1:I
    .end local v4           #height:I
    .end local v5           #layout:Landroid/text/Layout;
    .end local v6           #line:I
    .end local v7           #point:I
    .end local v10           #top:I
    .end local v11           #width:I
    :cond_73
    return-void
.end method

.method public drawSelectionCursors(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 302
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 303
    .local v1, selStart:I
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .line 304
    .local v7, selEnd:I
    if-eq v1, v7, :cond_64

    .line 305
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 307
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 308
    .local v12, paint:Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 310
    const/high16 v0, 0x3f80

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 313
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 314
    .local v2, path:Landroid/graphics/Path;
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/widget/TextViewHelper;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;II)V

    .line 315
    invoke-virtual {p1, v2, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 318
    new-instance v2, Landroid/graphics/Path;

    .end local v2           #path:Landroid/graphics/Path;
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 319
    .restart local v2       #path:Landroid/graphics/Path;
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    move-object v6, p0

    move-object v8, v2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/motorola/android/widget/TextViewHelper;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;II)V

    .line 320
    invoke-virtual {p1, v2, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 322
    .end local v2           #path:Landroid/graphics/Path;
    .end local v12           #paint:Landroid/graphics/Paint;
    :cond_64
    return-void
.end method

.method public getCursorHaloRadius()I
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isCursorHaloVisible()Z
    .registers 4

    .prologue
    .line 197
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 198
    .local v1, selStart:I
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 199
    .local v0, selEnd:I
    iget-boolean v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    if-eqz v2, :cond_14

    if-ne v1, v0, :cond_14

    const/4 v2, 0x1

    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public isScrollingAllowed()Z
    .registers 2

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isInCursorControlMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mAllowScrolling:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSelectionChangeAllowed()Z
    .registers 2

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isInCursorControlMode()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    .line 789
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 790
    const/4 v5, 0x0

    iput v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    .line 792
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 793
    .local v0, layout:Landroid/text/Layout;
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 794
    .local v2, selStart:I
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 795
    .local v1, selEnd:I
    if-gez v2, :cond_20

    if-ltz v1, :cond_71

    .line 797
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float v3, v5, v6

    .line 798
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float v4, v5, v6

    .line 799
    .local v4, y:F
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 800
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 801
    float-to-int v5, v3

    float-to-int v6, v4

    invoke-direct {p0, v5, v6, v2, v1}, Lcom/motorola/android/widget/TextViewHelper;->findNearestCursor(IIII)I

    move-result v5

    iput v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    .line 805
    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-eqz v5, :cond_71

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-lez v5, :cond_71

    .line 806
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->cancelLongPress()V

    .line 807
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowTextOverlay:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 808
    iput-boolean v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    .line 812
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setPressed(Z)V

    .line 817
    .end local v3           #x:F
    .end local v4           #y:F
    :cond_71
    return v7
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .parameter "ev1"
    .parameter "ev2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x1

    .line 850
    iget-boolean v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    if-eqz v1, :cond_f

    .line 851
    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowTextOverlay:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 852
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    .line 855
    :cond_f
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isInCursorControlMode()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 856
    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 857
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/widget/TextViewHelper;->getCursorOffset(FF)I

    move-result v0

    .line 858
    .local v0, cursorPos:I
    iget v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-ne v1, v3, :cond_35

    .line 859
    invoke-direct {p0, v0}, Lcom/motorola/android/widget/TextViewHelper;->getWordBegin(I)I

    move-result v0

    .line 862
    :cond_31
    :goto_31
    invoke-direct {p0, v0}, Lcom/motorola/android/widget/TextViewHelper;->updateSelection(I)Z

    .line 866
    .end local v0           #cursorPos:I
    :cond_34
    return v3

    .line 860
    .restart local v0       #cursorPos:I
    :cond_35
    iget v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    .line 861
    invoke-direct {p0, v0}, Lcom/motorola/android/widget/TextViewHelper;->getWordEnd(I)I

    move-result v0

    goto :goto_31
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    .line 152
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 154
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 824
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "ev1"
    .parameter "ev2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    if-eqz v0, :cond_e

    .line 833
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowTextOverlay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    .line 837
    :cond_e
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isInCursorControlMode()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 838
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->getCursorOffset(FF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/android/widget/TextViewHelper;->updateSelection(I)Z

    .line 839
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {v0}, Lcom/motorola/android/widget/TextOverlay;->isShown()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 840
    invoke-direct {p0, p2}, Lcom/motorola/android/widget/TextViewHelper;->showTextOverlayAt(Landroid/view/MotionEvent;)V

    .line 845
    :cond_32
    :goto_32
    const/4 v0, 0x1

    return v0

    .line 842
    :cond_34
    invoke-direct {p0, p2}, Lcom/motorola/android/widget/TextViewHelper;->createAndShowTextOverlayAt(Landroid/view/MotionEvent;)V

    goto :goto_32
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "ev"

    .prologue
    .line 821
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 827
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 711
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 715
    .local v1, handled:Z
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isInCursorControlMode()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 716
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->handleAutoScrolling(Landroid/view/MotionEvent;)V

    .line 718
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 719
    .local v0, action:I
    if-eq v0, v7, :cond_1a

    const/4 v5, 0x3

    if-ne v0, v5, :cond_67

    .line 721
    :cond_1a
    iget-boolean v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    if-eqz v5, :cond_27

    .line 722
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowTextOverlay:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 723
    iput-boolean v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    .line 728
    :cond_27
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isInCursorControlMode()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 729
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    if-eqz v5, :cond_3e

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {v5}, Lcom/motorola/android/widget/TextOverlay;->isShown()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 730
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {v5}, Lcom/motorola/android/widget/TextOverlay;->hide()V

    .line 732
    :cond_3e
    iput v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    .line 734
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 735
    .local v4, selStart:I
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 736
    .local v3, selEnd:I
    if-ne v4, v3, :cond_67

    .line 737
    iput-boolean v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    .line 738
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 739
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 740
    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 741
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    .line 745
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :cond_67
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasWindowFocus"

    .prologue
    const/4 v1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mHasWindowFocus:Z

    .line 158
    if-nez p1, :cond_10

    .line 159
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    if-eqz v0, :cond_e

    .line 160
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {v0}, Lcom/motorola/android/widget/TextOverlay;->hide()V

    .line 161
    :cond_e
    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    .line 163
    :cond_10
    iput-boolean v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    .line 164
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 166
    return-void
.end method

.method public performLongClick()Z
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {v0}, Lcom/motorola/android/widget/TextOverlay;->hide()V

    .line 171
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public processContextMsg(I)V
    .registers 8
    .parameter "id"

    .prologue
    .line 894
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 895
    .local v3, selStart:I
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 896
    .local v2, selEnd:I
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 898
    .local v4, text:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 899
    const/4 v3, 0x0

    .line 900
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 903
    :cond_1f
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 904
    .local v1, min:I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 906
    .local v0, max:I
    if-gez v1, :cond_2a

    .line 907
    const/4 v1, 0x0

    .line 909
    :cond_2a
    if-gez v0, :cond_2d

    .line 910
    const/4 v0, 0x0

    .line 913
    :cond_2d
    packed-switch p1, :pswitch_data_38

    .line 920
    :cond_30
    :goto_30
    return-void

    .line 915
    :pswitch_31
    if-ne v1, v0, :cond_30

    .line 916
    invoke-direct {p0, v1}, Lcom/motorola/android/widget/TextViewHelper;->selectWordBoundary(I)V

    goto :goto_30

    .line 913
    nop

    :pswitch_data_38
    .packed-switch 0x1020028
        :pswitch_31
    .end packed-switch
.end method

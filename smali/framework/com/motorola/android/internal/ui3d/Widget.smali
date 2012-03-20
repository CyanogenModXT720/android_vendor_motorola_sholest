.class public abstract Lcom/motorola/android/internal/ui3d/Widget;
.super Ljava/lang/Object;
.source "Widget.java"


# instance fields
.field alignmentPointX:I

.field alignmentPointY:I

.field alpha:I

.field alphaEnabled:Z

.field cache:Landroid/graphics/Bitmap;

.field cacheCanvas:Landroid/graphics/Canvas;

.field cacheEnabled:Z

.field cacheIsStale:Z

.field protected depth:F

.field dirtyRegion:Landroid/graphics/Rect;

.field protected height:I

.field locatable:Lcom/motorola/android/internal/ui3d/Locatable;

.field m:Landroid/graphics/Matrix;

.field morphable:Lcom/motorola/android/internal/ui3d/Morphable;

.field parent:Lcom/motorola/android/internal/ui3d/WidgetGroup;

.field parentRegion:Landroid/graphics/Rect;

.field parentRegionF:Landroid/graphics/RectF;

.field touchListener:Lcom/motorola/android/internal/ui3d/TouchListener;

.field transform:Landroid/graphics/Matrix;

.field transformStale:Z

.field visible:Z

.field protected width:I

.field protected world:Lcom/motorola/android/internal/ui3d/World3D;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->alignmentPointX:I

    .line 41
    iput v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->alignmentPointY:I

    .line 47
    iput-object v3, p0, Lcom/motorola/android/internal/ui3d/Widget;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->transform:Landroid/graphics/Matrix;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->parentRegionF:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->parentRegion:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->dirtyRegion:Landroid/graphics/Rect;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->depth:F

    .line 85
    iput-boolean v2, p0, Lcom/motorola/android/internal/ui3d/Widget;->cacheIsStale:Z

    .line 88
    iput-boolean v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->alphaEnabled:Z

    .line 91
    iput-boolean v2, p0, Lcom/motorola/android/internal/ui3d/Widget;->cacheEnabled:Z

    .line 96
    iput-boolean v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->transformStale:Z

    .line 99
    iput-object v3, p0, Lcom/motorola/android/internal/ui3d/Widget;->morphable:Lcom/motorola/android/internal/ui3d/Morphable;

    .line 104
    const/16 v0, 0xff

    iput v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->alpha:I

    .line 106
    iput-boolean v2, p0, Lcom/motorola/android/internal/ui3d/Widget;->visible:Z

    .line 108
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->m:Landroid/graphics/Matrix;

    .line 114
    iput-object v3, p0, Lcom/motorola/android/internal/ui3d/Widget;->touchListener:Lcom/motorola/android/internal/ui3d/TouchListener;

    return-void
.end method

.method private setLocatable(Lcom/motorola/android/internal/ui3d/Locatable;)V
    .registers 4
    .parameter "loc"

    .prologue
    .line 433
    invoke-interface {p1}, Lcom/motorola/android/internal/ui3d/Locatable;->getWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 434
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Locatable object is already used for another widget"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_e
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    if-eqz v0, :cond_18

    .line 437
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/motorola/android/internal/ui3d/Locatable;->setWidget(Lcom/motorola/android/internal/ui3d/Widget;)V

    .line 439
    :cond_18
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/Widget;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    .line 440
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    invoke-interface {v0, p0}, Lcom/motorola/android/internal/ui3d/Locatable;->setWidget(Lcom/motorola/android/internal/ui3d/Widget;)V

    .line 441
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->notifyLocationChanged()V

    .line 442
    return-void
.end method


# virtual methods
.method protected animate(J)V
    .registers 4
    .parameter "time"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    if-eqz v0, :cond_9

    .line 557
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/ui3d/Locatable;->animate(J)V

    .line 564
    :cond_9
    return-void
.end method

.method computeWorldRegion()V
    .registers 7

    .prologue
    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->parentRegionF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/android/internal/ui3d/Widget;->height:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 235
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->transform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->parentRegionF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 236
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->parentRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->parentRegionF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/Widget;->parentRegionF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/Widget;->parentRegionF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/Widget;->parentRegionF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 240
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->dirtyRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->parentRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 241
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->dirtyRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 242
    return-void
.end method

.method createCache()V
    .registers 4

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->cacheEnabled:Z

    if-eqz v0, :cond_20

    .line 330
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->width:I

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->height:I

    iget-boolean v2, p0, Lcom/motorola/android/internal/ui3d/Widget;->alphaEnabled:Z

    if-eqz v2, :cond_21

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_e
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->cache:Landroid/graphics/Bitmap;

    .line 332
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->cache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->cacheCanvas:Landroid/graphics/Canvas;

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->cacheIsStale:Z

    .line 336
    :cond_20
    return-void

    .line 330
    :cond_21
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_e
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    invoke-static {v0}, Lcom/motorola/android/internal/ui3d/Animation3D;->getOriginalAnimation(Lcom/motorola/android/internal/ui3d/Locatable;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method getCache()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->cache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    .line 277
    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->cacheIsStale:Z

    if-eqz v0, :cond_1a

    .line 279
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 280
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/ui3d/Widget;->onDraw(Landroid/graphics/Canvas;)V

    .line 281
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->cacheIsStale:Z

    .line 286
    :cond_1a
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->cache:Landroid/graphics/Bitmap;

    .line 289
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public final getHeight()I
    .registers 2

    .prologue
    .line 351
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->height:I

    return v0
.end method

.method getLocatable()Lcom/motorola/android/internal/ui3d/Locatable;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    return-object v0
.end method

.method public getLocator()Lcom/motorola/android/internal/ui3d/Locator;
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    instance-of v0, v0, Lcom/motorola/android/internal/ui3d/Locator;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/motorola/android/internal/ui3d/Widget;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    .end local p0
    check-cast p0, Lcom/motorola/android/internal/ui3d/Locator;

    move-object v0, p0

    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getMorphable()Lcom/motorola/android/internal/ui3d/Morphable;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->morphable:Lcom/motorola/android/internal/ui3d/Morphable;

    return-object v0
.end method

.method public getParent()Lcom/motorola/android/internal/ui3d/WidgetGroup;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->parent:Lcom/motorola/android/internal/ui3d/WidgetGroup;

    return-object v0
.end method

.method public getWidgetAlpha()I
    .registers 2

    .prologue
    .line 490
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->alpha:I

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .prologue
    .line 343
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->width:I

    return v0
.end method

.method handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 369
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->touchListener:Lcom/motorola/android/internal/ui3d/TouchListener;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->touchListener:Lcom/motorola/android/internal/ui3d/TouchListener;

    invoke-interface {v1, p0, p1}, Lcom/motorola/android/internal/ui3d/TouchListener;->onTouch(Lcom/motorola/android/internal/ui3d/Widget;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    move v0, v1

    .line 371
    .local v0, handled:Z
    :goto_e
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/ui3d/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 372
    return v0

    .line 369
    .end local v0           #handled:Z
    :cond_14
    const/4 v1, 0x0

    move v0, v1

    goto :goto_e
.end method

.method hitTest([F)Z
    .registers 8
    .parameter "point"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 581
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->parentRegionF:Landroid/graphics/RectF;

    aget v1, p1, v3

    aget v2, p1, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 583
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/ui3d/Widget;->mapPoints([F)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 584
    aget v0, p1, v3

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_35

    aget v0, p1, v3

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->width:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_35

    aget v0, p1, v4

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_35

    aget v0, p1, v4

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->height:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_35

    move v0, v4

    .line 588
    :goto_34
    return v0

    :cond_35
    move v0, v3

    .line 584
    goto :goto_34

    :cond_37
    move v0, v3

    .line 588
    goto :goto_34
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->cacheIsStale:Z

    .line 536
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->invalidateWorld()V

    .line 537
    return-void
.end method

.method invalidateTransform()V
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->transformStale:Z

    .line 167
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->invalidateWorld()V

    .line 168
    return-void
.end method

.method invalidateWorld()V
    .registers 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    if-eqz v0, :cond_b

    .line 541
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->dirtyRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/ui3d/World3D;->invalidate_r(Landroid/graphics/Rect;)V

    .line 543
    :cond_b
    return-void
.end method

.method public mapBounds([F)V
    .registers 4
    .parameter "pts"

    .prologue
    const/4 v1, 0x0

    .line 609
    const/4 v0, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    aput v1, p1, v0

    .line 610
    const/4 v0, 0x2

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->width:I

    int-to-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->height:I

    int-to-float v1, v1

    aput v1, p1, v0

    .line 611
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 612
    return-void
.end method

.method public mapPoints([F)Z
    .registers 4
    .parameter "point"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->transform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 602
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 603
    const/4 v0, 0x1

    .line 605
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method notifyLocationChanged()V
    .registers 3

    .prologue
    .line 122
    iget-boolean v1, p0, Lcom/motorola/android/internal/ui3d/Widget;->transformStale:Z

    if-nez v1, :cond_11

    .line 125
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->invalidateTransform()V

    .line 128
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->parent:Lcom/motorola/android/internal/ui3d/WidgetGroup;

    .line 129
    .local v0, w:Lcom/motorola/android/internal/ui3d/WidgetGroup;
    :goto_9
    if-eqz v0, :cond_11

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->transformStale:Z

    .line 131
    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->parent:Lcom/motorola/android/internal/ui3d/WidgetGroup;

    goto :goto_9

    .line 134
    .end local v0           #w:Lcom/motorola/android/internal/ui3d/WidgetGroup;
    :cond_11
    return-void
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method quickHitTest(II)Z
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->parentRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public setAlignmentPoint(II)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 146
    iput p1, p0, Lcom/motorola/android/internal/ui3d/Widget;->alignmentPointX:I

    .line 147
    iput p2, p0, Lcom/motorola/android/internal/ui3d/Widget;->alignmentPointY:I

    .line 148
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->invalidateTransform()V

    .line 150
    return-void
.end method

.method public setAlphaEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->alphaEnabled:Z

    if-eq p1, v0, :cond_9

    .line 466
    iput-boolean p1, p0, Lcom/motorola/android/internal/ui3d/Widget;->alphaEnabled:Z

    .line 468
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->createCache()V

    .line 470
    :cond_9
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 410
    invoke-static {p1}, Lcom/motorola/android/internal/ui3d/Animation3D;->getSupportedLocatable(Landroid/view/animation/Animation;)Lcom/motorola/android/internal/ui3d/Locatable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/ui3d/Widget;->setLocatable(Lcom/motorola/android/internal/ui3d/Locatable;)V

    .line 411
    return-void
.end method

.method public setCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/motorola/android/internal/ui3d/Widget;->cacheEnabled:Z

    .line 521
    if-nez p1, :cond_7

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->cache:Landroid/graphics/Bitmap;

    .line 525
    :cond_7
    return-void
.end method

.method public setDimensions(II)V
    .registers 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 300
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->width:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->height:I

    if-eq p2, v0, :cond_18

    .line 302
    :cond_8
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->invalidateWorld()V

    .line 305
    iput p1, p0, Lcom/motorola/android/internal/ui3d/Widget;->width:I

    .line 306
    iput p2, p0, Lcom/motorola/android/internal/ui3d/Widget;->height:I

    .line 308
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->createCache()V

    .line 311
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->computeWorldRegion()V

    .line 314
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->invalidateWorld()V

    .line 316
    :cond_18
    return-void
.end method

.method public setLocator(Lcom/motorola/android/internal/ui3d/Locator;)V
    .registers 2
    .parameter "loc"

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/ui3d/Widget;->setLocatable(Lcom/motorola/android/internal/ui3d/Locatable;)V

    .line 389
    return-void
.end method

.method public setMorphable(Lcom/motorola/android/internal/ui3d/Morphable;)V
    .registers 2
    .parameter "morphable"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/Widget;->morphable:Lcom/motorola/android/internal/ui3d/Morphable;

    .line 320
    return-void
.end method

.method public setTouchListener(Lcom/motorola/android/internal/ui3d/TouchListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/Widget;->touchListener:Lcom/motorola/android/internal/ui3d/TouchListener;

    .line 159
    return-void
.end method

.method public setVisible(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->visible:Z

    if-eq v0, p1, :cond_14

    .line 500
    iput-boolean p1, p0, Lcom/motorola/android/internal/ui3d/Widget;->visible:Z

    .line 501
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->invalidate()V

    .line 502
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    if-eqz v0, :cond_14

    .line 503
    if-eqz p1, :cond_15

    .line 504
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    invoke-virtual {v0, p0}, Lcom/motorola/android/internal/ui3d/World3D;->addRenderable(Lcom/motorola/android/internal/ui3d/Widget;)V

    .line 510
    :cond_14
    :goto_14
    return-void

    .line 506
    :cond_15
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    invoke-virtual {v0, p0}, Lcom/motorola/android/internal/ui3d/World3D;->removeRenderable(Lcom/motorola/android/internal/ui3d/Widget;)V

    goto :goto_14
.end method

.method public setWidgetAlpha(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 479
    iget v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->alpha:I

    if-eq p1, v0, :cond_9

    .line 480
    iput p1, p0, Lcom/motorola/android/internal/ui3d/Widget;->alpha:I

    .line 481
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->invalidate()V

    .line 483
    :cond_9
    return-void
.end method

.method setWorld(Lcom/motorola/android/internal/ui3d/World3D;)V
    .registers 3
    .parameter "world"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    invoke-virtual {v0, p0}, Lcom/motorola/android/internal/ui3d/World3D;->removeRenderable(Lcom/motorola/android/internal/ui3d/Widget;)V

    .line 262
    :cond_9
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/Widget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    .line 263
    if-eqz p1, :cond_14

    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/Widget;->visible:Z

    if-eqz v0, :cond_14

    .line 264
    invoke-virtual {p1, p0}, Lcom/motorola/android/internal/ui3d/World3D;->addRenderable(Lcom/motorola/android/internal/ui3d/Widget;)V

    .line 266
    :cond_14
    return-void
.end method

.method updateTransform(Lcom/motorola/android/internal/ui3d/CameraTransformable;)V
    .registers 15
    .parameter "cam"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->invalidateWorld()V

    .line 178
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/Widget;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    if-eqz v5, :cond_11

    .line 180
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/Widget;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    invoke-interface {v5, p1}, Lcom/motorola/android/internal/ui3d/Locatable;->applyToTransformable(Lcom/motorola/android/internal/ui3d/Transformable;)V

    .line 183
    :cond_11
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/Widget;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Lcom/motorola/android/internal/ui3d/CameraTransformable;->getMatrix(Landroid/graphics/Matrix;)V

    .line 186
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/Widget;->transform:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/motorola/android/internal/ui3d/Widget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    iget v6, v6, Lcom/motorola/android/internal/ui3d/World3D;->cameraX:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/Widget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    iget v7, v7, Lcom/motorola/android/internal/ui3d/World3D;->cameraY:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 190
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/Widget;->transform:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/motorola/android/internal/ui3d/Widget;->alignmentPointX:I

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/motorola/android/internal/ui3d/Widget;->alignmentPointY:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 193
    iget v5, p0, Lcom/motorola/android/internal/ui3d/Widget;->width:I

    shr-int/lit8 v1, v5, 0x1

    .line 194
    .local v1, halfWidth:I
    iget v5, p0, Lcom/motorola/android/internal/ui3d/Widget;->height:I

    shr-int/lit8 v0, v5, 0x1

    .line 198
    .local v0, halfHeight:I
    const/4 v5, 0x6

    new-array v4, v5, [F

    int-to-float v5, v1

    aput v5, v4, v8

    add-int/lit8 v5, v0, 0x64

    int-to-float v5, v5

    aput v5, v4, v9

    add-int/lit8 v5, v1, 0x64

    int-to-float v5, v5

    aput v5, v4, v10

    int-to-float v5, v0

    aput v5, v4, v11

    int-to-float v5, v1

    aput v5, v4, v12

    const/4 v5, 0x5

    int-to-float v6, v0

    aput v6, v4, v5

    .line 200
    .local v4, pts:[F
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/Widget;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 203
    aget v5, v4, v8

    aget v6, v4, v12

    sub-float/2addr v5, v6

    aput v5, v4, v8

    .line 204
    aget v5, v4, v10

    aget v6, v4, v12

    sub-float/2addr v5, v6

    aput v5, v4, v10

    .line 205
    aget v5, v4, v9

    const/4 v6, 0x5

    aget v6, v4, v6

    sub-float/2addr v5, v6

    aput v5, v4, v9

    .line 206
    aget v5, v4, v11

    const/4 v6, 0x5

    aget v6, v4, v6

    sub-float/2addr v5, v6

    aput v5, v4, v11

    .line 207
    aget v5, v4, v8

    aget v6, v4, v9

    invoke-static {v5, v6}, Landroid/graphics/PointF;->length(FF)F

    move-result v2

    .line 208
    .local v2, l1:F
    aget v5, v4, v10

    aget v6, v4, v11

    invoke-static {v5, v6}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    .line 212
    .local v3, l2:F
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/motorola/android/internal/ui3d/Widget;->depth:F

    .line 216
    invoke-virtual {p1}, Lcom/motorola/android/internal/ui3d/CameraTransformable;->isAlphaSet()Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 217
    invoke-virtual {p1}, Lcom/motorola/android/internal/ui3d/CameraTransformable;->retrieveAndResetAlpha()F

    move-result v5

    const/high16 v6, 0x437f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/android/internal/ui3d/Widget;->alpha:I

    .line 220
    :cond_9d
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->computeWorldRegion()V

    .line 223
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/Widget;->invalidateWorld()V

    .line 225
    iput-boolean v8, p0, Lcom/motorola/android/internal/ui3d/Widget;->transformStale:Z

    .line 226
    return-void
.end method

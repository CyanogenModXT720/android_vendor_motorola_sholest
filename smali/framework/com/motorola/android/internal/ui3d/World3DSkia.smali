.class Lcom/motorola/android/internal/ui3d/World3DSkia;
.super Lcom/motorola/android/internal/ui3d/World3D;
.source "World3DSkia.java"


# static fields
.field private static final BUBBLE_SORT:Z = true

.field private static final LOG:Z = false

.field private static final SHOW_REGIONS:Z = false

.field private static final SHOW_TOUCHES:Z = false

.field private static final TAG:Ljava/lang/String; = "ui3D"


# instance fields
.field animateNeeded:Z

.field cameraPositionSet:Z

.field private firstRender:Z

.field invDirty:Landroid/graphics/Rect;

.field private lastMotionEvent:Landroid/view/MotionEvent;

.field private lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

.field private p:Landroid/graphics/Paint;

.field repaintPending:Z

.field private stickyTouchMode:Z

.field touchX:F

.field touchY:F

.field private worldCamera:Lcom/motorola/android/internal/ui3d/CameraTransformable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/ui3d/World3D;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->p:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Lcom/motorola/android/internal/ui3d/CameraTransformable;

    invoke-direct {v0}, Lcom/motorola/android/internal/ui3d/CameraTransformable;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->worldCamera:Lcom/motorola/android/internal/ui3d/CameraTransformable;

    .line 72
    iput-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    .line 74
    iput-boolean v1, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->stickyTouchMode:Z

    .line 79
    iput-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 81
    iput-boolean v2, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->firstRender:Z

    .line 83
    iput v4, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->touchX:F

    .line 84
    iput v4, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->touchY:F

    .line 86
    iput-boolean v1, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->cameraPositionSet:Z

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->invDirty:Landroid/graphics/Rect;

    .line 120
    iput-boolean v1, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->repaintPending:Z

    .line 121
    iput-boolean v1, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->animateNeeded:Z

    .line 97
    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/ui3d/World3DSkia;->setWillNotDraw(Z)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/ui3d/World3DSkia;->setDrawingCacheEnabled(Z)V

    .line 101
    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/ui3d/World3DSkia;->setFocusable(Z)V

    .line 104
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 113
    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/ui3d/World3DSkia;->setBackgroundColor(I)V

    .line 114
    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/ui3d/World3DSkia;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iput-object p0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->mView:Landroid/view/View;

    .line 117
    return-void
.end method

.method private sortByDepth()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 353
    .local v4, t:J
    iget v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableListCount:I

    .line 365
    .local v0, count:I
    const/4 v2, 0x0

    .line 370
    .local v2, passes:I
    :cond_8
    const/4 v3, 0x1

    .line 371
    .local v3, sorted:Z
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    sub-int v10, v0, v12

    aget-object v9, v9, v10

    iget v7, v9, Lcom/motorola/android/internal/ui3d/Widget;->depth:F

    .line 372
    .local v7, z1:F
    sub-int v1, v0, v12

    .local v1, n:I
    :goto_13
    if-lez v1, :cond_3a

    .line 374
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    sub-int v10, v1, v12

    aget-object v9, v9, v10

    iget v8, v9, Lcom/motorola/android/internal/ui3d/Widget;->depth:F

    .line 376
    .local v8, z2:F
    cmpg-float v9, v7, v8

    if-gez v9, :cond_36

    .line 377
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    sub-int v10, v1, v12

    aget-object v6, v9, v10

    .line 378
    .local v6, temp:Lcom/motorola/android/internal/ui3d/Widget;
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    sub-int v10, v1, v12

    iget-object v11, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v11, v11, v1

    aput-object v11, v9, v10

    .line 379
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    aput-object v6, v9, v1

    .line 380
    const/4 v3, 0x0

    .line 382
    .end local v6           #temp:Lcom/motorola/android/internal/ui3d/Widget;
    :cond_36
    move v7, v8

    .line 372
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 387
    .end local v8           #z2:F
    :cond_3a
    if-eqz v3, :cond_8

    .line 424
    return-void
.end method


# virtual methods
.method public clearCamera2DPosition()V
    .registers 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/ui3d/World3DSkia;->setCamera2DPosition(II)V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->cameraPositionSet:Z

    .line 195
    return-void
.end method

.method public enableStickyTouchMode(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->stickyTouchMode:Z

    .line 208
    return-void
.end method

.method public getWidgetAt(II)Lcom/motorola/android/internal/ui3d/Widget;
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    .line 219
    const/4 v3, 0x2

    new-array v2, v3, [F

    .line 221
    .local v2, point:[F
    iget v3, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableListCount:I

    sub-int v1, v3, v5

    .local v1, n:I
    :goto_8
    if-ltz v1, :cond_20

    .line 222
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v0, v3, v1

    .line 223
    .local v0, child:Lcom/motorola/android/internal/ui3d/Widget;
    const/4 v3, 0x0

    int-to-float v4, p1

    aput v4, v2, v3

    .line 224
    int-to-float v3, p2

    aput v3, v2, v5

    .line 225
    invoke-virtual {v0, v2}, Lcom/motorola/android/internal/ui3d/Widget;->hitTest([F)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v3, v0

    .line 229
    .end local v0           #child:Lcom/motorola/android/internal/ui3d/Widget;
    :goto_1c
    return-object v3

    .line 221
    .restart local v0       #child:Lcom/motorola/android/internal/ui3d/Widget;
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 229
    .end local v0           #child:Lcom/motorola/android/internal/ui3d/Widget;
    :cond_20
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 6
    .parameter "region"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_16

    .line 125
    invoke-super {p0, v2, v2, v3, v3}, Lcom/motorola/android/internal/ui3d/World3D;->invalidate(IIII)V

    .line 126
    iput-boolean v3, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->animateNeeded:Z

    .line 132
    :goto_15
    return-void

    .line 128
    :cond_16
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->invDirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 129
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->invDirty:Landroid/graphics/Rect;

    invoke-super {p0, v0}, Lcom/motorola/android/internal/ui3d/World3D;->invalidate(Landroid/graphics/Rect;)V

    .line 130
    iput-boolean v3, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->repaintPending:Z

    goto :goto_15
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "c"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 435
    iput-boolean v10, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->repaintPending:Z

    .line 437
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v8

    if-eqz v8, :cond_61

    .line 438
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 445
    .local v1, clip:Landroid/graphics/Rect;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 447
    .local v4, now:J
    iget v2, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableListCount:I

    .line 453
    .local v2, count:I
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->refreshTransforms()V

    .line 455
    const/4 v6, 0x0

    .line 457
    .local v6, renderCount:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_19
    if-ge v3, v2, :cond_47

    .line 459
    iget-object v8, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v7, v8, v3

    .line 463
    .local v7, w:Lcom/motorola/android/internal/ui3d/Widget;
    add-int/lit8 v6, v6, 0x1

    .line 465
    invoke-virtual {v7}, Lcom/motorola/android/internal/ui3d/Widget;->getCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 466
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_38

    .line 468
    iget-object v8, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->p:Landroid/graphics/Paint;

    iget v9, v7, Lcom/motorola/android/internal/ui3d/Widget;->alpha:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 469
    iget-object v8, v7, Lcom/motorola/android/internal/ui3d/Widget;->transform:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 457
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 472
    :cond_38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 473
    iget-object v8, v7, Lcom/motorola/android/internal/ui3d/Widget;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 474
    invoke-virtual {v7, p1}, Lcom/motorola/android/internal/ui3d/Widget;->onDraw(Landroid/graphics/Canvas;)V

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_35

    .line 500
    .end local v0           #cache:Landroid/graphics/Bitmap;
    .end local v7           #w:Lcom/motorola/android/internal/ui3d/Widget;
    :cond_47
    iput-boolean v10, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->firstRender:Z

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 506
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Lcom/motorola/android/internal/ui3d/Widget;->animate(J)V

    .line 515
    iget-boolean v8, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->animateNeeded:Z

    if-eqz v8, :cond_5f

    iget-boolean v8, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->repaintPending:Z

    if-nez v8, :cond_5f

    .line 516
    invoke-virtual {p0, v10, v10, v11, v11}, Lcom/motorola/android/internal/ui3d/World3DSkia;->invalidate(IIII)V

    .line 518
    :cond_5f
    iput-boolean v10, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->animateNeeded:Z

    .line 521
    .end local v1           #clip:Landroid/graphics/Rect;
    .end local v2           #count:I
    .end local v3           #n:I
    .end local v4           #now:J
    .end local v6           #renderCount:I
    :cond_61
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->cameraPositionSet:Z

    if-nez v0, :cond_f

    .line 164
    add-int v0, p2, p4

    shr-int/lit8 v0, v0, 0x1

    add-int v1, p3, p5

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/ui3d/World3DSkia;->setCamera2DPosition(II)V

    .line 167
    :cond_f
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->listener:Lcom/motorola/android/internal/ui3d/World3D$World3DListener;

    if-eqz v0, :cond_18

    .line 168
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->listener:Lcom/motorola/android/internal/ui3d/World3D$World3DListener;

    invoke-interface {v0}, Lcom/motorola/android/internal/ui3d/World3D$World3DListener;->onLayoutUpdate()V

    .line 169
    :cond_18
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 243
    .local v5, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 244
    .local v6, rawY:F
    float-to-int v7, v5

    .line 245
    .local v7, x:I
    float-to-int v8, v6

    .line 247
    .local v8, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 248
    .local v0, action:I
    const/4 v9, 0x2

    new-array v4, v9, [F

    .line 250
    .local v4, point:[F
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->refreshTransforms()V

    .line 252
    iget-boolean v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->stickyTouchMode:Z

    if-eqz v9, :cond_89

    .line 254
    if-nez v0, :cond_53

    .line 256
    iget v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableListCount:I

    const/4 v10, 0x1

    sub-int v3, v9, v10

    .local v3, n:I
    :goto_1f
    if-ltz v3, :cond_4e

    .line 257
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v1, v9, v3

    .line 259
    .local v1, child:Lcom/motorola/android/internal/ui3d/Widget;
    invoke-virtual {v1, v7, v8}, Lcom/motorola/android/internal/ui3d/Widget;->quickHitTest(II)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 260
    const/4 v9, 0x0

    aput v5, v4, v9

    .line 261
    const/4 v9, 0x1

    aput v6, v4, v9

    .line 263
    invoke-virtual {v1, v4}, Lcom/motorola/android/internal/ui3d/Widget;->hitTest([F)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 264
    const/4 v9, 0x0

    aget v9, v4, v9

    const/4 v10, 0x1

    aget v10, v4, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 266
    :try_start_40
    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/ui3d/Widget;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 267
    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_48} :catch_4a

    .line 268
    const/4 v9, 0x1

    .line 338
    .end local v1           #child:Lcom/motorola/android/internal/ui3d/Widget;
    .end local v3           #n:I
    :goto_49
    return v9

    .line 270
    .restart local v1       #child:Lcom/motorola/android/internal/ui3d/Widget;
    .restart local v3       #n:I
    :catch_4a
    move-exception v9

    .line 256
    :cond_4b
    add-int/lit8 v3, v3, -0x1

    goto :goto_1f

    .line 275
    .end local v1           #child:Lcom/motorola/android/internal/ui3d/Widget;
    :cond_4e
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    .line 276
    const/4 v9, 0x1

    goto :goto_49

    .line 279
    .end local v3           #n:I
    :cond_53
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    if-eqz v9, :cond_ee

    .line 282
    const/4 v9, 0x0

    aput v5, v4, v9

    .line 283
    const/4 v9, 0x1

    aput v6, v4, v9

    .line 284
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    invoke-virtual {v9, v4}, Lcom/motorola/android/internal/ui3d/Widget;->mapPoints([F)Z

    .line 285
    const/4 v9, 0x0

    aget v9, v4, v9

    const/4 v10, 0x1

    aget v10, v4, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 289
    :try_start_6b
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    invoke-virtual {v9, p1}, Lcom/motorola/android/internal/ui3d/Widget;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_81

    .line 293
    :cond_7e
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_81} :catch_83

    .line 298
    :cond_81
    :goto_81
    const/4 v9, 0x1

    goto :goto_49

    .line 295
    :catch_83
    move-exception v9

    move-object v2, v9

    .line 296
    .local v2, e:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_81

    .line 303
    .end local v2           #e:Ljava/lang/Throwable;
    :cond_89
    iget v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableListCount:I

    const/4 v10, 0x1

    sub-int v3, v9, v10

    .restart local v3       #n:I
    :goto_8e
    if-ltz v3, :cond_dd

    .line 304
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v1, v9, v3

    .line 305
    .restart local v1       #child:Lcom/motorola/android/internal/ui3d/Widget;
    const/4 v9, 0x0

    aput v5, v4, v9

    .line 306
    const/4 v9, 0x1

    aput v6, v4, v9

    .line 307
    invoke-virtual {v1, v4}, Lcom/motorola/android/internal/ui3d/Widget;->hitTest([F)Z

    move-result v9

    if-eqz v9, :cond_da

    .line 308
    const/4 v9, 0x0

    aget v9, v4, v9

    const/4 v10, 0x1

    aget v10, v4, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 310
    :try_start_a9
    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/ui3d/Widget;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_da

    .line 311
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    if-eq v9, v1, :cond_c4

    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    if-eqz v9, :cond_c4

    .line 313
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastMotionEvent:Landroid/view/MotionEvent;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 314
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    iget-object v10, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9, v10}, Lcom/motorola/android/internal/ui3d/Widget;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 316
    :cond_c4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_d2

    .line 317
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 318
    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    .line 323
    :goto_cf
    const/4 v9, 0x1

    goto/16 :goto_49

    .line 320
    :cond_d2
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 321
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_d8} :catch_d9

    goto :goto_cf

    .line 325
    :catch_d9
    move-exception v9

    .line 303
    :cond_da
    add-int/lit8 v3, v3, -0x1

    goto :goto_8e

    .line 330
    .end local v1           #child:Lcom/motorola/android/internal/ui3d/Widget;
    :cond_dd
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    if-eqz v9, :cond_ee

    .line 332
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastMotionEvent:Landroid/view/MotionEvent;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 333
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    iget-object v10, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9, v10}, Lcom/motorola/android/internal/ui3d/Widget;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 336
    .end local v3           #n:I
    :cond_ee
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 337
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    .line 338
    const/4 v9, 0x1

    goto/16 :goto_49
.end method

.method public refreshTransforms()V
    .registers 5

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v2

    iget-boolean v2, v2, Lcom/motorola/android/internal/ui3d/Widget;->transformStale:Z

    if-eqz v2, :cond_22

    .line 527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 530
    .local v0, t1:J
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->worldCamera:Lcom/motorola/android/internal/ui3d/CameraTransformable;

    invoke-virtual {v2}, Lcom/motorola/android/internal/ui3d/CameraTransformable;->save()V

    .line 532
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->worldCamera:Lcom/motorola/android/internal/ui3d/CameraTransformable;

    invoke-virtual {v2, v3}, Lcom/motorola/android/internal/ui3d/Widget;->updateTransform(Lcom/motorola/android/internal/ui3d/CameraTransformable;)V

    .line 534
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->worldCamera:Lcom/motorola/android/internal/ui3d/CameraTransformable;

    invoke-virtual {v2}, Lcom/motorola/android/internal/ui3d/CameraTransformable;->restore()V

    .line 543
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->sortByDepth()V

    .line 545
    .end local v0           #t1:J
    :cond_22
    return-void
.end method

.method public setCamera2DPosition(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 179
    iget v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->cameraX:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->cameraY:I

    if-eq v0, p2, :cond_1c

    .line 180
    :cond_8
    iput p1, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->cameraX:I

    .line 181
    iput p2, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->cameraY:I

    .line 182
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 183
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/android/internal/ui3d/Widget;->invalidateTransform()V

    .line 184
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;->invalidate()V

    .line 187
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->cameraPositionSet:Z

    .line 188
    return-void
.end method

.method public setMainWidget(Lcom/motorola/android/internal/ui3d/Widget;)V
    .registers 3
    .parameter "widget"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/motorola/android/internal/ui3d/World3D;->setMainWidget(Lcom/motorola/android/internal/ui3d/Widget;)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/World3DSkia;->firstRender:Z

    .line 153
    return-void
.end method

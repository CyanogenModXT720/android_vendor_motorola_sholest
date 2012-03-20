.class Lcom/motorola/android/widget/Overlay$4;
.super Ljava/lang/Object;
.source "Overlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/widget/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/widget/Overlay;


# direct methods
.method constructor <init>(Lcom/motorola/android/widget/Overlay;)V
    .registers 2
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 313
    iget-object v2, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v2, v2, Lcom/motorola/android/widget/Overlay;->mAnimLock:Ljava/lang/Object;

    monitor-enter v2

    .line 315
    :try_start_5
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_d

    .line 316
    monitor-exit v2

    .line 384
    :cond_c
    :goto_c
    return-void

    .line 318
    :cond_d
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget v3, v3, Lcom/motorola/android/widget/Overlay;->mOrigWidth:I

    if-nez v3, :cond_31

    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget v3, v3, Lcom/motorola/android/widget/Overlay;->mOrigHeight:I

    if-nez v3, :cond_31

    .line 323
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v4, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v4, v4, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/widget/Overlay;->mOrigWidth:I

    .line 324
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v4, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v4, v4, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/widget/Overlay;->mOrigHeight:I

    .line 331
    :cond_31
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_52

    .line 332
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget v4, v4, Lcom/motorola/android/widget/Overlay;->mOrigWidth:I

    iget-object v5, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget v5, v5, Lcom/motorola/android/widget/Overlay;->mOrigHeight:I

    iget-object v6, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget v6, v6, Lcom/motorola/android/widget/Overlay;->mDpyWidth:I

    iget-object v7, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget v7, v7, Lcom/motorola/android/widget/Overlay;->mDpyHeight:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 343
    :cond_52
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->mAnimation:Landroid/view/animation/Animation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v6, v6, Lcom/motorola/android/widget/Overlay;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    .line 346
    .local v1, more:Z
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v3

    sget v4, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    if-eq v3, v4, :cond_11a

    .line 348
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 350
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_10c

    .line 351
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->src:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 352
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->src:[F

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 353
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->dst:[F

    iget-object v4, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v4, v4, Lcom/motorola/android/widget/Overlay;->src:[F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 357
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v4, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget v4, v4, Lcom/motorola/android/widget/Overlay;->mOrigX:I

    iget-object v5, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v5, v5, Lcom/motorola/android/widget/Overlay;->dst:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget v5, v5, Lcom/motorola/android/widget/Overlay;->mOrigY:I

    iget-object v6, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v6, v6, Lcom/motorola/android/widget/Overlay;->dst:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/motorola/android/widget/Overlay;->move(IIZ)V

    .line 363
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget v3, v3, Lcom/motorola/android/widget/Overlay;->mOrigWidth:I

    if-eqz v3, :cond_10c

    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget v3, v3, Lcom/motorola/android/widget/Overlay;->mOrigHeight:I

    if-eqz v3, :cond_10c

    .line 364
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->src:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget v5, v5, Lcom/motorola/android/widget/Overlay;->mOrigWidth:I

    int-to-float v5, v5

    aput v5, v3, v4

    .line 365
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->src:[F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget v5, v5, Lcom/motorola/android/widget/Overlay;->mOrigHeight:I

    int-to-float v5, v5

    aput v5, v3, v4

    .line 366
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->dst2:[F

    iget-object v4, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v4, v4, Lcom/motorola/android/widget/Overlay;->src:[F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 370
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v4, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v4, v4, Lcom/motorola/android/widget/Overlay;->dst2:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v5, v5, Lcom/motorola/android/widget/Overlay;->dst:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v5, v5, Lcom/motorola/android/widget/Overlay;->dst2:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v6, v6, Lcom/motorola/android/widget/Overlay;->dst:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/motorola/android/widget/Overlay;->resize(IIZ)V

    .line 374
    :cond_10c
    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v4, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v4, v4, Lcom/motorola/android/widget/Overlay;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/motorola/android/widget/Overlay;->access$000(Lcom/motorola/android/widget/Overlay;FZ)V

    .line 376
    .end local v0           #m:Landroid/graphics/Matrix;
    :cond_11a
    monitor-exit v2
    :try_end_11b
    .catchall {:try_start_5 .. :try_end_11b} :catchall_141

    .line 378
    iget-object v2, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-boolean v2, v2, Lcom/motorola/android/widget/Overlay;->mShown:Z

    if-eqz v2, :cond_130

    .line 379
    iget-object v2, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v2, v2, Lcom/motorola/android/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v4, v4, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    :cond_130
    if-eqz v1, :cond_c

    .line 382
    iget-object v2, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v2, v2, Lcom/motorola/android/widget/Overlay;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/motorola/android/widget/Overlay$4;->this$0:Lcom/motorola/android/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/widget/Overlay;->mAnimate:Ljava/lang/Runnable;

    const-wide/16 v4, 0x21

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c

    .line 376
    .end local v1           #more:Z
    :catchall_141
    move-exception v3

    :try_start_142
    monitor-exit v2
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    throw v3
.end method

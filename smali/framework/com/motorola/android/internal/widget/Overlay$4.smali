.class Lcom/motorola/android/internal/widget/Overlay$4;
.super Ljava/lang/Object;
.source "Overlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/widget/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/widget/Overlay;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/widget/Overlay;)V
    .registers 2
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 326
    iget-object v2, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v2}, Lcom/motorola/android/internal/widget/Overlay;->access$000(Lcom/motorola/android/internal/widget/Overlay;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 328
    :try_start_7
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v3}, Lcom/motorola/android/internal/widget/Overlay;->access$100(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_11

    .line 329
    monitor-exit v2

    .line 404
    :cond_10
    :goto_10
    return-void

    .line 331
    :cond_11
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v3}, Lcom/motorola/android/internal/widget/Overlay;->access$200(Lcom/motorola/android/internal/widget/Overlay;)I

    move-result v3

    if-nez v3, :cond_3f

    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v3}, Lcom/motorola/android/internal/widget/Overlay;->access$300(Lcom/motorola/android/internal/widget/Overlay;)I

    move-result v3

    if-nez v3, :cond_3f

    .line 336
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v4, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v4}, Lcom/motorola/android/internal/widget/Overlay;->access$400(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/motorola/android/internal/widget/Overlay;->access$202(Lcom/motorola/android/internal/widget/Overlay;I)I

    .line 337
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v4, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v4}, Lcom/motorola/android/internal/widget/Overlay;->access$400(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/motorola/android/internal/widget/Overlay;->access$302(Lcom/motorola/android/internal/widget/Overlay;I)I

    .line 344
    :cond_3f
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v3}, Lcom/motorola/android/internal/widget/Overlay;->access$100(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6c

    .line 345
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v3}, Lcom/motorola/android/internal/widget/Overlay;->access$100(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/animation/Animation;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v4}, Lcom/motorola/android/internal/widget/Overlay;->access$200(Lcom/motorola/android/internal/widget/Overlay;)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v5}, Lcom/motorola/android/internal/widget/Overlay;->access$300(Lcom/motorola/android/internal/widget/Overlay;)I

    move-result v5

    iget-object v6, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v6}, Lcom/motorola/android/internal/widget/Overlay;->access$500(Lcom/motorola/android/internal/widget/Overlay;)I

    move-result v6

    iget-object v7, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v7}, Lcom/motorola/android/internal/widget/Overlay;->access$600(Lcom/motorola/android/internal/widget/Overlay;)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 359
    :cond_6c
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v3}, Lcom/motorola/android/internal/widget/Overlay;->access$100(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v6}, Lcom/motorola/android/internal/widget/Overlay;->access$700(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/animation/Transformation;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    .line 362
    .local v1, more:Z
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v3}, Lcom/motorola/android/internal/widget/Overlay;->access$700(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/animation/Transformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v3

    sget v4, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    if-eq v3, v4, :cond_14a

    .line 364
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v3}, Lcom/motorola/android/internal/widget/Overlay;->access$700(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/animation/Transformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 366
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_13a

    .line 367
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/internal/widget/Overlay;->src:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 368
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/internal/widget/Overlay;->src:[F

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 369
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/internal/widget/Overlay;->dst:[F

    iget-object v4, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v4, v4, Lcom/motorola/android/internal/widget/Overlay;->src:[F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 373
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v4, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v4}, Lcom/motorola/android/internal/widget/Overlay;->access$800(Lcom/motorola/android/internal/widget/Overlay;)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v5, v5, Lcom/motorola/android/internal/widget/Overlay;->dst:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v5}, Lcom/motorola/android/internal/widget/Overlay;->access$900(Lcom/motorola/android/internal/widget/Overlay;)I

    move-result v5

    iget-object v6, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v6, v6, Lcom/motorola/android/internal/widget/Overlay;->dst:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/motorola/android/internal/widget/Overlay;->move(IIZ)V

    .line 381
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v3}, Lcom/motorola/android/internal/widget/Overlay;->access$200(Lcom/motorola/android/internal/widget/Overlay;)I

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v3}, Lcom/motorola/android/internal/widget/Overlay;->access$300(Lcom/motorola/android/internal/widget/Overlay;)I

    move-result v3

    if-eqz v3, :cond_13a

    .line 382
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/internal/widget/Overlay;->src:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v5}, Lcom/motorola/android/internal/widget/Overlay;->access$200(Lcom/motorola/android/internal/widget/Overlay;)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    .line 383
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/internal/widget/Overlay;->src:[F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v5}, Lcom/motorola/android/internal/widget/Overlay;->access$300(Lcom/motorola/android/internal/widget/Overlay;)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    .line 384
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/internal/widget/Overlay;->dst2:[F

    iget-object v4, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v4, v4, Lcom/motorola/android/internal/widget/Overlay;->src:[F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 389
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v4, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v4, v4, Lcom/motorola/android/internal/widget/Overlay;->dst2:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v5, v5, Lcom/motorola/android/internal/widget/Overlay;->dst:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v5, v5, Lcom/motorola/android/internal/widget/Overlay;->dst2:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v6, v6, Lcom/motorola/android/internal/widget/Overlay;->dst:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/motorola/android/internal/widget/Overlay;->resize(IIZ)V

    .line 394
    :cond_13a
    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v4, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v4}, Lcom/motorola/android/internal/widget/Overlay;->access$700(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/animation/Transformation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/motorola/android/internal/widget/Overlay;->access$1000(Lcom/motorola/android/internal/widget/Overlay;FZ)V

    .line 396
    .end local v0           #m:Landroid/graphics/Matrix;
    :cond_14a
    monitor-exit v2
    :try_end_14b
    .catchall {:try_start_7 .. :try_end_14b} :catchall_17b

    .line 398
    iget-object v2, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v2}, Lcom/motorola/android/internal/widget/Overlay;->access$1100(Lcom/motorola/android/internal/widget/Overlay;)Z

    move-result v2

    if-eqz v2, :cond_168

    .line 399
    iget-object v2, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v2}, Lcom/motorola/android/internal/widget/Overlay;->access$1300(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/WindowManagerImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v3}, Lcom/motorola/android/internal/widget/Overlay;->access$400(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v4}, Lcom/motorola/android/internal/widget/Overlay;->access$1200(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    :cond_168
    if-eqz v1, :cond_10

    .line 402
    iget-object v2, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-static {v2}, Lcom/motorola/android/internal/widget/Overlay;->access$1400(Lcom/motorola/android/internal/widget/Overlay;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/widget/Overlay$4;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    iget-object v3, v3, Lcom/motorola/android/internal/widget/Overlay;->mAnimate:Ljava/lang/Runnable;

    const-wide/16 v4, 0x21

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_10

    .line 396
    .end local v1           #more:Z
    :catchall_17b
    move-exception v3

    :try_start_17c
    monitor-exit v2
    :try_end_17d
    .catchall {:try_start_17c .. :try_end_17d} :catchall_17b

    throw v3
.end method

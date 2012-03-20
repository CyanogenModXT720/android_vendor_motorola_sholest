.class Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;
.super Landroid/os/Handler;
.source "BatonSenderClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/baton/BatonSenderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatonSenderSession"
.end annotation


# static fields
.field private static final TIME_OUT:I = 0x1388


# instance fields
.field private mBatons:[Lcom/motorola/android/internal/baton/Baton;

.field private mCallback:Lcom/motorola/android/internal/baton/IBatonServiceCallback;

.field private mErrorTimer:Ljava/util/Timer;

.field private mIntent:Landroid/content/Intent;

.field private mIsRunning:Z

.field private mRequestCode:I

.field private mStartType:I

.field private mTask:Ljava/util/TimerTask;

.field private mTransitionId:I

.field private pendingRequests:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/baton/BatonSenderClient;Landroid/content/Intent;I[Lcom/motorola/android/internal/baton/Baton;I)V
    .registers 8
    .parameter
    .parameter "intent"
    .parameter "requestCode"
    .parameter "batons"
    .parameter "startType"

    .prologue
    const/4 v1, -0x1

    .line 310
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 285
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->pendingRequests:Ljava/util/Queue;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mIntent:Landroid/content/Intent;

    .line 289
    iput v1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mTransitionId:I

    .line 290
    iput v1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mRequestCode:I

    .line 291
    iput v1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mStartType:I

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mIsRunning:Z

    .line 298
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mErrorTimer:Ljava/util/Timer;

    .line 299
    new-instance v0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$1;-><init>(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;)V

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mTask:Ljava/util/TimerTask;

    .line 535
    new-instance v0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$2;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession$2;-><init>(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;)V

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mCallback:Lcom/motorola/android/internal/baton/IBatonServiceCallback;

    .line 312
    iput-object p2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mIntent:Landroid/content/Intent;

    .line 313
    iput p3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mRequestCode:I

    .line 314
    iput p5, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mStartType:I

    .line 315
    iput-object p4, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mBatons:[Lcom/motorola/android/internal/baton/Baton;

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mIsRunning:Z

    .line 317
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;IILjava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 283
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->sendBatonMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private createBatonParcels([Lcom/motorola/android/internal/baton/Baton;)[Lcom/motorola/android/internal/baton/BatonParcel;
    .registers 22
    .parameter "batons"

    .prologue
    .line 320
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Lcom/motorola/android/internal/baton/BatonParcel;

    move-object v5, v0

    .line 321
    .local v5, batonParcels:[Lcom/motorola/android/internal/baton/BatonParcel;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v12, v0

    .line 322
    .local v12, loc:[I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 323
    .local v9, emptyRect:Landroid/graphics/Rect;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_17
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_7b

    .line 325
    aget-object v16, p1, v11

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/android/internal/baton/Baton;->getView()Landroid/view/View;

    move-result-object v6

    .line 326
    .local v6, batonView:Landroid/view/View;
    if-nez v6, :cond_2c

    .line 323
    :goto_29
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    .line 329
    :cond_2c
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 330
    .local v7, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 331
    .local v10, h:I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 332
    .local v15, w:I
    invoke-virtual {v6, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 333
    new-instance v14, Landroid/graphics/Rect;

    const/16 v16, 0x0

    aget v16, v12, v16

    const/16 v17, 0x1

    aget v17, v12, v17

    const/16 v18, 0x0

    aget v18, v12, v18

    add-int v18, v18, v15

    const/16 v19, 0x1

    aget v19, v12, v19

    add-int v19, v19, v10

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 334
    .local v14, sr:Landroid/graphics/Rect;
    move-object v8, v9

    .line 335
    .local v8, dr:Landroid/graphics/Rect;
    aget-object v16, p1, v11

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/android/internal/baton/Baton;->getId()I

    move-result v16

    aget-object v17, p1, v11

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/android/internal/baton/Baton;->getType()I

    move-result v17

    move-object v0, v7

    move-object v1, v14

    move-object v2, v8

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/android/internal/baton/BatonParcel;->createBatonParcel(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;II)Lcom/motorola/android/internal/baton/BatonParcel;

    move-result-object v13

    .line 337
    .local v13, parcel:Lcom/motorola/android/internal/baton/BatonParcel;
    aput-object v13, v5, v11

    goto :goto_29

    .line 339
    .end local v6           #batonView:Landroid/view/View;
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #dr:Landroid/graphics/Rect;
    .end local v10           #h:I
    .end local v13           #parcel:Lcom/motorola/android/internal/baton/BatonParcel;
    .end local v14           #sr:Landroid/graphics/Rect;
    .end local v15           #w:I
    :cond_7b
    return-object v5
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "v"

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    if-nez v1, :cond_27

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    .local v0, viewBitmap:Landroid/graphics/Bitmap;
    :goto_1e
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 359
    return-object v0

    .line 351
    .end local v0           #viewBitmap:Landroid/graphics/Bitmap;
    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #viewBitmap:Landroid/graphics/Bitmap;
    goto :goto_1e
.end method

.method private processBatonLayerShown()V
    .registers 2

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->setViewVisible(Z)V

    .line 478
    return-void
.end method

.method private processOnError(ILjava/lang/String;)V
    .registers 6
    .parameter "errorCode"
    .parameter "desc"

    .prologue
    .line 497
    const-string v0, "BatonTransition SenderSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->terminateSession()V

    .line 499
    return-void
.end method

.method private processPendingRequests()V
    .registers 4

    .prologue
    .line 402
    const-string v1, "BatonTransition SenderSession"

    const-string v2, "Service connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_7
    :goto_7
    iget-object v1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->pendingRequests:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-eqz v1, :cond_23

    .line 404
    iget-object v1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->pendingRequests:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 405
    .local v0, pendingRequest:I
    const/16 v1, 0x67

    if-ne v0, v1, :cond_7

    .line 406
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->processStartTransition()V

    goto :goto_7

    .line 409
    .end local v0           #pendingRequest:I
    :cond_23
    return-void
.end method

.method private processPhaseAnimationCompleted(I)V
    .registers 3
    .parameter "phase"

    .prologue
    .line 451
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 460
    :cond_3
    :goto_3
    return-void

    .line 453
    :cond_4
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 455
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 456
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mErrorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 457
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->terminateSession()V

    goto :goto_3
.end method

.method private processPhaseAnimationStarted(I)V
    .registers 4
    .parameter "phase"

    .prologue
    const/4 v1, 0x1

    .line 463
    if-ne p1, v1, :cond_4

    .line 470
    :cond_3
    :goto_3
    return-void

    .line 465
    :cond_4
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 467
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 468
    invoke-direct {p0, v1}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->setViewVisible(Z)V

    goto :goto_3
.end method

.method private processServiceDisconnected()V
    .registers 3

    .prologue
    .line 502
    const-string v0, "BatonTransition SenderSession"

    const-string v1, "Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->terminateSession()V

    .line 504
    return-void
.end method

.method private processStartTransition()V
    .registers 8

    .prologue
    const/4 v5, -0x1

    const-string v6, "BatonTransition SenderSession"

    .line 412
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v2}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$500(Lcom/motorola/android/internal/baton/BatonSenderClient;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v2}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$200(Lcom/motorola/android/internal/baton/BatonSenderClient;)Lcom/motorola/android/internal/baton/IBatonTransitionService;

    move-result-object v2

    if-nez v2, :cond_14

    .line 448
    :cond_13
    :goto_13
    return-void

    .line 416
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v2}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$200(Lcom/motorola/android/internal/baton/BatonSenderClient;)Lcom/motorola/android/internal/baton/IBatonTransitionService;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v3}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$500(Lcom/motorola/android/internal/baton/BatonSenderClient;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mIntent:Landroid/content/Intent;

    invoke-interface {v2, v3, v4}, Lcom/motorola/android/internal/baton/IBatonTransitionService;->createBatonTransition(Ljava/lang/String;Landroid/content/Intent;)I

    move-result v2

    iput v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mTransitionId:I

    .line 418
    iget v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mTransitionId:I

    if-ne v2, v5, :cond_57

    .line 419
    const-string v2, "BatonTransition SenderSession"

    const-string v3, "createBatonTransition returned  invalid ID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mIsRunning:Z

    .line 424
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    iget-object v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mRequestCode:I

    iget v5, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mStartType:I

    invoke-static {v2, v3, v4, v5}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$600(Lcom/motorola/android/internal/baton/BatonSenderClient;Landroid/content/Intent;II)V

    .line 425
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mStartType:I
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_4c} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_4c} :catch_a7

    goto :goto_13

    .line 441
    :catch_4d
    move-exception v2

    move-object v0, v2

    .line 442
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "BatonTransition SenderSession"

    const-string v2, "Unable to create parcels"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 429
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_57
    :try_start_57
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mIntent:Landroid/content/Intent;

    const-string v3, "com.motorola.android.internal.baton.TRANSITION_ID"

    iget v4, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mTransitionId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->registerCallback()V

    .line 432
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    iget-object v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mRequestCode:I

    iget v5, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mStartType:I

    invoke-static {v2, v3, v4, v5}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$600(Lcom/motorola/android/internal/baton/BatonSenderClient;Landroid/content/Intent;II)V

    .line 433
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mStartType:I

    .line 434
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mBatons:[Lcom/motorola/android/internal/baton/Baton;

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->createBatonParcels([Lcom/motorola/android/internal/baton/Baton;)[Lcom/motorola/android/internal/baton/BatonParcel;

    move-result-object v1

    .line 435
    .local v1, parcels:[Lcom/motorola/android/internal/baton/BatonParcel;
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v2}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$200(Lcom/motorola/android/internal/baton/BatonSenderClient;)Lcom/motorola/android/internal/baton/IBatonTransitionService;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mTransitionId:I

    invoke-interface {v2, v1, v3}, Lcom/motorola/android/internal/baton/IBatonTransitionService;->setBatonParcels([Lcom/motorola/android/internal/baton/BatonParcel;I)V

    .line 436
    const-string v2, "BatonTransition SenderSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set and start Transition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mTransitionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mErrorTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mTask:Ljava/util/TimerTask;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_a5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_a5} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_a5} :catch_a7

    goto/16 :goto_13

    .line 444
    .end local v1           #parcels:[Lcom/motorola/android/internal/baton/BatonParcel;
    :catch_a7
    move-exception v2

    move-object v0, v2

    .line 445
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BatonTransition SenderSession"

    const-string v2, "Unable to start Transition"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13
.end method

.method private registerCallback()V
    .registers 5

    .prologue
    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v1}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$200(Lcom/motorola/android/internal/baton/BatonSenderClient;)Lcom/motorola/android/internal/baton/IBatonTransitionService;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mCallback:Lcom/motorola/android/internal/baton/IBatonServiceCallback;

    iget v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mTransitionId:I

    invoke-interface {v1, v2, v3}, Lcom/motorola/android/internal/baton/IBatonTransitionService;->registerServiceCallback(Lcom/motorola/android/internal/baton/IBatonServiceCallback;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 486
    :goto_d
    return-void

    .line 483
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 484
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method private sendBatonMessage(IILjava/lang/Object;)V
    .registers 5
    .parameter "what"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 562
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 563
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 564
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 565
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 566
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->sendMessage(Landroid/os/Message;)Z

    .line 567
    return-void
.end method

.method private setViewVisible(Z)V
    .registers 6
    .parameter "show"

    .prologue
    .line 524
    if-eqz p1, :cond_2d

    const/4 v2, 0x0

    move v1, v2

    .line 525
    .local v1, visibility:I
    :goto_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mBatons:[Lcom/motorola/android/internal/baton/Baton;

    array-length v2, v2

    if-ge v0, v2, :cond_30

    .line 526
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mBatons:[Lcom/motorola/android/internal/baton/Baton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/motorola/android/internal/baton/Baton;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mBatons:[Lcom/motorola/android/internal/baton/Baton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/motorola/android/internal/baton/Baton;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2a

    .line 527
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mBatons:[Lcom/motorola/android/internal/baton/Baton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/motorola/android/internal/baton/Baton;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 525
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 524
    .end local v0           #i:I
    .end local v1           #visibility:I
    :cond_2d
    const/4 v2, 0x4

    move v1, v2

    goto :goto_4

    .line 530
    .restart local v0       #i:I
    .restart local v1       #visibility:I
    :cond_30
    return-void
.end method

.method private terminateSession()V
    .registers 3

    .prologue
    .line 508
    const-string v0, "BatonTransition SenderSession"

    const-string v1, "Terminating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mErrorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 510
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->setViewVisible(Z)V

    .line 511
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$300(Lcom/motorola/android/internal/baton/BatonSenderClient;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 512
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->unregisterCallback()V

    .line 516
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mIsRunning:Z

    .line 519
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mIntent:Landroid/content/Intent;

    const-string v1, "com.motorola.android.internal.baton.TRANSITION_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method private unregisterCallback()V
    .registers 5

    .prologue
    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v1}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$200(Lcom/motorola/android/internal/baton/BatonSenderClient;)Lcom/motorola/android/internal/baton/IBatonTransitionService;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mCallback:Lcom/motorola/android/internal/baton/IBatonServiceCallback;

    iget v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mTransitionId:I

    invoke-interface {v1, v2, v3}, Lcom/motorola/android/internal/baton/IBatonTransitionService;->unregisterServiceCallback(Lcom/motorola/android/internal/baton/IBatonServiceCallback;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 494
    :goto_d
    return-void

    .line 491
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 492
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "message"

    .prologue
    .line 363
    const/4 v2, 0x0

    .line 364
    .local v2, phase:I
    iget-boolean v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->mIsRunning:Z

    if-nez v3, :cond_6

    .line 399
    :goto_5
    return-void

    .line 368
    :cond_6
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_46

    goto :goto_5

    .line 370
    :pswitch_c
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->processPendingRequests()V

    goto :goto_5

    .line 373
    :pswitch_10
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->processServiceDisconnected()V

    goto :goto_5

    .line 376
    :pswitch_14
    iget-object v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->this$0:Lcom/motorola/android/internal/baton/BatonSenderClient;

    invoke-static {v3}, Lcom/motorola/android/internal/baton/BatonSenderClient;->access$300(Lcom/motorola/android/internal/baton/BatonSenderClient;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 377
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->processStartTransition()V

    goto :goto_5

    .line 379
    :cond_20
    iget-object v3, p0, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->pendingRequests:Ljava/util/Queue;

    const/16 v4, 0x67

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 383
    :pswitch_2c
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 384
    invoke-direct {p0, v2}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->processPhaseAnimationStarted(I)V

    goto :goto_5

    .line 387
    :pswitch_32
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 388
    invoke-direct {p0, v2}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->processPhaseAnimationCompleted(I)V

    goto :goto_5

    .line 391
    :pswitch_38
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->processBatonLayerShown()V

    goto :goto_5

    .line 394
    :pswitch_3c
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 395
    .local v1, errorCode:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 396
    .local v0, desc:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/motorola/android/internal/baton/BatonSenderClient$BatonSenderSession;->processOnError(ILjava/lang/String;)V

    goto :goto_5

    .line 368
    :pswitch_data_46
    .packed-switch 0x65
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_2c
        :pswitch_32
        :pswitch_38
        :pswitch_3c
    .end packed-switch
.end method

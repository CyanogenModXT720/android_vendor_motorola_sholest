.class Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;
.super Landroid/os/Handler;
.source "BatonReceiverClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/baton/BatonReceiverClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatonReceiverSession"
.end annotation


# static fields
.field private static final TIME_OUT1:I = 0xfa0

.field private static final TIME_OUT2:I = 0xbb8


# instance fields
.field private mActivityCreated:Z

.field private mBatons:[Lcom/motorola/android/internal/baton/Baton;

.field private mCallback:Lcom/motorola/android/internal/baton/IBatonServiceCallback;

.field private mErrorTimer1:Ljava/util/Timer;

.field private mErrorTimer2:Ljava/util/Timer;

.field private mIntent:Landroid/content/Intent;

.field private mIsRunning:Z

.field private mTask1:Ljava/util/TimerTask;

.field private mTask2:Ljava/util/TimerTask;

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

.field final synthetic this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/baton/BatonReceiverClient;Landroid/content/Intent;[Lcom/motorola/android/internal/baton/Baton;)V
    .registers 6
    .parameter
    .parameter "intent"
    .parameter "batons"

    .prologue
    const/4 v1, 0x0

    .line 313
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 281
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->pendingRequests:Ljava/util/Queue;

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mIntent:Landroid/content/Intent;

    .line 284
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mTransitionId:I

    .line 285
    iput-boolean v1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mActivityCreated:Z

    .line 286
    iput-boolean v1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mIsRunning:Z

    .line 290
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mErrorTimer1:Ljava/util/Timer;

    .line 291
    new-instance v0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$1;-><init>(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;)V

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mTask1:Ljava/util/TimerTask;

    .line 302
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mErrorTimer2:Ljava/util/Timer;

    .line 303
    new-instance v0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$2;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$2;-><init>(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;)V

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mTask2:Ljava/util/TimerTask;

    .line 611
    new-instance v0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$4;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$4;-><init>(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;)V

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mCallback:Lcom/motorola/android/internal/baton/IBatonServiceCallback;

    .line 314
    const-string v0, "BatonTransition ReceiverSession"

    const-string v1, "new session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iput-object p2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mIntent:Landroid/content/Intent;

    .line 316
    iput-object p3, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mBatons:[Lcom/motorola/android/internal/baton/Baton;

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mIsRunning:Z

    .line 318
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.motorola.android.internal.baton.TRANSITION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mTransitionId:I

    .line 319
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;IILjava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 279
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->sendBatonMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private createBatonParcels([Lcom/motorola/android/internal/baton/Baton;)[Lcom/motorola/android/internal/baton/BatonParcel;
    .registers 22
    .parameter "batons"

    .prologue
    .line 327
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Lcom/motorola/android/internal/baton/BatonParcel;

    move-object v5, v0

    .line 328
    .local v5, batonParcels:[Lcom/motorola/android/internal/baton/BatonParcel;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v12, v0

    .line 329
    .local v12, loc:[I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 330
    .local v9, emptyRect:Landroid/graphics/Rect;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_17
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_b4

    .line 332
    aget-object v16, p1, v11

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/android/internal/baton/Baton;->getView()Landroid/view/View;

    move-result-object v6

    .line 333
    .local v6, batonView:Landroid/view/View;
    if-nez v6, :cond_2c

    .line 330
    :goto_29
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    .line 336
    :cond_2c
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 338
    .local v7, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 339
    .local v10, h:I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 343
    .local v15, w:I
    invoke-virtual {v6, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 344
    const-string v16, "BatonTransition Receiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "X loc in window = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v12, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v16, "BatonTransition Receiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Y loc in window = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget v18, v12, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object v14, v9

    .line 347
    .local v14, sr:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

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

    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 348
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

    .line 350
    .local v13, parcel:Lcom/motorola/android/internal/baton/BatonParcel;
    aput-object v13, v5, v11

    goto/16 :goto_29

    .line 352
    .end local v6           #batonView:Landroid/view/View;
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #dr:Landroid/graphics/Rect;
    .end local v10           #h:I
    .end local v13           #parcel:Lcom/motorola/android/internal/baton/BatonParcel;
    .end local v14           #sr:Landroid/graphics/Rect;
    .end local v15           #w:I
    :cond_b4
    return-object v5
.end method

.method private finalizeBatonParcels([Lcom/motorola/android/internal/baton/Baton;)[Lcom/motorola/android/internal/baton/BatonParcel;
    .registers 22
    .parameter "batons"

    .prologue
    .line 361
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Lcom/motorola/android/internal/baton/BatonParcel;

    move-object v5, v0

    .line 362
    .local v5, batonParcels:[Lcom/motorola/android/internal/baton/BatonParcel;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v12, v0

    .line 363
    .local v12, loc:[I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 364
    .local v9, emptyRect:Landroid/graphics/Rect;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_17
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_b4

    .line 366
    aget-object v16, p1, v11

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/android/internal/baton/Baton;->getView()Landroid/view/View;

    move-result-object v6

    .line 367
    .local v6, batonView:Landroid/view/View;
    if-nez v6, :cond_2c

    .line 364
    :goto_29
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    .line 371
    :cond_2c
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 372
    .local v7, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 373
    .local v10, h:I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 374
    .local v15, w:I
    invoke-virtual {v6, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 375
    const-string v16, "BatonTransition Receiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "X loc on screen = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v12, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v16, "BatonTransition Receiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Y loc on screen = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget v18, v12, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    move-object v14, v9

    .line 378
    .local v14, sr:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

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

    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 379
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

    .line 381
    .local v13, parcel:Lcom/motorola/android/internal/baton/BatonParcel;
    aput-object v13, v5, v11

    goto/16 :goto_29

    .line 383
    .end local v6           #batonView:Landroid/view/View;
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #dr:Landroid/graphics/Rect;
    .end local v10           #h:I
    .end local v13           #parcel:Lcom/motorola/android/internal/baton/BatonParcel;
    .end local v14           #sr:Landroid/graphics/Rect;
    .end local v15           #w:I
    :cond_b4
    return-object v5
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "v"

    .prologue
    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    if-nez v1, :cond_27

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 400
    .local v0, viewBitmap:Landroid/graphics/Bitmap;
    :goto_1e
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 402
    return-object v0

    .line 394
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

.method private processActivityCreated()V
    .registers 3

    .prologue
    .line 467
    const-string v0, "BatonTransition ReceiverSession"

    const-string v1, "processActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mActivityCreated:Z

    .line 469
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->registerCallback()V

    .line 470
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->setViewVisible(Z)V

    .line 485
    return-void
.end method

.method private processActivityShown()V
    .registers 7

    .prologue
    const-string v5, "BatonTransition ReceiverSession"

    .line 489
    :try_start_2
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mBatons:[Lcom/motorola/android/internal/baton/Baton;

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->finalizeBatonParcels([Lcom/motorola/android/internal/baton/Baton;)[Lcom/motorola/android/internal/baton/BatonParcel;

    move-result-object v1

    .line 490
    .local v1, parcels:[Lcom/motorola/android/internal/baton/BatonParcel;
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v2}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$300(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Lcom/motorola/android/internal/baton/IBatonTransitionService;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mTransitionId:I

    invoke-interface {v2, v1, v3}, Lcom/motorola/android/internal/baton/IBatonTransitionService;->updateBatonParcels([Lcom/motorola/android/internal/baton/BatonParcel;I)V

    .line 491
    const-string v2, "BatonTransition ReceiverSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update final Transition id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mTransitionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2d} :catch_2e

    .line 497
    .end local v1           #parcels:[Lcom/motorola/android/internal/baton/BatonParcel;
    :goto_2d
    return-void

    .line 493
    :catch_2e
    move-exception v2

    move-object v0, v2

    .line 494
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BatonTransition ReceiverSession"

    const-string v2, "Unable to resume animation"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private processOnError(ILjava/lang/String;)V
    .registers 6
    .parameter "errorCode"
    .parameter "desc"

    .prologue
    .line 535
    const-string v0, "BatonTransition ReceiverSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->terminateSession(Z)V

    .line 537
    return-void
.end method

.method private processPendingRequests()V
    .registers 4

    .prologue
    .line 518
    const-string v1, "BatonTransition ReceiverSession"

    const-string v2, "processPendingRequests"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_7
    :goto_7
    iget-object v1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->pendingRequests:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-eqz v1, :cond_20

    .line 520
    iget-object v1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->pendingRequests:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 521
    .local v0, pendingRequest:I
    if-nez v0, :cond_21

    .line 522
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->terminateBatonTransition()V

    .line 532
    .end local v0           #pendingRequest:I
    :cond_20
    return-void

    .line 525
    .restart local v0       #pendingRequest:I
    :cond_21
    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 526
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->processActivityCreated()V

    .line 528
    :cond_27
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 529
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->processActivityShown()V

    goto :goto_7
.end method

.method private processPhaseAnimationCompleted(I)V
    .registers 4
    .parameter "phase"

    .prologue
    const/4 v1, 0x1

    .line 503
    if-ne p1, v1, :cond_4

    .line 515
    :cond_3
    :goto_3
    return-void

    .line 506
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    .line 508
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mErrorTimer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 509
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->showActivity()V

    goto :goto_3

    .line 510
    :cond_10
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 511
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mErrorTimer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 513
    invoke-direct {p0, v1}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->terminateSession(Z)V

    goto :goto_3
.end method

.method private processPhaseAnimationStarted(I)V
    .registers 2
    .parameter "phase"

    .prologue
    .line 500
    return-void
.end method

.method private processServiceDisconnected()V
    .registers 3

    .prologue
    .line 540
    const-string v0, "BatonTransition ReceiverSession"

    const-string v1, "Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->terminateSession(Z)V

    .line 542
    return-void
.end method

.method private registerCallback()V
    .registers 5

    .prologue
    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v1}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$300(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Lcom/motorola/android/internal/baton/IBatonTransitionService;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mCallback:Lcom/motorola/android/internal/baton/IBatonServiceCallback;

    iget v3, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mTransitionId:I

    invoke-interface {v1, v2, v3}, Lcom/motorola/android/internal/baton/IBatonTransitionService;->registerServiceCallback(Lcom/motorola/android/internal/baton/IBatonServiceCallback;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 596
    :goto_d
    return-void

    .line 593
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 594
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
    .line 638
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 639
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 640
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 641
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 642
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->sendMessage(Landroid/os/Message;)Z

    .line 643
    return-void
.end method

.method private setViewVisible(Z)V
    .registers 6
    .parameter "show"

    .prologue
    .line 574
    if-eqz p1, :cond_2d

    const/4 v2, 0x0

    move v1, v2

    .line 575
    .local v1, visibility:I
    :goto_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mBatons:[Lcom/motorola/android/internal/baton/Baton;

    array-length v2, v2

    if-ge v0, v2, :cond_30

    .line 576
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mBatons:[Lcom/motorola/android/internal/baton/Baton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/motorola/android/internal/baton/Baton;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mBatons:[Lcom/motorola/android/internal/baton/Baton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/motorola/android/internal/baton/Baton;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2a

    .line 577
    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mBatons:[Lcom/motorola/android/internal/baton/Baton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/motorola/android/internal/baton/Baton;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 575
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 574
    .end local v0           #i:I
    .end local v1           #visibility:I
    :cond_2d
    const/4 v2, 0x4

    move v1, v2

    goto :goto_4

    .line 580
    .restart local v0       #i:I
    .restart local v1       #visibility:I
    :cond_30
    return-void
.end method

.method private showActivity()V
    .registers 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$000(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 565
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$000(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$3;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession$3;-><init>(Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 571
    :cond_16
    return-void
.end method

.method private terminateBatonTransition()V
    .registers 4

    .prologue
    .line 599
    const-string v1, "BatonTransition ReceiverSession"

    const-string v2, "Terminating transition"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :try_start_7
    iget-object v1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v1}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$300(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Lcom/motorola/android/internal/baton/IBatonTransitionService;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mTransitionId:I

    invoke-interface {v1, v2}, Lcom/motorola/android/internal/baton/IBatonTransitionService;->terminateBatonTransition(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_16

    .line 605
    :goto_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mIsRunning:Z

    .line 606
    return-void

    .line 602
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 603
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12
.end method

.method private terminateSession(Z)V
    .registers 5
    .parameter "notifyService"

    .prologue
    const/4 v2, 0x0

    .line 545
    const-string v0, "BatonTransition ReceiverSession"

    const-string v1, "Terminating session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mErrorTimer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 549
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->setViewVisible(Z)V

    .line 551
    if-eqz p1, :cond_2c

    .line 552
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$400(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 553
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->unregisterCallback()V

    .line 554
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->terminateBatonTransition()V

    .line 561
    :goto_21
    return-void

    .line 556
    :cond_22
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->pendingRequests:Ljava/util/Queue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 559
    :cond_2c
    iput-boolean v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mIsRunning:Z

    goto :goto_21
.end method

.method private unregisterCallback()V
    .registers 5

    .prologue
    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v1}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$300(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Lcom/motorola/android/internal/baton/IBatonTransitionService;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mCallback:Lcom/motorola/android/internal/baton/IBatonServiceCallback;

    iget v3, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mTransitionId:I

    invoke-interface {v1, v2, v3}, Lcom/motorola/android/internal/baton/IBatonTransitionService;->unregisterServiceCallback(Lcom/motorola/android/internal/baton/IBatonServiceCallback;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 588
    :goto_d
    return-void

    .line 585
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 586
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "message"

    .prologue
    const/4 v8, 0x1

    .line 406
    const/4 v3, 0x0

    .line 407
    .local v3, phase:I
    iget-boolean v4, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mIsRunning:Z

    if-nez v4, :cond_7

    .line 464
    :cond_6
    :goto_6
    return-void

    .line 410
    :cond_7
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_76

    :pswitch_c
    goto :goto_6

    .line 412
    :pswitch_d
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->processPendingRequests()V

    goto :goto_6

    .line 415
    :pswitch_11
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->processServiceDisconnected()V

    goto :goto_6

    .line 419
    :pswitch_15
    :try_start_15
    iget-object v4, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mErrorTimer1:Ljava/util/Timer;

    iget-object v5, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mTask1:Ljava/util/TimerTask;

    const-wide/16 v6, 0xfa0

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_1e} :catch_33

    .line 425
    iget-object v4, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->pendingRequests:Ljava/util/Queue;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v4, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v4}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$400(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 427
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->processPendingRequests()V

    goto :goto_6

    .line 420
    :catch_33
    move-exception v4

    move-object v1, v4

    .line 422
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "BatonTransition Receiver"

    const-string v5, "Timer cancelled."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 439
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :pswitch_3d
    iget-object v4, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->pendingRequests:Ljava/util/Queue;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v4, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->this$0:Lcom/motorola/android/internal/baton/BatonReceiverClient;

    invoke-static {v4}, Lcom/motorola/android/internal/baton/BatonReceiverClient;->access$400(Lcom/motorola/android/internal/baton/BatonReceiverClient;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->mActivityCreated:Z

    if-eqz v4, :cond_6

    .line 441
    invoke-direct {p0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->processPendingRequests()V

    goto :goto_6

    .line 445
    :pswitch_57
    invoke-direct {p0, v8}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->terminateSession(Z)V

    goto :goto_6

    .line 448
    :pswitch_5b
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 449
    invoke-direct {p0, v3}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->processPhaseAnimationStarted(I)V

    goto :goto_6

    .line 452
    :pswitch_61
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 453
    invoke-direct {p0, v3}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->processPhaseAnimationCompleted(I)V

    goto :goto_6

    .line 456
    :pswitch_67
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 457
    .local v2, errorCode:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 458
    .local v0, desc:Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->processOnError(ILjava/lang/String;)V

    goto :goto_6

    .line 461
    .end local v0           #desc:Ljava/lang/String;
    .end local v2           #errorCode:I
    :pswitch_71
    invoke-direct {p0, v8}, Lcom/motorola/android/internal/baton/BatonReceiverClient$BatonReceiverSession;->terminateSession(Z)V

    goto :goto_6

    .line 410
    nop

    :pswitch_data_76
    .packed-switch 0x12d
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_3d
        :pswitch_57
        :pswitch_5b
        :pswitch_61
        :pswitch_c
        :pswitch_67
        :pswitch_71
    .end packed-switch
.end method

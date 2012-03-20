.class Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "World3DOpenGL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/ui3d/World3DOpenGL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGLSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    .line 231
    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 232
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    iget-boolean v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraPositionSet:Z

    if-nez v0, :cond_13

    .line 243
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    add-int v1, p2, p4

    shr-int/lit8 v1, v1, 0x1

    add-int v2, p3, p5

    shr-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->setCamera2DPosition(II)V

    .line 246
    :cond_13
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->listener:Lcom/motorola/android/internal/ui3d/World3D$World3DListener;

    if-eqz v0, :cond_20

    .line 247
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->listener:Lcom/motorola/android/internal/ui3d/World3D$World3DListener;

    invoke-interface {v0}, Lcom/motorola/android/internal/ui3d/World3D$World3DListener;->onLayoutUpdate()V

    .line 248
    :cond_20
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "event"

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 262
    .local v5, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 263
    .local v6, rawY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 264
    .local v0, action:I
    const/4 v7, 0x2

    new-array v4, v7, [F

    .line 266
    .local v4, point:[F
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$000(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 273
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$100(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/CameraTransformable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/android/internal/ui3d/CameraTransformable;->save()V

    .line 274
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-virtual {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v8}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$100(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/CameraTransformable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/motorola/android/internal/ui3d/Widget;->updateTransform(Lcom/motorola/android/internal/ui3d/CameraTransformable;)V

    .line 275
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$100(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/CameraTransformable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/android/internal/ui3d/CameraTransformable;->restore()V

    .line 276
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$200(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)V

    .line 277
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$002(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Z)Z

    .line 280
    :cond_43
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$300(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Z

    move-result v7

    if-eqz v7, :cond_191

    .line 282
    if-nez v0, :cond_e5

    .line 283
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    iget v7, v7, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderableListCount:I

    const/4 v8, 0x1

    sub-int v3, v7, v8

    .local v3, n:I
    :goto_54
    if-ltz v3, :cond_dd

    .line 284
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    iget-object v7, v7, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v1, v7, v3

    .line 285
    .local v1, child:Lcom/motorola/android/internal/ui3d/Widget;
    const/4 v7, 0x0

    aput v5, v4, v7

    .line 286
    const/4 v7, 0x1

    aput v6, v4, v7

    .line 288
    invoke-virtual {v1, v4}, Lcom/motorola/android/internal/ui3d/Widget;->hitTest([F)Z

    move-result v7

    if-eqz v7, :cond_d9

    .line 289
    const/4 v7, 0x0

    aget v7, v4, v7

    const/4 v8, 0x1

    aget v8, v4, v8

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 291
    invoke-static {}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$400()Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 292
    invoke-static {}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$500()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hitTest: child="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rawX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rawY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pointX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pointY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " depth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/motorola/android/internal/ui3d/Widget;->depth:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_cb
    :try_start_cb
    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/ui3d/Widget;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_d9

    .line 302
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7, v1}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$602(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Lcom/motorola/android/internal/ui3d/Widget;)Lcom/motorola/android/internal/ui3d/Widget;
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_d6} :catch_d8

    .line 303
    const/4 v7, 0x1

    .line 390
    .end local v1           #child:Lcom/motorola/android/internal/ui3d/Widget;
    .end local v3           #n:I
    :goto_d7
    return v7

    .line 305
    .restart local v1       #child:Lcom/motorola/android/internal/ui3d/Widget;
    .restart local v3       #n:I
    :catch_d8
    move-exception v7

    .line 283
    :cond_d9
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_54

    .line 309
    .end local v1           #child:Lcom/motorola/android/internal/ui3d/Widget;
    :cond_dd
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$602(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Lcom/motorola/android/internal/ui3d/Widget;)Lcom/motorola/android/internal/ui3d/Widget;

    .line 310
    const/4 v7, 0x1

    goto :goto_d7

    .line 313
    .end local v3           #n:I
    :cond_e5
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$600(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v7

    if-eqz v7, :cond_230

    .line 316
    const/4 v7, 0x0

    aput v5, v4, v7

    .line 317
    const/4 v7, 0x1

    aput v6, v4, v7

    .line 318
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$600(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/motorola/android/internal/ui3d/Widget;->mapPoints([F)Z

    .line 319
    const/4 v7, 0x0

    aget v7, v4, v7

    const/4 v8, 0x1

    aget v8, v4, v8

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 321
    invoke-static {}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$400()Z

    move-result v7

    if-eqz v7, :cond_16b

    .line 322
    invoke-static {}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$500()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent: lastTouchTarget="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v9}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$600(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rawX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rawY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pointX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pointY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " depth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v9}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$600(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v9

    iget v9, v9, Lcom/motorola/android/internal/ui3d/Widget;->depth:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_16b
    :try_start_16b
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$600(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/motorola/android/internal/ui3d/Widget;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_182

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_188

    .line 336
    :cond_182
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$602(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Lcom/motorola/android/internal/ui3d/Widget;)Lcom/motorola/android/internal/ui3d/Widget;
    :try_end_188
    .catch Ljava/lang/Throwable; {:try_start_16b .. :try_end_188} :catch_18b

    .line 343
    :cond_188
    :goto_188
    const/4 v7, 0x1

    goto/16 :goto_d7

    .line 338
    :catch_18b
    move-exception v7

    move-object v2, v7

    .line 339
    .local v2, e:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_188

    .line 346
    .end local v2           #e:Ljava/lang/Throwable;
    :cond_191
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    iget v7, v7, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderableListCount:I

    const/4 v8, 0x1

    sub-int v3, v7, v8

    .restart local v3       #n:I
    :goto_198
    if-ltz v3, :cond_20f

    .line 347
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    iget-object v7, v7, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v1, v7, v3

    .line 348
    .restart local v1       #child:Lcom/motorola/android/internal/ui3d/Widget;
    const/4 v7, 0x0

    aput v5, v4, v7

    .line 349
    const/4 v7, 0x1

    aput v6, v4, v7

    .line 350
    invoke-virtual {v1, v4}, Lcom/motorola/android/internal/ui3d/Widget;->hitTest([F)Z

    move-result v7

    if-eqz v7, :cond_20c

    .line 351
    const/4 v7, 0x0

    aget v7, v4, v7

    const/4 v8, 0x1

    aget v8, v4, v8

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 353
    :try_start_1b5
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$600(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v7

    if-eq v7, v1, :cond_1e4

    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$600(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v7

    if-eqz v7, :cond_1e4

    .line 355
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$700(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Landroid/view/MotionEvent;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 356
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$600(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v8}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$700(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/motorola/android/internal/ui3d/Widget;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 357
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$602(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Lcom/motorola/android/internal/ui3d/Widget;)Lcom/motorola/android/internal/ui3d/Widget;

    .line 359
    :cond_1e4
    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/ui3d/Widget;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_20c

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1fe

    .line 368
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7, p1}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$702(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 369
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7, v1}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$602(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Lcom/motorola/android/internal/ui3d/Widget;)Lcom/motorola/android/internal/ui3d/Widget;

    .line 374
    :goto_1fb
    const/4 v7, 0x1

    goto/16 :goto_d7

    .line 371
    :cond_1fe
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$702(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 372
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$602(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Lcom/motorola/android/internal/ui3d/Widget;)Lcom/motorola/android/internal/ui3d/Widget;
    :try_end_20a
    .catch Ljava/lang/Throwable; {:try_start_1b5 .. :try_end_20a} :catch_20b

    goto :goto_1fb

    .line 376
    :catch_20b
    move-exception v7

    .line 346
    :cond_20c
    add-int/lit8 v3, v3, -0x1

    goto :goto_198

    .line 381
    .end local v1           #child:Lcom/motorola/android/internal/ui3d/Widget;
    :cond_20f
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$600(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v7

    if-eqz v7, :cond_230

    .line 383
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$700(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Landroid/view/MotionEvent;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 384
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v7}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$600(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-static {v8}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$700(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/motorola/android/internal/ui3d/Widget;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 388
    .end local v3           #n:I
    :cond_230
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$702(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 389
    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->access$602(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Lcom/motorola/android/internal/ui3d/Widget;)Lcom/motorola/android/internal/ui3d/Widget;

    .line 390
    const/4 v7, 0x1

    goto/16 :goto_d7
.end method

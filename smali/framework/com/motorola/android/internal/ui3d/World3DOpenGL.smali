.class public Lcom/motorola/android/internal/ui3d/World3DOpenGL;
.super Lcom/motorola/android/internal/ui3d/World3D;
.source "World3DOpenGL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static VERBOSE:Z


# instance fields
.field cameraPositionSet:Z

.field private lastMotionEvent:Landroid/view/MotionEvent;

.field private lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private renderer:Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;

.field private stickyTouchMode:Z

.field touchX:F

.field touchY:F

.field private worldCamera:Lcom/motorola/android/internal/ui3d/CameraTransformable;

.field private worldInvalidated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "World3DOpenGL"

    sput-object v0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/ui3d/World3D;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->worldInvalidated:Z

    .line 73
    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraPositionSet:Z

    .line 74
    iput-object v2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    .line 75
    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->stickyTouchMode:Z

    .line 76
    iput-object v2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 77
    iput v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->touchX:F

    .line 78
    iput v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->touchY:F

    .line 79
    new-instance v0, Lcom/motorola/android/internal/ui3d/CameraTransformable;

    invoke-direct {v0}, Lcom/motorola/android/internal/ui3d/CameraTransformable;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->worldCamera:Lcom/motorola/android/internal/ui3d/CameraTransformable;

    .line 40
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->worldInvalidated:Z

    return v0
.end method

.method static synthetic access$002(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->worldInvalidated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/CameraTransformable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->worldCamera:Lcom/motorola/android/internal/ui3d/CameraTransformable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->sortByDepth()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->stickyTouchMode:Z

    return v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Lcom/motorola/android/internal/ui3d/Widget;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Lcom/motorola/android/internal/ui3d/Widget;)Lcom/motorola/android/internal/ui3d/Widget;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->lastTouchTarget:Lcom/motorola/android/internal/ui3d/Widget;

    return-object p1
.end method

.method static synthetic access$700(Lcom/motorola/android/internal/ui3d/World3DOpenGL;)Landroid/view/MotionEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->lastMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->lastMotionEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/16 v1, 0x8

    .line 49
    new-instance v0, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;

    invoke-direct {v0, p0, p1}, Lcom/motorola/android/internal/ui3d/World3DOpenGL$MyGLSurfaceView;-><init>(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 50
    new-instance v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;-><init>(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Z)V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderer:Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;

    .line 51
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 52
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderer:Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 53
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 54
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->mView:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraX:I

    .line 58
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraY:I

    .line 59
    return-void
.end method

.method private sortByDepth()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 149
    .local v4, t:J
    iget v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderableListCount:I

    .line 161
    .local v0, count:I
    const/4 v2, 0x0

    .line 166
    .local v2, passes:I
    :cond_8
    const/4 v3, 0x1

    .line 167
    .local v3, sorted:Z
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    sub-int v10, v0, v12

    aget-object v9, v9, v10

    iget v7, v9, Lcom/motorola/android/internal/ui3d/Widget;->depth:F

    .line 168
    .local v7, z1:F
    sub-int v1, v0, v12

    .local v1, n:I
    :goto_13
    if-lez v1, :cond_3a

    .line 170
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    sub-int v10, v1, v12

    aget-object v9, v9, v10

    iget v8, v9, Lcom/motorola/android/internal/ui3d/Widget;->depth:F

    .line 172
    .local v8, z2:F
    cmpg-float v9, v7, v8

    if-gez v9, :cond_36

    .line 173
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    sub-int v10, v1, v12

    aget-object v6, v9, v10

    .line 174
    .local v6, temp:Lcom/motorola/android/internal/ui3d/Widget;
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    sub-int v10, v1, v12

    iget-object v11, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v11, v11, v1

    aput-object v11, v9, v10

    .line 175
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    aput-object v6, v9, v1

    .line 176
    const/4 v3, 0x0

    .line 178
    .end local v6           #temp:Lcom/motorola/android/internal/ui3d/Widget;
    :cond_36
    move v7, v8

    .line 168
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 180
    .end local v8           #z2:F
    :cond_3a
    sget-boolean v9, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->VERBOSE:Z

    if-eqz v9, :cond_40

    .line 181
    add-int/lit8 v2, v2, 0x1

    .line 183
    :cond_40
    if-eqz v3, :cond_8

    .line 185
    sget-boolean v9, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->VERBOSE:Z

    if-eqz v9, :cond_78

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v4, v9, v4

    .line 187
    sget-object v9, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sorted "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " widgets ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " passes) in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_78
    return-void
.end method


# virtual methods
.method public clearCamera2DPosition()V
    .registers 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->setCamera2DPosition(II)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraPositionSet:Z

    .line 122
    return-void
.end method

.method public enableLighting(Z)V
    .registers 3
    .parameter "lighting"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->renderer:Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->enableLighting(Z)V

    .line 224
    return-void
.end method

.method public enableStickyTouchMode(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->stickyTouchMode:Z

    .line 135
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 67
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 63
    return-void
.end method

.method public setCamera2DPosition(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 108
    iget v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraX:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraY:I

    if-eq v0, p2, :cond_19

    .line 109
    :cond_8
    iput p1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraX:I

    .line 110
    iput p2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraY:I

    .line 111
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 112
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/android/internal/ui3d/Widget;->invalidateTransform()V

    .line 116
    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraPositionSet:Z

    .line 117
    return-void
.end method

.method public setMainWidget(Lcom/motorola/android/internal/ui3d/Widget;)V
    .registers 2
    .parameter "widget"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/motorola/android/internal/ui3d/World3D;->setMainWidget(Lcom/motorola/android/internal/ui3d/Widget;)V

    .line 98
    return-void
.end method

.class public Lcom/motorola/android/internal/widget/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"


# static fields
.field static final ANIMATE_FRAME_DURATION:I = 0x21

.field private static final TAG:Ljava/lang/String; = "Overlay"


# instance fields
.field dst:[F

.field dst2:[F

.field private mAlpha:F

.field private mAnimLock:Ljava/lang/Object;

.field mAnimate:Ljava/lang/Runnable;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mDpyHeight:I

.field private mDpyWidth:I

.field private mHandler:Landroid/os/Handler;

.field mHide:Ljava/lang/Runnable;

.field private mOrigHeight:I

.field private mOrigWidth:I

.field private mOrigX:I

.field private mOrigY:I

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field mShow:Ljava/lang/Runnable;

.field private mShown:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field mUpdateView:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;

.field private mWM:Landroid/view/WindowManagerImpl;

.field src:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigX:I

    iput v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigY:I

    .line 39
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mTransformation:Landroid/view/animation/Transformation;

    .line 42
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 44
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mAnimLock:Ljava/lang/Object;

    .line 298
    new-instance v1, Lcom/motorola/android/internal/widget/Overlay$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/widget/Overlay$1;-><init>(Lcom/motorola/android/internal/widget/Overlay;)V

    iput-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mShow:Ljava/lang/Runnable;

    .line 304
    new-instance v1, Lcom/motorola/android/internal/widget/Overlay$2;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/widget/Overlay$2;-><init>(Lcom/motorola/android/internal/widget/Overlay;)V

    iput-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mHide:Ljava/lang/Runnable;

    .line 310
    new-instance v1, Lcom/motorola/android/internal/widget/Overlay$3;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/widget/Overlay$3;-><init>(Lcom/motorola/android/internal/widget/Overlay;)V

    iput-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mUpdateView:Ljava/lang/Runnable;

    .line 317
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->src:[F

    .line 318
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->dst:[F

    .line 319
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->dst2:[F

    .line 321
    new-instance v1, Lcom/motorola/android/internal/widget/Overlay$4;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/widget/Overlay$4;-><init>(Lcom/motorola/android/internal/widget/Overlay;)V

    iput-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mAnimate:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/motorola/android/internal/widget/Overlay;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    .line 57
    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x798

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 63
    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 64
    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 67
    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 68
    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "Overlay"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    invoke-virtual {v1}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 71
    .local v0, dpy:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mDpyWidth:I

    .line 72
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mDpyHeight:I

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/widget/Overlay;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mAnimLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/android/internal/widget/Overlay;FZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/widget/Overlay;->setAlpha(FZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/android/internal/widget/Overlay;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mShown:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/WindowManagerImpl;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/motorola/android/internal/widget/Overlay;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/widget/Overlay;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigWidth:I

    return v0
.end method

.method static synthetic access$202(Lcom/motorola/android/internal/widget/Overlay;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/widget/Overlay;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/android/internal/widget/Overlay;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/internal/widget/Overlay;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mDpyWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/android/internal/widget/Overlay;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mDpyHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/motorola/android/internal/widget/Overlay;)Landroid/view/animation/Transformation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/android/internal/widget/Overlay;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigX:I

    return v0
.end method

.method static synthetic access$900(Lcom/motorola/android/internal/widget/Overlay;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigY:I

    return v0
.end method

.method private setAlpha(FZ)V
    .registers 5
    .parameter "a"
    .parameter "update"

    .prologue
    .line 240
    iget v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    .line 253
    :cond_6
    :goto_6
    return-void

    .line 244
    :cond_7
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_21

    .line 245
    const/4 p1, 0x0

    .line 248
    :cond_d
    :goto_d
    iput p1, p0, Lcom/motorola/android/internal/widget/Overlay;->mAlpha:F

    .line 249
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 250
    if-eqz p2, :cond_6

    iget-boolean v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mShown:Z

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mUpdateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 246
    :cond_21
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 247
    const/high16 p1, 0x3f80

    goto :goto_d
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mAlpha:F

    return v0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return v0
.end method

.method handleHide()V
    .registers 3

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mShown:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mView:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 129
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mShown:Z

    .line 132
    :cond_1a
    return-void
.end method

.method handleShow()V
    .registers 4

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mShown:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mView:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 110
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 111
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 112
    :cond_17
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mShown:Z

    .line 115
    :cond_23
    return-void
.end method

.method handleUpdateView()V
    .registers 4

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mShown:Z

    if-eqz v0, :cond_d

    .line 168
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    :cond_d
    return-void
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method move(IIZ)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "update"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v0, p2, :cond_d

    .line 164
    :cond_c
    :goto_c
    return-void

    .line 159
    :cond_d
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 160
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 161
    if-eqz p3, :cond_c

    iget-boolean v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mShown:Z

    if-eqz v0, :cond_c

    .line 162
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mUpdateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method resize(IIZ)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "update"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, p2, :cond_d

    .line 212
    :cond_c
    :goto_c
    return-void

    .line 207
    :cond_d
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 208
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 209
    if-eqz p3, :cond_c

    iget-boolean v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mShown:Z

    if-eqz v0, :cond_c

    .line 210
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mUpdateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method public setAlpha(F)V
    .registers 3
    .parameter "a"

    .prologue
    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/widget/Overlay;->setAlpha(FZ)V

    .line 237
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "anim"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mAnimLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    if-eqz p1, :cond_e

    :try_start_5
    invoke-virtual {p1}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 273
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 275
    :cond_e
    iput-object p1, p0, Lcom/motorola/android/internal/widget/Overlay;->mAnimation:Landroid/view/animation/Animation;

    .line 276
    monitor-exit v0

    .line 277
    return-void

    .line 276
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setPosition(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 151
    iput p1, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigX:I

    .line 152
    iput p2, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigY:I

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/android/internal/widget/Overlay;->move(IIZ)V

    .line 154
    return-void
.end method

.method public setSize(II)V
    .registers 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 199
    iput p1, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigWidth:I

    .line 200
    iput p2, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigHeight:I

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/android/internal/widget/Overlay;->resize(IIZ)V

    .line 202
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mAnimLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    iput-object p1, p0, Lcom/motorola/android/internal/widget/Overlay;->mView:Landroid/view/View;

    .line 84
    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 85
    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigHeight:I

    iput v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mOrigWidth:I

    .line 87
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public show()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method public startAnimation()V
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay;->mAnimLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mView:Landroid/view/View;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_d

    .line 292
    :cond_b
    monitor-exit v0

    .line 296
    :goto_c
    return-void

    .line 293
    :cond_d
    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 294
    iget-object v1, p0, Lcom/motorola/android/internal/widget/Overlay;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/android/internal/widget/Overlay;->mAnimate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    monitor-exit v0

    goto :goto_c

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

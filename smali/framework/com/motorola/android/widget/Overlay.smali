.class public Lcom/motorola/android/widget/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"


# static fields
.field static final ANIMATE_FRAME_DURATION:I = 0x21

.field private static final TAG:Ljava/lang/String; = "Overlay"


# instance fields
.field dst:[F

.field dst2:[F

.field mAlpha:F

.field mAnimLock:Ljava/lang/Object;

.field mAnimate:Ljava/lang/Runnable;

.field mAnimation:Landroid/view/animation/Animation;

.field mContext:Landroid/content/Context;

.field mDpyHeight:I

.field mDpyWidth:I

.field mHandler:Landroid/os/Handler;

.field mHide:Ljava/lang/Runnable;

.field mOrigHeight:I

.field mOrigWidth:I

.field mOrigX:I

.field mOrigY:I

.field mParams:Landroid/view/WindowManager$LayoutParams;

.field mShow:Ljava/lang/Runnable;

.field mShown:Z

.field mTransformation:Landroid/view/animation/Transformation;

.field mUpdateView:Ljava/lang/Runnable;

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManagerImpl;

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
    iput v1, p0, Lcom/motorola/android/widget/Overlay;->mOrigX:I

    iput v1, p0, Lcom/motorola/android/widget/Overlay;->mOrigY:I

    .line 39
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/widget/Overlay;->mTransformation:Landroid/view/animation/Transformation;

    .line 42
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 44
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/widget/Overlay;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/widget/Overlay;->mAnimLock:Ljava/lang/Object;

    .line 285
    new-instance v1, Lcom/motorola/android/widget/Overlay$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/widget/Overlay$1;-><init>(Lcom/motorola/android/widget/Overlay;)V

    iput-object v1, p0, Lcom/motorola/android/widget/Overlay;->mShow:Ljava/lang/Runnable;

    .line 291
    new-instance v1, Lcom/motorola/android/widget/Overlay$2;

    invoke-direct {v1, p0}, Lcom/motorola/android/widget/Overlay$2;-><init>(Lcom/motorola/android/widget/Overlay;)V

    iput-object v1, p0, Lcom/motorola/android/widget/Overlay;->mHide:Ljava/lang/Runnable;

    .line 297
    new-instance v1, Lcom/motorola/android/widget/Overlay$3;

    invoke-direct {v1, p0}, Lcom/motorola/android/widget/Overlay$3;-><init>(Lcom/motorola/android/widget/Overlay;)V

    iput-object v1, p0, Lcom/motorola/android/widget/Overlay;->mUpdateView:Ljava/lang/Runnable;

    .line 304
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/motorola/android/widget/Overlay;->src:[F

    .line 305
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/motorola/android/widget/Overlay;->dst:[F

    .line 306
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/motorola/android/widget/Overlay;->dst2:[F

    .line 308
    new-instance v1, Lcom/motorola/android/widget/Overlay$4;

    invoke-direct {v1, p0}, Lcom/motorola/android/widget/Overlay$4;-><init>(Lcom/motorola/android/widget/Overlay;)V

    iput-object v1, p0, Lcom/motorola/android/widget/Overlay;->mAnimate:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/motorola/android/widget/Overlay;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    .line 57
    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x298

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 61
    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 62
    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 64
    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 65
    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "Overlay"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    invoke-virtual {v1}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 68
    .local v0, dpy:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/motorola/android/widget/Overlay;->mDpyWidth:I

    .line 69
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/motorola/android/widget/Overlay;->mDpyHeight:I

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/widget/Overlay;FZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/widget/Overlay;->setAlpha(FZ)V

    return-void
.end method

.method private setAlpha(FZ)V
    .registers 5
    .parameter "a"
    .parameter "update"

    .prologue
    .line 231
    iget v0, p0, Lcom/motorola/android/widget/Overlay;->mAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    .line 239
    :cond_6
    :goto_6
    return-void

    .line 234
    :cond_7
    iput p1, p0, Lcom/motorola/android/widget/Overlay;->mAlpha:F

    .line 235
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 236
    if-eqz p2, :cond_6

    iget-boolean v0, p0, Lcom/motorola/android/widget/Overlay;->mShown:Z

    if-eqz v0, :cond_6

    .line 237
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mUpdateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Lcom/motorola/android/widget/Overlay;->mAlpha:F

    return v0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return v0
.end method

.method handleHide()V
    .registers 3

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/motorola/android/widget/Overlay;->mShown:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 125
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/widget/Overlay;->mShown:Z

    .line 128
    :cond_1a
    return-void
.end method

.method handleShow()V
    .registers 4

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/motorola/android/widget/Overlay;->mShown:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 106
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 107
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 108
    :cond_17
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/widget/Overlay;->mShown:Z

    .line 111
    :cond_23
    return-void
.end method

.method handleUpdateView()V
    .registers 4

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/motorola/android/widget/Overlay;->mShown:Z

    if-eqz v0, :cond_d

    .line 162
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    :cond_d
    return-void
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method

.method move(IIZ)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "update"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v0, p2, :cond_d

    .line 158
    :cond_c
    :goto_c
    return-void

    .line 153
    :cond_d
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 154
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 155
    if-eqz p3, :cond_c

    iget-boolean v0, p0, Lcom/motorola/android/widget/Overlay;->mShown:Z

    if-eqz v0, :cond_c

    .line 156
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mUpdateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method resize(IIZ)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "update"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, p2, :cond_d

    .line 204
    :cond_c
    :goto_c
    return-void

    .line 199
    :cond_d
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 200
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 201
    if-eqz p3, :cond_c

    iget-boolean v0, p0, Lcom/motorola/android/widget/Overlay;->mShown:Z

    if-eqz v0, :cond_c

    .line 202
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mUpdateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method public setAlpha(F)V
    .registers 3
    .parameter "a"

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/widget/Overlay;->setAlpha(FZ)V

    .line 228
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "anim"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mAnimLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    if-eqz p1, :cond_e

    :try_start_5
    invoke-virtual {p1}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 260
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 262
    :cond_e
    iput-object p1, p0, Lcom/motorola/android/widget/Overlay;->mAnimation:Landroid/view/animation/Animation;

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
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
    .line 145
    iput p1, p0, Lcom/motorola/android/widget/Overlay;->mOrigX:I

    .line 146
    iput p2, p0, Lcom/motorola/android/widget/Overlay;->mOrigY:I

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/android/widget/Overlay;->move(IIZ)V

    .line 148
    return-void
.end method

.method public setSize(II)V
    .registers 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 191
    iput p1, p0, Lcom/motorola/android/widget/Overlay;->mOrigWidth:I

    .line 192
    iput p2, p0, Lcom/motorola/android/widget/Overlay;->mOrigHeight:I

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/android/widget/Overlay;->resize(IIZ)V

    .line 194
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mAnimLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    iput-object p1, p0, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    .line 80
    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 81
    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/android/widget/Overlay;->mOrigHeight:I

    iput v1, p0, Lcom/motorola/android/widget/Overlay;->mOrigWidth:I

    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 83
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
    .line 98
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public startAnimation()V
    .registers 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/motorola/android/widget/Overlay;->mAnimLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mView:Landroid/view/View;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_d

    .line 279
    :cond_b
    monitor-exit v0

    .line 283
    :goto_c
    return-void

    .line 280
    :cond_d
    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 281
    iget-object v1, p0, Lcom/motorola/android/widget/Overlay;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/android/widget/Overlay;->mAnimate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    monitor-exit v0

    goto :goto_c

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

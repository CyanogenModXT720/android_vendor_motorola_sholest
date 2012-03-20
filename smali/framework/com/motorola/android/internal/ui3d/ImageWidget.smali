.class public Lcom/motorola/android/internal/ui3d/ImageWidget;
.super Lcom/motorola/android/internal/ui3d/Widget;
.source "ImageWidget.java"


# static fields
.field static final ALPHA_NORMAL:I = 0xd7

.field static final ALPHA_TOUCHED:I = 0xff


# instance fields
.field alpha:I

.field img:Landroid/graphics/Bitmap;

.field isTouched:Z

.field p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "image"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/Widget;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->p:Landroid/graphics/Paint;

    .line 36
    const/16 v0, 0xd7

    iput v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->alpha:I

    .line 39
    iput-boolean v2, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->isTouched:Z

    .line 46
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->img:Landroid/graphics/Bitmap;

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/ui3d/ImageWidget;->setDimensions(II)V

    .line 51
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    instance-of v0, v0, Lcom/motorola/android/internal/ui3d/World3DSkia;

    if-eqz v0, :cond_3a

    .line 52
    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/ui3d/ImageWidget;->setCacheEnabled(Z)V

    .line 59
    :goto_28
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 62
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->p:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 63
    return-void

    .line 54
    :cond_3a
    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/ui3d/ImageWidget;->setCacheEnabled(Z)V

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/ui3d/ImageWidget;->setAlphaEnabled(Z)V

    goto :goto_28
.end method


# virtual methods
.method protected animate(J)V
    .registers 5
    .parameter "t"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/motorola/android/internal/ui3d/Widget;->animate(J)V

    .line 81
    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->isTouched:Z

    if-eqz v0, :cond_17

    .line 83
    iget v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->alpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_16

    .line 84
    iget v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->alpha:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->alpha:I

    .line 85
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/ImageWidget;->invalidate()V

    .line 94
    :cond_16
    :goto_16
    return-void

    .line 89
    :cond_17
    iget v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->alpha:I

    const/16 v1, 0xd7

    if-le v0, v1, :cond_16

    .line 90
    iget v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->alpha:I

    const/16 v1, 0xa

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->alpha:I

    .line 91
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/ImageWidget;->invalidate()V

    goto :goto_16
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 71
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->img:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 72
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 116
    :goto_8
    :pswitch_8
    return v1

    .line 102
    :pswitch_9
    iput-boolean v1, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->isTouched:Z

    .line 104
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/ImageWidget;->invalidate()V

    goto :goto_8

    .line 110
    :pswitch_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/ImageWidget;->isTouched:Z

    .line 112
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/ImageWidget;->invalidate()V

    goto :goto_8

    .line 99
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_f
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method

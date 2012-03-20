.class public Lcom/motorola/android/internal/ui3d/WidgetGroup;
.super Lcom/motorola/android/internal/ui3d/Widget;
.source "WidgetGroup.java"


# static fields
.field private static final WIDGET_LIST_DEFAULT_SIZE:I = 0xa

.field private static final WIDGET_LIST_EXPAND_SIZE:I = 0x5


# instance fields
.field private widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

.field private widgetListCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/Widget;-><init>()V

    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/motorola/android/internal/ui3d/Widget;

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    return-void
.end method


# virtual methods
.method public addWidget(Lcom/motorola/android/internal/ui3d/Widget;)V
    .registers 3
    .parameter "widget"

    .prologue
    .line 46
    iget v0, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    invoke-virtual {p0, p1, v0}, Lcom/motorola/android/internal/ui3d/WidgetGroup;->addWidget(Lcom/motorola/android/internal/ui3d/Widget;I)V

    .line 47
    return-void
.end method

.method public addWidget(Lcom/motorola/android/internal/ui3d/Widget;I)V
    .registers 7
    .parameter "widget"
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v1, p1, Lcom/motorola/android/internal/ui3d/Widget;->parent:Lcom/motorola/android/internal/ui3d/WidgetGroup;

    if-eqz v1, :cond_d

    .line 65
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add a widget more than once"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_d
    iget v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    array-length v2, v2

    if-ne v1, v2, :cond_23

    .line 73
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    .line 75
    .local v0, oldList:[Lcom/motorola/android/internal/ui3d/Widget;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x5

    new-array v1, v1, [Lcom/motorola/android/internal/ui3d/Widget;

    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    .line 77
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    .end local v0           #oldList:[Lcom/motorola/android/internal/ui3d/Widget;
    :cond_23
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    iget v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    aput-object p1, v1, v2

    .line 84
    iput-object p0, p1, Lcom/motorola/android/internal/ui3d/Widget;->parent:Lcom/motorola/android/internal/ui3d/WidgetGroup;

    .line 88
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->world:Lcom/motorola/android/internal/ui3d/World3D;

    if-eqz v1, :cond_38

    .line 89
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->world:Lcom/motorola/android/internal/ui3d/World3D;

    invoke-virtual {p1, v1}, Lcom/motorola/android/internal/ui3d/Widget;->setWorld(Lcom/motorola/android/internal/ui3d/World3D;)V

    .line 92
    :cond_38
    invoke-virtual {p1}, Lcom/motorola/android/internal/ui3d/Widget;->invalidateTransform()V

    .line 93
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/WidgetGroup;->notifyLocationChanged()V

    .line 95
    return-void
.end method

.method protected animate(J)V
    .registers 6
    .parameter "time"

    .prologue
    .line 243
    iget v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, n:I
    :goto_5
    if-ltz v0, :cond_11

    .line 244
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/motorola/android/internal/ui3d/Widget;->animate(J)V

    .line 243
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 246
    :cond_11
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    if-eqz v1, :cond_1a

    .line 247
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    invoke-interface {v1, p1, p2}, Lcom/motorola/android/internal/ui3d/Locatable;->animate(J)V

    .line 249
    :cond_1a
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    return v0
.end method

.method public getWidget(I)Lcom/motorola/android/internal/ui3d/Widget;
    .registers 4
    .parameter "i"

    .prologue
    .line 160
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    if-lt p1, v0, :cond_e

    .line 161
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid widget index"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_e
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v0, v0, p1

    return-object v0
.end method

.method invalidateTransform()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 196
    iput-boolean v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->transformStale:Z

    .line 197
    iget v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    sub-int v0, v1, v2

    .local v0, n:I
    :goto_7
    if-ltz v0, :cond_13

    .line 198
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/motorola/android/internal/ui3d/Widget;->invalidateTransform()V

    .line 197
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 200
    :cond_13
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 253
    return-void
.end method

.method public removeAllWidgets()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    if-ge v0, v2, :cond_1c

    .line 132
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v1, v2, v0

    .line 133
    .local v1, w:Lcom/motorola/android/internal/ui3d/Widget;
    if-eqz v1, :cond_19

    .line 134
    iput-object v3, v1, Lcom/motorola/android/internal/ui3d/Widget;->parent:Lcom/motorola/android/internal/ui3d/WidgetGroup;

    .line 135
    iget-object v2, v1, Lcom/motorola/android/internal/ui3d/Widget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    if-eqz v2, :cond_15

    .line 136
    invoke-virtual {v1, v3}, Lcom/motorola/android/internal/ui3d/Widget;->setWorld(Lcom/motorola/android/internal/ui3d/World3D;)V

    .line 138
    :cond_15
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    aput-object v3, v2, v0

    .line 131
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 141
    .end local v1           #w:Lcom/motorola/android/internal/ui3d/Widget;
    :cond_1c
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    .line 142
    return-void
.end method

.method public removeWidget(Lcom/motorola/android/internal/ui3d/Widget;)V
    .registers 9
    .parameter "widget"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 105
    iget v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    sub-int v0, v2, v5

    .local v0, n:I
    :goto_6
    if-ltz v0, :cond_30

    .line 106
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_31

    .line 108
    iget v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    sub-int/2addr v2, v5

    sub-int v1, v2, v0

    .line 109
    .local v1, numberToShift:I
    if-lez v1, :cond_1e

    .line 111
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    invoke-static {v2, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :cond_1e
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    iget v3, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    aput-object v6, v2, v3

    .line 117
    iput-object v6, p1, Lcom/motorola/android/internal/ui3d/Widget;->parent:Lcom/motorola/android/internal/ui3d/WidgetGroup;

    .line 120
    iget-object v2, p1, Lcom/motorola/android/internal/ui3d/Widget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    if-eqz v2, :cond_30

    .line 121
    invoke-virtual {p1, v6}, Lcom/motorola/android/internal/ui3d/Widget;->setWorld(Lcom/motorola/android/internal/ui3d/World3D;)V

    .line 126
    .end local v1           #numberToShift:I
    :cond_30
    return-void

    .line 105
    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method public setVisible(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->visible:Z

    .line 174
    iget v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, n:I
    :goto_7
    if-ltz v0, :cond_13

    .line 175
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/ui3d/Widget;->setVisible(Z)V

    .line 174
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 177
    :cond_13
    return-void
.end method

.method setWorld(Lcom/motorola/android/internal/ui3d/World3D;)V
    .registers 5
    .parameter "world"

    .prologue
    .line 185
    iget v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, n:I
    :goto_5
    if-ltz v0, :cond_11

    .line 186
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/ui3d/Widget;->setWorld(Lcom/motorola/android/internal/ui3d/World3D;)V

    .line 185
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 188
    :cond_11
    invoke-super {p0, p1}, Lcom/motorola/android/internal/ui3d/Widget;->setWorld(Lcom/motorola/android/internal/ui3d/World3D;)V

    .line 189
    return-void
.end method

.method updateTransform(Lcom/motorola/android/internal/ui3d/CameraTransformable;)V
    .registers 7
    .parameter "cam"

    .prologue
    .line 209
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    if-eqz v2, :cond_2a

    .line 211
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->locatable:Lcom/motorola/android/internal/ui3d/Locatable;

    invoke-interface {v2, p1}, Lcom/motorola/android/internal/ui3d/Locatable;->applyToTransformable(Lcom/motorola/android/internal/ui3d/Transformable;)V

    .line 213
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Lcom/motorola/android/internal/ui3d/CameraTransformable;->getMatrix(Landroid/graphics/Matrix;)V

    .line 216
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->transform:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->world:Lcom/motorola/android/internal/ui3d/World3D;

    iget v3, v3, Lcom/motorola/android/internal/ui3d/World3D;->cameraX:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->world:Lcom/motorola/android/internal/ui3d/World3D;

    iget v4, v4, Lcom/motorola/android/internal/ui3d/World3D;->cameraY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 220
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->transform:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->alignmentPointX:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->alignmentPointY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 224
    :cond_2a
    iget v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetListCount:I

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, n:I
    :goto_2f
    if-ltz v1, :cond_45

    .line 225
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->widgetList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v0, v2, v1

    .line 226
    .local v0, child:Lcom/motorola/android/internal/ui3d/Widget;
    iget-boolean v2, v0, Lcom/motorola/android/internal/ui3d/Widget;->transformStale:Z

    if-eqz v2, :cond_42

    .line 227
    invoke-virtual {p1}, Lcom/motorola/android/internal/ui3d/CameraTransformable;->save()V

    .line 228
    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/ui3d/Widget;->updateTransform(Lcom/motorola/android/internal/ui3d/CameraTransformable;)V

    .line 229
    invoke-virtual {p1}, Lcom/motorola/android/internal/ui3d/CameraTransformable;->restore()V

    .line 224
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    .line 233
    .end local v0           #child:Lcom/motorola/android/internal/ui3d/Widget;
    :cond_45
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/android/internal/ui3d/WidgetGroup;->transformStale:Z

    .line 235
    return-void
.end method

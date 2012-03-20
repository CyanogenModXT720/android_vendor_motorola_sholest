.class public abstract Lcom/motorola/android/internal/ui3d/World3D;
.super Landroid/view/View;
.source "World3D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/ui3d/World3D$World3DListener;
    }
.end annotation


# static fields
.field protected static final WIDGET_LIST_DEFAULT_SIZE:I = 0x28

.field protected static final WIDGET_LIST_EXPAND_SIZE:I = 0x14

.field public static defaultToOpenGL:Z


# instance fields
.field cameraX:I

.field cameraY:I

.field protected listener:Lcom/motorola/android/internal/ui3d/World3D$World3DListener;

.field protected mView:Landroid/view/View;

.field private mainWidget:Lcom/motorola/android/internal/ui3d/Widget;

.field protected renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

.field protected renderableListCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/android/internal/ui3d/World3D;->defaultToOpenGL:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    const/16 v0, 0x28

    new-array v0, v0, [Lcom/motorola/android/internal/ui3d/Widget;

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    .line 48
    iput v1, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableListCount:I

    .line 85
    iput v1, p0, Lcom/motorola/android/internal/ui3d/World3D;->cameraX:I

    .line 90
    iput v1, p0, Lcom/motorola/android/internal/ui3d/World3D;->cameraY:I

    .line 97
    return-void
.end method

.method public static createWorld3D(Landroid/content/Context;)Lcom/motorola/android/internal/ui3d/World3D;
    .registers 2
    .parameter "c"

    .prologue
    .line 59
    sget-boolean v0, Lcom/motorola/android/internal/ui3d/World3D;->defaultToOpenGL:Z

    invoke-static {p0, v0}, Lcom/motorola/android/internal/ui3d/World3D;->createWorld3D(Landroid/content/Context;Z)Lcom/motorola/android/internal/ui3d/World3D;

    move-result-object v0

    return-object v0
.end method

.method public static createWorld3D(Landroid/content/Context;Z)Lcom/motorola/android/internal/ui3d/World3D;
    .registers 3
    .parameter "c"
    .parameter "useOpenGL"

    .prologue
    .line 70
    if-eqz p1, :cond_8

    .line 71
    new-instance v0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;-><init>(Landroid/content/Context;)V

    .line 73
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/motorola/android/internal/ui3d/World3DSkia;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/ui3d/World3DSkia;-><init>(Landroid/content/Context;)V

    goto :goto_7
.end method


# virtual methods
.method protected addRenderable(Lcom/motorola/android/internal/ui3d/Widget;)V
    .registers 6
    .parameter "w"

    .prologue
    const/4 v3, 0x0

    .line 139
    iget v1, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableListCount:I

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    array-length v2, v2

    if-ne v1, v2, :cond_17

    .line 142
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    .line 144
    .local v0, oldList:[Lcom/motorola/android/internal/ui3d/Widget;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x14

    new-array v1, v1, [Lcom/motorola/android/internal/ui3d/Widget;

    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    .line 146
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    .end local v0           #oldList:[Lcom/motorola/android/internal/ui3d/Widget;
    :cond_17
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    iget v2, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableListCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableListCount:I

    aput-object p1, v1, v2

    .line 150
    return-void
.end method

.method public clearCamera2DPosition()V
    .registers 1

    .prologue
    .line 215
    return-void
.end method

.method public enableStickyTouchMode(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 228
    return-void
.end method

.method public getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3D;->mainWidget:Lcom/motorola/android/internal/ui3d/Widget;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3D;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWidgetAt(II)Lcom/motorola/android/internal/ui3d/Widget;
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate_r(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "dirty"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/ui3d/World3D;->invalidate(Landroid/graphics/Rect;)V

    .line 195
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 179
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public refreshTransforms()V
    .registers 1

    .prologue
    .line 264
    return-void
.end method

.method protected removeRenderable(Lcom/motorola/android/internal/ui3d/Widget;)V
    .registers 8
    .parameter "w"

    .prologue
    const/4 v5, 0x1

    .line 158
    iget v2, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableListCount:I

    sub-int v0, v2, v5

    .local v0, n:I
    :goto_5
    if-ltz v0, :cond_2a

    .line 159
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_27

    .line 161
    iget v2, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableListCount:I

    sub-int/2addr v2, v5

    sub-int v1, v2, v0

    .line 162
    .local v1, numberToShift:I
    if-lez v1, :cond_1d

    .line 164
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    invoke-static {v2, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    :cond_1d
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableList:[Lcom/motorola/android/internal/ui3d/Widget;

    iget v3, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableListCount:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/motorola/android/internal/ui3d/World3D;->renderableListCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 158
    .end local v1           #numberToShift:I
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 170
    :cond_2a
    return-void
.end method

.method public setCamera2DPosition(II)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 206
    return-void
.end method

.method public setMainWidget(Lcom/motorola/android/internal/ui3d/Widget;)V
    .registers 4
    .parameter "widget"

    .prologue
    .line 113
    iget-object v0, p1, Lcom/motorola/android/internal/ui3d/Widget;->world:Lcom/motorola/android/internal/ui3d/World3D;

    if-eqz v0, :cond_c

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add a widget to more than one world"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_c
    iget-object v0, p1, Lcom/motorola/android/internal/ui3d/Widget;->parent:Lcom/motorola/android/internal/ui3d/WidgetGroup;

    if-eqz v0, :cond_18

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Main widget cannot have an existing parent widget"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_18
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/World3D;->mainWidget:Lcom/motorola/android/internal/ui3d/Widget;

    .line 121
    invoke-virtual {p1, p0}, Lcom/motorola/android/internal/ui3d/Widget;->setWorld(Lcom/motorola/android/internal/ui3d/World3D;)V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/motorola/android/internal/ui3d/Widget;->transformStale:Z

    .line 123
    return-void
.end method

.method public setWorld3DListener(Lcom/motorola/android/internal/ui3d/World3D$World3DListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/World3D;->listener:Lcom/motorola/android/internal/ui3d/World3D$World3DListener;

    .line 268
    return-void
.end method

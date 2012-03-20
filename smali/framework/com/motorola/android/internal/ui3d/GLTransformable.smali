.class Lcom/motorola/android/internal/ui3d/GLTransformable;
.super Ljava/lang/Object;
.source "World3DOpenGLRenderer.java"

# interfaces
.implements Lcom/motorola/android/internal/ui3d/Transformable;


# instance fields
.field gl:Ljavax/microedition/khronos/opengles/GL10;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 2
    .parameter "gl"

    .prologue
    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/GLTransformable;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 931
    return-void
.end method


# virtual methods
.method public getAlpha(F)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 966
    return-void
.end method

.method public rotateX(F)V
    .registers 5
    .parameter "degrees"

    .prologue
    const/4 v2, 0x0

    .line 942
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/GLTransformable;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v1, 0x3f80

    invoke-interface {v0, p1, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 943
    return-void
.end method

.method public rotateY(F)V
    .registers 6
    .parameter "degrees"

    .prologue
    const/4 v3, 0x0

    .line 949
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/GLTransformable;->gl:Ljavax/microedition/khronos/opengles/GL10;

    neg-float v1, p1

    const/high16 v2, 0x3f80

    invoke-interface {v0, v1, v3, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 950
    return-void
.end method

.method public rotateZ(F)V
    .registers 5
    .parameter "degrees"

    .prologue
    const/4 v2, 0x0

    .line 957
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/GLTransformable;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v1, 0x3f80

    invoke-interface {v0, p1, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 958
    return-void
.end method

.method public setAlpha(F)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 962
    return-void
.end method

.method public translate(FFF)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 934
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/GLTransformable;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 935
    return-void
.end method

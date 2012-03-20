.class Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;
.super Ljava/lang/Object;
.source "World3DOpenGLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;
    }
.end annotation


# static fields
.field private static final NPOT_EXTENSION:Z = false

.field private static final TEX_MAP_SIZE:I = 0x1e


# instance fields
.field private DIVS:I

.field private final DRAW_REFLECTION:Z

.field private final LIGHT_OFFSETX:F

.field private final LIGHT_OFFSETY:F

.field private final LIGHT_OFFSETZ:F

.field private final NormalViewingDistance:F

.field private final PROFILING:Z

.field private final TAG:Ljava/lang/String;

.field private final VERBOSE:Z

.field a:[F

.field private anAry:[F

.field b:[F

.field bnBasis1:[F

.field bnBasis2:[F

.field bnBasis3:[F

.field bnBasis4:[F

.field c:[F

.field curDivs:I

.field d:[F

.field fCount:I

.field private glTrans:Lcom/motorola/android/internal/ui3d/GLTransformable;

.field private lastAry:[F

.field lastTs:J

.field private lightAmbient:[F

.field private lightDiffuse:[F

.field private lightPos:[F

.field private lightSpecular:[F

.field private mTranslucentBackground:Z

.field msCount:J

.field private nArray:[F

.field private pta:[F

.field private ptb:Ljava/nio/FloatBuffer;

.field private pva:[F

.field private pvb:Ljava/nio/FloatBuffer;

.field t1:[F

.field t2:[F

.field private tArray:[F

.field private texCoords:Ljava/nio/FloatBuffer;

.field texMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/motorola/android/internal/ui3d/Widget;",
            "Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;",
            ">;"
        }
    .end annotation
.end field

.field private tmpAry:[F

.field private useLighting:Z

.field private vArray:[F

.field private vertices:Ljava/nio/FloatBuffer;

.field private winH:I

.field private winW:I

.field private world:Lcom/motorola/android/internal/ui3d/World3DOpenGL;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/ui3d/World3DOpenGL;Z)V
    .registers 9
    .parameter "wv"
    .parameter "useTranslucentBackground"

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0xc

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->VERBOSE:Z

    .line 36
    iput-boolean v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->PROFILING:Z

    .line 37
    iput-boolean v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->DRAW_REFLECTION:Z

    .line 38
    const-string v0, "World3DOpenGLRenderer"

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->TAG:Ljava/lang/String;

    .line 49
    const/high16 v0, 0x4410

    iput v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->NormalViewingDistance:F

    .line 52
    iput-boolean v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->useLighting:Z

    .line 53
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lightPos:[F

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->LIGHT_OFFSETX:F

    .line 55
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->LIGHT_OFFSETY:F

    .line 56
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->LIGHT_OFFSETZ:F

    .line 57
    new-array v0, v1, [F

    fill-array-data v0, :array_86

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lightSpecular:[F

    .line 58
    new-array v0, v1, [F

    fill-array-data v0, :array_92

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lightAmbient:[F

    .line 59
    new-array v0, v1, [F

    fill-array-data v0, :array_9e

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lightDiffuse:[F

    .line 60
    invoke-static {v4}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vertices:Ljava/nio/FloatBuffer;

    .line 62
    invoke-static {v5}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->texCoords:Ljava/nio/FloatBuffer;

    .line 63
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    .line 64
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->nArray:[F

    .line 65
    new-array v0, v5, [F

    fill-array-data v0, :array_aa

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tArray:[F

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->msCount:J

    .line 125
    iput v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->fCount:I

    .line 126
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lastTs:J

    .line 494
    iput v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->DIVS:I

    .line 639
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->a:[F

    .line 640
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->b:[F

    .line 641
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->c:[F

    .line 642
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->d:[F

    .line 643
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->t1:[F

    .line 644
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->t2:[F

    .line 650
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->curDivs:I

    .line 69
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->world:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    .line 70
    iput-boolean p2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->mTranslucentBackground:Z

    .line 71
    return-void

    .line 57
    nop

    :array_86
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 58
    :array_92
    .array-data 0x4
        0x33t 0x33t 0x33t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 59
    :array_9e
    .array-data 0x4
        0x33t 0x33t 0x33t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 65
    :array_aa
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private drawRect(Ljavax/microedition/khronos/opengles/GL10;FF)V
    .registers 13
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 853
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 854
    .local v1, vb:Ljava/nio/FloatBuffer;
    const/16 v2, 0xc

    new-array v0, v2, [F

    neg-float v2, p2

    aput v2, v0, v5

    const/4 v2, 0x1

    neg-float v3, p3

    aput v3, v0, v2

    const/4 v2, 0x2

    aput v4, v0, v2

    aput p2, v0, v6

    neg-float v2, p3

    aput v2, v0, v7

    aput v4, v0, v8

    const/4 v2, 0x6

    neg-float v3, p2

    aput v3, v0, v2

    const/4 v2, 0x7

    aput p3, v0, v2

    const/16 v2, 0x8

    aput v4, v0, v2

    const/16 v2, 0x9

    aput p2, v0, v2

    const/16 v2, 0xa

    aput p3, v0, v2

    const/16 v2, 0xb

    aput v4, v0, v2

    .line 856
    .local v0, v:[F
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 857
    const v2, 0x8074

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 858
    const v2, 0x8078

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 859
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 860
    const/16 v2, 0x1406

    invoke-interface {p1, v6, v2, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 861
    invoke-interface {p1, v8, v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 862
    return-void
.end method

.method private drawRectH(Ljavax/microedition/khronos/opengles/GL10;FF)V
    .registers 13
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 865
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 866
    .local v1, vb:Ljava/nio/FloatBuffer;
    const/16 v2, 0xc

    new-array v0, v2, [F

    neg-float v2, p2

    aput v2, v0, v5

    const/4 v2, 0x1

    aput v4, v0, v2

    const/4 v2, 0x2

    aput p3, v0, v2

    aput p2, v0, v6

    aput v4, v0, v7

    aput p3, v0, v8

    const/4 v2, 0x6

    neg-float v3, p2

    aput v3, v0, v2

    const/4 v2, 0x7

    aput v4, v0, v2

    const/16 v2, 0x8

    neg-float v3, p3

    aput v3, v0, v2

    const/16 v2, 0x9

    aput p2, v0, v2

    const/16 v2, 0xa

    aput v4, v0, v2

    const/16 v2, 0xb

    neg-float v3, p3

    aput v3, v0, v2

    .line 868
    .local v0, v:[F
    const v2, 0x8074

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 869
    const v2, 0x8078

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 870
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 871
    const/16 v2, 0x1406

    invoke-interface {p1, v6, v2, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 872
    invoke-interface {p1, v8, v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 873
    return-void
.end method

.method private drawTexturedRect(Ljavax/microedition/khronos/opengles/GL10;FFI)V
    .registers 16
    .parameter "gl"
    .parameter "w"
    .parameter "h"
    .parameter "texId"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 877
    const/16 v4, 0xc

    invoke-static {v4}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 878
    .local v3, vb:Ljava/nio/FloatBuffer;
    const/16 v4, 0xc

    new-array v2, v4, [F

    neg-float v4, p2

    aput v4, v2, v7

    const/4 v4, 0x1

    neg-float v5, p3

    aput v5, v2, v4

    aput v6, v2, v9

    aput p2, v2, v10

    const/4 v4, 0x4

    neg-float v5, p3

    aput v5, v2, v4

    const/4 v4, 0x5

    aput v6, v2, v4

    const/4 v4, 0x6

    neg-float v5, p2

    aput v5, v2, v4

    const/4 v4, 0x7

    aput p3, v2, v4

    aput v6, v2, v8

    const/16 v4, 0x9

    aput p2, v2, v4

    const/16 v4, 0xa

    aput p3, v2, v4

    const/16 v4, 0xb

    aput v6, v2, v4

    .line 880
    .local v2, v:[F
    invoke-static {v8}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 881
    .local v1, tb:Ljava/nio/FloatBuffer;
    new-array v0, v8, [F

    fill-array-data v0, :array_78

    .line 882
    .local v0, t:[F
    const/16 v4, 0xde1

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 883
    const/16 v4, 0x901

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 884
    const/16 v4, 0xde1

    invoke-interface {p1, v4, p4}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 885
    const v4, 0x84c0

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 886
    const v4, 0x8074

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 887
    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 888
    const/16 v4, 0x1406

    invoke-interface {p1, v10, v4, v7, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 889
    const v4, 0x8078

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 890
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 891
    const/16 v4, 0x1406

    invoke-interface {p1, v9, v4, v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 892
    const/4 v4, 0x5

    const/4 v5, 0x4

    invoke-interface {p1, v4, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 893
    return-void

    .line 881
    nop

    :array_78
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private drawTexturedRectH(Ljavax/microedition/khronos/opengles/GL10;FFI)V
    .registers 16
    .parameter "gl"
    .parameter "w"
    .parameter "h"
    .parameter "texId"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 904
    const/16 v4, 0xc

    invoke-static {v4}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 905
    .local v3, vb:Ljava/nio/FloatBuffer;
    const/16 v4, 0xc

    new-array v2, v4, [F

    neg-float v4, p2

    aput v4, v2, v7

    const/4 v4, 0x1

    aput v6, v2, v4

    aput p3, v2, v9

    aput p2, v2, v10

    const/4 v4, 0x4

    aput v6, v2, v4

    const/4 v4, 0x5

    aput p3, v2, v4

    const/4 v4, 0x6

    neg-float v5, p2

    aput v5, v2, v4

    const/4 v4, 0x7

    aput v6, v2, v4

    neg-float v4, p3

    aput v4, v2, v8

    const/16 v4, 0x9

    aput p2, v2, v4

    const/16 v4, 0xa

    aput v6, v2, v4

    const/16 v4, 0xb

    neg-float v5, p3

    aput v5, v2, v4

    .line 907
    .local v2, v:[F
    invoke-static {v8}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 908
    .local v1, tb:Ljava/nio/FloatBuffer;
    new-array v0, v8, [F

    fill-array-data v0, :array_78

    .line 909
    .local v0, t:[F
    const/16 v4, 0x901

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 910
    const/16 v4, 0xde1

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 911
    const/16 v4, 0xde1

    invoke-interface {p1, v4, p4}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 912
    const v4, 0x84c0

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 913
    const v4, 0x8074

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 914
    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 915
    const/16 v4, 0x1406

    invoke-interface {p1, v10, v4, v7, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 916
    const v4, 0x8078

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 917
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 918
    const/16 v4, 0x1406

    invoke-interface {p1, v9, v4, v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 919
    const/4 v4, 0x5

    const/4 v5, 0x4

    invoke-interface {p1, v4, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 920
    return-void

    .line 908
    nop

    :array_78
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .registers 17
    .parameter "gl"
    .parameter "fovy"
    .parameter "aspect"
    .parameter "zmin"
    .parameter "zmax"

    .prologue
    .line 822
    float-to-double v5, p4

    float-to-double v7, p2

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    const-wide v9, 0x4076800000000000L

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v4, v5

    .line 823
    .local v4, ymax:F
    neg-float v3, v4

    .line 824
    .local v3, ymin:F
    mul-float v1, v3, p3

    .line 825
    .local v1, xmin:F
    mul-float v2, v4, p3

    .local v2, xmax:F
    move-object v0, p1

    move v5, p4

    move/from16 v6, p5

    .line 826
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 830
    return-void
.end method

.method private setOrthographicView(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 14
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 811
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v2, v0

    .line 812
    .local v2, nRange:F
    if-gt p2, p3, :cond_1a

    .line 813
    neg-float v1, v2

    neg-float v0, v2

    int-to-float v3, p3

    mul-float/2addr v0, v3

    int-to-float v3, p2

    div-float v3, v0, v3

    int-to-float v0, p3

    mul-float/2addr v0, v2

    int-to-float v4, p2

    div-float v4, v0, v4

    neg-float v5, v2

    move-object v0, p1

    move v6, v2

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 817
    :goto_19
    return-void

    .line 815
    :cond_1a
    neg-float v0, v2

    int-to-float v1, p2

    mul-float/2addr v0, v1

    int-to-float v1, p3

    div-float v4, v0, v1

    int-to-float v0, p2

    mul-float/2addr v0, v2

    int-to-float v1, p3

    div-float v5, v0, v1

    neg-float v6, v2

    neg-float v8, v2

    move-object v3, p1

    move v7, v2

    move v9, v2

    invoke-interface/range {v3 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    goto :goto_19
.end method

.method private setPerspectiveView(Ljavax/microedition/khronos/opengles/GL10;FF)V
    .registers 10
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 806
    const/high16 v2, 0x4220

    div-float v3, p2, p3

    const/high16 v4, 0x3f80

    const/high16 v5, 0x44fa

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 808
    return-void
.end method


# virtual methods
.method bernstein(I[FI[FI)V
    .registers 16
    .parameter "u"
    .parameter "tmpAry"
    .parameter "off1"
    .parameter "res"
    .parameter "off"

    .prologue
    const/4 v5, 0x0

    .line 673
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bnBasis1:[F

    aget v1, v0, p1

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->a:[F

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pointTimes(F[FI[FI)V

    .line 674
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bnBasis2:[F

    aget v1, v0, p1

    add-int/lit8 v3, p3, 0x3

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->b:[F

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pointTimes(F[FI[FI)V

    .line 675
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bnBasis3:[F

    aget v1, v0, p1

    add-int/lit8 v3, p3, 0x6

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->c:[F

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pointTimes(F[FI[FI)V

    .line 676
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bnBasis4:[F

    aget v1, v0, p1

    add-int/lit8 v3, p3, 0x9

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->d:[F

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pointTimes(F[FI[FI)V

    .line 678
    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->a:[F

    iget-object v6, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->b:[F

    iget-object v8, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->t1:[F

    move-object v3, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v3 .. v9}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pointAdd([FI[FI[FI)V

    .line 679
    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->c:[F

    iget-object v6, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->d:[F

    iget-object v8, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->t2:[F

    move-object v3, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v3 .. v9}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pointAdd([FI[FI[FI)V

    .line 680
    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->t1:[F

    iget-object v6, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->t2:[F

    move-object v3, p0

    move v7, v5

    move-object v8, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pointAdd([FI[FI[FI)V

    .line 681
    return-void
.end method

.method calcNormal(III)V
    .registers 28
    .parameter "i"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p1, 0x3

    add-int/lit8 v22, v22, 0x2

    aget v18, v21, v22

    .line 723
    .local v18, z1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p2, 0x3

    add-int/lit8 v22, v22, 0x2

    aget v19, v21, v22

    .line 724
    .local v19, z2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p3, 0x3

    add-int/lit8 v22, v22, 0x2

    aget v20, v21, v22

    .line 726
    .local v20, z3:F
    cmpl-float v21, v18, v19

    if-nez v21, :cond_55

    cmpl-float v21, v19, v20

    if-nez v21, :cond_55

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->nArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p1, 0x3

    const/16 v23, 0x0

    aput v23, v21, v22

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->nArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p1, 0x3

    add-int/lit8 v22, v22, 0x1

    const/16 v23, 0x0

    aput v23, v21, v22

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->nArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p1, 0x3

    add-int/lit8 v22, v22, 0x2

    const/high16 v23, 0x3f80

    aput v23, v21, v22

    .line 769
    :goto_54
    return-void

    .line 738
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p1, 0x3

    aget v12, v21, v22

    .line 739
    .local v12, x1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p1, 0x3

    add-int/lit8 v22, v22, 0x1

    aget v15, v21, v22

    .line 740
    .local v15, y1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p2, 0x3

    aget v13, v21, v22

    .line 741
    .local v13, x2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p2, 0x3

    add-int/lit8 v22, v22, 0x1

    aget v16, v21, v22

    .line 742
    .local v16, y2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p3, 0x3

    aget v14, v21, v22

    .line 743
    .local v14, x3:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p3, 0x3

    add-int/lit8 v22, v22, 0x1

    aget v17, v21, v22

    .line 746
    .local v17, y3:F
    sub-float v2, v12, v13

    .line 747
    .local v2, a0:F
    sub-float v3, v15, v16

    .line 748
    .local v3, a1:F
    sub-float v4, v18, v19

    .line 751
    .local v4, a2:F
    sub-float v5, v13, v14

    .line 752
    .local v5, b0:F
    sub-float v6, v16, v17

    .line 753
    .local v6, b1:F
    sub-float v7, v19, v20

    .line 756
    .local v7, b2:F
    mul-float v21, v3, v7

    mul-float v22, v4, v6

    sub-float v9, v21, v22

    .line 757
    .local v9, n0:F
    mul-float v21, v4, v5

    mul-float v22, v2, v7

    sub-float v10, v21, v22

    .line 758
    .local v10, n1:F
    mul-float v21, v2, v6

    mul-float v22, v3, v5

    sub-float v11, v21, v22

    .line 760
    .local v11, n2:F
    mul-float v21, v9, v9

    mul-float v22, v10, v10

    add-float v21, v21, v22

    mul-float v22, v11, v11

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move v8, v0

    .line 762
    .local v8, dist:F
    div-float/2addr v9, v8

    .line 763
    div-float/2addr v10, v8

    .line 764
    div-float/2addr v11, v8

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->nArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p1, 0x3

    aput v9, v21, v22

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->nArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p1, 0x3

    add-int/lit8 v22, v22, 0x1

    aput v10, v21, v22

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->nArray:[F

    move-object/from16 v21, v0

    mul-int/lit8 v22, p1, 0x3

    add-int/lit8 v22, v22, 0x2

    aput v11, v21, v22

    goto/16 :goto_54
.end method

.method clz(I)I
    .registers 4
    .parameter "x"

    .prologue
    .line 246
    if-nez p1, :cond_5

    const/16 v1, 0x20

    .line 253
    :goto_4
    return v1

    .line 247
    :cond_5
    const/16 v0, 0x1f

    .line 248
    .local v0, e:I
    const/high16 v1, -0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_10

    add-int/lit8 v0, v0, -0x10

    shr-int/lit8 p1, p1, 0x10

    .line 249
    :cond_10
    const v1, 0xff00

    and-int/2addr v1, p1

    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, -0x8

    shr-int/lit8 p1, p1, 0x8

    .line 250
    :cond_1a
    and-int/lit16 v1, p1, 0xf0

    if-eqz v1, :cond_22

    add-int/lit8 v0, v0, -0x4

    shr-int/lit8 p1, p1, 0x4

    .line 251
    :cond_22
    and-int/lit8 v1, p1, 0xc

    if-eqz v1, :cond_2a

    add-int/lit8 v0, v0, -0x2

    shr-int/lit8 p1, p1, 0x2

    .line 252
    :cond_2a
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_30

    add-int/lit8 v0, v0, -0x1

    :cond_30
    move v1, v0

    .line 253
    goto :goto_4
.end method

.method drawBezier(Ljavax/microedition/khronos/opengles/GL10;[FILcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;)V
    .registers 30
    .parameter "gl"
    .parameter "anAry"
    .parameter "divs"
    .parameter "texture"

    .prologue
    .line 531
    if-eqz p4, :cond_13a

    .line 532
    const/16 v5, 0xde1

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 533
    const/16 v5, 0x901

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 534
    const/16 v5, 0xde1

    move-object/from16 v0, p4

    iget v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->name:I

    move v6, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 535
    const v5, 0x84c0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 536
    const v5, 0x8074

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 537
    const v5, 0x8078

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 541
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->scaled:Z

    move v5, v0

    if-eqz v5, :cond_7d

    .line 542
    const/16 v5, 0x1702

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 543
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 544
    move-object/from16 v0, p4

    iget v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->origWidth:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p4

    iget v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->width:I

    move v6, v0

    int-to-float v6, v6

    div-float v24, v5, v6

    .line 545
    .local v24, tw:F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->origHeight:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p4

    iget v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->height:I

    move v6, v0

    int-to-float v6, v6

    div-float v23, v5, v6

    .line 546
    .local v23, th:F
    const/high16 v5, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v23

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 547
    const/16 v5, 0x1700

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 554
    .end local v23           #th:F
    .end local v24           #tw:F
    :cond_7d
    :goto_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, p2, v7

    aput v7, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, p2, v7

    aput v7, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget v7, p2, v7

    aput v7, v5, v6

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v5, v0

    const/4 v6, 0x3

    const/16 v7, 0xc

    aget v7, p2, v7

    aput v7, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v5, v0

    const/4 v6, 0x4

    const/16 v7, 0xd

    aget v7, p2, v7

    aput v7, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v5, v0

    const/4 v6, 0x5

    const/16 v7, 0xe

    aget v7, p2, v7

    aput v7, v5, v6

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v5, v0

    const/4 v6, 0x6

    const/16 v7, 0x18

    aget v7, p2, v7

    aput v7, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v5, v0

    const/4 v6, 0x7

    const/16 v7, 0x19

    aget v7, p2, v7

    aput v7, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v5, v0

    const/16 v6, 0x8

    const/16 v7, 0x1a

    aget v7, p2, v7

    aput v7, v5, v6

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v5, v0

    const/16 v6, 0x9

    const/16 v7, 0x24

    aget v7, p2, v7

    aput v7, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v5, v0

    const/16 v6, 0xa

    const/16 v7, 0x25

    aget v7, p2, v7

    aput v7, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v5, v0

    const/16 v6, 0xb

    const/16 v7, 0x26

    aget v7, p2, v7

    aput v7, v5, v6

    .line 560
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->curDivs:I

    move v5, v0

    move v0, v5

    move/from16 v1, p3

    if-eq v0, v1, :cond_11f

    .line 561
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->initBnBasis(I)V

    .line 568
    :cond_11f
    const/4 v6, 0x0

    .local v6, v:I
    :goto_120
    move v0, v6

    move/from16 v1, p3

    if-gt v0, v1, :cond_145

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lastAry:[F

    move-object v9, v0

    mul-int/lit8 v10, v6, 0x3

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bernstein(I[FI[FI)V

    .line 568
    add-int/lit8 v6, v6, 0x1

    goto :goto_120

    .line 550
    .end local v6           #v:I
    :cond_13a
    const v5, 0x8078

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto/16 :goto_7d

    .line 573
    .restart local v6       #v:I
    :cond_145
    const/16 v17, 0x0

    .local v17, p2:I
    const/16 v19, 0x0

    .line 578
    .local v19, p3:I
    const/high16 v5, 0x3f80

    move/from16 v0, p3

    int-to-float v0, v0

    move v7, v0

    div-float v15, v5, v7

    .line 579
    .local v15, dxy:F
    const/4 v5, 0x1

    sub-int v5, p3, v5

    int-to-float v5, v5

    mul-float v21, v5, v15

    .line 580
    .local v21, px:F
    add-float v16, v21, v15

    .line 582
    .local v16, lastpx:F
    const/4 v5, 0x1

    sub-int v8, p3, v5

    .local v8, u:I
    :goto_15c
    if-ltz v8, :cond_2cd

    .line 585
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v11, v0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    invoke-virtual/range {v7 .. v12}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bernstein(I[FI[FI)V

    .line 586
    const/16 v10, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v11, v0

    const/4 v12, 0x3

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    invoke-virtual/range {v7 .. v12}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bernstein(I[FI[FI)V

    .line 587
    const/16 v10, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v11, v0

    const/4 v12, 0x6

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    invoke-virtual/range {v7 .. v12}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bernstein(I[FI[FI)V

    .line 588
    const/16 v10, 0x24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v11, v0

    const/16 v12, 0x9

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    invoke-virtual/range {v7 .. v12}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bernstein(I[FI[FI)V

    .line 590
    const/16 v17, 0x0

    const/16 v19, 0x0

    .line 591
    const/16 v22, 0x0

    .line 593
    .local v22, py:F
    const/4 v6, 0x0

    move/from16 v20, v19

    .end local v19           #p3:I
    .local v20, p3:I
    move/from16 v18, v17

    .end local v17           #p2:I
    .local v18, p2:I
    :goto_1a5
    move v0, v6

    move/from16 v1, p3

    if-gt v0, v1, :cond_257

    .line 594
    mul-int/lit8 v14, v6, 0x3

    .line 597
    .local v14, v3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pta:[F

    move-object v5, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18           #p2:I
    .restart local v17       #p2:I
    const/high16 v7, 0x3f80

    sub-float v7, v7, v16

    aput v7, v5, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pta:[F

    move-object v5, v0

    add-int/lit8 v18, v17, 0x1

    .end local v17           #p2:I
    .restart local v18       #p2:I
    aput v22, v5, v17

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pva:[F

    move-object v5, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20           #p3:I
    .restart local v19       #p3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lastAry:[F

    move-object v7, v0

    aget v7, v7, v14

    aput v7, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pva:[F

    move-object v5, v0

    add-int/lit8 v20, v19, 0x1

    .end local v19           #p3:I
    .restart local v20       #p3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lastAry:[F

    move-object v7, v0

    add-int/lit8 v9, v14, 0x1

    aget v7, v7, v9

    aput v7, v5, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pva:[F

    move-object v5, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20           #p3:I
    .restart local v19       #p3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lastAry:[F

    move-object v7, v0

    add-int/lit8 v9, v14, 0x2

    aget v7, v7, v9

    aput v7, v5, v20

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    move-object v11, v0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lastAry:[F

    move-object v13, v0

    move-object/from16 v9, p0

    move v10, v6

    invoke-virtual/range {v9 .. v14}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bernstein(I[FI[FI)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pta:[F

    move-object v5, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18           #p2:I
    .restart local v17       #p2:I
    const/high16 v7, 0x3f80

    sub-float v7, v7, v21

    aput v7, v5, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pta:[F

    move-object v5, v0

    add-int/lit8 v18, v17, 0x1

    .end local v17           #p2:I
    .restart local v18       #p2:I
    aput v22, v5, v17

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pva:[F

    move-object v5, v0

    add-int/lit8 v20, v19, 0x1

    .end local v19           #p3:I
    .restart local v20       #p3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lastAry:[F

    move-object v7, v0

    aget v7, v7, v14

    aput v7, v5, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pva:[F

    move-object v5, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20           #p3:I
    .restart local v19       #p3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lastAry:[F

    move-object v7, v0

    add-int/lit8 v9, v14, 0x1

    aget v7, v7, v9

    aput v7, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pva:[F

    move-object v5, v0

    add-int/lit8 v20, v19, 0x1

    .end local v19           #p3:I
    .restart local v20       #p3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lastAry:[F

    move-object v7, v0

    add-int/lit8 v9, v14, 0x2

    aget v7, v7, v9

    aput v7, v5, v19

    .line 620
    add-float v22, v22, v15

    .line 593
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1a5

    .line 624
    .end local v14           #v3:I
    :cond_257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pvb:Ljava/nio/FloatBuffer;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pvb:Ljava/nio/FloatBuffer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pva:[F

    move-object v7, v0

    const/4 v9, 0x0

    move-object v0, v5

    move-object v1, v7

    move v2, v9

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 626
    const/4 v5, 0x3

    const/16 v7, 0x1406

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pvb:Ljava/nio/FloatBuffer;

    move-object v10, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    move v3, v9

    move-object v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 627
    if-eqz p4, :cond_2b3

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->ptb:Ljava/nio/FloatBuffer;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->ptb:Ljava/nio/FloatBuffer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pta:[F

    move-object v7, v0

    const/4 v9, 0x0

    move-object v0, v5

    move-object v1, v7

    move v2, v9

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 630
    const/4 v5, 0x2

    const/16 v7, 0x1406

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->ptb:Ljava/nio/FloatBuffer;

    move-object v10, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    move v3, v9

    move-object v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 632
    :cond_2b3
    const/4 v5, 0x5

    const/4 v7, 0x0

    add-int/lit8 v9, p3, 0x1

    mul-int/lit8 v9, v9, 0x2

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    move v3, v9

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 634
    move/from16 v16, v21

    .line 635
    sub-float v21, v21, v15

    .line 582
    add-int/lit8 v8, v8, -0x1

    move/from16 v19, v20

    .end local v20           #p3:I
    .restart local v19       #p3:I
    move/from16 v17, v18

    .end local v18           #p2:I
    .restart local v17       #p2:I
    goto/16 :goto_15c

    .line 637
    .end local v22           #py:F
    :cond_2cd
    return-void
.end method

.method drawFloor(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 696
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 697
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->world:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-virtual {v1}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/android/internal/ui3d/Widget;->getLocatable()Lcom/motorola/android/internal/ui3d/Locatable;

    move-result-object v0

    .line 699
    .local v0, loc:Lcom/motorola/android/internal/ui3d/Locatable;
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->glTrans:Lcom/motorola/android/internal/ui3d/GLTransformable;

    invoke-interface {v0, v1}, Lcom/motorola/android/internal/ui3d/Locatable;->applyToTransformable(Lcom/motorola/android/internal/ui3d/Transformable;)V

    .line 700
    const/high16 v1, -0x3c4c

    invoke-interface {p1, v3, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 701
    const/high16 v1, -0x3d4c

    const/high16 v2, 0x3f80

    invoke-interface {p1, v1, v2, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 702
    const/high16 v1, 0x438c

    const/high16 v2, 0x43a0

    invoke-direct {p0, p1, v1, v2}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->drawRect(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 703
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 704
    return-void
.end method

.method drawStraight(Ljavax/microedition/khronos/opengles/GL10;Lcom/motorola/android/internal/ui3d/Widget;Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;)V
    .registers 16
    .parameter "gl"
    .parameter "widget"
    .parameter "texture"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 452
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 455
    invoke-virtual {p2}, Lcom/motorola/android/internal/ui3d/Widget;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 456
    .local v3, w:F
    invoke-virtual {p2}, Lcom/motorola/android/internal/ui3d/Widget;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 460
    .local v0, h:F
    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    aput v7, v4, v8

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    const/4 v5, 0x1

    neg-float v6, v0

    aput v6, v4, v5

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    aput v7, v4, v9

    .line 461
    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    aput v3, v4, v10

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    neg-float v5, v0

    aput v5, v4, v11

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    const/4 v5, 0x5

    aput v7, v4, v5

    .line 462
    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    const/4 v5, 0x6

    aput v7, v4, v5

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    const/4 v5, 0x7

    aput v7, v4, v5

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    const/16 v5, 0x8

    aput v7, v4, v5

    .line 463
    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    const/16 v5, 0x9

    aput v3, v4, v5

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    const/16 v5, 0xa

    aput v7, v4, v5

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    const/16 v5, 0xb

    aput v7, v4, v5

    .line 465
    const v4, 0x8074

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 466
    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 467
    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vertices:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vArray:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 468
    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->vertices:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v10, v4, v8, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 469
    if-eqz p3, :cond_b5

    .line 470
    const/16 v4, 0xde1

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 471
    const/16 v4, 0x901

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 472
    const/16 v4, 0xde1

    iget v5, p3, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->name:I

    invoke-interface {p1, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 473
    const v4, 0x84c0

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 474
    const v4, 0x8078

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 479
    iget-boolean v4, p3, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->scaled:Z

    if-eqz v4, :cond_ae

    .line 480
    const/16 v4, 0x1702

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 481
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 482
    iget v4, p3, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->origWidth:I

    int-to-float v4, v4

    iget v5, p3, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->width:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 483
    .local v2, tw:F
    iget v4, p3, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->origHeight:I

    int-to-float v4, v4

    iget v5, p3, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->height:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 484
    .local v1, th:F
    const/high16 v4, 0x3f80

    invoke-interface {p1, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 485
    const/16 v4, 0x1700

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 487
    .end local v1           #th:F
    .end local v2           #tw:F
    :cond_ae
    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->texCoords:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v9, v4, v8, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 490
    :cond_b5
    const/4 v4, 0x5

    invoke-interface {p1, v4, v8, v11}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 491
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 492
    return-void
.end method

.method drawTexturedFloor(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .parameter "gl"

    .prologue
    const/4 v4, 0x0

    .line 707
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 708
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->world:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-virtual {v2}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/android/internal/ui3d/Widget;->getLocatable()Lcom/motorola/android/internal/ui3d/Locatable;

    move-result-object v0

    .line 710
    .local v0, loc:Lcom/motorola/android/internal/ui3d/Locatable;
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->glTrans:Lcom/motorola/android/internal/ui3d/GLTransformable;

    invoke-interface {v0, v2}, Lcom/motorola/android/internal/ui3d/Locatable;->applyToTransformable(Lcom/motorola/android/internal/ui3d/Transformable;)V

    .line 711
    const/high16 v2, -0x3c4c

    invoke-interface {p1, v4, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 712
    const/high16 v2, -0x3d4c

    const/high16 v3, 0x3f80

    invoke-interface {p1, v2, v3, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 713
    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->texMap:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->world:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-virtual {v3}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;

    .line 714
    .local v1, tex:Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;
    const/high16 v2, 0x438c

    const/high16 v3, 0x43a0

    iget v4, v1, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->name:I

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->drawTexturedRect(Ljavax/microedition/khronos/opengles/GL10;FFI)V

    .line 715
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 716
    return-void
.end method

.method drawWidgetTree(Ljavax/microedition/khronos/opengles/GL10;Lcom/motorola/android/internal/ui3d/Widget;)V
    .registers 16
    .parameter "gl"
    .parameter "widget"

    .prologue
    .line 380
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 385
    .local v7, time:J
    invoke-virtual {p2}, Lcom/motorola/android/internal/ui3d/Widget;->getLocatable()Lcom/motorola/android/internal/ui3d/Locatable;

    move-result-object v3

    .line 386
    .local v3, loc:Lcom/motorola/android/internal/ui3d/Locatable;
    if-eqz v3, :cond_12

    .line 387
    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->glTrans:Lcom/motorola/android/internal/ui3d/GLTransformable;

    invoke-interface {v3, v9}, Lcom/motorola/android/internal/ui3d/Locatable;->applyToTransformable(Lcom/motorola/android/internal/ui3d/Transformable;)V

    .line 390
    :cond_12
    invoke-virtual {p2}, Lcom/motorola/android/internal/ui3d/Widget;->getMorphable()Lcom/motorola/android/internal/ui3d/Morphable;

    move-result-object v4

    .line 391
    .local v4, morphable:Lcom/motorola/android/internal/ui3d/Morphable;
    if-eqz v4, :cond_2d

    .line 392
    invoke-virtual {v4, v7, v8}, Lcom/motorola/android/internal/ui3d/Morphable;->update(J)V

    .line 393
    iget-object v9, v4, Lcom/motorola/android/internal/ui3d/Morphable;->scales:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, v4, Lcom/motorola/android/internal/ui3d/Morphable;->scales:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    iget-object v11, v4, Lcom/motorola/android/internal/ui3d/Morphable;->scales:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    invoke-interface {p1, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 400
    :cond_2d
    iget v9, p2, Lcom/motorola/android/internal/ui3d/Widget;->alignmentPointX:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p2, Lcom/motorola/android/internal/ui3d/Widget;->alignmentPointY:I

    neg-int v10, v10

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-interface {p1, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 427
    instance-of v9, p2, Lcom/motorola/android/internal/ui3d/WidgetGroup;

    if-eqz v9, :cond_56

    .line 428
    move-object v0, p2

    check-cast v0, Lcom/motorola/android/internal/ui3d/WidgetGroup;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/motorola/android/internal/ui3d/WidgetGroup;->getCount()I

    move-result v1

    .line 429
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_46
    if-ge v2, v1, :cond_83

    .line 430
    move-object v0, p2

    check-cast v0, Lcom/motorola/android/internal/ui3d/WidgetGroup;

    move-object v9, v0

    invoke-virtual {v9, v2}, Lcom/motorola/android/internal/ui3d/WidgetGroup;->getWidget(I)Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->drawWidgetTree(Ljavax/microedition/khronos/opengles/GL10;Lcom/motorola/android/internal/ui3d/Widget;)V

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 432
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_56
    iget-boolean v9, p2, Lcom/motorola/android/internal/ui3d/Widget;->visible:Z

    if-eqz v9, :cond_83

    .line 434
    const/4 v6, 0x0

    .line 435
    .local v6, texture:Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;
    invoke-virtual {p2}, Lcom/motorola/android/internal/ui3d/Widget;->getCache()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_70

    iget-object v9, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->texMap:Ljava/util/Hashtable;

    invoke-virtual {v9, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #texture:Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;
    check-cast v6, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;

    .restart local v6       #texture:Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;
    if-nez v6, :cond_70

    .line 436
    const/4 v9, 0x0

    invoke-virtual {p0, p1, p2, v9}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->prepareTexture(Ljavax/microedition/khronos/opengles/GL10;Lcom/motorola/android/internal/ui3d/Widget;Landroid/graphics/Bitmap;)Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;

    move-result-object v6

    .line 438
    :cond_70
    if-eqz v4, :cond_8b

    instance-of v9, v4, Lcom/motorola/android/internal/ui3d/BezierPatch;

    if-eqz v9, :cond_8b

    .line 439
    move-object v0, v4

    check-cast v0, Lcom/motorola/android/internal/ui3d/BezierPatch;

    move-object v5, v0

    .line 440
    .local v5, p:Lcom/motorola/android/internal/ui3d/BezierPatch;
    invoke-virtual {v5}, Lcom/motorola/android/internal/ui3d/BezierPatch;->isCurved()Z

    move-result v9

    if-eqz v9, :cond_87

    .line 441
    invoke-virtual {p0, p1, p2, v6}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->drawWobbly(Ljavax/microedition/khronos/opengles/GL10;Lcom/motorola/android/internal/ui3d/Widget;Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;)V

    .line 447
    .end local v5           #p:Lcom/motorola/android/internal/ui3d/BezierPatch;
    .end local v6           #texture:Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;
    :cond_83
    :goto_83
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 448
    return-void

    .line 443
    .restart local v5       #p:Lcom/motorola/android/internal/ui3d/BezierPatch;
    .restart local v6       #texture:Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;
    :cond_87
    invoke-virtual {p0, p1, p2, v6}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->drawStraight(Ljavax/microedition/khronos/opengles/GL10;Lcom/motorola/android/internal/ui3d/Widget;Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;)V

    goto :goto_83

    .line 445
    .end local v5           #p:Lcom/motorola/android/internal/ui3d/BezierPatch;
    :cond_8b
    invoke-virtual {p0, p1, p2, v6}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->drawStraight(Ljavax/microedition/khronos/opengles/GL10;Lcom/motorola/android/internal/ui3d/Widget;Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;)V

    goto :goto_83
.end method

.method drawWobbly(Ljavax/microedition/khronos/opengles/GL10;Lcom/motorola/android/internal/ui3d/Widget;Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;)V
    .registers 9
    .parameter "gl"
    .parameter "widget"
    .parameter "texture"

    .prologue
    .line 508
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    if-nez v1, :cond_4c

    .line 509
    const/16 v1, 0xc

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tmpAry:[F

    .line 510
    iget v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->DIVS:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lastAry:[F

    .line 511
    iget v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->DIVS:I

    mul-int/lit8 v1, v1, 0x6

    iget v2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->DIVS:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pvb:Ljava/nio/FloatBuffer;

    .line 512
    iget v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->DIVS:I

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->DIVS:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->ptb:Ljava/nio/FloatBuffer;

    .line 513
    iget v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->DIVS:I

    mul-int/lit8 v1, v1, 0x6

    iget v2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->DIVS:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pva:[F

    .line 514
    iget v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->DIVS:I

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->DIVS:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->pta:[F

    .line 518
    :cond_4c
    invoke-virtual {p2}, Lcom/motorola/android/internal/ui3d/Widget;->getMorphable()Lcom/motorola/android/internal/ui3d/Morphable;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/ui3d/BezierPatch;

    .line 519
    .local v0, p:Lcom/motorola/android/internal/ui3d/BezierPatch;
    iget-object v1, v0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->anAry:[F

    .line 521
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 522
    invoke-virtual {p2}, Lcom/motorola/android/internal/ui3d/Widget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/motorola/android/internal/ui3d/Widget;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2}, Lcom/motorola/android/internal/ui3d/Widget;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/motorola/android/internal/ui3d/Widget;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 524
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->anAry:[F

    iget v2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->DIVS:I

    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->drawBezier(Ljavax/microedition/khronos/opengles/GL10;[FILcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;)V

    .line 525
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 526
    return-void
.end method

.method public enableLighting(Z)V
    .registers 2
    .parameter "lighting"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->useLighting:Z

    .line 75
    return-void
.end method

.method public getConfigSpec()[I
    .registers 4

    .prologue
    .line 834
    iget-boolean v2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->mTranslucentBackground:Z

    if-eqz v2, :cond_d

    .line 836
    const/16 v2, 0xb

    new-array v0, v2, [I

    fill-array-data v0, :array_16

    .local v0, configSpec:[I
    move-object v1, v0

    .line 844
    .end local v0           #configSpec:[I
    .local v1, configSpec:[I
    :goto_c
    return-object v1

    .line 843
    .end local v1           #configSpec:[I
    :cond_d
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_30

    .restart local v0       #configSpec:[I
    move-object v1, v0

    .line 844
    .end local v0           #configSpec:[I
    .restart local v1       #configSpec:[I
    goto :goto_c

    .line 836
    nop

    :array_16
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 843
    :array_30
    .array-data 0x4
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method initBnBasis(I)V
    .registers 15
    .parameter "divs"

    .prologue
    const-wide/high16 v11, 0x4000

    const-wide/high16 v9, 0x4008

    const/high16 v8, 0x3f80

    .line 653
    iget v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->curDivs:I

    if-ne p1, v3, :cond_b

    .line 670
    :goto_a
    return-void

    .line 655
    :cond_b
    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bnBasis1:[F

    .line 656
    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bnBasis2:[F

    .line 657
    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bnBasis3:[F

    .line 658
    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bnBasis4:[F

    .line 660
    int-to-float v3, p1

    div-float v0, v8, v3

    .line 661
    .local v0, dv:F
    const/4 v2, 0x0

    .line 662
    .local v2, v:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    if-gt v1, p1, :cond_64

    .line 663
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bnBasis1:[F

    float-to-double v4, v2

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v1

    .line 664
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bnBasis2:[F

    float-to-double v4, v2

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v9

    sub-float v6, v8, v2

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v3, v1

    .line 665
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bnBasis3:[F

    const/high16 v4, 0x4040

    mul-float/2addr v4, v2

    float-to-double v4, v4

    sub-float v6, v8, v2

    float-to-double v6, v6

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v3, v1

    .line 666
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->bnBasis4:[F

    sub-float v4, v8, v2

    float-to-double v4, v4

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v1

    .line 667
    add-float/2addr v2, v0

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 669
    :cond_64
    iput p1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->curDivs:I

    goto :goto_a
.end method

.method loadAndAssociateTexture(Ljavax/microedition/khronos/opengles/GL10;Lcom/motorola/android/internal/ui3d/Widget;I)Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;
    .registers 9
    .parameter "gl"
    .parameter "widget"
    .parameter "texRes"

    .prologue
    const/4 v4, 0x0

    .line 356
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->world:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-virtual {v3}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 358
    .local v2, is:Ljava/io/InputStream;
    :try_start_f
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1b

    move-result-object v0

    .line 361
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_23

    .line 368
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->prepareTexture(Ljavax/microedition/khronos/opengles/GL10;Lcom/motorola/android/internal/ui3d/Widget;Landroid/graphics/Bitmap;)Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;

    move-result-object v3

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_1a
    return-object v3

    .line 360
    :catchall_1b
    move-exception v3

    .line 361
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 360
    throw v3

    .line 362
    :catch_20
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    :goto_21
    move-object v3, v4

    .line 364
    goto :goto_1a

    .line 362
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catch_23
    move-exception v1

    goto :goto_21
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 13
    .parameter "gl"

    .prologue
    const/16 v10, 0xb50

    const/16 v9, 0x4000

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 133
    const-string v3, "World3DOpenGLRenderer"

    const-string v4, "onDrawFrame"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/16 v3, 0x4500

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 136
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 142
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->world:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    iget v3, v3, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraX:I

    iget v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->winW:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->winH:I

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->world:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    iget v5, v5, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, -0x3bf0

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 151
    const/high16 v3, -0x4080

    invoke-interface {p1, v7, v7, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 156
    iget-boolean v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->useLighting:Z

    if-eqz v3, :cond_bb

    .line 157
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 158
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->world:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-virtual {v3}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/android/internal/ui3d/Widget;->getLocatable()Lcom/motorola/android/internal/ui3d/Locatable;

    move-result-object v2

    .line 159
    .local v2, loc:Lcom/motorola/android/internal/ui3d/Locatable;
    instance-of v3, v2, Lcom/motorola/android/internal/ui3d/Locator;

    if-eqz v3, :cond_72

    .line 160
    move-object v0, v2

    check-cast v0, Lcom/motorola/android/internal/ui3d/Locator;

    move-object v1, v0

    .line 161
    .local v1, l:Lcom/motorola/android/internal/ui3d/Locator;
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lightPos:[F

    invoke-virtual {v1}, Lcom/motorola/android/internal/ui3d/Locator;->getX()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    add-float/2addr v4, v5

    aput v4, v3, v8

    .line 162
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lightPos:[F

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/motorola/android/internal/ui3d/Locator;->getY()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c8

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 163
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lightPos:[F

    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/motorola/android/internal/ui3d/Locator;->getZ()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4348

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 166
    .end local v1           #l:Lcom/motorola/android/internal/ui3d/Locator;
    :cond_72
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lightPos:[F

    const/4 v4, 0x3

    aput v7, v3, v4

    .line 167
    const/16 v3, 0xbd0

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 168
    const/16 v3, 0x1202

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lightSpecular:[F

    invoke-interface {p1, v9, v3, v4, v8}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 169
    const/16 v3, 0x1201

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lightDiffuse:[F

    invoke-interface {p1, v9, v3, v4, v8}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 170
    const/16 v3, 0x1200

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lightAmbient:[F

    invoke-interface {p1, v9, v3, v4, v8}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 171
    const/16 v3, 0x1203

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->lightPos:[F

    invoke-interface {p1, v9, v3, v4, v8}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 172
    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 173
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 177
    .end local v2           #loc:Lcom/motorola/android/internal/ui3d/Locatable;
    :goto_9e
    invoke-interface {p1, v7, v7, v7, v7}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 178
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->world:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-virtual {v3}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/motorola/android/internal/ui3d/Widget;->animate(J)V

    .line 179
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->world:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    invoke-virtual {v3}, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->getMainWidget()Lcom/motorola/android/internal/ui3d/Widget;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->drawWidgetTree(Ljavax/microedition/khronos/opengles/GL10;Lcom/motorola/android/internal/ui3d/Widget;)V

    .line 218
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 231
    return-void

    .line 175
    :cond_bb
    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_9e
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 15
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x4410

    .line 773
    const-string v0, "World3DOpenGLRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSurfaceChanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    if-lez p2, :cond_29

    if-gtz p3, :cond_2a

    .line 803
    :cond_29
    :goto_29
    return-void

    .line 780
    :cond_2a
    iput p2, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->winW:I

    .line 781
    iput p3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->winH:I

    .line 783
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 784
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 787
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->world:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    iget v0, v0, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraX:I

    div-int/lit8 v5, p2, 0x2

    sub-int v7, v0, v5

    .line 788
    .local v7, viewportX:I
    div-int/lit8 v0, p3, 0x2

    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->world:Lcom/motorola/android/internal/ui3d/World3DOpenGL;

    iget v5, v5, Lcom/motorola/android/internal/ui3d/World3DOpenGL;->cameraY:I

    sub-int v8, v0, v5

    .line 791
    .local v8, viewportY:I
    div-int/lit8 v0, v7, 0x2

    neg-int v0, v0

    div-int/lit8 v5, p2, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    div-float v1, v0, v9

    .line 792
    .local v1, fl:F
    div-int/lit8 v0, v7, 0x2

    neg-int v0, v0

    div-int/lit8 v5, p2, 0x2

    add-int/2addr v0, v5

    int-to-float v0, v0

    div-float v2, v0, v9

    .line 793
    .local v2, fr:F
    neg-int v0, v8

    div-int/lit8 v5, p3, 0x2

    add-int/2addr v0, v5

    int-to-float v0, v0

    div-float v4, v0, v9

    .line 794
    .local v4, ft:F
    neg-int v0, v8

    div-int/lit8 v5, p3, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    div-float v3, v0, v9

    .line 797
    .local v3, fb:F
    const/high16 v5, 0x3f80

    const/high16 v6, 0x44fa

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 800
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 801
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 802
    invoke-interface {p1, v10, v10, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    goto :goto_29
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 13
    .parameter "gl"
    .parameter "config"

    .prologue
    const/16 v9, 0xb71

    const/4 v8, 0x4

    const/16 v7, 0x404

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 80
    const-string v3, "World3DOpenGLRenderer"

    const-string v4, "onSurfaceCreated"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-array v0, v8, [F

    fill-array-data v0, :array_78

    .line 83
    .local v0, mat_diffuse:[F
    new-array v2, v8, [F

    fill-array-data v2, :array_84

    .line 84
    .local v2, mat_specular:[F
    const/4 v3, 0x1

    new-array v1, v3, [F

    const/high16 v3, 0x42c8

    aput v3, v1, v6

    .line 89
    .local v1, mat_shininess:[F
    const/16 v3, 0xbd0

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 90
    const/16 v3, 0xc50

    const/16 v4, 0x1101

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 100
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 101
    invoke-interface {p1, v5, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 102
    const/16 v3, 0x1201

    invoke-interface {p1, v7, v3, v0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 103
    const/16 v3, 0x1202

    invoke-interface {p1, v7, v3, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 104
    const/16 v3, 0x1601

    invoke-interface {p1, v7, v3, v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 106
    const/16 v3, 0xb50

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 107
    const/16 v3, 0x4000

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 108
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 109
    const/16 v3, 0x1d01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 110
    const/16 v3, 0xde1

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 111
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const/16 v5, 0x2100

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 116
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->texMap:Ljava/util/Hashtable;

    .line 119
    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->texCoords:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->tArray:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 121
    new-instance v3, Lcom/motorola/android/internal/ui3d/GLTransformable;

    invoke-direct {v3, p1}, Lcom/motorola/android/internal/ui3d/GLTransformable;-><init>(Ljavax/microedition/khronos/opengles/GL10;)V

    iput-object v3, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->glTrans:Lcom/motorola/android/internal/ui3d/GLTransformable;

    .line 122
    return-void

    .line 82
    :array_78
    .array-data 0x4
        0x33t 0x33t 0x33t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 83
    :array_84
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method pointAdd([FI[FI[FI)V
    .registers 10
    .parameter "p1"
    .parameter "off1"
    .parameter "p2"
    .parameter "off2"
    .parameter "res"
    .parameter "off"

    .prologue
    .line 684
    aget v0, p1, p2

    aget v1, p3, p4

    add-float/2addr v0, v1

    aput v0, p5, p6

    .line 685
    add-int/lit8 v0, p6, 0x1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    add-float/2addr v1, v2

    aput v1, p5, v0

    .line 686
    add-int/lit8 v0, p6, 0x2

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    add-int/lit8 v2, p4, 0x2

    aget v2, p3, v2

    add-float/2addr v1, v2

    aput v1, p5, v0

    .line 687
    return-void
.end method

.method pointTimes(F[FI[FI)V
    .registers 8
    .parameter "c"
    .parameter "p"
    .parameter "off1"
    .parameter "res"
    .parameter "off"

    .prologue
    .line 690
    aget v0, p2, p3

    mul-float/2addr v0, p1

    aput v0, p4, p5

    .line 691
    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    mul-float/2addr v1, p1

    aput v1, p4, v0

    .line 692
    add-int/lit8 v0, p5, 0x2

    add-int/lit8 v1, p3, 0x2

    aget v1, p2, v1

    mul-float/2addr v1, p1

    aput v1, p4, v0

    .line 693
    return-void
.end method

.method prepareTexture(Ljavax/microedition/khronos/opengles/GL10;Lcom/motorola/android/internal/ui3d/Widget;Landroid/graphics/Bitmap;)Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;
    .registers 15
    .parameter "gl"
    .parameter "widget"
    .parameter "bitmap"

    .prologue
    .line 268
    new-instance v5, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;

    invoke-direct {v5, p0}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;-><init>(Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;)V

    .line 269
    .local v5, texture:Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;
    const/4 v8, 0x1

    new-array v4, v8, [I

    .line 270
    .local v4, texName:[I
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v4, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 271
    const/16 v8, 0xde1

    const/4 v9, 0x0

    aget v9, v4, v9

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 273
    const/4 v8, 0x0

    aget v8, v4, v8

    iput v8, v5, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->name:I

    .line 275
    const/16 v8, 0xde1

    const/16 v9, 0x2801

    const/high16 v10, 0x4618

    invoke-interface {p1, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 277
    const/16 v8, 0xde1

    const/16 v9, 0x2800

    const v10, 0x46180400

    invoke-interface {p1, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 281
    const/16 v8, 0xde1

    const/16 v9, 0x2802

    const v10, 0x47012f00

    invoke-interface {p1, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 283
    const/16 v8, 0xde1

    const/16 v9, 0x2803

    const v10, 0x47012f00

    invoke-interface {p1, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 286
    if-nez p3, :cond_47

    .line 287
    invoke-virtual {p2}, Lcom/motorola/android/internal/ui3d/Widget;->getCache()Landroid/graphics/Bitmap;

    move-result-object p3

    .line 291
    :cond_47
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 292
    .local v1, bw:I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 293
    .local v0, bh:I
    const/4 v8, 0x1

    const/16 v9, 0x1f

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->clz(I)I

    move-result v10

    sub-int/2addr v9, v10

    shl-int v7, v8, v9

    .line 294
    .local v7, tw:I
    const/4 v8, 0x1

    const/16 v9, 0x1f

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->clz(I)I

    move-result v10

    sub-int/2addr v9, v10

    shl-int v6, v8, v9

    .line 295
    .local v6, th:I
    if-ge v7, v1, :cond_67

    shl-int/lit8 v7, v7, 0x1

    .line 296
    :cond_67
    if-ge v6, v0, :cond_6b

    shl-int/lit8 v6, v6, 0x1

    .line 297
    :cond_6b
    if-ne v7, v1, :cond_6f

    if-eq v6, v0, :cond_8e

    .line 298
    :cond_6f
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 299
    .local v3, scaled:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    .local v2, cvs:Landroid/graphics/Canvas;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, p3, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 301
    iput v1, v5, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->origWidth:I

    .line 302
    iput v0, v5, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->origHeight:I

    .line 303
    iput v7, v5, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->width:I

    .line 304
    iput v6, v5, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->height:I

    .line 305
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->scaled:Z

    .line 306
    move-object p3, v3

    .line 319
    .end local v2           #cvs:Landroid/graphics/Canvas;
    .end local v3           #scaled:Landroid/graphics/Bitmap;
    :cond_8e
    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, p3, v10}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 321
    iget-boolean v8, v5, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->scaled:Z

    if-eqz v8, :cond_9c

    .line 322
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 336
    :cond_9c
    iget-object v8, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;->texMap:Ljava/util/Hashtable;

    invoke-virtual {v8, p2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-object v5
.end method

.class Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;
.super Ljava/lang/Object;
.source "World3DOpenGLRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Texture"
.end annotation


# instance fields
.field height:I

.field name:I

.field origHeight:I

.field origWidth:I

.field scaled:Z

.field final synthetic this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;

.field width:I


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;)V
    .registers 3
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->this$0:Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/World3DOpenGLRenderer$Texture;->scaled:Z

    return-void
.end method

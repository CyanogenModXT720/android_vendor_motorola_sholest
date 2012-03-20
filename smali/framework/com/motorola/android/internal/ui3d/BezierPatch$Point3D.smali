.class public Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;
.super Ljava/lang/Object;
.source "BezierPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/ui3d/BezierPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Point3D"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/ui3d/BezierPatch;

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/ui3d/BezierPatch;)V
    .registers 3
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->this$0:Lcom/motorola/android/internal/ui3d/BezierPatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->z:F

    iput v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->y:F

    iput v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->x:F

    .line 293
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/internal/ui3d/BezierPatch;FFF)V
    .registers 5
    .parameter
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->this$0:Lcom/motorola/android/internal/ui3d/BezierPatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput p2, p0, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->x:F

    .line 297
    iput p3, p0, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->y:F

    .line 298
    iput p4, p0, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->z:F

    .line 299
    return-void
.end method

.class public Lcom/motorola/android/internal/ui3d/BezierPatch;
.super Lcom/motorola/android/internal/ui3d/Morphable;
.source "BezierPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BezierPatch"

.field private static final VERBOSE:Z


# instance fields
.field private final CPS_NUM:I

.field private final c0:F

.field private final c1:F

.field private final c2:F

.field private final c3:F

.field cps:[F

.field private curveCheckRequired:Z

.field deltas:[F

.field private isCurved:Z

.field targets:[F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x30

    .line 64
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/Morphable;-><init>()V

    .line 47
    const/16 v0, 0x10

    iput v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->CPS_NUM:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->c0:F

    .line 49
    const v0, 0x3eaa7efa

    iput v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->c1:F

    .line 50
    const v0, 0x3f2a7efa

    iput v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->c2:F

    .line 51
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->c3:F

    .line 52
    iput-boolean v2, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->isCurved:Z

    .line 53
    iput-boolean v2, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->curveCheckRequired:Z

    .line 55
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    .line 56
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    .line 57
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->deltas:[F

    .line 65
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/ui3d/BezierPatch;->initDefaultCPS([F)V

    .line 66
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/ui3d/BezierPatch;->initDefaultCPS([F)V

    .line 67
    return-void
.end method

.method public constructor <init>([Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;)V
    .registers 7
    .parameter "points"

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    const/16 v2, 0x30

    .line 77
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/Morphable;-><init>()V

    .line 47
    iput v4, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->CPS_NUM:I

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->c0:F

    .line 49
    const v1, 0x3eaa7efa

    iput v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->c1:F

    .line 50
    const v1, 0x3f2a7efa

    iput v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->c2:F

    .line 51
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->c3:F

    .line 52
    iput-boolean v3, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->isCurved:Z

    .line 53
    iput-boolean v3, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->curveCheckRequired:Z

    .line 55
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    .line 56
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    .line 57
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->deltas:[F

    .line 78
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/ui3d/BezierPatch;->initDefaultCPS([F)V

    .line 79
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/ui3d/BezierPatch;->initDefaultCPS([F)V

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_36
    if-ge v0, v4, :cond_61

    .line 81
    aget-object v1, p1, v0

    if-eqz v1, :cond_5e

    .line 82
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    mul-int/lit8 v2, v0, 0x3

    aget-object v3, p1, v0

    iget v3, v3, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->x:F

    aput v3, v1, v2

    .line 83
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v0

    iget v3, v3, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->y:F

    aput v3, v1, v2

    .line 84
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x2

    aget-object v3, p1, v0

    iget v3, v3, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->z:F

    aput v3, v1, v2

    .line 80
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 87
    :cond_61
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/BezierPatch;->checkCurved()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->isCurved:Z

    .line 88
    return-void
.end method

.method private checkCurved()Z
    .registers 4

    .prologue
    .line 262
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_17

    .line 263
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x2

    aget v1, v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_14

    .line 264
    const/4 v1, 0x1

    .line 266
    :goto_13
    return v1

    .line 262
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private initDefaultCPS([F)V
    .registers 7
    .parameter "ps"

    .prologue
    const/high16 v4, 0x3f80

    const v3, 0x3f2a7efa

    const v2, 0x3eaa7efa

    const/4 v1, 0x0

    .line 91
    const/4 v0, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    aput v4, p1, v0

    const/4 v0, 0x2

    aput v1, p1, v0

    .line 92
    const/4 v0, 0x3

    aput v2, p1, v0

    const/4 v0, 0x4

    aput v4, p1, v0

    const/4 v0, 0x5

    aput v1, p1, v0

    .line 93
    const/4 v0, 0x6

    aput v3, p1, v0

    const/4 v0, 0x7

    aput v4, p1, v0

    const/16 v0, 0x8

    aput v1, p1, v0

    .line 94
    const/16 v0, 0x9

    aput v4, p1, v0

    const/16 v0, 0xa

    aput v4, p1, v0

    const/16 v0, 0xb

    aput v1, p1, v0

    .line 95
    const/16 v0, 0xc

    aput v1, p1, v0

    const/16 v0, 0xd

    aput v3, p1, v0

    const/16 v0, 0xe

    aput v1, p1, v0

    .line 96
    const/16 v0, 0xf

    aput v2, p1, v0

    const/16 v0, 0x10

    aput v3, p1, v0

    const/16 v0, 0x11

    aput v1, p1, v0

    .line 97
    const/16 v0, 0x12

    aput v3, p1, v0

    const/16 v0, 0x13

    aput v3, p1, v0

    const/16 v0, 0x14

    aput v1, p1, v0

    .line 98
    const/16 v0, 0x15

    aput v4, p1, v0

    const/16 v0, 0x16

    aput v3, p1, v0

    const/16 v0, 0x17

    aput v1, p1, v0

    .line 99
    const/16 v0, 0x18

    aput v1, p1, v0

    const/16 v0, 0x19

    aput v2, p1, v0

    const/16 v0, 0x1a

    aput v1, p1, v0

    .line 100
    const/16 v0, 0x1b

    aput v2, p1, v0

    const/16 v0, 0x1c

    aput v2, p1, v0

    const/16 v0, 0x1d

    aput v1, p1, v0

    .line 101
    const/16 v0, 0x1e

    aput v3, p1, v0

    const/16 v0, 0x1f

    aput v2, p1, v0

    const/16 v0, 0x20

    aput v1, p1, v0

    .line 102
    const/16 v0, 0x21

    aput v4, p1, v0

    const/16 v0, 0x22

    aput v2, p1, v0

    const/16 v0, 0x23

    aput v1, p1, v0

    .line 103
    const/16 v0, 0x24

    aput v1, p1, v0

    const/16 v0, 0x25

    aput v1, p1, v0

    const/16 v0, 0x26

    aput v1, p1, v0

    .line 104
    const/16 v0, 0x27

    aput v2, p1, v0

    const/16 v0, 0x28

    aput v1, p1, v0

    const/16 v0, 0x29

    aput v1, p1, v0

    .line 105
    const/16 v0, 0x2a

    aput v3, p1, v0

    const/16 v0, 0x2b

    aput v1, p1, v0

    const/16 v0, 0x2c

    aput v1, p1, v0

    .line 106
    const/16 v0, 0x2d

    aput v4, p1, v0

    const/16 v0, 0x2e

    aput v1, p1, v0

    const/16 v0, 0x2f

    aput v1, p1, v0

    .line 107
    return-void
.end method


# virtual methods
.method public adjustPoint(FFFI)V
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    iget-wide v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    .line 207
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    mul-int/lit8 v1, p4, 0x3

    aput p1, v0, v1

    .line 208
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    mul-int/lit8 v1, p4, 0x3

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 209
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    mul-int/lit8 v1, p4, 0x3

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    .line 221
    :goto_20
    return-void

    .line 213
    :cond_21
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    mul-int/lit8 v1, p4, 0x3

    aput p1, v0, v1

    .line 215
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    mul-int/lit8 v1, p4, 0x3

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 216
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    mul-int/lit8 v1, p4, 0x3

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    .line 217
    iput-boolean v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->isCurved:Z

    .line 218
    iput-boolean v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->curveCheckRequired:Z

    .line 220
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/BezierPatch;->startAnimation()V

    goto :goto_20
.end method

.method public adjustPoints([Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;[II)V
    .registers 11
    .parameter "points"
    .parameter "which"
    .parameter "len"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 224
    iget-wide v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_41

    .line 225
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, p3, :cond_89

    .line 226
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    aget v2, p2, v0

    mul-int/lit8 v2, v2, 0x3

    aget v3, v1, v2

    aget-object v4, p1, v0

    iget v4, v4, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->x:F

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 227
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    aget v2, p2, v0

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    aget v3, v1, v2

    aget-object v4, p1, v0

    iget v4, v4, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->y:F

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 228
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    aget v2, p2, v0

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x2

    aget v3, v1, v2

    aget-object v4, p1, v0

    iget v4, v4, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->z:F

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 232
    .end local v0           #i:I
    :cond_41
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4c
    if-ge v0, p3, :cond_82

    .line 234
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    aget v2, p2, v0

    mul-int/lit8 v2, v2, 0x3

    aget v3, v1, v2

    aget-object v4, p1, v0

    iget v4, v4, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->x:F

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 235
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    aget v2, p2, v0

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    aget v3, v1, v2

    aget-object v4, p1, v0

    iget v4, v4, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->y:F

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 236
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    aget v2, p2, v0

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x2

    aget v3, v1, v2

    aget-object v4, p1, v0

    iget v4, v4, Lcom/motorola/android/internal/ui3d/BezierPatch$Point3D;->z:F

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 238
    :cond_82
    iput-boolean v6, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->isCurved:Z

    .line 239
    iput-boolean v6, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->curveCheckRequired:Z

    .line 241
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/BezierPatch;->startAnimation()V

    .line 242
    :cond_89
    return-void
.end method

.method public adjustZ(FI)V
    .registers 9
    .parameter "z"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    iget-wide v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 192
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x2

    aput p1, v0, v1

    .line 202
    :goto_12
    return-void

    .line 196
    :cond_13
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x2

    aput p1, v0, v1

    .line 198
    iput-boolean v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->isCurved:Z

    .line 199
    iput-boolean v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->curveCheckRequired:Z

    .line 201
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/BezierPatch;->startAnimation()V

    goto :goto_12
.end method

.method public adjustZ([F)V
    .registers 9
    .parameter "z"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 172
    iget-wide v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    .line 173
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_3d

    .line 174
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x2

    aget v3, p1, v0

    aput v3, v1, v2

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 179
    .end local v0           #i:I
    :cond_1b
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_26
    array-length v1, p1

    if-ge v0, v1, :cond_36

    .line 181
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x2

    aget v3, p1, v0

    aput v3, v1, v2

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 183
    :cond_36
    iput-boolean v6, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->isCurved:Z

    .line 184
    iput-boolean v6, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->curveCheckRequired:Z

    .line 186
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/BezierPatch;->startAnimation()V

    .line 187
    :cond_3d
    return-void
.end method

.method public isCurved()Z
    .registers 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->isCurved:Z

    return v0
.end method

.method readZ([F)V
    .registers 5
    .parameter "z"

    .prologue
    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 166
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x2

    aget v1, v1, v2

    aput v1, p1, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_11
    return-void
.end method

.method public reset()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 245
    iget-wide v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 246
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/ui3d/BezierPatch;->initDefaultCPS([F)V

    .line 247
    iput-boolean v4, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->isCurved:Z

    .line 250
    :goto_10
    iget-object v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/ui3d/BezierPatch;->initDefaultCPS([F)V

    .line 251
    iput-boolean v4, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->curveCheckRequired:Z

    .line 252
    invoke-super {p0}, Lcom/motorola/android/internal/ui3d/Morphable;->reset()V

    .line 253
    return-void

    .line 249
    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->isCurved:Z

    goto :goto_10
.end method

.method startAnimation()V
    .registers 5

    .prologue
    .line 157
    invoke-super {p0}, Lcom/motorola/android/internal/ui3d/Morphable;->startAnimation()V

    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->deltas:[F

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 160
    iget-object v1, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->deltas:[F

    iget-object v2, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    aget v3, v3, v0

    sub-float/2addr v2, v3

    aput v2, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 162
    :cond_19
    return-void
.end method

.method protected update(J)V
    .registers 16
    .parameter "time"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 112
    iget-wide v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->duration:J

    cmp-long v5, v5, v11

    if-eqz v5, :cond_44

    .line 115
    iget-wide v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->startTime:J

    sub-long v2, p1, v5

    .line 118
    .local v2, t:J
    cmp-long v5, v2, v11

    if-lez v5, :cond_44

    .line 120
    iget-wide v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->duration:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_48

    .line 121
    iput-wide v11, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->duration:J

    .line 122
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    iget-object v6, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->scales:[F

    iget-object v6, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targetScales:[F

    aget v6, v6, v8

    aput v6, v5, v8

    .line 124
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->scales:[F

    iget-object v6, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targetScales:[F

    aget v6, v6, v9

    aput v6, v5, v9

    .line 125
    iget-boolean v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->curveCheckRequired:Z

    if-eqz v5, :cond_45

    .line 126
    invoke-direct {p0}, Lcom/motorola/android/internal/ui3d/BezierPatch;->checkCurved()Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->isCurved:Z

    .line 127
    iput-boolean v8, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->curveCheckRequired:Z

    .line 132
    :goto_41
    invoke-virtual {p0}, Lcom/motorola/android/internal/ui3d/BezierPatch;->animationEnded()V

    .line 153
    .end local v2           #t:J
    :cond_44
    :goto_44
    return-void

    .line 129
    .restart local v2       #t:J
    :cond_45
    iput-boolean v8, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->isCurved:Z

    goto :goto_41

    .line 134
    :cond_48
    iget-wide v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->duration:J

    sub-long/2addr v5, v2

    long-to-float v4, v5

    .line 135
    .local v4, timeLeft:F
    iget-wide v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->duration:J

    long-to-float v5, v5

    div-float v5, v4, v5

    invoke-virtual {p0, v5}, Lcom/motorola/android/internal/ui3d/BezierPatch;->interpolate(F)F

    move-result v1

    .line 137
    .local v1, ratio:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_56
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    array-length v5, v5

    if-ge v0, v5, :cond_74

    .line 138
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->deltas:[F

    aget v5, v5, v0

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_71

    .line 139
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->cps:[F

    iget-object v6, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targets:[F

    aget v6, v6, v0

    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->deltas:[F

    aget v7, v7, v0

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    aput v6, v5, v0

    .line 137
    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 146
    :cond_74
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->deltaScales:[F

    aget v5, v5, v8

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_8a

    .line 147
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->scales:[F

    iget-object v6, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targetScales:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->deltaScales:[F

    aget v7, v7, v8

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    aput v6, v5, v8

    .line 148
    :cond_8a
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->deltaScales:[F

    aget v5, v5, v9

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_44

    .line 149
    iget-object v5, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->scales:[F

    iget-object v6, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->targetScales:[F

    aget v6, v6, v9

    iget-object v7, p0, Lcom/motorola/android/internal/ui3d/BezierPatch;->deltaScales:[F

    aget v7, v7, v9

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    aput v6, v5, v9

    goto :goto_44
.end method

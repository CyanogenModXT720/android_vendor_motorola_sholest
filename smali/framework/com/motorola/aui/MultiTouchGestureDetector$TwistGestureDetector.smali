.class Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;
.super Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/aui/MultiTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwistGestureDetector"
.end annotation


# static fields
.field private static final deltaNone:F


# instance fields
.field final synthetic this$0:Lcom/motorola/aui/MultiTouchGestureDetector;


# direct methods
.method private constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector;)V
    .registers 3
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->this$0:Lcom/motorola/aui/MultiTouchGestureDetector;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;)V

    return-void
.end method


# virtual methods
.method public getDelta([Landroid/graphics/Point;)F
    .registers 12
    .parameter "finger"

    .prologue
    const v9, 0x40c90fdb

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 224
    iget-object v3, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v3, v3, v8

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v5, v5, v8

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 225
    .local v1, angleInitial:F
    aget-object v3, p1, v8

    iget v3, v3, Landroid/graphics/Point;->y:I

    aget-object v4, p1, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    aget-object v5, p1, v8

    iget v5, v5, Landroid/graphics/Point;->x:I

    aget-object v6, p1, v7

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v0, v3

    .line 226
    .local v0, angleCurrent:F
    sub-float v2, v0, v1

    .line 227
    .local v2, delta:F
    float-to-double v3, v2

    const-wide v5, 0x400921fb54442d18L

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4c

    .line 228
    sub-float/2addr v2, v9

    .line 230
    :cond_4c
    float-to-double v3, v2

    const-wide v5, -0x3ff6de04abbbd2e8L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_57

    .line 231
    add-float/2addr v2, v9

    .line 233
    :cond_57
    const/4 v3, 0x0

    sub-float v3, v2, v3

    return v3
.end method

.method public initialize([Landroid/graphics/Point;)V
    .registers 2
    .parameter "finger"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->update([Landroid/graphics/Point;)V

    .line 217
    return-void
.end method

.method public report([Landroid/graphics/Point;F)V
    .registers 15
    .parameter "finger"
    .parameter "temper"

    .prologue
    .line 241
    iget-object v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 242
    .local v1, angleInitial:F
    const/4 v6, 0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 243
    .local v0, angleCurrent:F
    sub-float v2, v0, v1

    .line 244
    .local v2, delta:F
    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    sub-float/2addr v7, p2

    mul-float/2addr v6, v7

    mul-float v7, v2, p2

    add-float v2, v6, v7

    .line 250
    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_10b

    .line 279
    const/4 v6, 0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    int-to-float v4, v6

    .line 280
    .local v4, numerator:F
    iget-object v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    int-to-float v3, v6

    .line 287
    .local v3, denominator:F
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_10b

    .line 288
    div-float v5, v4, v3

    .line 299
    .local v5, p:F
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_cb

    const/4 v5, 0x0

    .line 300
    :cond_cb
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_d3

    const/high16 v5, 0x3f80

    .line 306
    :cond_d3
    iget-object v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->this$0:Lcom/motorola/aui/MultiTouchGestureDetector;

    invoke-static {v6}, Lcom/motorola/aui/MultiTouchGestureDetector;->access$400(Lcom/motorola/aui/MultiTouchGestureDetector;)Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    move-result-object v6

    const v7, 0x42652ee1

    mul-float/2addr v7, v2

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const/4 v9, 0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, 0x0

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    const/4 v10, 0x1

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    const/4 v11, 0x0

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    invoke-interface {v6, v7, v8, v9}, Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;->onTwist(FFF)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;->update([Landroid/graphics/Point;)V

    .line 314
    .end local v3           #denominator:F
    .end local v4           #numerator:F
    .end local v5           #p:F
    :cond_10b
    return-void
.end method

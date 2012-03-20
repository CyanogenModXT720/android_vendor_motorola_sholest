.class public Lcom/motorola/aui/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;
.super Ljava/lang/Object;
.source "MultiTouchGestureDetector.java"

# interfaces
.implements Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/aui/MultiTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnMultiTouchGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginMultiTouch()V
    .registers 1

    .prologue
    .line 106
    return-void
.end method

.method public endMultiTouch()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public onGlide(FF)V
    .registers 3
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 144
    return-void
.end method

.method public onPinch(FFF)V
    .registers 4
    .parameter "ratio"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 125
    return-void
.end method

.method public onTwist(FFF)V
    .registers 4
    .parameter "angle"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 136
    return-void
.end method

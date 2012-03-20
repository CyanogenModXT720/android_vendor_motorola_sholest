.class Lcom/motorola/android/widget/TextOverlay$1;
.super Ljava/lang/Object;
.source "TextOverlay.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/widget/TextOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/widget/TextOverlay;


# direct methods
.method constructor <init>(Lcom/motorola/android/widget/TextOverlay;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/motorola/android/widget/TextOverlay$1;->this$0:Lcom/motorola/android/widget/TextOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay$1;->this$0:Lcom/motorola/android/widget/TextOverlay;

    invoke-static {v0}, Lcom/motorola/android/widget/TextOverlay;->access$100(Lcom/motorola/android/widget/TextOverlay;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/widget/TextOverlay$1;->this$0:Lcom/motorola/android/widget/TextOverlay;

    invoke-static {v1}, Lcom/motorola/android/widget/TextOverlay;->access$000(Lcom/motorola/android/widget/TextOverlay;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/motorola/android/widget/TextOverlay$1;->this$0:Lcom/motorola/android/widget/TextOverlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/android/widget/TextOverlay;->access$202(Lcom/motorola/android/widget/TextOverlay;Z)Z

    .line 100
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 102
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 96
    return-void
.end method

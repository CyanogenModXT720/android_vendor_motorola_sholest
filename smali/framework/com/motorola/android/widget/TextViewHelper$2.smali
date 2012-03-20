.class Lcom/motorola/android/widget/TextViewHelper$2;
.super Ljava/lang/Object;
.source "TextViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/widget/TextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/widget/TextViewHelper;


# direct methods
.method constructor <init>(Lcom/motorola/android/widget/TextViewHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 554
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->access$302(Lcom/motorola/android/widget/TextViewHelper;Z)Z

    .line 557
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v2}, Lcom/motorola/android/widget/TextViewHelper;->access$400(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v3}, Lcom/motorola/android/widget/TextViewHelper;->access$400(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/motorola/android/widget/TextViewHelper;->access$500(Lcom/motorola/android/widget/TextViewHelper;FF)I

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->access$600(Lcom/motorola/android/widget/TextViewHelper;I)Z

    .line 561
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v1}, Lcom/motorola/android/widget/TextViewHelper;->access$400(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->access$700(Lcom/motorola/android/widget/TextViewHelper;Landroid/view/MotionEvent;)V

    .line 562
    return-void
.end method

.class Lcom/motorola/android/widget/TextViewHelper$3;
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
    .line 642
    iput-object p1, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 643
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 644
    .local v2, now:J
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$800(Lcom/motorola/android/widget/TextViewHelper;)J

    move-result-wide v7

    sub-long v7, v2, v7

    long-to-float v7, v7

    const/high16 v8, 0x447a

    div-float v6, v7, v8

    .line 645
    .local v6, t:F
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$900(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    const/high16 v8, 0x3f00

    add-float v0, v7, v8

    .line 646
    .local v0, displacement:F
    const/high16 v7, 0x3f80

    cmpg-float v7, v0, v7

    if-gez v7, :cond_3b

    .line 647
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1200(Lcom/motorola/android/widget/TextViewHelper;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v8}, Lcom/motorola/android/widget/TextViewHelper;->access$1000(Lcom/motorola/android/widget/TextViewHelper;)Ljava/lang/Runnable;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v9}, Lcom/motorola/android/widget/TextViewHelper;->access$1100(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 706
    :goto_3a
    return-void

    .line 651
    :cond_3b
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7, v2, v3}, Lcom/motorola/android/widget/TextViewHelper;->access$802(Lcom/motorola/android/widget/TextViewHelper;J)J

    .line 652
    const/4 v1, 0x1

    .line 653
    .local v1, more:Z
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$100(Lcom/motorola/android/widget/TextViewHelper;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    .line 654
    .local v4, sx:I
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$100(Lcom/motorola/android/widget/TextViewHelper;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    .line 655
    .local v5, sy:I
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1300(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v7

    packed-switch v7, :pswitch_data_110

    .line 687
    :cond_5e
    :goto_5e
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/motorola/android/widget/TextViewHelper;->access$1602(Lcom/motorola/android/widget/TextViewHelper;Z)Z

    .line 688
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$100(Lcom/motorola/android/widget/TextViewHelper;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/widget/TextView;->scrollTo(II)V

    .line 689
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7, v11}, Lcom/motorola/android/widget/TextViewHelper;->access$1602(Lcom/motorola/android/widget/TextViewHelper;Z)Z

    .line 694
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    iget-object v9, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v9}, Lcom/motorola/android/widget/TextViewHelper;->access$1700(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v10}, Lcom/motorola/android/widget/TextViewHelper;->access$1700(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/motorola/android/widget/TextViewHelper;->access$500(Lcom/motorola/android/widget/TextViewHelper;FF)I

    move-result v8

    invoke-static {v7, v8}, Lcom/motorola/android/widget/TextViewHelper;->access$600(Lcom/motorola/android/widget/TextViewHelper;I)Z

    .line 696
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1800(Lcom/motorola/android/widget/TextViewHelper;)Lcom/motorola/android/widget/TextOverlay;

    move-result-object v7

    if-eqz v7, :cond_b9

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1800(Lcom/motorola/android/widget/TextViewHelper;)Lcom/motorola/android/widget/TextOverlay;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/android/widget/TextOverlay;->isShown()Z

    move-result v7

    if-eqz v7, :cond_b9

    .line 697
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v8}, Lcom/motorola/android/widget/TextViewHelper;->access$1700(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/android/widget/TextViewHelper;->access$1900(Lcom/motorola/android/widget/TextViewHelper;Landroid/view/MotionEvent;)V

    .line 698
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1800(Lcom/motorola/android/widget/TextViewHelper;)Lcom/motorola/android/widget/TextOverlay;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/android/widget/TextOverlay;->invalidate()V

    .line 702
    :cond_b9
    if-eqz v1, :cond_108

    .line 703
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1200(Lcom/motorola/android/widget/TextViewHelper;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v8}, Lcom/motorola/android/widget/TextViewHelper;->access$1000(Lcom/motorola/android/widget/TextViewHelper;)Ljava/lang/Runnable;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v9}, Lcom/motorola/android/widget/TextViewHelper;->access$1100(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3a

    .line 657
    :pswitch_d3
    float-to-int v7, v0

    sub-int/2addr v5, v7

    .line 658
    if-gtz v5, :cond_5e

    .line 659
    const/4 v5, 0x0

    .line 660
    const/4 v1, 0x0

    goto :goto_5e

    .line 664
    :pswitch_da
    float-to-int v7, v0

    add-int/2addr v5, v7

    .line 665
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1400(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v7

    if-lt v5, v7, :cond_5e

    .line 666
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1400(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v5

    .line 667
    const/4 v1, 0x0

    goto/16 :goto_5e

    .line 671
    :pswitch_ed
    float-to-int v7, v0

    sub-int/2addr v4, v7

    .line 672
    if-gtz v4, :cond_5e

    .line 673
    const/4 v4, 0x0

    .line 674
    const/4 v1, 0x0

    goto/16 :goto_5e

    .line 678
    :pswitch_f5
    float-to-int v7, v0

    add-int/2addr v4, v7

    .line 679
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1500(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v7

    if-lt v4, v7, :cond_5e

    .line 680
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1500(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v4

    .line 681
    const/4 v1, 0x0

    goto/16 :goto_5e

    .line 705
    :cond_108
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v7, v11}, Lcom/motorola/android/widget/TextViewHelper;->access$2002(Lcom/motorola/android/widget/TextViewHelper;Z)Z

    goto/16 :goto_3a

    .line 655
    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_f5
        :pswitch_da
        :pswitch_ed
        :pswitch_d3
    .end packed-switch
.end method

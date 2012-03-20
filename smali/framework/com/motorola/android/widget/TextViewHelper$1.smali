.class Lcom/motorola/android/widget/TextViewHelper$1;
.super Landroid/os/Handler;
.source "TextViewHelper.java"


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
    .line 113
    iput-object p1, p0, Lcom/motorola/android/widget/TextViewHelper$1;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 120
    :goto_5
    return-void

    .line 116
    :pswitch_6
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$1;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->access$002(Lcom/motorola/android/widget/TextViewHelper;Z)Z

    .line 117
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$1;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-static {v0}, Lcom/motorola/android/widget/TextViewHelper;->access$100(Lcom/motorola/android/widget/TextViewHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_5

    .line 114
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

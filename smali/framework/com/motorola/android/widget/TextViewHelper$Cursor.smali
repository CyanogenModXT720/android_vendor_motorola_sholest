.class Lcom/motorola/android/widget/TextViewHelper$Cursor;
.super Ljava/lang/Object;
.source "TextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/widget/TextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cursor"
.end annotation


# instance fields
.field public line:I

.field public offset:I

.field final synthetic this$0:Lcom/motorola/android/widget/TextViewHelper;


# direct methods
.method private constructor <init>(Lcom/motorola/android/widget/TextViewHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/motorola/android/widget/TextViewHelper$Cursor;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/widget/TextViewHelper;Lcom/motorola/android/widget/TextViewHelper$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper$Cursor;-><init>(Lcom/motorola/android/widget/TextViewHelper;)V

    return-void
.end method

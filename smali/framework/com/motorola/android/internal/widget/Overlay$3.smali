.class Lcom/motorola/android/internal/widget/Overlay$3;
.super Ljava/lang/Object;
.source "Overlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/widget/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/widget/Overlay;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/widget/Overlay;)V
    .registers 2
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/motorola/android/internal/widget/Overlay$3;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/motorola/android/internal/widget/Overlay$3;->this$0:Lcom/motorola/android/internal/widget/Overlay;

    invoke-virtual {v0}, Lcom/motorola/android/internal/widget/Overlay;->handleUpdateView()V

    .line 313
    return-void
.end method

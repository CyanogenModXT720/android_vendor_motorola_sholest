.class public Lcom/motorola/android/internal/baton/Baton;
.super Ljava/lang/Object;
.source "Baton.java"


# static fields
.field public static final ID_FINAL_FACET:I = 0x2

.field public static final ID_INITIAL_FACET:I = 0x1

.field public static final TYPE_BATON:I = 0x0

.field public static final TYPE_FACET:I = 0x7


# instance fields
.field private mId:I

.field private mType:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .registers 4
    .parameter "view"
    .parameter "type"
    .parameter "id"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/motorola/android/internal/baton/Baton;->mView:Landroid/view/View;

    .line 50
    iput p2, p0, Lcom/motorola/android/internal/baton/Baton;->mType:I

    .line 51
    iput p3, p0, Lcom/motorola/android/internal/baton/Baton;->mId:I

    .line 52
    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/motorola/android/internal/baton/Baton;->mId:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/motorola/android/internal/baton/Baton;->mType:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/motorola/android/internal/baton/Baton;->mView:Landroid/view/View;

    return-object v0
.end method

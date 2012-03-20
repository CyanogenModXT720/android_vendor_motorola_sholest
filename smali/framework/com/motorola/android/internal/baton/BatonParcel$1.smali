.class Lcom/motorola/android/internal/baton/BatonParcel$1;
.super Ljava/lang/Object;
.source "BatonParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/baton/BatonParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/motorola/android/internal/baton/BatonParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/internal/baton/BatonParcel;
    .registers 4
    .parameter "in"

    .prologue
    .line 102
    new-instance v0, Lcom/motorola/android/internal/baton/BatonParcel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/motorola/android/internal/baton/BatonParcel;-><init>(Landroid/os/Parcel;Lcom/motorola/android/internal/baton/BatonParcel$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/baton/BatonParcel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/internal/baton/BatonParcel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/android/internal/baton/BatonParcel;
    .registers 3
    .parameter "size"

    .prologue
    .line 106
    new-array v0, p1, [Lcom/motorola/android/internal/baton/BatonParcel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/baton/BatonParcel$1;->newArray(I)[Lcom/motorola/android/internal/baton/BatonParcel;

    move-result-object v0

    return-object v0
.end method

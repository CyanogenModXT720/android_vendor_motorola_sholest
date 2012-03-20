.class Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension$1;
.super Ljava/lang/Object;
.source "NetworkInfoExtension.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;
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
        "Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;
    .registers 8
    .parameter "in"

    .prologue
    .line 151
    new-instance v0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;I)V

    .line 157
    .local v0, netInfoExt:Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;
    .registers 3
    .parameter "size"

    .prologue
    .line 161
    new-array v0, p1, [Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension$1;->newArray(I)[Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;

    move-result-object v0

    return-object v0
.end method

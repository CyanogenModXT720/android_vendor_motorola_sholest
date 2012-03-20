.class public Lcom/motorola/android/internal/baton/BatonParcel;
.super Ljava/lang/Object;
.source "BatonParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/internal/baton/BatonParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBatonId:I

.field private mBatonType:I

.field private mBitmapLength:I

.field private mDestRect:Landroid/graphics/Rect;

.field private mParcelDesc:Landroid/os/ParcelFileDescriptor;

.field private mSourceRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    new-instance v0, Lcom/motorola/android/internal/baton/BatonParcel$1;

    invoke-direct {v0}, Lcom/motorola/android/internal/baton/BatonParcel$1;-><init>()V

    sput-object v0, Lcom/motorola/android/internal/baton/BatonParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 6
    .parameter "b"
    .parameter "source"
    .parameter "dest"
    .parameter "id"
    .parameter "type"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/baton/BatonParcel;->writeBitmapToSharedMemory(Landroid/graphics/Bitmap;)V

    .line 46
    iput-object p2, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mSourceRect:Landroid/graphics/Rect;

    .line 47
    iput-object p3, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mDestRect:Landroid/graphics/Rect;

    .line 48
    iput p4, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBatonId:I

    .line 49
    iput p5, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBatonType:I

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mParcelDesc:Landroid/os/ParcelFileDescriptor;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBitmapLength:I

    .line 79
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mSourceRect:Landroid/graphics/Rect;

    .line 80
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mDestRect:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBatonType:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBatonId:I

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/android/internal/baton/BatonParcel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/baton/BatonParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createBatonParcel(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;II)Lcom/motorola/android/internal/baton/BatonParcel;
    .registers 11
    .parameter "b"
    .parameter "source"
    .parameter "dest"
    .parameter "id"
    .parameter "type"

    .prologue
    .line 37
    new-instance v0, Lcom/motorola/android/internal/baton/BatonParcel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/internal/baton/BatonParcel;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-object v0
.end method

.method private writeBitmapToSharedMemory(Landroid/graphics/Bitmap;)V
    .registers 11
    .parameter "b"

    .prologue
    const-string v8, "Error writing to shared memory"

    const-string v7, "BatonParcel"

    .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 55
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 57
    .local v1, data:[B
    :try_start_14
    new-instance v3, Landroid/os/MemoryFile;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-direct {v3, v4, v5}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 58
    .local v3, sharedMemFile:Landroid/os/MemoryFile;
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v1

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 59
    invoke-virtual {v3}, Landroid/os/MemoryFile;->deactivate()V

    .line 60
    array-length v4, v1

    iput v4, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBitmapLength:I

    .line 61
    invoke-virtual {v3}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mParcelDesc:Landroid/os/ParcelFileDescriptor;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2d} :catch_3b

    .line 71
    .end local v3           #sharedMemFile:Landroid/os/MemoryFile;
    :goto_2d
    return-void

    .line 63
    :catch_2e
    move-exception v4

    move-object v2, v4

    .line 64
    .local v2, e:Ljava/io/IOException;
    const-string v4, "BatonParcel"

    const-string v4, "Error writing to shared memory"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 67
    .end local v2           #e:Ljava/io/IOException;
    :catch_3b
    move-exception v4

    move-object v2, v4

    .line 68
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "BatonParcel"

    const-string v4, "Error writing to shared memory"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 11

    .prologue
    const/4 v7, 0x0

    const-string v9, "Error reading from shared memory"

    const-string v8, "BatonParcel"

    .line 116
    iget v4, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBitmapLength:I

    new-array v1, v4, [B

    .line 119
    .local v1, data:[B
    :try_start_9
    new-instance v3, Landroid/os/MemoryFile;

    iget-object v4, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mParcelDesc:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBitmapLength:I

    const-string v6, "r"

    invoke-direct {v3, v4, v5, v6}, Landroid/os/MemoryFile;-><init>(Ljava/io/FileDescriptor;ILjava/lang/String;)V

    .line 120
    .local v3, localf:Landroid/os/MemoryFile;
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBitmapLength:I

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 121
    iget-object v4, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mParcelDesc:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 122
    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_27} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_27} :catch_3b

    .line 134
    .end local v3           #localf:Landroid/os/MemoryFile;
    :goto_27
    iget v4, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBitmapLength:I

    invoke-static {v1, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, b:Landroid/graphics/Bitmap;
    return-object v0

    .line 125
    .end local v0           #b:Landroid/graphics/Bitmap;
    :catch_2e
    move-exception v4

    move-object v2, v4

    .line 126
    .local v2, e:Ljava/io/IOException;
    const-string v4, "BatonParcel"

    const-string v4, "Error reading from shared memory"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 129
    .end local v2           #e:Ljava/io/IOException;
    :catch_3b
    move-exception v4

    move-object v2, v4

    .line 131
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "BatonParcel"

    const-string v4, "Error reading from shared memory"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method public getDestRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mDestRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBatonId:I

    return v0
.end method

.method public getSourceRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mSourceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBatonType:I

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "b"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/baton/BatonParcel;->writeBitmapToSharedMemory(Landroid/graphics/Bitmap;)V

    .line 164
    return-void
.end method

.method public setDestRect(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mDestRect:Landroid/graphics/Rect;

    .line 156
    return-void
.end method

.method public setSourceRect(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mSourceRect:Landroid/graphics/Rect;

    .line 160
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mParcelDesc:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    iget v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBitmapLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    iget-object v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    iget v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBatonType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/motorola/android/internal/baton/BatonParcel;->mBatonId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    return-void
.end method

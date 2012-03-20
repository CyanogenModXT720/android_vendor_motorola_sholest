.class public Lcom/motorola/android/provider/MediaStoreExt$Images$Thumbnails;
.super Ljava/lang/Object;
.source "MediaStoreExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/MediaStoreExt$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thumbnails"
.end annotation


# static fields
.field public static final EXTERNAL_CONTENT_MTPURI:Landroid/net/Uri; = null

.field public static final FORMAT:Ljava/lang/String; = "format"

.field public static final INTERNAL_CONTENT_MTPURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 129
    const-string v0, "internal"

    invoke-static {v0}, Lcom/motorola/android/provider/MediaStoreExt$Images$Thumbnails;->getMTPContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExt$Images$Thumbnails;->INTERNAL_CONTENT_MTPURI:Landroid/net/Uri;

    .line 136
    const-string v0, "external"

    invoke-static {v0}, Lcom/motorola/android/provider/MediaStoreExt$Images$Thumbnails;->getMTPContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExt$Images$Thumbnails;->EXTERNAL_CONTENT_MTPURI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMTPContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "volumeName"

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/images/mtpthumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/motorola/android/provider/MediaStoreExt;
.super Ljava/lang/Object;
.source "MediaStoreExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/MediaStoreExt$TagInfoVideo;,
        Lcom/motorola/android/provider/MediaStoreExt$TagInfoVideoColumns;,
        Lcom/motorola/android/provider/MediaStoreExt$TagInfoImage;,
        Lcom/motorola/android/provider/MediaStoreExt$TagInfoImageColumns;,
        Lcom/motorola/android/provider/MediaStoreExt$Tag;,
        Lcom/motorola/android/provider/MediaStoreExt$TagColumns;,
        Lcom/motorola/android/provider/MediaStoreExt$Association;,
        Lcom/motorola/android/provider/MediaStoreExt$AssociationColumns;,
        Lcom/motorola/android/provider/MediaStoreExt$Video;,
        Lcom/motorola/android/provider/MediaStoreExt$Audio;,
        Lcom/motorola/android/provider/MediaStoreExt$Images;,
        Lcom/motorola/android/provider/MediaStoreExt$MediaColumns;
    }
.end annotation


# static fields
.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field private static final TAG:Ljava/lang/String; = "MediaStoreExt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    return-void
.end method

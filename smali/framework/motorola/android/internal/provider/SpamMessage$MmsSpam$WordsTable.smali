.class public final Lmotorola/android/internal/provider/SpamMessage$MmsSpam$WordsTable;
.super Ljava/lang/Object;
.source "SpamMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmotorola/android/internal/provider/SpamMessage$MmsSpam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WordsTable"
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INDEXED_TEXT:Ljava/lang/String; = "index_text"

.field public static final SOURCE_ROW_ID:Ljava/lang/String; = "source_id"

.field public static final TABLE_ID:Ljava/lang/String; = "table_to_use"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

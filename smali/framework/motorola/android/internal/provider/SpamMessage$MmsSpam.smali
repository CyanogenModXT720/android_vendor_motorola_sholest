.class public final Lmotorola/android/internal/provider/SpamMessage$MmsSpam;
.super Ljava/lang/Object;
.source "SpamMessage.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmotorola/android/internal/provider/SpamMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsSpam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmotorola/android/internal/provider/SpamMessage$MmsSpam$WordsTable;,
        Lmotorola/android/internal/provider/SpamMessage$MmsSpam$PendingMessages;
    }
.end annotation


# static fields
.field public static final CONTENT_CONVERSATIONS_URI:Landroid/net/Uri; = null

.field public static final CONTENT_DRAFT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri; = null

.field public static final CONTENT_LOCKED_URI:Landroid/net/Uri; = null

.field public static final CONTENT_UNDELIVERED_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ERR_TYPE_GENERIC:I = 0x1

.field public static final ERR_TYPE_GENERIC_PERMANENT:I = 0xa

.field public static final ERR_TYPE_MMS_PROTO_PERMANENT:I = 0xc

.field public static final ERR_TYPE_MMS_PROTO_TRANSIENT:I = 0x3

.field public static final ERR_TYPE_SMS_PROTO_PERMANENT:I = 0xb

.field public static final ERR_TYPE_SMS_PROTO_TRANSIENT:I = 0x2

.field public static final ERR_TYPE_TRANSPORT_FAILURE:I = 0x4

.field public static final MMS_PROTO:I = 0x1

.field public static final NO_ERROR:I = 0x0

.field public static final SEARCH_URI:Landroid/net/Uri; = null

.field public static final SPAM_PROTO:I = 0x0

.field public static final TYPE_DISCRIMINATOR_COLUMN:Ljava/lang/String; = "transport_type"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 614
    const-string v0, "content://mms-spam/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmotorola/android/internal/provider/SpamMessage$MmsSpam;->CONTENT_URI:Landroid/net/Uri;

    .line 616
    const-string v0, "content://mms-spam/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmotorola/android/internal/provider/SpamMessage$MmsSpam;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    .line 619
    const-string v0, "content://mms-spam/messages/byphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmotorola/android/internal/provider/SpamMessage$MmsSpam;->CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri;

    .line 622
    const-string v0, "content://mms-spam/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmotorola/android/internal/provider/SpamMessage$MmsSpam;->CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

    .line 625
    const-string v0, "content://mms-spam/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmotorola/android/internal/provider/SpamMessage$MmsSpam;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    .line 628
    const-string v0, "content://mms-spam/locked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmotorola/android/internal/provider/SpamMessage$MmsSpam;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    .line 636
    const-string v0, "content://mms-spam/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmotorola/android/internal/provider/SpamMessage$MmsSpam;->SEARCH_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    return-void
.end method

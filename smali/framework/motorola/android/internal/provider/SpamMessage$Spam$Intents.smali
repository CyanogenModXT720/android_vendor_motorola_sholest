.class public final Lmotorola/android/internal/provider/SpamMessage$Spam$Intents;
.super Ljava/lang/Object;
.source "SpamMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmotorola/android/internal/provider/SpamMessage$Spam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final CMAS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CMAS_RECEIVED"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final PHONE_SMS_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.PHONE_SMS_FULL"

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_RECEIVED_STORED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED_STORED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .registers 9
    .parameter "intent"

    .prologue
    .line 507
    const-string v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 508
    .local v2, messages:[Ljava/lang/Object;
    array-length v7, v2

    new-array v5, v7, [[B

    .line 510
    .local v5, pduObjs:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    array-length v7, v2

    if-ge v1, v7, :cond_1e

    .line 511
    aget-object p0, v2, v1

    check-cast p0, [B

    check-cast p0, [B

    aput-object p0, v5, v1

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 513
    :cond_1e
    array-length v7, v5

    new-array v6, v7, [[B

    .line 514
    .local v6, pdus:[[B
    array-length v4, v6

    .line 515
    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 516
    .local v3, msgs:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_25
    if-ge v1, v4, :cond_36

    .line 517
    aget-object v7, v5, v1

    aput-object v7, v6, v1

    .line 518
    aget-object v7, v6, v1

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v3, v1

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 520
    :cond_36
    return-object v3
.end method

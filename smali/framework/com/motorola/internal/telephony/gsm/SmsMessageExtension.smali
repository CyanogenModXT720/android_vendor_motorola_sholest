.class public Lcom/motorola/internal/telephony/gsm/SmsMessageExtension;
.super Ljava/lang/Object;
.source "SmsMessageExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$DeliverPdu;,
        Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$SubmitPdu;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM_Extension"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    return-void
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;[B)Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$DeliverPdu;
    .registers 11
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "header"

    .prologue
    .line 352
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 353
    :cond_4
    const/4 p0, 0x0

    .line 500
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_5
    return-object p0

    .line 355
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_6
    new-instance v5, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$DeliverPdu;

    invoke-direct {v5}, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$DeliverPdu;-><init>()V

    .line 357
    .local v5, retPdu:Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$DeliverPdu;
    if-nez p0, :cond_67

    .line 359
    const/4 p0, 0x0

    iput-object p0, v5, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$DeliverPdu;->encodedScAddress:[B

    .line 365
    .end local p0
    :goto_10
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0xb4

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 368
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 369
    .local v0, mtiByte:B
    const/4 v2, 0x0

    .line 371
    .local v2, btRp:B
    const/16 v4, 0x40

    .line 372
    .local v4, btUdhi:B
    const/4 v3, 0x0

    .line 373
    .local v3, btSri:B
    const/4 v0, 0x0

    .line 374
    .local v0, btMms:B
    const/4 v1, 0x0

    .line 377
    .local v1, btMti:B
    or-int/2addr v2, v4

    or-int/lit8 v2, v3, 0x40

    or-int/lit8 v0, v0, 0x40

    or-int/lit8 v0, v1, 0x40

    int-to-byte v0, v0

    .line 378
    .local v0, mtiByte:B
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 391
    .end local v2           #btRp:B
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .end local v0           #mtiByte:B
    if-nez v0, :cond_6e

    .line 392
    :cond_31
    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 394
    .local p1, result:[B
    const/4 v0, 0x0

    const/16 v1, -0x7f

    aput-byte v1, p1, v0

    .line 395
    .end local v1           #btMti:B
    move-object p1, p1

    .line 400
    .local p1, oaBytes:[B
    :goto_3a
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_73

    const/4 v1, 0x1

    :goto_4b
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 402
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 405
    const/4 p1, 0x0

    .line 406
    .local p1, btPid:B
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 411
    :try_start_58
    invoke-static {p2, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 412
    .local v0, userData:[B
    const/4 p1, 0x0

    aget-byte p1, v0, p1
    :try_end_5f
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_58 .. :try_end_5f} :catch_90

    .end local p1           #btPid:B
    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0xa0

    if-le p1, v1, :cond_75

    .line 414
    const/4 p0, 0x0

    goto :goto_5

    .line 361
    .end local v0           #userData:[B
    .end local v3           #btSri:B
    .end local v4           #btUdhi:B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, peerAddress:Ljava/lang/String;
    :cond_67
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0           #scAddress:Ljava/lang/String;
    iput-object p0, v5, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$DeliverPdu;->encodedScAddress:[B

    goto :goto_10

    .line 397
    .restart local v1       #btMti:B
    .restart local v3       #btSri:B
    .restart local v4       #btUdhi:B
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    :cond_6e
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object p1

    .local p1, oaBytes:[B
    goto :goto_3a

    .line 400
    .end local v1           #btMti:B
    :cond_73
    const/4 v1, 0x0

    goto :goto_4b

    .line 418
    .end local p1           #oaBytes:[B
    .restart local v0       #userData:[B
    :cond_75
    const/4 p1, 0x0

    :try_start_76
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 421
    invoke-static {p3}, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension;->packTimeStamp(Landroid/text/format/Time;)[B

    move-result-object p1

    .line 422
    .local p1, tmbs:[B
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 432
    const/4 p1, 0x0

    array-length v1, v0

    .end local p1           #tmbs:[B
    invoke-virtual {p0, v0, p1, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_87
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_76 .. :try_end_87} :catch_90

    .line 499
    .end local v0           #userData:[B
    .end local p2
    .end local p3
    .end local p4
    :goto_87
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v5, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$DeliverPdu;->encodedMessage:[B

    move-object p0, v5

    .line 500
    goto/16 :goto_5

    .line 433
    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local p2
    .restart local p3
    .restart local p4
    :catch_90
    move-exception p1

    .line 443
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_91
    const-string p1, "EUC_KR"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_96
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_91 .. :try_end_96} :catch_bb

    move-result-object p1

    .line 452
    .local p1, textPart:[B
    if-eqz p4, :cond_c6

    .line 454
    array-length p2, p4

    .end local p2
    array-length v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [B

    .line 456
    .local p2, userData:[B
    const/4 v0, 0x0

    array-length v1, p4

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 457
    const/4 v0, 0x0

    const/4 v1, 0x1

    array-length v2, p4

    invoke-static {p4, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    const/4 v0, 0x0

    array-length p4, p4

    .end local p4
    add-int/lit8 p4, p4, 0x1

    array-length v1, p1

    invoke-static {p1, v0, p2, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    .end local p1           #textPart:[B
    :goto_b3
    array-length p1, p2

    const/16 p4, 0x8c

    if-le p1, p4, :cond_c9

    .line 465
    const/4 p0, 0x0

    goto/16 :goto_5

    .line 444
    .local p2, message:Ljava/lang/String;
    .restart local p4
    :catch_bb
    move-exception p0

    .line 445
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM_Extension"

    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2           #message:Ljava/lang/String;
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    const/4 p0, 0x0

    goto/16 :goto_5

    .line 460
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .restart local p1       #textPart:[B
    .restart local p2       #message:Ljava/lang/String;
    :cond_c6
    move-object p1, p1

    .local p1, userData:[B
    move-object p2, p1

    .end local p1           #userData:[B
    .local p2, userData:[B
    goto :goto_b3

    .line 487
    .end local p4
    :cond_c9
    const/16 p1, 0x95

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 490
    invoke-static {p3}, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension;->packTimeStamp(Landroid/text/format/Time;)[B

    move-result-object p1

    .line 491
    .local p1, tmbs:[B
    const/4 p3, 0x0

    array-length p4, p1

    .end local p3
    invoke-virtual {p0, p1, p3, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 494
    array-length p1, p2

    .end local p1           #tmbs:[B
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 496
    const/4 p1, 0x0

    array-length p3, p2

    invoke-virtual {p0, p2, p1, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_87
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$SubmitPdu;
    .registers 5
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$SubmitPdu;
    .registers 16
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 82
    if-eqz p2, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move-object v7, v10

    .line 177
    :goto_7
    return-object v7

    .line 86
    :cond_8
    new-instance v3, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$SubmitPdu;

    invoke-direct {v3}, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$SubmitPdu;-><init>()V

    .line 88
    .local v3, ret:Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$SubmitPdu;
    if-eqz p4, :cond_27

    const/16 v7, 0x40

    :goto_11
    or-int/lit8 v7, v7, 0x1

    int-to-byte v2, v7

    .line 89
    .local v2, mtiByte:B
    invoke-static {p0, p1, v2, p3, v3}, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/motorola/internal/telephony/gsm/SmsMessageExtension$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 97
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    :try_start_18
    invoke-static {p2, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v6

    .line 99
    .local v6, userData:[B
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xa0

    if-le v7, v8, :cond_29

    move-object v7, v10

    .line 101
    goto :goto_7

    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v2           #mtiByte:B
    .end local v6           #userData:[B
    :cond_27
    move v7, v9

    .line 88
    goto :goto_11

    .line 112
    .restart local v0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #mtiByte:B
    .restart local v6       #userData:[B
    :cond_29
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 116
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v0, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_32
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_18 .. :try_end_32} :catch_3a

    .line 176
    :goto_32
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v3, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$SubmitPdu;->encodedMessage:[B

    move-object v7, v3

    .line 177
    goto :goto_7

    .line 117
    .end local v6           #userData:[B
    :catch_3a
    move-exception v7

    move-object v1, v7

    .line 123
    .local v1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3c
    const-string v7, "EUC_KR"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3c .. :try_end_41} :catch_62

    move-result-object v4

    .line 131
    .local v4, textPart:[B
    if-eqz p4, :cond_6d

    .line 133
    array-length v7, p4

    array-length v8, v4

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    new-array v6, v7, [B

    .line 135
    .restart local v6       #userData:[B
    array-length v7, p4

    int-to-byte v7, v7

    aput-byte v7, v6, v9

    .line 136
    const/4 v7, 0x1

    array-length v8, p4

    invoke-static {p4, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    array-length v7, p4

    add-int/lit8 v7, v7, 0x1

    array-length v8, v4

    invoke-static {v4, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :goto_5b
    array-length v7, v6

    const/16 v8, 0x8c

    if-le v7, v8, :cond_6f

    move-object v7, v10

    .line 145
    goto :goto_7

    .line 124
    .end local v4           #textPart:[B
    .end local v6           #userData:[B
    :catch_62
    move-exception v7

    move-object v5, v7

    .line 125
    .local v5, uex:Ljava/io/UnsupportedEncodingException;
    const-string v7, "GSM_Extension"

    const-string v8, "Implausible UnsupportedEncodingException "

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v10

    .line 128
    goto :goto_7

    .line 140
    .end local v5           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #textPart:[B
    :cond_6d
    move-object v6, v4

    .restart local v6       #userData:[B
    goto :goto_5b

    .line 166
    :cond_6f
    const/16 v7, 0x95

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 171
    array-length v7, v6

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 173
    array-length v7, v6

    invoke-virtual {v0, v6, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_32
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/motorola/internal/telephony/gsm/SmsMessageExtension$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .registers 12
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 210
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 214
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_3f

    .line 215
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$SubmitPdu;->encodedScAddress:[B

    .line 222
    :goto_e
    if-eqz p3, :cond_1a

    .line 224
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 225
    const-string v2, "GSM_Extension"

    const-string v3, "SMS status report requested"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1a
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 230
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 234
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 238
    .local v1, daBytes:[B
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_46

    move v3, v6

    :goto_33
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 242
    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 245
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 246
    return-object v0

    .line 217
    .end local v1           #daBytes:[B
    :cond_3f
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/motorola/internal/telephony/gsm/SmsMessageExtension$SubmitPdu;->encodedScAddress:[B

    goto :goto_e

    .restart local v1       #daBytes:[B
    :cond_46
    move v3, v5

    .line 238
    goto :goto_33
.end method

.method static packTimeStamp(Landroid/text/format/Time;)[B
    .registers 13
    .parameter "timeStamp"

    .prologue
    const/16 v5, 0x76c

    const/4 v11, 0x6

    const/16 v4, 0x7d0

    const-wide/16 v9, 0x384

    const-wide/16 v7, 0xa

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, high4Bits:B
    const/4 v1, 0x0

    .line 276
    .local v1, low4Bits:B
    const/4 v3, 0x7

    new-array v2, v3, [B

    .line 278
    .local v2, ret:[B
    if-nez p0, :cond_18

    .line 280
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 281
    .restart local p0
    invoke-virtual {p0}, Landroid/text/format/Time;->setToNow()V

    .line 284
    :cond_18
    iget v3, p0, Landroid/text/format/Time;->year:I

    if-lt v3, v4, :cond_a7

    .line 286
    iget v3, p0, Landroid/text/format/Time;->year:I

    sub-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 287
    iget v3, p0, Landroid/text/format/Time;->year:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    .line 295
    :goto_28
    const/4 v3, 0x0

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 297
    iget v3, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 298
    iget v3, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    .line 299
    const/4 v3, 0x1

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 301
    iget v3, p0, Landroid/text/format/Time;->monthDay:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 302
    iget v3, p0, Landroid/text/format/Time;->monthDay:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    .line 303
    const/4 v3, 0x2

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 305
    iget v3, p0, Landroid/text/format/Time;->hour:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 306
    iget v3, p0, Landroid/text/format/Time;->hour:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    .line 307
    const/4 v3, 0x3

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 309
    iget v3, p0, Landroid/text/format/Time;->minute:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 310
    iget v3, p0, Landroid/text/format/Time;->minute:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    .line 311
    const/4 v3, 0x4

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 313
    iget v3, p0, Landroid/text/format/Time;->second:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 314
    iget v3, p0, Landroid/text/format/Time;->second:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    .line 315
    const/4 v3, 0x5

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 317
    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_b5

    .line 319
    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    neg-long v3, v3

    div-long/2addr v3, v9

    rem-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v0, v3

    .line 320
    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    neg-long v3, v3

    div-long/2addr v3, v9

    div-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v1, v3

    .line 321
    shl-int/lit8 v3, v0, 0x4

    or-int/2addr v3, v1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v11

    .line 330
    :goto_a6
    return-object v2

    .line 291
    :cond_a7
    iget v3, p0, Landroid/text/format/Time;->year:I

    sub-int/2addr v3, v5

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 292
    iget v3, p0, Landroid/text/format/Time;->year:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    goto/16 :goto_28

    .line 325
    :cond_b5
    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    div-long/2addr v3, v9

    rem-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v0, v3

    .line 326
    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    div-long/2addr v3, v9

    div-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v1, v3

    .line 327
    shl-int/lit8 v3, v0, 0x4

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v11

    goto :goto_a6
.end method

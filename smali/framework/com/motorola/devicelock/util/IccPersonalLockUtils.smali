.class public Lcom/motorola/devicelock/util/IccPersonalLockUtils;
.super Ljava/lang/Object;
.source "IccPersonalLockUtils.java"


# static fields
.field private static final defaultPersonalPasscode:Ljava/lang/String; = "0000"

.field private static final menuEnteringStateKey:Ljava/lang/String; = "menu_entering_state"

.field private static final personalLockIMSIKey:Ljava/lang/String; = "personal_lock_imsi"

.field private static final personalLockPasscodeKey:Ljava/lang/String; = "personal_lock_passcode"

.field private static final personalLockStateKey:Ljava/lang/String; = "personal_lock_state"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 4
    .parameter "cr"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 23
    iget-object v0, p0, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "personal_lock_passcode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 24
    const-string v0, "0000"

    invoke-virtual {p0, v0}, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->storePersonalPasscode(Ljava/lang/String;)Z

    .line 26
    :cond_18
    return-void
.end method

.method private static encodeHex([B)Ljava/lang/String;
    .registers 5
    .parameter "bytes"

    .prologue
    const/16 v3, 0x10

    .line 29
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 31
    .local v0, hex:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_27

    .line 32
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v3, :cond_19

    .line 33
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    :cond_19
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 38
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getHashedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "data"

    .prologue
    .line 44
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_5} :catch_f

    move-result-object v0

    .line 49
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 50
    const-string v3, ""

    .line 54
    :goto_e
    return-object v3

    .line 45
    .end local v0           #digest:Ljava/security/MessageDigest;
    :catch_f
    move-exception v3

    move-object v1, v3

    .line 46
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "this should never happen"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v0       #digest:Ljava/security/MessageDigest;
    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 54
    .local v2, hashedData:[B
    invoke-static {v2}, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_e
.end method


# virtual methods
.method public getMenuAccessState()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 93
    iget-object v1, p0, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "menu_entering_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, lockState:I
    if-nez v0, :cond_d

    const/4 v1, 0x0

    :goto_c
    return v1

    :cond_d
    move v1, v3

    goto :goto_c
.end method

.method public getPersonalLockState()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v1, p0, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "personal_lock_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, lockState:I
    if-nez v0, :cond_d

    move v1, v3

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public storeMenuAccessState(Z)Z
    .registers 6
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 98
    iget-object v0, p0, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "menu_entering_state"

    if-eqz p1, :cond_c

    move v2, v3

    :goto_8
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    return v3

    .line 98
    :cond_c
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public storePersonalIMSI(Ljava/lang/String;)Z
    .registers 4
    .parameter "imsi"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "personal_lock_imsi"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public storePersonalLockState(Z)Z
    .registers 6
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 88
    iget-object v0, p0, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "personal_lock_state"

    if-eqz p1, :cond_c

    move v2, v3

    :goto_8
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    return v3

    .line 88
    :cond_c
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public storePersonalPasscode(Ljava/lang/String;)Z
    .registers 5
    .parameter "passcode"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "personal_lock_passcode"

    invoke-direct {p0, p1}, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->getHashedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public verifyPersonalIMSI(Ljava/lang/String;)Z
    .registers 4
    .parameter "imsi"

    .prologue
    .line 71
    if-nez p1, :cond_4

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "personal_lock_imsi"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public verifyPersonalPasscode(Ljava/lang/String;)Z
    .registers 5
    .parameter "pin"

    .prologue
    .line 58
    if-nez p1, :cond_4

    .line 59
    const/4 v0, 0x0

    .line 62
    :goto_3
    return v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->getHashedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/devicelock/util/IccPersonalLockUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "personal_lock_passcode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

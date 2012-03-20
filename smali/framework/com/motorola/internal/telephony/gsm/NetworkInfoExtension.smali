.class public Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;
.super Lcom/android/internal/telephony/gsm/NetworkInfo;
.source "NetworkInfoExtension.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;",
            ">;"
        }
    .end annotation
.end field

.field public static GSM:I

.field public static GSM_UMTS:I

.field public static UMTS:I

.field public static UNKNOWN:I


# instance fields
.field networkSystemType:I

.field operatorAlphaLong:Ljava/lang/String;

.field operatorAlphaShort:Ljava/lang/String;

.field operatorNumeric:Ljava/lang/String;

.field state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->UNKNOWN:I

    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->GSM:I

    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->UMTS:I

    .line 46
    const/4 v0, 0x3

    sput v0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->GSM_UMTS:I

    .line 148
    new-instance v0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension$1;

    invoke-direct {v0}, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension$1;-><init>()V

    sput-object v0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;I)V
    .registers 7
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "state"
    .parameter "networkSystemType"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/NetworkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;)V

    .line 53
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->UNKNOWN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    iput-object v0, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    .line 56
    sget v0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->UMTS:I

    iput v0, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->networkSystemType:I

    .line 76
    iput-object p1, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->operatorAlphaLong:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->operatorAlphaShort:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->operatorNumeric:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    .line 80
    iput p5, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->networkSystemType:I

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "stateString"
    .parameter "networkSystemType"

    .prologue
    .line 90
    invoke-static {p4}, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    move-result-object v4

    invoke-static {p5}, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->SystemTypeStringToType(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;I)V

    .line 95
    return-void
.end method

.method public static SystemTypeStringToType(Ljava/lang/String;)I
    .registers 4
    .parameter "s"

    .prologue
    .line 101
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 102
    sget v0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->UNKNOWN:I

    .line 110
    :goto_a
    return v0

    .line 103
    :cond_b
    const-string v0, "GSM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 104
    sget v0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->GSM:I

    goto :goto_a

    .line 105
    :cond_16
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 106
    sget v0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->GSM:I

    goto :goto_a

    .line 107
    :cond_21
    const-string v0, "UMTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 108
    sget v0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->UMTS:I

    goto :goto_a

    .line 109
    :cond_2c
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 110
    sget v0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->UMTS:I

    goto :goto_a

    .line 112
    :cond_37
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL impl error: Invalid network type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/NetworkInfo$State;
    .registers 4
    .parameter "s"

    .prologue
    .line 121
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 122
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->UNKNOWN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    .line 128
    :goto_a
    return-object v0

    .line 123
    :cond_b
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 124
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->AVAILABLE:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    goto :goto_a

    .line 125
    :cond_16
    const-string v0, "current"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 126
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->CURRENT:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    goto :goto_a

    .line 127
    :cond_21
    const-string v0, "forbidden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 128
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    goto :goto_a

    .line 130
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL impl error: Invalid network state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getNetworkSystemType()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->networkSystemType:I

    return v0
.end method

.method public setNetworkSystemType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 65
    iput p1, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->networkSystemType:I

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "/"

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInfoExtension"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->operatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/internal/telephony/gsm/NetworkInfoExtension;->networkSystemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

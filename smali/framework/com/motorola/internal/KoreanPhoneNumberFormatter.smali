.class public Lcom/motorola/internal/KoreanPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "KoreanPhoneNumberFormatter.java"


# static fields
.field private static PN_MAX_DISPNUM:I

.field private static PN_MAX_HYPHEN:I

.field private static PN_SEPUNIT_LEN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/16 v0, 0x20

    sput v0, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_DISPNUM:I

    .line 27
    const/4 v0, 0x3

    sput v0, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_HYPHEN:I

    .line 28
    const/4 v0, 0x4

    sput v0, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_SEPUNIT_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareString([C[CI)I
    .registers 7
    .parameter "str1"
    .parameter "str2"
    .parameter "cnt"

    .prologue
    const/4 v3, 0x1

    .line 630
    const/4 v0, 0x0

    .line 632
    .local v0, a:I
    :goto_2
    if-eqz p2, :cond_17

    .line 633
    aget-char v1, p0, v0

    aget-char v2, p1, v0

    if-eq v1, v2, :cond_c

    .line 634
    const/4 v1, 0x0

    .line 643
    :goto_b
    return v1

    .line 637
    :cond_c
    aget-char v1, p0, v0

    if-nez v1, :cond_12

    move v1, v3

    .line 638
    goto :goto_b

    .line 640
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 641
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_17
    move v1, v3

    .line 643
    goto :goto_b
.end method

.method public static format(Landroid/text/Editable;)V
    .registers 25
    .parameter "text"

    .prologue
    .line 32
    const/16 v5, 0xe7

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v20, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v20, v5

    const/4 v5, 0x2

    const-string v6, "124"

    aput-object v6, v20, v5

    const/4 v5, 0x3

    const-string v6, "1242"

    aput-object v6, v20, v5

    const/4 v5, 0x4

    const-string v6, "1246"

    aput-object v6, v20, v5

    const/4 v5, 0x5

    const-string v6, "1264"

    aput-object v6, v20, v5

    const/4 v5, 0x6

    const-string v6, "1268"

    aput-object v6, v20, v5

    const/4 v5, 0x7

    const-string v6, "1340"

    aput-object v6, v20, v5

    const/16 v5, 0x8

    const-string v6, "1345"

    aput-object v6, v20, v5

    const/16 v5, 0x9

    const-string v6, "1441"

    aput-object v6, v20, v5

    const/16 v5, 0xa

    const-string v6, "1473"

    aput-object v6, v20, v5

    const/16 v5, 0xb

    const-string v6, "1649"

    aput-object v6, v20, v5

    const/16 v5, 0xc

    const-string v6, "1664"

    aput-object v6, v20, v5

    const/16 v5, 0xd

    const-string v6, "1670"

    aput-object v6, v20, v5

    const/16 v5, 0xe

    const-string v6, "1671"

    aput-object v6, v20, v5

    const/16 v5, 0xf

    const-string v6, "1758"

    aput-object v6, v20, v5

    const/16 v5, 0x10

    const-string v6, "1767"

    aput-object v6, v20, v5

    const/16 v5, 0x11

    const-string v6, "1787"

    aput-object v6, v20, v5

    const/16 v5, 0x12

    const-string v6, "1808"

    aput-object v6, v20, v5

    const/16 v5, 0x13

    const-string v6, "1809"

    aput-object v6, v20, v5

    const/16 v5, 0x14

    const-string v6, "1868"

    aput-object v6, v20, v5

    const/16 v5, 0x15

    const-string v6, "1869"

    aput-object v6, v20, v5

    const/16 v5, 0x16

    const-string v6, "1876"

    aput-object v6, v20, v5

    const/16 v5, 0x17

    const-string v6, "1907"

    aput-object v6, v20, v5

    const/16 v5, 0x18

    const-string v6, "20"

    aput-object v6, v20, v5

    const/16 v5, 0x19

    const-string v6, "212"

    aput-object v6, v20, v5

    const/16 v5, 0x1a

    const-string v6, "213"

    aput-object v6, v20, v5

    const/16 v5, 0x1b

    const-string v6, "216"

    aput-object v6, v20, v5

    const/16 v5, 0x1c

    const-string v6, "218"

    aput-object v6, v20, v5

    const/16 v5, 0x1d

    const-string v6, "220"

    aput-object v6, v20, v5

    const/16 v5, 0x1e

    const-string v6, "221"

    aput-object v6, v20, v5

    const/16 v5, 0x1f

    const-string v6, "222"

    aput-object v6, v20, v5

    const/16 v5, 0x20

    const-string v6, "223"

    aput-object v6, v20, v5

    const/16 v5, 0x21

    const-string v6, "224"

    aput-object v6, v20, v5

    const/16 v5, 0x22

    const-string v6, "225"

    aput-object v6, v20, v5

    const/16 v5, 0x23

    const-string v6, "226"

    aput-object v6, v20, v5

    const/16 v5, 0x24

    const-string v6, "227"

    aput-object v6, v20, v5

    const/16 v5, 0x25

    const-string v6, "228"

    aput-object v6, v20, v5

    const/16 v5, 0x26

    const-string v6, "229"

    aput-object v6, v20, v5

    const/16 v5, 0x27

    const-string v6, "230"

    aput-object v6, v20, v5

    const/16 v5, 0x28

    const-string v6, "231"

    aput-object v6, v20, v5

    const/16 v5, 0x29

    const-string v6, "232"

    aput-object v6, v20, v5

    const/16 v5, 0x2a

    const-string v6, "233"

    aput-object v6, v20, v5

    const/16 v5, 0x2b

    const-string v6, "234"

    aput-object v6, v20, v5

    const/16 v5, 0x2c

    const-string v6, "235"

    aput-object v6, v20, v5

    const/16 v5, 0x2d

    const-string v6, "236"

    aput-object v6, v20, v5

    const/16 v5, 0x2e

    const-string v6, "237"

    aput-object v6, v20, v5

    const/16 v5, 0x2f

    const-string v6, "238"

    aput-object v6, v20, v5

    const/16 v5, 0x30

    const-string v6, "239"

    aput-object v6, v20, v5

    const/16 v5, 0x31

    const-string v6, "240"

    aput-object v6, v20, v5

    const/16 v5, 0x32

    const-string v6, "241"

    aput-object v6, v20, v5

    const/16 v5, 0x33

    const-string v6, "242"

    aput-object v6, v20, v5

    const/16 v5, 0x34

    const-string v6, "243"

    aput-object v6, v20, v5

    const/16 v5, 0x35

    const-string v6, "244"

    aput-object v6, v20, v5

    const/16 v5, 0x36

    const-string v6, "245"

    aput-object v6, v20, v5

    const/16 v5, 0x37

    const-string v6, "246"

    aput-object v6, v20, v5

    const/16 v5, 0x38

    const-string v6, "247"

    aput-object v6, v20, v5

    const/16 v5, 0x39

    const-string v6, "248"

    aput-object v6, v20, v5

    const/16 v5, 0x3a

    const-string v6, "249"

    aput-object v6, v20, v5

    const/16 v5, 0x3b

    const-string v6, "250"

    aput-object v6, v20, v5

    const/16 v5, 0x3c

    const-string v6, "251"

    aput-object v6, v20, v5

    const/16 v5, 0x3d

    const-string v6, "252"

    aput-object v6, v20, v5

    const/16 v5, 0x3e

    const-string v6, "253"

    aput-object v6, v20, v5

    const/16 v5, 0x3f

    const-string v6, "254"

    aput-object v6, v20, v5

    const/16 v5, 0x40

    const-string v6, "255"

    aput-object v6, v20, v5

    const/16 v5, 0x41

    const-string v6, "256"

    aput-object v6, v20, v5

    const/16 v5, 0x42

    const-string v6, "257"

    aput-object v6, v20, v5

    const/16 v5, 0x43

    const-string v6, "258"

    aput-object v6, v20, v5

    const/16 v5, 0x44

    const-string v6, "260"

    aput-object v6, v20, v5

    const/16 v5, 0x45

    const-string v6, "261"

    aput-object v6, v20, v5

    const/16 v5, 0x46

    const-string v6, "262"

    aput-object v6, v20, v5

    const/16 v5, 0x47

    const-string v6, "263"

    aput-object v6, v20, v5

    const/16 v5, 0x48

    const-string v6, "264"

    aput-object v6, v20, v5

    const/16 v5, 0x49

    const-string v6, "265"

    aput-object v6, v20, v5

    const/16 v5, 0x4a

    const-string v6, "266"

    aput-object v6, v20, v5

    const/16 v5, 0x4b

    const-string v6, "267"

    aput-object v6, v20, v5

    const/16 v5, 0x4c

    const-string v6, "268"

    aput-object v6, v20, v5

    const/16 v5, 0x4d

    const-string v6, "269"

    aput-object v6, v20, v5

    const/16 v5, 0x4e

    const-string v6, "27"

    aput-object v6, v20, v5

    const/16 v5, 0x4f

    const-string v6, "290"

    aput-object v6, v20, v5

    const/16 v5, 0x50

    const-string v6, "291"

    aput-object v6, v20, v5

    const/16 v5, 0x51

    const-string v6, "297"

    aput-object v6, v20, v5

    const/16 v5, 0x52

    const-string v6, "298"

    aput-object v6, v20, v5

    const/16 v5, 0x53

    const-string v6, "299"

    aput-object v6, v20, v5

    const/16 v5, 0x54

    const-string v6, "30"

    aput-object v6, v20, v5

    const/16 v5, 0x55

    const-string v6, "31"

    aput-object v6, v20, v5

    const/16 v5, 0x56

    const-string v6, "32"

    aput-object v6, v20, v5

    const/16 v5, 0x57

    const-string v6, "33"

    aput-object v6, v20, v5

    const/16 v5, 0x58

    const-string v6, "34"

    aput-object v6, v20, v5

    const/16 v5, 0x59

    const-string v6, "3428"

    aput-object v6, v20, v5

    const/16 v5, 0x5a

    const-string v6, "350"

    aput-object v6, v20, v5

    const/16 v5, 0x5b

    const-string v6, "351"

    aput-object v6, v20, v5

    const/16 v5, 0x5c

    const-string v6, "35191"

    aput-object v6, v20, v5

    const/16 v5, 0x5d

    const-string v6, "352"

    aput-object v6, v20, v5

    const/16 v5, 0x5e

    const-string v6, "353"

    aput-object v6, v20, v5

    const/16 v5, 0x5f

    const-string v6, "354"

    aput-object v6, v20, v5

    const/16 v5, 0x60

    const-string v6, "355"

    aput-object v6, v20, v5

    const/16 v5, 0x61

    const-string v6, "356"

    aput-object v6, v20, v5

    const/16 v5, 0x62

    const-string v6, "357"

    aput-object v6, v20, v5

    const/16 v5, 0x63

    const-string v6, "358"

    aput-object v6, v20, v5

    const/16 v5, 0x64

    const-string v6, "359"

    aput-object v6, v20, v5

    const/16 v5, 0x65

    const-string v6, "36"

    aput-object v6, v20, v5

    const/16 v5, 0x66

    const-string v6, "370"

    aput-object v6, v20, v5

    const/16 v5, 0x67

    const-string v6, "371"

    aput-object v6, v20, v5

    const/16 v5, 0x68

    const-string v6, "372"

    aput-object v6, v20, v5

    const/16 v5, 0x69

    const-string v6, "373"

    aput-object v6, v20, v5

    const/16 v5, 0x6a

    const-string v6, "374"

    aput-object v6, v20, v5

    const/16 v5, 0x6b

    const-string v6, "375"

    aput-object v6, v20, v5

    const/16 v5, 0x6c

    const-string v6, "376"

    aput-object v6, v20, v5

    const/16 v5, 0x6d

    const-string v6, "377"

    aput-object v6, v20, v5

    const/16 v5, 0x6e

    const-string v6, "378"

    aput-object v6, v20, v5

    const/16 v5, 0x6f

    const-string v6, "380"

    aput-object v6, v20, v5

    const/16 v5, 0x70

    const-string v6, "381"

    aput-object v6, v20, v5

    const/16 v5, 0x71

    const-string v6, "385"

    aput-object v6, v20, v5

    const/16 v5, 0x72

    const-string v6, "386"

    aput-object v6, v20, v5

    const/16 v5, 0x73

    const-string v6, "387"

    aput-object v6, v20, v5

    const/16 v5, 0x74

    const-string v6, "389"

    aput-object v6, v20, v5

    const/16 v5, 0x75

    const-string v6, "39"

    aput-object v6, v20, v5

    const/16 v5, 0x76

    const-string v6, "396"

    aput-object v6, v20, v5

    const/16 v5, 0x77

    const-string v6, "40"

    aput-object v6, v20, v5

    const/16 v5, 0x78

    const-string v6, "41"

    aput-object v6, v20, v5

    const/16 v5, 0x79

    const-string v6, "420"

    aput-object v6, v20, v5

    const/16 v5, 0x7a

    const-string v6, "421"

    aput-object v6, v20, v5

    const/16 v5, 0x7b

    const-string v6, "423"

    aput-object v6, v20, v5

    const/16 v5, 0x7c

    const-string v6, "43"

    aput-object v6, v20, v5

    const/16 v5, 0x7d

    const-string v6, "44"

    aput-object v6, v20, v5

    const/16 v5, 0x7e

    const-string v6, "45"

    aput-object v6, v20, v5

    const/16 v5, 0x7f

    const-string v6, "46"

    aput-object v6, v20, v5

    const/16 v5, 0x80

    const-string v6, "47"

    aput-object v6, v20, v5

    const/16 v5, 0x81

    const-string v6, "48"

    aput-object v6, v20, v5

    const/16 v5, 0x82

    const-string v6, "49"

    aput-object v6, v20, v5

    const/16 v5, 0x83

    const-string v6, "500"

    aput-object v6, v20, v5

    const/16 v5, 0x84

    const-string v6, "501"

    aput-object v6, v20, v5

    const/16 v5, 0x85

    const-string v6, "502"

    aput-object v6, v20, v5

    const/16 v5, 0x86

    const-string v6, "503"

    aput-object v6, v20, v5

    const/16 v5, 0x87

    const-string v6, "504"

    aput-object v6, v20, v5

    const/16 v5, 0x88

    const-string v6, "505"

    aput-object v6, v20, v5

    const/16 v5, 0x89

    const-string v6, "506"

    aput-object v6, v20, v5

    const/16 v5, 0x8a

    const-string v6, "507"

    aput-object v6, v20, v5

    const/16 v5, 0x8b

    const-string v6, "508"

    aput-object v6, v20, v5

    const/16 v5, 0x8c

    const-string v6, "509"

    aput-object v6, v20, v5

    const/16 v5, 0x8d

    const-string v6, "51"

    aput-object v6, v20, v5

    const/16 v5, 0x8e

    const-string v6, "52"

    aput-object v6, v20, v5

    const/16 v5, 0x8f

    const-string v6, "53"

    aput-object v6, v20, v5

    const/16 v5, 0x90

    const-string v6, "54"

    aput-object v6, v20, v5

    const/16 v5, 0x91

    const-string v6, "55"

    aput-object v6, v20, v5

    const/16 v5, 0x92

    const-string v6, "56"

    aput-object v6, v20, v5

    const/16 v5, 0x93

    const-string v6, "57"

    aput-object v6, v20, v5

    const/16 v5, 0x94

    const-string v6, "58"

    aput-object v6, v20, v5

    const/16 v5, 0x95

    const-string v6, "590"

    aput-object v6, v20, v5

    const/16 v5, 0x96

    const-string v6, "591"

    aput-object v6, v20, v5

    const/16 v5, 0x97

    const-string v6, "592"

    aput-object v6, v20, v5

    const/16 v5, 0x98

    const-string v6, "593"

    aput-object v6, v20, v5

    const/16 v5, 0x99

    const-string v6, "594"

    aput-object v6, v20, v5

    const/16 v5, 0x9a

    const-string v6, "595"

    aput-object v6, v20, v5

    const/16 v5, 0x9b

    const-string v6, "596"

    aput-object v6, v20, v5

    const/16 v5, 0x9c

    const-string v6, "597"

    aput-object v6, v20, v5

    const/16 v5, 0x9d

    const-string v6, "598"

    aput-object v6, v20, v5

    const/16 v5, 0x9e

    const-string v6, "599"

    aput-object v6, v20, v5

    const/16 v5, 0x9f

    const-string v6, "60"

    aput-object v6, v20, v5

    const/16 v5, 0xa0

    const-string v6, "61"

    aput-object v6, v20, v5

    const/16 v5, 0xa1

    const-string v6, "6191"

    aput-object v6, v20, v5

    const/16 v5, 0xa2

    const-string v6, "62"

    aput-object v6, v20, v5

    const/16 v5, 0xa3

    const-string v6, "63"

    aput-object v6, v20, v5

    const/16 v5, 0xa4

    const-string v6, "64"

    aput-object v6, v20, v5

    const/16 v5, 0xa5

    const-string v6, "65"

    aput-object v6, v20, v5

    const/16 v5, 0xa6

    const-string v6, "66"

    aput-object v6, v20, v5

    const/16 v5, 0xa7

    const-string v6, "670"

    aput-object v6, v20, v5

    const/16 v5, 0xa8

    const-string v6, "672"

    aput-object v6, v20, v5

    const/16 v5, 0xa9

    const-string v6, "6723"

    aput-object v6, v20, v5

    const/16 v5, 0xaa

    const-string v6, "673"

    aput-object v6, v20, v5

    const/16 v5, 0xab

    const-string v6, "674"

    aput-object v6, v20, v5

    const/16 v5, 0xac

    const-string v6, "675"

    aput-object v6, v20, v5

    const/16 v5, 0xad

    const-string v6, "676"

    aput-object v6, v20, v5

    const/16 v5, 0xae

    const-string v6, "677"

    aput-object v6, v20, v5

    const/16 v5, 0xaf

    const-string v6, "678"

    aput-object v6, v20, v5

    const/16 v5, 0xb0

    const-string v6, "679"

    aput-object v6, v20, v5

    const/16 v5, 0xb1

    const-string v6, "680"

    aput-object v6, v20, v5

    const/16 v5, 0xb2

    const-string v6, "681"

    aput-object v6, v20, v5

    const/16 v5, 0xb3

    const-string v6, "682"

    aput-object v6, v20, v5

    const/16 v5, 0xb4

    const-string v6, "683"

    aput-object v6, v20, v5

    const/16 v5, 0xb5

    const-string v6, "684"

    aput-object v6, v20, v5

    const/16 v5, 0xb6

    const-string v6, "685"

    aput-object v6, v20, v5

    const/16 v5, 0xb7

    const-string v6, "686"

    aput-object v6, v20, v5

    const/16 v5, 0xb8

    const-string v6, "687"

    aput-object v6, v20, v5

    const/16 v5, 0xb9

    const-string v6, "688"

    aput-object v6, v20, v5

    const/16 v5, 0xba

    const-string v6, "689"

    aput-object v6, v20, v5

    const/16 v5, 0xbb

    const-string v6, "691"

    aput-object v6, v20, v5

    const/16 v5, 0xbc

    const-string v6, "692"

    aput-object v6, v20, v5

    const/16 v5, 0xbd

    const-string v6, "7"

    aput-object v6, v20, v5

    const/16 v5, 0xbe

    const-string v6, "731"

    aput-object v6, v20, v5

    const/16 v5, 0xbf

    const-string v6, "81"

    aput-object v6, v20, v5

    const/16 v5, 0xc0

    const-string v6, "82"

    aput-object v6, v20, v5

    const/16 v5, 0xc1

    const-string v6, "84"

    aput-object v6, v20, v5

    const/16 v5, 0xc2

    const-string v6, "852"

    aput-object v6, v20, v5

    const/16 v5, 0xc3

    const-string v6, "853"

    aput-object v6, v20, v5

    const/16 v5, 0xc4

    const-string v6, "855"

    aput-object v6, v20, v5

    const/16 v5, 0xc5

    const-string v6, "856"

    aput-object v6, v20, v5

    const/16 v5, 0xc6

    const-string v6, "86"

    aput-object v6, v20, v5

    const/16 v5, 0xc7

    const-string v6, "880"

    aput-object v6, v20, v5

    const/16 v5, 0xc8

    const-string v6, "90"

    aput-object v6, v20, v5

    const/16 v5, 0xc9

    const-string v6, "91"

    aput-object v6, v20, v5

    const/16 v5, 0xca

    const-string v6, "92"

    aput-object v6, v20, v5

    const/16 v5, 0xcb

    const-string v6, "93"

    aput-object v6, v20, v5

    const/16 v5, 0xcc

    const-string v6, "932"

    aput-object v6, v20, v5

    const/16 v5, 0xcd

    const-string v6, "94"

    aput-object v6, v20, v5

    const/16 v5, 0xce

    const-string v6, "95"

    aput-object v6, v20, v5

    const/16 v5, 0xcf

    const-string v6, "960"

    aput-object v6, v20, v5

    const/16 v5, 0xd0

    const-string v6, "961"

    aput-object v6, v20, v5

    const/16 v5, 0xd1

    const-string v6, "962"

    aput-object v6, v20, v5

    const/16 v5, 0xd2

    const-string v6, "963"

    aput-object v6, v20, v5

    const/16 v5, 0xd3

    const-string v6, "964"

    aput-object v6, v20, v5

    const/16 v5, 0xd4

    const-string v6, "965"

    aput-object v6, v20, v5

    const/16 v5, 0xd5

    const-string v6, "966"

    aput-object v6, v20, v5

    const/16 v5, 0xd6

    const-string v6, "967"

    aput-object v6, v20, v5

    const/16 v5, 0xd7

    const-string v6, "968"

    aput-object v6, v20, v5

    const/16 v5, 0xd8

    const-string v6, "971"

    aput-object v6, v20, v5

    const/16 v5, 0xd9

    const-string v6, "972"

    aput-object v6, v20, v5

    const/16 v5, 0xda

    const-string v6, "973"

    aput-object v6, v20, v5

    const/16 v5, 0xdb

    const-string v6, "974"

    aput-object v6, v20, v5

    const/16 v5, 0xdc

    const-string v6, "975"

    aput-object v6, v20, v5

    const/16 v5, 0xdd

    const-string v6, "976"

    aput-object v6, v20, v5

    const/16 v5, 0xde

    const-string v6, "977"

    aput-object v6, v20, v5

    const/16 v5, 0xdf

    const-string v6, "98"

    aput-object v6, v20, v5

    const/16 v5, 0xe0

    const-string v6, "992"

    aput-object v6, v20, v5

    const/16 v5, 0xe1

    const-string v6, "993"

    aput-object v6, v20, v5

    const/16 v5, 0xe2

    const-string v6, "994"

    aput-object v6, v20, v5

    const/16 v5, 0xe3

    const-string v6, "995"

    aput-object v6, v20, v5

    const/16 v5, 0xe4

    const-string v6, "996"

    aput-object v6, v20, v5

    const/16 v5, 0xe5

    const-string v6, "998"

    aput-object v6, v20, v5

    const/16 v5, 0xe6

    const-string v6, "END"

    aput-object v6, v20, v5

    .line 266
    .local v20, str_i:[Ljava/lang/String;
    const/16 v5, 0x2d

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v21, v5

    const/4 v5, 0x1

    const-string v6, "001"

    aput-object v6, v21, v5

    const/4 v5, 0x2

    const-string v6, "002"

    aput-object v6, v21, v5

    const/4 v5, 0x3

    const-string v6, "00700"

    aput-object v6, v21, v5

    const/4 v5, 0x4

    const-string v6, "010"

    aput-object v6, v21, v5

    const/4 v5, 0x5

    const-string v6, "011"

    aput-object v6, v21, v5

    const/4 v5, 0x6

    const-string v6, "012"

    aput-object v6, v21, v5

    const/4 v5, 0x7

    const-string v6, "015"

    aput-object v6, v21, v5

    const/16 v5, 0x8

    const-string v6, "016"

    aput-object v6, v21, v5

    const/16 v5, 0x9

    const-string v6, "017"

    aput-object v6, v21, v5

    const/16 v5, 0xa

    const-string v6, "018"

    aput-object v6, v21, v5

    const/16 v5, 0xb

    const-string v6, "019"

    aput-object v6, v21, v5

    const/16 v5, 0xc

    const-string v6, "02"

    aput-object v6, v21, v5

    const/16 v5, 0xd

    const-string v6, "0303"

    aput-object v6, v21, v5

    const/16 v5, 0xe

    const-string v6, "031"

    aput-object v6, v21, v5

    const/16 v5, 0xf

    const-string v6, "032"

    aput-object v6, v21, v5

    const/16 v5, 0x10

    const-string v6, "033"

    aput-object v6, v21, v5

    const/16 v5, 0x11

    const-string v6, "041"

    aput-object v6, v21, v5

    const/16 v5, 0x12

    const-string v6, "042"

    aput-object v6, v21, v5

    const/16 v5, 0x13

    const-string v6, "043"

    aput-object v6, v21, v5

    const/16 v5, 0x14

    const-string v6, "0502"

    aput-object v6, v21, v5

    const/16 v5, 0x15

    const-string v6, "0505"

    aput-object v6, v21, v5

    const/16 v5, 0x16

    const-string v6, "051"

    aput-object v6, v21, v5

    const/16 v5, 0x17

    const-string v6, "052"

    aput-object v6, v21, v5

    const/16 v5, 0x18

    const-string v6, "053"

    aput-object v6, v21, v5

    const/16 v5, 0x19

    const-string v6, "054"

    aput-object v6, v21, v5

    const/16 v5, 0x1a

    const-string v6, "055"

    aput-object v6, v21, v5

    const/16 v5, 0x1b

    const-string v6, "060"

    aput-object v6, v21, v5

    const/16 v5, 0x1c

    const-string v6, "0600"

    aput-object v6, v21, v5

    const/16 v5, 0x1d

    const-string v6, "061"

    aput-object v6, v21, v5

    const/16 v5, 0x1e

    const-string v6, "062"

    aput-object v6, v21, v5

    const/16 v5, 0x1f

    const-string v6, "063"

    aput-object v6, v21, v5

    const/16 v5, 0x20

    const-string v6, "064"

    aput-object v6, v21, v5

    const/16 v5, 0x21

    const-string v6, "080"

    aput-object v6, v21, v5

    const/16 v5, 0x22

    const-string v6, "081"

    aput-object v6, v21, v5

    const/16 v5, 0x23

    const-string v6, "082"

    aput-object v6, v21, v5

    const/16 v5, 0x24

    const-string v6, "08217"

    aput-object v6, v21, v5

    const/16 v5, 0x25

    const-string v6, "083"

    aput-object v6, v21, v5

    const/16 v5, 0x26

    const-string v6, "1333"

    aput-object v6, v21, v5

    const/16 v5, 0x27

    const-string v6, "152424"

    aput-object v6, v21, v5

    const/16 v5, 0x28

    const-string v6, "1544"

    aput-object v6, v21, v5

    const/16 v5, 0x29

    const-string v6, "1577"

    aput-object v6, v21, v5

    const/16 v5, 0x2a

    const-string v6, "1588"

    aput-object v6, v21, v5

    const/16 v5, 0x2b

    const-string v6, "+82"

    aput-object v6, v21, v5

    const/16 v5, 0x2c

    const-string v6, "END"

    aput-object v6, v21, v5

    .line 314
    .local v21, str_p:[Ljava/lang/String;
    const/16 v5, 0xa

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v19, v5

    const/4 v5, 0x1

    const-string v6, "**114"

    aput-object v6, v19, v5

    const/4 v5, 0x2

    const-string v6, "*23#"

    aput-object v6, v19, v5

    const/4 v5, 0x3

    const-string v6, "*42#"

    aput-object v6, v19, v5

    const/4 v5, 0x4

    const-string v6, "*65"

    aput-object v6, v19, v5

    const/4 v5, 0x5

    const-string v6, "*71"

    aput-object v6, v19, v5

    const/4 v5, 0x6

    const-string v6, "*72"

    aput-object v6, v19, v5

    const/4 v5, 0x7

    const-string v6, "*77"

    aput-object v6, v19, v5

    const/16 v5, 0x8

    const-string v6, "*78"

    aput-object v6, v19, v5

    const/16 v5, 0x9

    const-string v6, "END"

    aput-object v6, v19, v5

    .line 338
    .local v19, str_f:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 339
    .local v13, sn_ind:I
    const/4 v8, 0x0

    .line 340
    .local v8, i:I
    const/4 v9, 0x0

    .line 341
    .local v9, hyp_cnt:I
    const/4 v12, 0x0

    .line 343
    .local v12, sel:I
    const/16 v5, 0xe6

    new-array v6, v5, [Ljava/lang/String;

    .line 344
    .local v6, cur_node:[Ljava/lang/String;
    const/16 v5, 0xe6

    new-array v7, v5, [Ljava/lang/String;

    .line 345
    .local v7, cur_node_null:[Ljava/lang/String;
    sget v5, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_DISPNUM:I

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v18, v0

    .line 346
    .local v18, src_num:[C
    sget v5, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_DISPNUM:I

    sub-int/2addr v5, v13

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v17, v0

    .line 348
    .local v17, src_ind:[C
    const/16 v5, 0x20

    move-object/from16 v0, p0

    move v1, v5

    invoke-static {v0, v1}, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->searchchar(Landroid/text/Editable;C)I

    move-result v5

    .line 349
    .local v5, checkchar:I
    if-eqz v5, :cond_afc

    move-object/from16 p0, v6

    .end local v6           #cur_node:[Ljava/lang/String;
    .local p0, cur_node:[Ljava/lang/String;
    move v5, v9

    .end local v9           #hyp_cnt:I
    .local v5, hyp_cnt:I
    move v7, v12

    .end local v12           #sel:I
    .local v7, sel:I
    move v6, v8

    .end local v8           #i:I
    .local v6, i:I
    move v8, v13

    .line 620
    .end local v13           #sn_ind:I
    .local v8, sn_ind:I
    :goto_6dd
    return-void

    .line 353
    .end local v5           #hyp_cnt:I
    .end local v8           #sn_ind:I
    .local v6, cur_node:[Ljava/lang/String;
    .local v7, cur_node_null:[Ljava/lang/String;
    .restart local v9       #hyp_cnt:I
    .local v11, i:I
    .restart local v12       #sel:I
    .restart local v13       #sn_ind:I
    .local p0, text:Landroid/text/Editable;
    :goto_6de
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v11, v5, :cond_6fd

    .line 354
    move-object/from16 v0, p0

    move v1, v11

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v8, 0x2d

    if-ne v5, v8, :cond_6f9

    .line 355
    add-int/lit8 v5, v11, 0x1

    move-object/from16 v0, p0

    move v1, v11

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_6de

    .line 357
    :cond_6f9
    add-int/lit8 v5, v11, 0x1

    .end local v11           #i:I
    .local v5, i:I
    move v11, v5

    .end local v5           #i:I
    .restart local v11       #i:I
    goto :goto_6de

    .line 361
    :cond_6fd
    const/4 v5, 0x0

    .local v5, z:I
    :goto_6fe
    array-length v8, v7

    if-ge v5, v8, :cond_708

    .line 362
    const-string v8, "a"

    aput-object v8, v7, v5

    .line 361
    add-int/lit8 v5, v5, 0x1

    goto :goto_6fe

    .line 365
    :cond_708
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v14

    .line 367
    .local v14, sn_len:I
    sget v5, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_DISPNUM:I

    .end local v5           #z:I
    if-le v14, v5, :cond_71a

    .line 368
    const/4 v5, 0x1

    sub-int v5, v14, v5

    move-object/from16 v0, p0

    move v1, v5

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 372
    :cond_71a
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v5

    sget v8, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_DISPNUM:I

    if-ge v5, v8, :cond_743

    .line 374
    const/4 v5, 0x0

    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v8

    move-object/from16 v3, v18

    move v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->getChars(II[CI)V

    .line 381
    :goto_732
    const/4 v5, 0x0

    .local v5, x:I
    :goto_733
    move-object/from16 v0, v18

    array-length v0, v0

    move v8, v0

    sub-int/2addr v8, v13

    if-ge v5, v8, :cond_757

    .line 383
    add-int v8, v13, v5

    aget-char v8, v18, v8

    aput-char v8, v17, v5

    .line 381
    add-int/lit8 v5, v5, 0x1

    goto :goto_733

    .line 376
    .end local v5           #x:I
    :cond_743
    const/4 v5, 0x0

    sget v8, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_DISPNUM:I

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v8

    move-object/from16 v3, v18

    move v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->getChars(II[CI)V

    .line 377
    invoke-virtual/range {v18 .. v18}, [C->clone()Ljava/lang/Object;

    goto :goto_732

    .line 386
    .restart local v5       #x:I
    :cond_757
    const/4 v5, 0x0

    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    .end local v5           #x:I
    move-result v8

    move-object/from16 v0, p0

    move v1, v5

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 389
    .local v5, saved:Ljava/lang/CharSequence;
    move-object v0, v5

    check-cast v0, Landroid/text/Editable;

    move-object v8, v0

    .line 390
    .local v8, dest_num_buf:Landroid/text/Editable;
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    .line 394
    const/4 v10, 0x1

    .local v10, idx_i:I
    const/4 v5, 0x1

    .local v5, flag:Z
    move v15, v14

    .end local v14           #sn_len:I
    .local v15, sn_len:I
    move v14, v13

    .end local v13           #sn_ind:I
    .local v14, sn_ind:I
    move v13, v12

    .end local v12           #sel:I
    .local v13, sel:I
    move v12, v10

    .end local v10           #idx_i:I
    .local v12, idx_i:I
    move v10, v9

    .end local v9           #hyp_cnt:I
    .local v10, hyp_cnt:I
    move v9, v5

    .end local v5           #flag:Z
    .local v9, flag:Z
    :goto_773
    if-eqz v9, :cond_af7

    const/4 v5, 0x3

    if-ge v12, v5, :cond_af7

    .line 395
    const/4 v5, 0x2

    if-ge v15, v5, :cond_797

    move v12, v15

    .end local v15           #sn_len:I
    .local v12, sn_len:I
    move v7, v10

    .end local v10           #hyp_cnt:I
    .local v7, hyp_cnt:I
    move v10, v14

    .line 575
    .end local v9           #flag:Z
    .end local v14           #sn_ind:I
    .local v10, sn_ind:I
    :goto_77e
    if-lez v12, :cond_aa4

    .line 576
    sget v5, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_SEPUNIT_LEN:I

    rem-int v5, v12, v5

    .line 577
    .local v5, cmp_ret:I
    if-lez v5, :cond_a60

    .line 579
    :goto_786
    const/4 v9, 0x0

    .local v9, x:I
    :goto_787
    move-object/from16 v0, v18

    array-length v0, v0

    move v14, v0

    sub-int/2addr v14, v10

    if-ge v9, v14, :cond_a64

    .line 580
    add-int v14, v10, v9

    aget-char v14, v18, v14

    aput-char v14, v17, v9

    .line 579
    add-int/lit8 v9, v9, 0x1

    goto :goto_787

    .line 400
    .end local v5           #cmp_ret:I
    .local v7, cur_node_null:[Ljava/lang/String;
    .local v9, flag:Z
    .local v10, hyp_cnt:I
    .local v12, idx_i:I
    .restart local v14       #sn_ind:I
    .restart local v15       #sn_len:I
    :cond_797
    const/4 v5, 0x1

    if-ne v12, v5, :cond_7b4

    .line 401
    move-object/from16 v5, v21

    .line 407
    .end local v6           #cur_node:[Ljava/lang/String;
    .local v5, cur_node:[Ljava/lang/String;
    :goto_79c
    const/4 v6, 0x1

    .local v6, idx_j:I
    move/from16 v16, v15

    .end local v15           #sn_len:I
    .local v16, sn_len:I
    move v15, v14

    .end local v14           #sn_ind:I
    .local v15, sn_ind:I
    move v14, v13

    .end local v13           #sel:I
    .local v14, sel:I
    move v13, v6

    .end local v6           #idx_j:I
    .local v13, idx_j:I
    move-object v6, v5

    .end local v5           #cur_node:[Ljava/lang/String;
    .local v6, cur_node:[Ljava/lang/String;
    :goto_7a3
    array-length v5, v6

    if-gt v13, v5, :cond_7ac

    .line 409
    const/4 v5, 0x1

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_7ba

    .line 394
    :cond_7ac
    add-int/lit8 v5, v12, 0x1

    .end local v12           #idx_i:I
    .local v5, idx_i:I
    move v12, v5

    .end local v5           #idx_i:I
    .restart local v12       #idx_i:I
    move v13, v14

    .end local v14           #sel:I
    .local v13, sel:I
    move v14, v15

    .end local v15           #sn_ind:I
    .local v14, sn_ind:I
    move/from16 v15, v16

    .end local v16           #sn_len:I
    .local v15, sn_len:I
    goto :goto_773

    .line 402
    :cond_7b4
    const/4 v5, 0x2

    if-ne v12, v5, :cond_af4

    .line 403
    move-object/from16 v5, v19

    .end local v6           #cur_node:[Ljava/lang/String;
    .local v5, cur_node:[Ljava/lang/String;
    goto :goto_79c

    .line 414
    .end local v5           #cur_node:[Ljava/lang/String;
    .restart local v6       #cur_node:[Ljava/lang/String;
    .local v13, idx_j:I
    .local v14, sel:I
    .local v15, sn_ind:I
    .restart local v16       #sn_len:I
    :cond_7ba
    if-lez v14, :cond_88d

    .line 415
    aget-object v5, v6, v13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v22, v6, v14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move v0, v5

    move/from16 v1, v22

    if-le v0, v1, :cond_7d0

    array-length v5, v6

    if-ne v13, v5, :cond_89d

    .line 418
    :cond_7d0
    const/4 v5, 0x0

    .end local v9           #flag:Z
    .local v5, x:I
    :goto_7d1
    move-object/from16 v0, v18

    array-length v0, v0

    move v9, v0

    sub-int/2addr v9, v15

    if-ge v5, v9, :cond_7e1

    .line 419
    add-int v9, v15, v5

    aget-char v9, v18, v9

    aput-char v9, v17, v5

    .line 418
    add-int/lit8 v5, v5, 0x1

    goto :goto_7d1

    .line 422
    :cond_7e1
    aget-object v5, v6, v14

    .end local v5           #x:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [C

    .line 423
    .local v5, temp_array1:[C
    move-object/from16 v5, v17

    .line 424
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    .line 426
    .local v9, temp_string1:Ljava/lang/String;
    move-object v5, v9

    .line 428
    .local v5, matched_seq1:Ljava/lang/CharSequence;
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v9

    .end local v9           #temp_string1:Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v22, v6, v14

    .end local v13           #idx_j:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object v0, v8

    move v1, v9

    move-object v2, v5

    move v3, v13

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 430
    aget-object v5, v6, v14

    .end local v5           #matched_seq1:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v15, v5

    .line 431
    aget-object v5, v6, v14

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v16, v16, v5

    .line 433
    if-lez v16, :cond_838

    .line 434
    const/16 v5, 0x2d

    invoke-static {v8, v5}, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->searchchar(Landroid/text/Editable;C)I

    move-result v5

    .line 435
    .local v5, checkchar2:I
    sget v9, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_HYPHEN:I

    if-ge v10, v9, :cond_838

    .line 436
    add-int v9, v15, v16

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    sget v13, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_DISPNUM:I

    if-gt v9, v13, :cond_838

    const/4 v9, 0x2

    if-eq v5, v9, :cond_838

    .line 437
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v5

    .end local v5           #checkchar2:I
    const-string v9, ""

    invoke-interface {v8, v5, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 438
    add-int/lit8 v5, v10, 0x1

    .end local v10           #hyp_cnt:I
    .local v5, hyp_cnt:I
    move v10, v5

    .line 443
    .end local v5           #hyp_cnt:I
    .restart local v10       #hyp_cnt:I
    :cond_838
    const/4 v9, 0x0

    .line 446
    .local v9, flag:Z
    aget-object v5, v6, v14

    const-string v13, "001"

    if-eq v5, v13, :cond_84b

    aget-object v5, v6, v14

    const-string v13, "002"

    if-eq v5, v13, :cond_84b

    aget-object v5, v6, v14

    const-string v13, "00700"

    if-ne v5, v13, :cond_864

    .line 447
    :cond_84b
    move-object/from16 v5, v20

    .line 455
    .end local v6           #cur_node:[Ljava/lang/String;
    .local v5, cur_node:[Ljava/lang/String;
    :goto_84d
    const/4 v13, 0x0

    .line 456
    .end local v14           #sel:I
    .local v13, sel:I
    const/4 v6, 0x0

    .local v6, idx_j:I
    move v14, v15

    .end local v15           #sn_ind:I
    .local v14, sn_ind:I
    move/from16 v15, v16

    .end local v16           #sn_len:I
    .local v15, sn_len:I
    move/from16 v23, v9

    .end local v9           #flag:Z
    .local v23, flag:Z
    move v9, v10

    .end local v10           #hyp_cnt:I
    .local v9, hyp_cnt:I
    move v10, v6

    .end local v6           #idx_j:I
    .local v10, idx_j:I
    move/from16 v6, v23

    .line 407
    .end local v23           #flag:Z
    .local v6, flag:Z
    :goto_858
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v15

    .end local v15           #sn_len:I
    .restart local v16       #sn_len:I
    move v15, v14

    .end local v14           #sn_ind:I
    .local v15, sn_ind:I
    move v14, v13

    .end local v13           #sel:I
    .local v14, sel:I
    move v13, v10

    .end local v10           #idx_j:I
    .local v13, idx_j:I
    move v10, v9

    .end local v9           #hyp_cnt:I
    .local v10, hyp_cnt:I
    move v9, v6

    .end local v6           #flag:Z
    .local v9, flag:Z
    move-object v6, v5

    .end local v5           #cur_node:[Ljava/lang/String;
    .local v6, cur_node:[Ljava/lang/String;
    goto/16 :goto_7a3

    .line 448
    .end local v13           #idx_j:I
    :cond_864
    aget-object v5, v6, v14

    const-string v13, "*23#"

    if-eq v5, v13, :cond_888

    aget-object v5, v6, v14

    const-string v13, "*42#"

    if-eq v5, v13, :cond_888

    aget-object v5, v6, v14

    const-string v13, "*71"

    if-eq v5, v13, :cond_888

    aget-object v5, v6, v14

    const-string v13, "*72"

    if-eq v5, v13, :cond_888

    aget-object v5, v6, v14

    const-string v13, "*77"

    if-eq v5, v13, :cond_888

    aget-object v5, v6, v14

    const-string v6, "*78"

    .end local v6           #cur_node:[Ljava/lang/String;
    if-ne v5, v6, :cond_88b

    .line 450
    :cond_888
    move-object/from16 v5, v21

    .restart local v5       #cur_node:[Ljava/lang/String;
    goto :goto_84d

    .line 452
    .end local v5           #cur_node:[Ljava/lang/String;
    :cond_88b
    move-object v5, v7

    .restart local v5       #cur_node:[Ljava/lang/String;
    goto :goto_84d

    .line 459
    .end local v5           #cur_node:[Ljava/lang/String;
    .restart local v6       #cur_node:[Ljava/lang/String;
    .restart local v13       #idx_j:I
    :cond_88d
    array-length v5, v6

    if-ne v13, v5, :cond_89d

    .line 460
    const/4 v5, 0x0

    .end local v14           #sel:I
    .local v5, sel:I
    move v14, v15

    .end local v15           #sn_ind:I
    .local v14, sn_ind:I
    move/from16 v15, v16

    .end local v16           #sn_len:I
    .local v15, sn_len:I
    move/from16 v23, v9

    .end local v9           #flag:Z
    .restart local v23       #flag:Z
    move v9, v10

    .end local v10           #hyp_cnt:I
    .local v9, hyp_cnt:I
    move v10, v13

    .end local v13           #idx_j:I
    .local v10, idx_j:I
    move v13, v5

    .end local v5           #sel:I
    .local v13, sel:I
    move-object v5, v6

    .end local v6           #cur_node:[Ljava/lang/String;
    .local v5, cur_node:[Ljava/lang/String;
    move/from16 v6, v23

    .line 461
    .end local v23           #flag:Z
    .local v6, flag:Z
    goto :goto_858

    .line 465
    .end local v5           #cur_node:[Ljava/lang/String;
    .local v6, cur_node:[Ljava/lang/String;
    .local v9, flag:Z
    .local v10, hyp_cnt:I
    .local v13, idx_j:I
    .local v14, sel:I
    .local v15, sn_ind:I
    .restart local v16       #sn_len:I
    :cond_89d
    aget-object v5, v6, v13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v5

    move/from16 v1, v16

    if-le v0, v1, :cond_95d

    .line 466
    if-lez v14, :cond_aea

    .line 468
    const/4 v5, 0x0

    .end local v9           #flag:Z
    .local v5, x:I
    :goto_8ab
    move-object/from16 v0, v18

    array-length v0, v0

    move v9, v0

    sub-int/2addr v9, v15

    if-ge v5, v9, :cond_8bb

    .line 469
    add-int v9, v15, v5

    aget-char v9, v18, v9

    aput-char v9, v17, v5

    .line 468
    add-int/lit8 v5, v5, 0x1

    goto :goto_8ab

    .line 472
    :cond_8bb
    aget-object v5, v6, v14

    .end local v5           #x:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [C

    .line 473
    .local v5, temp_array2:[C
    move-object/from16 v5, v17

    .line 474
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    .line 476
    .local v9, temp_string2:Ljava/lang/String;
    move-object v5, v9

    .line 478
    .local v5, matched_seq2:Ljava/lang/CharSequence;
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v9

    .end local v9           #temp_string2:Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v22, v6, v14

    .end local v13           #idx_j:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object v0, v8

    move v1, v9

    move-object v2, v5

    move v3, v13

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 480
    aget-object v5, v6, v14

    .end local v5           #matched_seq2:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v15, v5

    .line 481
    aget-object v5, v6, v14

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v16, v16, v5

    .line 484
    if-lez v16, :cond_912

    .line 485
    const/16 v5, 0x2d

    invoke-static {v8, v5}, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->searchchar(Landroid/text/Editable;C)I

    move-result v5

    .line 486
    .local v5, checkchar2:I
    sget v9, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_HYPHEN:I

    if-ge v10, v9, :cond_912

    .line 487
    add-int v9, v15, v16

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    sget v13, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_DISPNUM:I

    if-gt v9, v13, :cond_912

    const/4 v9, 0x2

    if-eq v5, v9, :cond_912

    .line 488
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v5

    .end local v5           #checkchar2:I
    const-string v9, ""

    invoke-interface {v8, v5, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 489
    add-int/lit8 v5, v10, 0x1

    .end local v10           #hyp_cnt:I
    .local v5, hyp_cnt:I
    move v10, v5

    .line 494
    .end local v5           #hyp_cnt:I
    .restart local v10       #hyp_cnt:I
    :cond_912
    const/4 v9, 0x0

    .line 497
    .local v9, flag:Z
    aget-object v5, v6, v14

    const-string v13, "001"

    if-eq v5, v13, :cond_925

    aget-object v5, v6, v14

    const-string v13, "002"

    if-eq v5, v13, :cond_925

    aget-object v5, v6, v14

    const-string v13, "00700"

    if-ne v5, v13, :cond_934

    .line 498
    :cond_925
    move-object/from16 v5, v20

    .line 505
    .end local v6           #cur_node:[Ljava/lang/String;
    .local v5, cur_node:[Ljava/lang/String;
    :goto_927
    const/4 v13, 0x0

    .line 506
    .end local v14           #sel:I
    .local v13, sel:I
    const/4 v6, 0x0

    .local v6, idx_j:I
    move v14, v15

    .end local v15           #sn_ind:I
    .local v14, sn_ind:I
    move/from16 v15, v16

    .end local v16           #sn_len:I
    .local v15, sn_len:I
    move/from16 v23, v9

    .end local v9           #flag:Z
    .restart local v23       #flag:Z
    move v9, v10

    .end local v10           #hyp_cnt:I
    .local v9, hyp_cnt:I
    move v10, v6

    .end local v6           #idx_j:I
    .local v10, idx_j:I
    move/from16 v6, v23

    .line 507
    .end local v23           #flag:Z
    .local v6, flag:Z
    goto/16 :goto_858

    .line 499
    .end local v5           #cur_node:[Ljava/lang/String;
    .end local v13           #sel:I
    .local v6, cur_node:[Ljava/lang/String;
    .local v9, flag:Z
    .local v10, hyp_cnt:I
    .local v14, sel:I
    .local v15, sn_ind:I
    .restart local v16       #sn_len:I
    :cond_934
    aget-object v5, v6, v14

    const-string v13, "*23#"

    if-eq v5, v13, :cond_958

    aget-object v5, v6, v14

    const-string v13, "*42#"

    if-eq v5, v13, :cond_958

    aget-object v5, v6, v14

    const-string v13, "*71"

    if-eq v5, v13, :cond_958

    aget-object v5, v6, v14

    const-string v13, "*72"

    if-eq v5, v13, :cond_958

    aget-object v5, v6, v14

    const-string v13, "*77"

    if-eq v5, v13, :cond_958

    aget-object v5, v6, v14

    const-string v6, "*78"

    .end local v6           #cur_node:[Ljava/lang/String;
    if-ne v5, v6, :cond_95b

    .line 501
    :cond_958
    move-object/from16 v5, v21

    .restart local v5       #cur_node:[Ljava/lang/String;
    goto :goto_927

    .line 503
    .end local v5           #cur_node:[Ljava/lang/String;
    :cond_95b
    move-object v5, v7

    .restart local v5       #cur_node:[Ljava/lang/String;
    goto :goto_927

    .line 513
    .end local v5           #cur_node:[Ljava/lang/String;
    .restart local v6       #cur_node:[Ljava/lang/String;
    .local v13, idx_j:I
    :cond_95d
    const/4 v5, 0x0

    .local v5, x:I
    :goto_95e
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    sub-int v22, v22, v15

    move v0, v5

    move/from16 v1, v22

    if-ge v0, v1, :cond_973

    .line 514
    add-int v22, v15, v5

    aget-char v22, v18, v22

    aput-char v22, v17, v5

    .line 513
    add-int/lit8 v5, v5, 0x1

    goto :goto_95e

    .line 518
    :cond_973
    aget-object v5, v6, v13

    .end local v5           #x:I
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    aget-object v22, v6, v13

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move-object v1, v5

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->compareString([C[CI)I

    move-result v5

    .line 520
    .local v5, cmp_ret:I
    if-nez v5, :cond_a3f

    .line 522
    if-lez v14, :cond_aea

    .line 523
    const/4 v5, 0x0

    .end local v9           #flag:Z
    .local v5, x:I
    :goto_98d
    move-object/from16 v0, v18

    array-length v0, v0

    move v9, v0

    sub-int/2addr v9, v15

    if-ge v5, v9, :cond_99d

    .line 524
    add-int v9, v15, v5

    aget-char v9, v18, v9

    aput-char v9, v17, v5

    .line 523
    add-int/lit8 v5, v5, 0x1

    goto :goto_98d

    .line 527
    :cond_99d
    aget-object v5, v6, v14

    .end local v5           #x:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [C

    .line 528
    .local v5, temp_array3:[C
    move-object/from16 v5, v17

    .line 529
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    .line 531
    .local v9, temp_string3:Ljava/lang/String;
    move-object v5, v9

    .line 533
    .local v5, matched_seq3:Ljava/lang/CharSequence;
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v9

    .end local v9           #temp_string3:Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v22, v6, v14

    .end local v13           #idx_j:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object v0, v8

    move v1, v9

    move-object v2, v5

    move v3, v13

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 535
    aget-object v5, v6, v14

    .end local v5           #matched_seq3:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v15, v5

    .line 536
    aget-object v5, v6, v14

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v16, v16, v5

    .line 538
    if-lez v16, :cond_9f4

    .line 539
    const/16 v5, 0x2d

    invoke-static {v8, v5}, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->searchchar(Landroid/text/Editable;C)I

    move-result v5

    .line 540
    .local v5, checkchar2:I
    sget v9, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_HYPHEN:I

    if-ge v10, v9, :cond_9f4

    .line 541
    add-int v9, v15, v16

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    sget v13, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_DISPNUM:I

    if-gt v9, v13, :cond_9f4

    const/4 v9, 0x2

    if-eq v5, v9, :cond_9f4

    .line 542
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v5

    .end local v5           #checkchar2:I
    const-string v9, ""

    invoke-interface {v8, v5, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 543
    add-int/lit8 v5, v10, 0x1

    .end local v10           #hyp_cnt:I
    .local v5, hyp_cnt:I
    move v10, v5

    .line 548
    .end local v5           #hyp_cnt:I
    .restart local v10       #hyp_cnt:I
    :cond_9f4
    const/4 v9, 0x0

    .line 551
    .local v9, flag:Z
    aget-object v5, v6, v14

    const-string v13, "001"

    if-eq v5, v13, :cond_a07

    aget-object v5, v6, v14

    const-string v13, "002"

    if-eq v5, v13, :cond_a07

    aget-object v5, v6, v14

    const-string v13, "00700"

    if-ne v5, v13, :cond_a16

    .line 552
    :cond_a07
    move-object/from16 v5, v20

    .line 560
    .end local v6           #cur_node:[Ljava/lang/String;
    .local v5, cur_node:[Ljava/lang/String;
    :goto_a09
    const/4 v13, 0x0

    .line 561
    .end local v14           #sel:I
    .local v13, sel:I
    const/4 v6, 0x0

    .local v6, idx_j:I
    move v14, v15

    .end local v15           #sn_ind:I
    .local v14, sn_ind:I
    move/from16 v15, v16

    .end local v16           #sn_len:I
    .local v15, sn_len:I
    move/from16 v23, v9

    .end local v9           #flag:Z
    .restart local v23       #flag:Z
    move v9, v10

    .end local v10           #hyp_cnt:I
    .local v9, hyp_cnt:I
    move v10, v6

    .end local v6           #idx_j:I
    .local v10, idx_j:I
    move/from16 v6, v23

    .line 563
    .end local v23           #flag:Z
    .local v6, flag:Z
    goto/16 :goto_858

    .line 553
    .end local v5           #cur_node:[Ljava/lang/String;
    .end local v13           #sel:I
    .local v6, cur_node:[Ljava/lang/String;
    .local v9, flag:Z
    .local v10, hyp_cnt:I
    .local v14, sel:I
    .local v15, sn_ind:I
    .restart local v16       #sn_len:I
    :cond_a16
    aget-object v5, v6, v14

    const-string v13, "*23#"

    if-eq v5, v13, :cond_a3a

    aget-object v5, v6, v14

    const-string v13, "*42#"

    if-eq v5, v13, :cond_a3a

    aget-object v5, v6, v14

    const-string v13, "*71"

    if-eq v5, v13, :cond_a3a

    aget-object v5, v6, v14

    const-string v13, "*72"

    if-eq v5, v13, :cond_a3a

    aget-object v5, v6, v14

    const-string v13, "*77"

    if-eq v5, v13, :cond_a3a

    aget-object v5, v6, v14

    const-string v6, "*78"

    .end local v6           #cur_node:[Ljava/lang/String;
    if-ne v5, v6, :cond_a3d

    .line 555
    :cond_a3a
    move-object/from16 v5, v21

    .restart local v5       #cur_node:[Ljava/lang/String;
    goto :goto_a09

    .line 557
    .end local v5           #cur_node:[Ljava/lang/String;
    :cond_a3d
    move-object v5, v7

    .restart local v5       #cur_node:[Ljava/lang/String;
    goto :goto_a09

    .line 567
    .local v5, cmp_ret:I
    .restart local v6       #cur_node:[Ljava/lang/String;
    .local v13, idx_j:I
    :cond_a3f
    if-eqz v14, :cond_a52

    aget-object v5, v6, v13

    .end local v5           #cmp_ret:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v22, v6, v14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move v0, v5

    move/from16 v1, v22

    if-le v0, v1, :cond_aea

    .line 568
    :cond_a52
    move v5, v13

    .end local v14           #sel:I
    .local v5, sel:I
    move v14, v15

    .end local v15           #sn_ind:I
    .local v14, sn_ind:I
    move/from16 v15, v16

    .end local v16           #sn_len:I
    .local v15, sn_len:I
    move/from16 v23, v9

    .end local v9           #flag:Z
    .restart local v23       #flag:Z
    move v9, v10

    .end local v10           #hyp_cnt:I
    .local v9, hyp_cnt:I
    move v10, v13

    .end local v13           #idx_j:I
    .local v10, idx_j:I
    move v13, v5

    .end local v5           #sel:I
    .local v13, sel:I
    move-object v5, v6

    .end local v6           #cur_node:[Ljava/lang/String;
    .local v5, cur_node:[Ljava/lang/String;
    move/from16 v6, v23

    .end local v23           #flag:Z
    .local v6, flag:Z
    goto/16 :goto_858

    .line 577
    .end local v9           #hyp_cnt:I
    .end local v14           #sn_ind:I
    .end local v15           #sn_len:I
    .local v5, cmp_ret:I
    .local v6, cur_node:[Ljava/lang/String;
    .local v7, hyp_cnt:I
    .local v10, sn_ind:I
    .local v12, sn_len:I
    :cond_a60
    sget v5, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_SEPUNIT_LEN:I

    goto/16 :goto_786

    .line 583
    .local v9, x:I
    :cond_a64
    sget v9, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_DISPNUM:I

    .end local v9           #x:I
    new-array v9, v9, [C

    .line 584
    .local v9, temp_ar:[C
    move-object/from16 v9, v17

    .line 585
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v9}, Ljava/lang/String;-><init>([C)V

    .line 587
    .local v14, temp_str:Ljava/lang/String;
    move-object v9, v14

    .line 589
    .local v9, matched_seq:Ljava/lang/CharSequence;
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v14

    .end local v14           #temp_str:Ljava/lang/String;
    const/4 v15, 0x0

    invoke-interface {v8, v14, v9, v15, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 591
    add-int v9, v10, v5

    .line 592
    .end local v10           #sn_ind:I
    .local v9, sn_ind:I
    sub-int v10, v12, v5

    .line 594
    .end local v12           #sn_len:I
    .local v10, sn_len:I
    if-lez v10, :cond_ae8

    .line 595
    const/16 v5, 0x2d

    invoke-static {v8, v5}, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->searchchar(Landroid/text/Editable;C)I

    .end local v5           #cmp_ret:I
    move-result v5

    .line 596
    .local v5, checkchar2:I
    sget v12, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_HYPHEN:I

    if-ge v7, v12, :cond_ae8

    .line 597
    add-int v12, v9, v10

    add-int/2addr v12, v7

    add-int/lit8 v12, v12, 0x1

    sget v14, Lcom/motorola/internal/KoreanPhoneNumberFormatter;->PN_MAX_DISPNUM:I

    if-gt v12, v14, :cond_ae8

    const/4 v12, 0x2

    if-eq v5, v12, :cond_ae8

    .line 598
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v5

    .end local v5           #checkchar2:I
    const-string v12, ""

    invoke-interface {v8, v5, v12}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 599
    add-int/lit8 v5, v7, 0x1

    .end local v7           #hyp_cnt:I
    .local v5, hyp_cnt:I
    :goto_a9f
    move v12, v10

    .end local v10           #sn_len:I
    .restart local v12       #sn_len:I
    move v7, v5

    .end local v5           #hyp_cnt:I
    .restart local v7       #hyp_cnt:I
    move v10, v9

    .line 603
    .end local v9           #sn_ind:I
    .local v10, sn_ind:I
    goto/16 :goto_77e

    .line 604
    :cond_aa4
    const/4 v5, 0x0

    .end local v12           #sn_len:I
    .local v5, x:I
    :goto_aa5
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v5, v9, :cond_abf

    .line 605
    invoke-interface {v8, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v12, 0x2d

    if-ne v9, v12, :cond_abc

    .line 606
    const-string v9, ""

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 604
    :cond_abc
    add-int/lit8 v5, v5, 0x1

    goto :goto_aa5

    .line 610
    :cond_abf
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v5

    .line 611
    .end local v8           #dest_num_buf:Landroid/text/Editable;
    .local v5, len:I
    :goto_ac3
    if-lez v5, :cond_ae0

    .line 612
    const/4 v8, 0x1

    sub-int v8, v5, v8

    move-object/from16 v0, p0

    move v1, v8

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_ae0

    .line 613
    const/4 v8, 0x1

    sub-int v8, v5, v8

    move-object/from16 v0, p0

    move v1, v8

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 614
    add-int/lit8 v5, v5, -0x1

    goto :goto_ac3

    :cond_ae0
    move-object/from16 p0, v6

    .end local v6           #cur_node:[Ljava/lang/String;
    .local p0, cur_node:[Ljava/lang/String;
    move v8, v10

    .end local v10           #sn_ind:I
    .local v8, sn_ind:I
    move v5, v7

    .end local v7           #hyp_cnt:I
    .local v5, hyp_cnt:I
    move v6, v11

    .end local v11           #i:I
    .local v6, i:I
    move v7, v13

    .line 620
    .end local v13           #sel:I
    .local v7, sel:I
    goto/16 :goto_6dd

    .end local v5           #hyp_cnt:I
    .local v6, cur_node:[Ljava/lang/String;
    .local v7, hyp_cnt:I
    .local v8, dest_num_buf:Landroid/text/Editable;
    .restart local v9       #sn_ind:I
    .local v10, sn_len:I
    .restart local v11       #i:I
    .restart local v13       #sel:I
    .local p0, text:Landroid/text/Editable;
    :cond_ae8
    move v5, v7

    .end local v7           #hyp_cnt:I
    .restart local v5       #hyp_cnt:I
    goto :goto_a9f

    .end local v5           #hyp_cnt:I
    .local v7, cur_node_null:[Ljava/lang/String;
    .local v9, flag:Z
    .local v10, hyp_cnt:I
    .local v12, idx_i:I
    .local v13, idx_j:I
    .local v14, sel:I
    .local v15, sn_ind:I
    .restart local v16       #sn_len:I
    :cond_aea
    move-object v5, v6

    .end local v6           #cur_node:[Ljava/lang/String;
    .local v5, cur_node:[Ljava/lang/String;
    move v6, v9

    .end local v9           #flag:Z
    .local v6, flag:Z
    move v9, v10

    .end local v10           #hyp_cnt:I
    .local v9, hyp_cnt:I
    move v10, v13

    .end local v13           #idx_j:I
    .local v10, idx_j:I
    move v13, v14

    .end local v14           #sel:I
    .local v13, sel:I
    move v14, v15

    .end local v15           #sn_ind:I
    .local v14, sn_ind:I
    move/from16 v15, v16

    .end local v16           #sn_len:I
    .local v15, sn_len:I
    goto/16 :goto_858

    .end local v5           #cur_node:[Ljava/lang/String;
    .local v6, cur_node:[Ljava/lang/String;
    .local v9, flag:Z
    .local v10, hyp_cnt:I
    :cond_af4
    move-object v5, v6

    .end local v6           #cur_node:[Ljava/lang/String;
    .restart local v5       #cur_node:[Ljava/lang/String;
    goto/16 :goto_79c

    .end local v5           #cur_node:[Ljava/lang/String;
    .restart local v6       #cur_node:[Ljava/lang/String;
    :cond_af7
    move v12, v15

    .end local v15           #sn_len:I
    .local v12, sn_len:I
    move v7, v10

    .end local v10           #hyp_cnt:I
    .local v7, hyp_cnt:I
    move v10, v14

    .end local v14           #sn_ind:I
    .local v10, sn_ind:I
    goto/16 :goto_77e

    .end local v10           #sn_ind:I
    .end local v11           #i:I
    .local v5, checkchar:I
    .local v7, cur_node_null:[Ljava/lang/String;
    .local v8, i:I
    .local v9, hyp_cnt:I
    .local v12, sel:I
    .local v13, sn_ind:I
    :cond_afc
    move v11, v8

    .end local v8           #i:I
    .restart local v11       #i:I
    goto/16 :goto_6de
.end method

.method static searchchar(Landroid/text/Editable;C)I
    .registers 5
    .parameter "text"
    .parameter "exam"

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 650
    .local v0, result:I
    const/4 v1, 0x0

    .local v1, z:I
    :goto_2
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 651
    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_10

    .line 652
    add-int/lit8 v0, v0, 0x1

    .line 650
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 656
    :cond_13
    return v0
.end method

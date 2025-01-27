.class public Lcom/motorola/android/locationproxy/FqdnVerifier;
.super Ljava/lang/Object;
.source "FqdnVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final TAG:Ljava/lang/String; = "FqdnVerifier"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .registers 13
    .parameter "cert"

    .prologue
    const-string v11, "FqdnVerifier"

    .line 38
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 39
    .local v6, subjectAltList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 41
    .local v1, c:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    :try_start_8
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;
    :try_end_b
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_8 .. :try_end_b} :catch_35

    move-result-object v1

    .line 45
    :goto_c
    if-eqz v1, :cond_5a

    .line 46
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    .local v3, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 47
    .local v0, aC:Ljava/util/List;,"Ljava/util/List<*>;"
    move-object v4, v0

    .line 48
    .local v4, list:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 49
    .local v8, type:I
    packed-switch v8, :pswitch_data_6e

    .line 63
    :pswitch_2d
    const-string v9, "FqdnVerifier"

    const-string v9, "We don\'t care about this type."

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 42
    .end local v0           #aC:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v8           #type:I
    .restart local p0
    :catch_35
    move-exception v2

    .line 43
    .local v2, cpe:Ljava/security/cert/CertificateParsingException;
    const-string v9, "FqdnVerifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing certificate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 58
    .end local v2           #cpe:Ljava/security/cert/CertificateParsingException;
    .end local p0
    .restart local v0       #aC:Ljava/util/List;,"Ljava/util/List<*>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<*>;"
    .restart local v8       #type:I
    :pswitch_4f
    const/4 v9, 0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 59
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 68
    .end local v0           #aC:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v5           #s:Ljava/lang/String;
    .end local v8           #type:I
    :cond_5a
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6b

    .line 69
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v9

    new-array v7, v9, [Ljava/lang/String;

    .line 70
    .local v7, subjectAlts:[Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v9, v7

    .line 73
    .end local v7           #subjectAlts:[Ljava/lang/String;
    :goto_6a
    return-object v9

    :cond_6b
    const/4 v9, 0x0

    goto :goto_6a

    .line 49
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_4f
    .end packed-switch
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .registers 12
    .parameter "fqdn"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const-string v8, "FqdnVerifier"

    .line 78
    invoke-static {p2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, cns:[Ljava/lang/String;
    if-eqz v1, :cond_2a

    .line 80
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_b
    if-ge v2, v3, :cond_2a

    aget-object v4, v0, v2

    .line 81
    .local v4, s:Ljava/lang/String;
    const-string v6, "FqdnVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 84
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_2a
    invoke-static {p2}, Lcom/motorola/android/locationproxy/FqdnVerifier;->getSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, subjectAlts:[Ljava/lang/String;
    if-eqz v5, :cond_52

    .line 86
    move-object v0, v5

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_33
    if-ge v2, v3, :cond_52

    aget-object v4, v0, v2

    .line 87
    .restart local v4       #s:Ljava/lang/String;
    const-string v6, "FqdnVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 90
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_52
    invoke-virtual {p0, p1, v1, v5}, Lcom/motorola/android/locationproxy/FqdnVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 21
    .parameter "fqdn"
    .parameter "cns"
    .parameter "subjectAlts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 96
    .local v12, names:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz p2, :cond_18

    move-object/from16 v0, p2

    array-length v0, v0

    move v14, v0

    if-lez v14, :cond_18

    const/4 v14, 0x0

    aget-object v14, p2, v14

    if-eqz v14, :cond_18

    .line 97
    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-virtual {v12, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_18
    if-eqz p3, :cond_2a

    .line 100
    move-object/from16 v2, p3

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1e
    if-ge v7, v9, :cond_2a

    aget-object v13, v2, v7

    .line 101
    .local v13, subjectAlt:Ljava/lang/String;
    if-eqz v13, :cond_27

    .line 102
    invoke-virtual {v12, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 107
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v13           #subjectAlt:Ljava/lang/String;
    :cond_2a
    invoke-virtual {v12}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_52

    .line 108
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Certificate for <"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "> doesn\'t contain CN or DNS subjectAlt"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, msg:Ljava/lang/String;
    new-instance v14, Ljavax/net/ssl/SSLException;

    invoke-direct {v14, v11}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 113
    .end local v11           #msg:Ljava/lang/String;
    :cond_52
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    .local v3, buf:Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, hostName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 119
    .local v10, match:Z
    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_66
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_bb

    .line 121
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 122
    .local v4, cn:Ljava/lang/String;
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 124
    const-string v14, " <"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const/16 v14, 0x3e

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 127
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_90

    .line 128
    const-string v14, " OR"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_90
    const-string v14, "*."

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e3

    const/16 v14, 0x2e

    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    if-ltz v14, :cond_e3

    invoke-static {v4}, Lorg/apache/http/conn/ssl/AbstractVerifier;->acceptableCountryWildcard(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e3

    invoke-static/range {p1 .. p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e3

    const/4 v14, 0x1

    move v5, v14

    .line 139
    .local v5, doWildcard:Z
    :goto_ae
    if-eqz v5, :cond_e6

    .line 140
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    .line 144
    :goto_b9
    if-eqz v10, :cond_66

    .line 148
    .end local v4           #cn:Ljava/lang/String;
    .end local v5           #doWildcard:Z
    :cond_bb
    if-nez v10, :cond_eb

    .line 149
    new-instance v14, Ljavax/net/ssl/SSLException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "hostname in certificate didn\'t match: <"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "> !="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 134
    .restart local v4       #cn:Ljava/lang/String;
    :cond_e3
    const/4 v14, 0x0

    move v5, v14

    goto :goto_ae

    .line 142
    .restart local v5       #doWildcard:Z
    :cond_e6
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_b9

    .line 151
    .end local v4           #cn:Ljava/lang/String;
    .end local v5           #doWildcard:Z
    :cond_eb
    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 8
    .parameter "fqdn"
    .parameter "session"

    .prologue
    const/4 v4, 0x0

    .line 155
    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 156
    .local v0, certs:[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aget-object v2, v0, v3

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 157
    .local v2, x509:Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v2}, Lcom/motorola/android/locationproxy/FqdnVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_d} :catch_f

    .line 158
    const/4 v3, 0x1

    .line 160
    .end local v0           #certs:[Ljava/security/cert/Certificate;
    .end local v2           #x509:Ljava/security/cert/X509Certificate;
    :goto_e
    return v3

    .line 159
    :catch_f
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljavax/net/ssl/SSLException;
    move v3, v4

    .line 160
    goto :goto_e
.end method

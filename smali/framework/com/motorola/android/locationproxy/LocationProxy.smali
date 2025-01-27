.class public Lcom/motorola/android/locationproxy/LocationProxy;
.super Ljava/lang/Object;
.source "LocationProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;
    }
.end annotation


# static fields
.field public static final MTLR_CAUSE_MTLR_TIME_OUT:I = 0x1

.field public static final MTLR_CAUSE_NETWORK_CONNECTION_RELEASED:I = 0x0

.field public static final MTLR_CLIENT_ADDRESS:Ljava/lang/String; = "clientAddress"

.field public static final MTLR_CLIENT_NAME:Ljava/lang/String; = "clientName"

.field public static final MTLR_CURRENT_LOCATION:I = 0x0

.field public static final MTLR_CURRENT_OR_LAST_KNOWN_LOCATION:I = 0x1

.field public static final MTLR_ID:Ljava/lang/String; = "mtlrId"

.field public static final MTLR_INITIAL_LOCATION:I = 0x2

.field public static final MTLR_LOCATION_ESTIMATE_TYPE_INVALID:I = 0x3

.field public static final MTLR_LOCATION_TYPE:Ljava/lang/String; = "locationType"

.field public static final MTLR_NOTIFICATION_TYPE:Ljava/lang/String; = "notificationType"

.field public static final MTLR_NTFCTN_INVALID:I = 0x3

.field public static final MTLR_NTFCTN_LOCATION_ALLOWED:I = 0x0

.field public static final MTLR_NTFCTN_LOCATION_ALLOWED_IF_NO_RESPONSE:I = 0x1

.field public static final MTLR_NTFCTN_LOCATION_NOT_ALLOWED_IF_NO_RESPONSE:I = 0x2

.field public static final MTLR_RECEIVED_ACTION:Ljava/lang/String; = "com.motorola.android.locationproxy.MTLR_RECEIVED"

.field private static final TAG:Ljava/lang/String; = "LocationProxyService"


# instance fields
.field private mMtlrListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/android/locationproxy/MtlrListener;",
            "Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/motorola/android/locationproxy/ILocationProxy;


# direct methods
.method public constructor <init>(Lcom/motorola/android/locationproxy/ILocationProxy;)V
    .registers 5
    .parameter "service"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mMtlrListeners:Ljava/util/HashMap;

    .line 84
    const-string v0, "LocationProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p1, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    .line 87
    return-void
.end method


# virtual methods
.method public getDefaultSuplServer()Ljava/lang/String;
    .registers 5

    .prologue
    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v2}, Lcom/motorola/android/locationproxy/ILocationProxy;->getDefaultSuplServer()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_a

    move-result-object v2

    .line 125
    :goto_6
    return-object v2

    .line 120
    :catch_7
    move-exception v2

    move-object v1, v2

    .line 121
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 122
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 123
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LocationProxyService"

    const-string v3, "getDefaultSuplServer: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public getSuplServer()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, "LocationProxyService"

    .line 98
    const-string v2, "LocationProxyService"

    const-string v2, "getSUPLServer"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_9
    iget-object v2, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v2}, Lcom/motorola/android/locationproxy/ILocationProxy;->getSuplServer()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_13

    move-result-object v2

    .line 107
    :goto_f
    return-object v2

    .line 102
    :catch_10
    move-exception v2

    move-object v1, v2

    .line 103
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 104
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 105
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LocationProxyService"

    const-string v2, "getSuplServer: RemoteException"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public registerMtlrListener(Lcom/motorola/android/locationproxy/MtlrListener;)Z
    .registers 8
    .parameter "listener"

    .prologue
    .line 235
    if-nez p1, :cond_a

    .line 236
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "MtlrListener==null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 239
    :cond_a
    iget-object v4, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mMtlrListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 241
    const/4 v4, 0x1

    .line 256
    :goto_13
    return v4

    .line 244
    :cond_14
    :try_start_14
    new-instance v3, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;

    invoke-direct {v3, p0, p1}, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;-><init>(Lcom/motorola/android/locationproxy/LocationProxy;Lcom/motorola/android/locationproxy/MtlrListener;)V

    .line 245
    .local v3, transport:Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;
    iget-object v4, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v4, v3}, Lcom/motorola/android/locationproxy/ILocationProxy;->registerMtlrListener(Lcom/motorola/android/locationproxy/IMtlrListener;)Z

    move-result v1

    .line 246
    .local v1, result:Z
    if-eqz v1, :cond_26

    .line 247
    iget-object v4, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mMtlrListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_26} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_26} :catch_2b

    .end local v3           #transport:Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;
    :cond_26
    :goto_26
    move v4, v1

    .line 256
    goto :goto_13

    .line 249
    .end local v1           #result:Z
    :catch_28
    move-exception v4

    move-object v2, v4

    .line 250
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 251
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_2b
    move-exception v4

    move-object v0, v4

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "LocationProxyService"

    const-string v5, "RemoteException in registerMtlrListener: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_26
.end method

.method public resetSuplServer()Z
    .registers 5

    .prologue
    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v2}, Lcom/motorola/android/locationproxy/ILocationProxy;->resetSuplServer()Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_a

    move-result v2

    .line 166
    :goto_6
    return v2

    .line 161
    :catch_7
    move-exception v2

    move-object v1, v2

    .line 162
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 163
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 164
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LocationProxyService"

    const-string v3, "resetSuplServer: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public responseMtlr(ZI)Z
    .registers 7
    .parameter "allowedOrNot"
    .parameter "reqId"

    .prologue
    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v2, p1, p2}, Lcom/motorola/android/locationproxy/ILocationProxy;->responseMtlr(ZI)Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_a

    move-result v2

    .line 189
    :goto_6
    return v2

    .line 184
    :catch_7
    move-exception v2

    move-object v1, v2

    .line 185
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 186
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 187
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LocationProxyService"

    const-string v3, "responseMtlr: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public setSuplServer(Ljava/lang/String;)Z
    .registers 6
    .parameter "suplServer"

    .prologue
    .line 138
    if-nez p1, :cond_a

    .line 139
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "suplServer==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v2, p1}, Lcom/motorola/android/locationproxy/ILocationProxy;->setSuplServer(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_f} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_14

    move-result v2

    .line 148
    :goto_10
    return v2

    .line 143
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 144
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 145
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_14
    move-exception v2

    move-object v0, v2

    .line 146
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LocationProxyService"

    const-string v3, "setSuplServer: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public unregisterMtlrListener(Lcom/motorola/android/locationproxy/MtlrListener;)Z
    .registers 8
    .parameter "listener"

    .prologue
    const-string v5, "LocationProxyService"

    .line 269
    if-nez p1, :cond_c

    .line 270
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener==null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 273
    :cond_c
    const-string v3, "LocationProxyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterMtlrCallback: listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_24
    iget-object v3, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mMtlrListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;

    .line 277
    .local v2, transport:Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;
    if-eqz v2, :cond_33

    .line 278
    iget-object v3, p0, Lcom/motorola/android/locationproxy/LocationProxy;->mService:Lcom/motorola/android/locationproxy/ILocationProxy;

    invoke-interface {v3}, Lcom/motorola/android/locationproxy/ILocationProxy;->unregisterMtlrListener()Z
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_33} :catch_35
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_33} :catch_38

    .line 286
    .end local v2           #transport:Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;
    :cond_33
    :goto_33
    const/4 v3, 0x1

    return v3

    .line 280
    :catch_35
    move-exception v3

    move-object v1, v3

    .line 281
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 282
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_38
    move-exception v3

    move-object v0, v3

    .line 283
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "LocationProxyService"

    const-string v3, "removeUpdates: DeadObjectException"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

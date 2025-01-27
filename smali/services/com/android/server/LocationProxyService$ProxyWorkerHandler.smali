.class Lcom/android/server/LocationProxyService$ProxyWorkerHandler;
.super Landroid/os/Handler;
.source "LocationProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationProxyService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationProxyService;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/server/LocationProxyService$ProxyWorkerHandler;->this$0:Lcom/android/server/LocationProxyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationProxyService;Lcom/android/server/LocationProxyService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/server/LocationProxyService$ProxyWorkerHandler;-><init>(Lcom/android/server/LocationProxyService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const-string v9, "LocationProxyService"

    .line 203
    :try_start_2
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1c

    .line 204
    const-string v6, "LocationProxyService"

    const-string v7, "Received SUPL_MTLR_REQ:going to send MTLR broadcast..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v6, p0, Lcom/android/server/LocationProxyService$ProxyWorkerHandler;->this$0:Lcom/android/server/LocationProxyService;

    invoke-static {v6, p1}, Lcom/android/server/LocationProxyService;->access$000(Lcom/android/server/LocationProxyService;Landroid/os/Message;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_2f

    .line 235
    :cond_14
    :goto_14
    const-string v6, "LocationProxyService"

    const-string v6, "OK: Leaving handleMessage()"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 207
    :cond_1c
    :try_start_1c
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x20

    if-ne v6, v7, :cond_39

    .line 208
    const-string v6, "LocationProxyService"

    const-string v7, "Received SUPL_MTLR2_REQ:going to send MTLR broadcast..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v6, p0, Lcom/android/server/LocationProxyService$ProxyWorkerHandler;->this$0:Lcom/android/server/LocationProxyService;

    invoke-static {v6, p1}, Lcom/android/server/LocationProxyService;->access$100(Lcom/android/server/LocationProxyService;Landroid/os/Message;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2e} :catch_2f

    goto :goto_14

    .line 231
    :catch_2f
    move-exception v6

    move-object v3, v6

    .line 233
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "LocationProxyService"

    const-string v6, "Exception in ProxyWorkerHandler.handleMessage:"

    invoke-static {v9, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 211
    .end local v3           #e:Ljava/lang/Exception;
    :cond_39
    :try_start_39
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x40

    if-ne v6, v7, :cond_a4

    .line 213
    const-string v6, "LocationProxyService"

    const-string v7, "Received SUPL_MTLR_STATUS_REQ"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v6, p0, Lcom/android/server/LocationProxyService$ProxyWorkerHandler;->this$0:Lcom/android/server/LocationProxyService;

    invoke-static {v6}, Lcom/android/server/LocationProxyService;->access$200(Lcom/android/server/LocationProxyService;)Lcom/motorola/android/locationproxy/IMtlrListener;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4b} :catch_2f

    move-result-object v6

    if-eqz v6, :cond_14

    .line 216
    :try_start_4e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 217
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 218
    .local v2, data:[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v5, v2, v6

    check-cast v5, Ljava/lang/Integer;

    .line 219
    .local v5, reqId:Ljava/lang/Integer;
    const/4 v6, 0x1

    aget-object v4, v2, v6

    check-cast v4, Ljava/lang/Integer;

    .line 220
    .local v4, reason:Ljava/lang/Integer;
    const-string v6, "LocationProxyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calling onMtlrStatusChanged--reqId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",reason:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v6, p0, Lcom/android/server/LocationProxyService$ProxyWorkerHandler;->this$0:Lcom/android/server/LocationProxyService;

    invoke-static {v6}, Lcom/android/server/LocationProxyService;->access$200(Lcom/android/server/LocationProxyService;)Lcom/motorola/android/locationproxy/IMtlrListener;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/motorola/android/locationproxy/IMtlrListener;->onMtlrStatusChanged(II)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_97} :catch_99
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_97} :catch_2f

    goto/16 :goto_14

    .line 222
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[Ljava/lang/Object;
    .end local v4           #reason:Ljava/lang/Integer;
    .end local v5           #reqId:Ljava/lang/Integer;
    :catch_99
    move-exception v6

    move-object v3, v6

    .line 224
    .local v3, e:Landroid/os/RemoteException;
    :try_start_9b
    const-string v6, "LocationProxyService"

    const-string v7, "Exception when doing callback:"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 229
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_a4
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a7} :catch_2f

    goto/16 :goto_14
.end method

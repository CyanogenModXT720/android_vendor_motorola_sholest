.class Lcom/motorola/android/locationproxy/Supl$SuplReceiver;
.super Ljava/lang/Object;
.source "Supl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/Supl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuplReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/motorola/android/locationproxy/Supl;


# direct methods
.method constructor <init>(Lcom/motorola/android/locationproxy/Supl;)V
    .registers 3
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    const v0, 0xfffd

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->buffer:[B

    .line 308
    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 312
    const/4 v12, 0x0

    .line 315
    .local v12, retryCount:I
    :goto_1
    const/4 v14, 0x0

    .line 319
    .local v14, s:Landroid/net/LocalSocket;
    :try_start_2
    new-instance v15, Landroid/net/LocalSocket;

    invoke-direct {v15}, Landroid/net/LocalSocket;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_b7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_f9

    .line 320
    .end local v14           #s:Landroid/net/LocalSocket;
    .local v15, s:Landroid/net/LocalSocket;
    :try_start_7
    new-instance v9, Landroid/net/LocalSocketAddress;

    const-string v18, "location_shim"

    sget-object v19, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 322
    .local v9, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v15, v9}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_1dd
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_18} :catch_190

    .line 358
    const/4 v12, 0x0

    .line 360
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v18, v0

    move-object v0, v15

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    .line 361
    const-string v18, "SUPLJ"

    const-string v19, "Connected to \'location_shim\' socket"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_2b} :catch_190

    .line 363
    const/4 v10, 0x0

    .line 365
    .local v10, length:I
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 370
    .local v8, is:Ljava/io/InputStream;
    :goto_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->buffer:[B

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/motorola/android/locationproxy/Supl;->access$000(Ljava/io/InputStream;[B)I

    move-result v10

    .line 371
    if-gez v10, :cond_124

    .line 372
    const-string v18, "SUPLJ"

    const-string v19, "Read Supl Message ERROR"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_52} :catch_17f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_52} :catch_196

    .line 391
    .end local v8           #is:Ljava/io/InputStream;
    :goto_52
    :try_start_52
    const-string v18, "SUPLJ"

    const-string v19, "Disconnected from \'location_shim\' socket"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_59} :catch_190

    .line 395
    :try_start_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/LocalSocket;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_68} :catch_1bc
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_68} :catch_190

    .line 400
    :goto_68
    :try_start_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    .line 401
    invoke-static {}, Lcom/motorola/android/locationproxy/SuplRequest;->resetSerial()V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_86} :catch_190

    .line 405
    const/4 v7, 0x0

    .local v7, i:I
    :try_start_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, sz:I
    :goto_97
    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_1c8

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/android/locationproxy/SuplRequest;

    .line 407
    .local v13, rr:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v13}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V
    :try_end_b4
    .catchall {:try_start_87 .. :try_end_b4} :catchall_1da

    .line 405
    add-int/lit8 v7, v7, 0x1

    goto :goto_97

    .line 323
    .end local v7           #i:I
    .end local v9           #l:Landroid/net/LocalSocketAddress;
    .end local v10           #length:I
    .end local v13           #rr:Lcom/motorola/android/locationproxy/SuplRequest;
    .end local v15           #s:Landroid/net/LocalSocket;
    .end local v16           #sz:I
    .restart local v14       #s:Landroid/net/LocalSocket;
    :catch_b7
    move-exception v18

    move-object/from16 v5, v18

    .line 327
    .local v5, ex:Ljava/io/IOException;
    :goto_ba
    if-eqz v14, :cond_bf

    .line 328
    :try_start_bc
    invoke-virtual {v14}, Landroid/net/LocalSocket;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_f0
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_bf} :catch_f9

    .line 337
    :cond_bf
    :goto_bf
    const/16 v18, 0x2

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_10a

    .line 338
    :try_start_c6
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Couldn\'t find \'location_shim\' socket after "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " times, continuing to retry silently"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_e7} :catch_f9

    .line 349
    :cond_e7
    :goto_e7
    const-wide/16 v18, 0xfa0

    :try_start_e9
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ec
    .catch Ljava/lang/InterruptedException; {:try_start_e9 .. :try_end_ec} :catch_11b
    .catch Ljava/lang/Throwable; {:try_start_e9 .. :try_end_ec} :catch_f9

    .line 354
    :goto_ec
    add-int/lit8 v12, v12, 0x1

    .line 355
    goto/16 :goto_1

    .line 330
    :catch_f0
    move-exception v6

    .line 331
    .local v6, ex2:Ljava/io/IOException;
    :try_start_f1
    const-string v18, "SUPLJ"

    const-string v19, "Ignore failure to close after failure to connect"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_f8} :catch_f9

    goto :goto_bf

    .line 413
    .end local v5           #ex:Ljava/io/IOException;
    .end local v6           #ex2:Ljava/io/IOException;
    :catch_f9
    move-exception v18

    move-object/from16 v17, v18

    .line 414
    .local v17, tr:Ljava/lang/Throwable;
    :goto_fc
    const-string v18, "SUPLJ"

    const-string v19, "Uncaught exception"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    return-void

    .line 342
    .end local v17           #tr:Ljava/lang/Throwable;
    .restart local v5       #ex:Ljava/io/IOException;
    :cond_10a
    if-lez v12, :cond_e7

    const/16 v18, 0x2

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_e7

    .line 343
    :try_start_113
    const-string v18, "SUPLJ"

    const-string v19, "Couldn\'t find \'location_shim\' socket; retrying after timeout"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    .line 350
    :catch_11b
    move-exception v4

    .line 351
    .local v4, er:Ljava/lang/InterruptedException;
    const-string v18, "SUPLJ"

    const-string v19, "InterruptedException"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catch Ljava/lang/Throwable; {:try_start_113 .. :try_end_123} :catch_f9

    goto :goto_ec

    .line 375
    .end local v4           #er:Ljava/lang/InterruptedException;
    .end local v5           #ex:Ljava/io/IOException;
    .end local v14           #s:Landroid/net/LocalSocket;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #l:Landroid/net/LocalSocketAddress;
    .restart local v10       #length:I
    .restart local v15       #s:Landroid/net/LocalSocket;
    :cond_124
    :try_start_124
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Read packet: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " bytes"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->buffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-static {v0, v1}, Lcom/motorola/android/locationproxy/Supl;->access$100([BI)V

    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 379
    .local v11, p:Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->buffer:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object v0, v11

    move-object/from16 v1, v18

    move/from16 v2, v19

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 380
    const/16 v18, 0x0

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-static {v0, v1}, Lcom/motorola/android/locationproxy/Supl;->access$200(Lcom/motorola/android/locationproxy/Supl;Landroid/os/Parcel;)V

    .line 382
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_17d
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_17d} :catch_17f
    .catch Ljava/lang/Throwable; {:try_start_124 .. :try_end_17d} :catch_196

    goto/16 :goto_3c

    .line 384
    .end local v8           #is:Ljava/io/InputStream;
    .end local v11           #p:Landroid/os/Parcel;
    :catch_17f
    move-exception v18

    move-object/from16 v5, v18

    .line 385
    .restart local v5       #ex:Ljava/io/IOException;
    :try_start_182
    const-string v18, "SUPLJ"

    const-string v19, "\'location_shim\' socket closed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_52

    .line 413
    .end local v5           #ex:Ljava/io/IOException;
    .end local v9           #l:Landroid/net/LocalSocketAddress;
    .end local v10           #length:I
    :catch_190
    move-exception v18

    move-object/from16 v17, v18

    move-object v14, v15

    .end local v15           #s:Landroid/net/LocalSocket;
    .restart local v14       #s:Landroid/net/LocalSocket;
    goto/16 :goto_fc

    .line 387
    .end local v14           #s:Landroid/net/LocalSocket;
    .restart local v9       #l:Landroid/net/LocalSocketAddress;
    .restart local v10       #length:I
    .restart local v15       #s:Landroid/net/LocalSocket;
    :catch_196
    move-exception v18

    move-object/from16 v17, v18

    .line 388
    .restart local v17       #tr:Ljava/lang/Throwable;
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Uncaught exception read length="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_52

    .line 396
    .end local v17           #tr:Ljava/lang/Throwable;
    :catch_1bc
    move-exception v18

    move-object/from16 v5, v18

    .line 397
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v18, "SUPLJ"

    const-string v19, "Close socket error"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c6
    .catch Ljava/lang/Throwable; {:try_start_182 .. :try_end_1c6} :catch_190

    goto/16 :goto_68

    .line 410
    .end local v5           #ex:Ljava/io/IOException;
    .restart local v7       #i:I
    .restart local v16       #sz:I
    :cond_1c8
    :try_start_1c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 411
    monitor-exit v18

    goto/16 :goto_1

    .end local v16           #sz:I
    :catchall_1da
    move-exception v19

    monitor-exit v18
    :try_end_1dc
    .catchall {:try_start_1c8 .. :try_end_1dc} :catchall_1da

    :try_start_1dc
    throw v19
    :try_end_1dd
    .catch Ljava/lang/Throwable; {:try_start_1dc .. :try_end_1dd} :catch_190

    .line 323
    .end local v7           #i:I
    .end local v9           #l:Landroid/net/LocalSocketAddress;
    .end local v10           #length:I
    :catch_1dd
    move-exception v18

    move-object/from16 v5, v18

    move-object v14, v15

    .end local v15           #s:Landroid/net/LocalSocket;
    .restart local v14       #s:Landroid/net/LocalSocket;
    goto/16 :goto_ba
.end method

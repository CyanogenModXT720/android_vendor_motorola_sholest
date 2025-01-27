.class Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;
.super Ljava/lang/Object;
.source "SuplDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/SuplDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataHandler"
.end annotation


# instance fields
.field private mSocketInputDataBuffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/motorola/android/locationproxy/SuplDataService;


# direct methods
.method private constructor <init>(Lcom/motorola/android/locationproxy/SuplDataService;)V
    .registers 3
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->mSocketInputDataBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/locationproxy/SuplDataService;Lcom/motorola/android/locationproxy/SuplDataService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;-><init>(Lcom/motorola/android/locationproxy/SuplDataService;)V

    return-void
.end method


# virtual methods
.method public handleIncomingData(Ljava/nio/channels/SocketChannel;)V
    .registers 9
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v6, "SUPLJ"

    const-string v5, "Connection closed by peer."

    .line 524
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->mSocketInputDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 525
    .local v1, bytesRead:I
    if-gez v1, :cond_1c

    .line 526
    const-string v2, "SUPLJ"

    const-string v2, "Connection closed by peer."

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Connection closed by peer."

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 529
    :cond_1c
    const-string v2, "SUPLJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bytes read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->mSocketInputDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 531
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    iget-object v3, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->mSocketInputDataBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lcom/motorola/android/locationproxy/SuplDataService;->access$800(Lcom/motorola/android/locationproxy/SuplDataService;Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 532
    .local v0, b:[B
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    invoke-static {v2}, Lcom/motorola/android/locationproxy/SuplDataService;->access$600(Lcom/motorola/android/locationproxy/SuplDataService;)Lcom/motorola/android/locationproxy/ISuplCommands;

    move-result-object v2

    invoke-interface {v2, v4, v0, v4}, Lcom/motorola/android/locationproxy/ISuplCommands;->forwardSocketData(I[BI)V

    .line 533
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->mSocketInputDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 535
    return-void
.end method

.method public sendData([B)V
    .registers 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "SUPLJ"

    .line 515
    const-string v1, "SUPLJ"

    const-string v1, "sendData invoked."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string v1, "SUPLJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 519
    .local v0, buffer:Ljava/nio/ByteBuffer;
    const-string v1, "SUPLJ"

    const-string v1, "Calling flush..."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    invoke-static {v1, v0}, Lcom/motorola/android/locationproxy/SuplDataService;->access$1000(Lcom/motorola/android/locationproxy/SuplDataService;Ljava/nio/ByteBuffer;)V

    .line 521
    return-void
.end method

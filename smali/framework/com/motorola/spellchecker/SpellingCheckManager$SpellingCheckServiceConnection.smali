.class Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;
.super Ljava/lang/Object;
.source "SpellingCheckManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/spellchecker/SpellingCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpellingCheckServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/spellchecker/SpellingCheckManager;


# direct methods
.method constructor <init>(Lcom/motorola/spellchecker/SpellingCheckManager;)V
    .registers 2
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .parameter "name"
    .parameter "service"

    .prologue
    .line 425
    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-static {p2}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/spellchecker/ISpellingCheckService;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$702(Lcom/motorola/spellchecker/SpellingCheckManager;Lcom/motorola/spellchecker/ISpellingCheckService;)Lcom/motorola/spellchecker/ISpellingCheckService;

    .line 427
    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-static {v4}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$700(Lcom/motorola/spellchecker/SpellingCheckManager;)Lcom/motorola/spellchecker/ISpellingCheckService;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 432
    :try_start_11
    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    iget-object v5, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-static {v5}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$700(Lcom/motorola/spellchecker/SpellingCheckManager;)Lcom/motorola/spellchecker/ISpellingCheckService;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-static {v6}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$900(Lcom/motorola/spellchecker/SpellingCheckManager;)Lcom/motorola/spellchecker/ISpellingCheckClient$Stub;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/motorola/spellchecker/ISpellingCheckService;->registerClient(Lcom/motorola/spellchecker/ISpellingCheckClient;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$802(Lcom/motorola/spellchecker/SpellingCheckManager;I)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_26} :catch_45

    .line 437
    :goto_26
    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-static {v4}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$1000(Lcom/motorola/spellchecker/SpellingCheckManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 438
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_31
    if-ge v2, v0, :cond_4f

    .line 439
    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-static {v4}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$1000(Lcom/motorola/spellchecker/SpellingCheckManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/spellchecker/SpellingCheckManager$OnConnectionEstablishedListener;

    .line 440
    .local v3, listener:Lcom/motorola/spellchecker/SpellingCheckManager$OnConnectionEstablishedListener;
    invoke-interface {v3}, Lcom/motorola/spellchecker/SpellingCheckManager$OnConnectionEstablishedListener;->onConnectionEstablished()V

    .line 438
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 433
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #listener:Lcom/motorola/spellchecker/SpellingCheckManager$OnConnectionEstablishedListener;
    :catch_45
    move-exception v4

    move-object v1, v4

    .line 434
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "*** SpellingCheckManager ***"

    const-string v5, "Spell Client Register failed!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 442
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_4f
    iget-object v4, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-static {v4}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$1000(Lcom/motorola/spellchecker/SpellingCheckManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 444
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_58
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    invoke-static {v0}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$1100(Lcom/motorola/spellchecker/SpellingCheckManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 452
    iget-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellingCheckServiceConnection;->this$0:Lcom/motorola/spellchecker/SpellingCheckManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/spellchecker/SpellingCheckManager;->access$702(Lcom/motorola/spellchecker/SpellingCheckManager;Lcom/motorola/spellchecker/ISpellingCheckService;)Lcom/motorola/spellchecker/ISpellingCheckService;

    .line 453
    return-void
.end method

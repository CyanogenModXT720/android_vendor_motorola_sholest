.class Lcom/motorola/android/locationproxy/SuplDataService$1;
.super Ljava/lang/Object;
.source "SuplDataService.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/locationproxy/SuplDataService;->initKeyManagers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/locationproxy/SuplDataService;


# direct methods
.method constructor <init>(Lcom/motorola/android/locationproxy/SuplDataService;)V
    .registers 2
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/motorola/android/locationproxy/SuplDataService$1;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/motorola/android/locationproxy/SuplDataService$1;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .registers 2

    .prologue
    .line 312
    const-string v0, "javax.net.ssl.trustStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

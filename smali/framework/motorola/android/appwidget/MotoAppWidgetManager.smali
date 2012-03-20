.class public Lmotorola/android/appwidget/MotoAppWidgetManager;
.super Ljava/lang/Object;
.source "MotoAppWidgetManager.java"


# static fields
.field public static final ACTION_MOTOAPPWIDGET_UPDATE:Ljava/lang/String; = "android.appwidget.action.MOTO_APPWIDGET_UPDATE"

.field public static final ACTION_MOTOSHORTCUT_UPDATE:Ljava/lang/String; = "android.appwidget.action.MOTO_SHORTCUT_UPDATE"

.field private static final LOG_TAG:Ljava/lang/String; = "MotoAppWidgetManager"

.field public static final META_DATA_MOTOAPPWIDGET_SIZE:Ljava/lang/String; = "com.motorola.motoappwidget.size"

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmotorola/android/appwidget/MotoAppWidgetManager;",
            ">;>;"
        }
    .end annotation
.end field

.field static sService:Lcom/android/internal/appwidget/IAppWidgetService;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmotorola/android/appwidget/MotoAppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lmotorola/android/appwidget/MotoAppWidgetManager;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lmotorola/android/appwidget/MotoAppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 70
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmotorola/android/appwidget/MotoAppWidgetManager;
    .registers 7
    .parameter "context"

    .prologue
    .line 47
    sget-object v3, Lmotorola/android/appwidget/MotoAppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 48
    :try_start_3
    sget-object v4, Lmotorola/android/appwidget/MotoAppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v4, :cond_13

    .line 49
    const-string v4, "appwidget"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v4

    sput-object v4, Lmotorola/android/appwidget/MotoAppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 53
    .end local v0           #b:Landroid/os/IBinder;
    :cond_13
    sget-object v4, Lmotorola/android/appwidget/MotoAppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 54
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmotorola/android/appwidget/MotoAppWidgetManager;>;"
    const/4 v2, 0x0

    .line 55
    .local v2, result:Lmotorola/android/appwidget/MotoAppWidgetManager;
    if-eqz v1, :cond_24

    .line 56
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #result:Lmotorola/android/appwidget/MotoAppWidgetManager;
    check-cast v2, Lmotorola/android/appwidget/MotoAppWidgetManager;

    .line 58
    .restart local v2       #result:Lmotorola/android/appwidget/MotoAppWidgetManager;
    :cond_24
    if-nez v2, :cond_35

    .line 59
    new-instance v2, Lmotorola/android/appwidget/MotoAppWidgetManager;

    .end local v2           #result:Lmotorola/android/appwidget/MotoAppWidgetManager;
    invoke-direct {v2, p0}, Lmotorola/android/appwidget/MotoAppWidgetManager;-><init>(Landroid/content/Context;)V

    .line 60
    .restart local v2       #result:Lmotorola/android/appwidget/MotoAppWidgetManager;
    sget-object v4, Lmotorola/android/appwidget/MotoAppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_35
    monitor-exit v3

    return-object v2

    .line 63
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmotorola/android/appwidget/MotoAppWidgetManager;>;"
    .end local v2           #result:Lmotorola/android/appwidget/MotoAppWidgetManager;
    :catchall_37
    move-exception v4

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v4
.end method


# virtual methods
.method public bindAppWidgetIdForShortcut(ILandroid/content/ComponentName;Landroid/net/Uri;II)V
    .registers 13
    .parameter "appWidgetId"
    .parameter "provider"
    .parameter "uri"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 94
    const-string v0, "MotoAppWidgetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAppWidgetIdForShortcut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "spanX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "spanY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_36
    sget-object v0, Lmotorola/android/appwidget/MotoAppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetIdForShortcut(ILandroid/content/ComponentName;Landroid/net/Uri;II)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_40} :catch_41

    .line 101
    return-void

    .line 98
    :catch_41
    move-exception v0

    move-object v6, v0

    .line 99
    .local v6, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "system server dead?"

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getMotoAppWidgetSizes(I)[I
    .registers 7
    .parameter "appWidgetId"

    .prologue
    .line 167
    const-string v2, "MotoAppWidgetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumberOfMotoAppWidgetSizes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_18
    sget-object v2, Lmotorola/android/appwidget/MotoAppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getMotoAppWidgetSizes(I)[I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1f

    move-result-object v1

    .line 177
    .local v1, sizes:[I
    return-object v1

    .line 173
    .end local v1           #sizes:[I
    :catch_1f
    move-exception v2

    move-object v0, v2

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "system server dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getMotoAppWidgetSpanSizes(I)[I
    .registers 7
    .parameter "appWidgetId"

    .prologue
    .line 183
    const-string v2, "MotoAppWidgetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMotoAppWidgetSpanSizes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :try_start_18
    sget-object v2, Lmotorola/android/appwidget/MotoAppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getMotoAppWidgetSpanSizes(I)[I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1f

    move-result-object v1

    .line 193
    .local v1, sizes:[I
    return-object v1

    .line 189
    .end local v1           #sizes:[I
    :catch_1f
    move-exception v2

    move-object v0, v2

    .line 190
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "system server dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getNumberOfMotoAppWidgetSizes(I)I
    .registers 7
    .parameter "appWidgetId"

    .prologue
    .line 153
    const-string v2, "MotoAppWidgetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumberOfMotoAppWidgetSizes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, size:I
    :try_start_19
    sget-object v2, Lmotorola/android/appwidget/MotoAppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getNumberOfMotoAppWidgetSizes(I)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_20

    move-result v1

    .line 163
    return v1

    .line 159
    :catch_20
    move-exception v2

    move-object v0, v2

    .line 160
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "system server dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public updateAppWidgetById(III)V
    .registers 8
    .parameter "appWidgetId"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 109
    const-string v1, "MotoAppWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppWidgetById"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "spanX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "spanY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :try_start_2c
    sget-object v1, Lmotorola/android/appwidget/MotoAppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetById(III)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32

    .line 116
    return-void

    .line 113
    :catch_32
    move-exception v1

    move-object v0, v1

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidgetByNewUri(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 7
    .parameter "oldUri"
    .parameter "newUri"

    .prologue
    .line 141
    const-string v1, "widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppWidgetByUri() oldUri :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newUri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_22
    sget-object v1, Lmotorola/android/appwidget/MotoAppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetByNewUri(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_28

    .line 148
    return-void

    .line 145
    :catch_28
    move-exception v1

    move-object v0, v1

    .line 146
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidgetByUri(Landroid/net/Uri;)V
    .registers 6
    .parameter "uri"

    .prologue
    .line 126
    const-string v1, "MotoAppWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppWidgetByUri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_18
    sget-object v1, Lmotorola/android/appwidget/MotoAppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetByUri(Landroid/net/Uri;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 133
    return-void

    .line 130
    :catch_1e
    move-exception v1

    move-object v0, v1

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

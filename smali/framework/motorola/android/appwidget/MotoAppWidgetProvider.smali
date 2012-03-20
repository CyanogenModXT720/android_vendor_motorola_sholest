.class public Lmotorola/android/appwidget/MotoAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MotoAppWidgetProvider.java"


# static fields
.field public static final ACTION_APPWIDGET_RESIZE:Ljava/lang/String; = "motorola.appwidget.action.APPWIDGET_RESIZE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    .line 24
    .local v17, action:Ljava/lang/String;
    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    .line 26
    .local v19, extras:Landroid/os/Bundle;
    if-eqz v19, :cond_60

    .line 27
    const-string v4, "appWidgetIds"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v18

    .line 28
    .local v18, appWidgetIds:[I
    if-eqz v18, :cond_60

    move-object/from16 v0, v18

    array-length v0, v0

    move v4, v0

    if-lez v4, :cond_60

    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 31
    .local v8, shortcutUri:Landroid/net/Uri;
    const-string v4, "appShortcutExtraX"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 32
    .local v9, shortcutX:I
    const-string v4, "appShortcutExtraY"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 33
    .local v10, shortcutY:I
    if-eqz v9, :cond_70

    if-eqz v10, :cond_70

    if-eqz v8, :cond_70

    .line 34
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "First_update"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 35
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lmotorola/android/appwidget/MotoAppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 58
    .end local v8           #shortcutUri:Landroid/net/Uri;
    .end local v9           #shortcutX:I
    .end local v10           #shortcutY:I
    .end local v18           #appWidgetIds:[I
    .end local v19           #extras:Landroid/os/Bundle;
    :cond_60
    :goto_60
    return-void

    .line 37
    .restart local v8       #shortcutUri:Landroid/net/Uri;
    .restart local v9       #shortcutX:I
    .restart local v10       #shortcutY:I
    .restart local v18       #appWidgetIds:[I
    .restart local v19       #extras:Landroid/os/Bundle;
    :cond_61
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    const/4 v4, 0x0

    aget v7, v18, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lmotorola/android/appwidget/MotoAppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/net/Uri;II)V

    goto :goto_60

    .line 41
    :cond_70
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lmotorola/android/appwidget/MotoAppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_60

    .line 45
    .end local v8           #shortcutUri:Landroid/net/Uri;
    .end local v9           #shortcutX:I
    .end local v10           #shortcutY:I
    .end local v18           #appWidgetIds:[I
    .end local v19           #extras:Landroid/os/Bundle;
    :cond_7f
    const-string v4, "motorola.appwidget.action.APPWIDGET_RESIZE"

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 46
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    .line 47
    .restart local v19       #extras:Landroid/os/Bundle;
    if-eqz v19, :cond_60

    .line 48
    const-string v4, "appWidgetId"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 49
    .local v14, appWidgetId:I
    const-string v4, "appWidgetWidth"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 50
    .local v15, width:I
    const-string v4, "appWidgetHeight"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 51
    .local v16, height:I
    if-lez v15, :cond_60

    if-lez v16, :cond_60

    .line 52
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v16}, Lmotorola/android/appwidget/MotoAppWidgetProvider;->onResize(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;III)V

    goto :goto_60

    .line 56
    .end local v14           #appWidgetId:I
    .end local v15           #width:I
    .end local v16           #height:I
    .end local v19           #extras:Landroid/os/Bundle;
    :cond_bb
    invoke-super/range {p0 .. p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_60
.end method

.method public onResize(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;III)V
    .registers 6
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 64
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/net/Uri;II)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetId"
    .parameter "uri"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 61
    return-void
.end method

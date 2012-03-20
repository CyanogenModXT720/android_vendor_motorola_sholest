.class public Lcom/motorola/android/media/MediaSktDrmUtil;
.super Ljava/lang/Object;
.source "MediaSktDrmUtil.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "DrmServiceUtil"

.field public static final QUERY_EXPIRED_CONTENTS:Ljava/lang/String; = "drm_date_expire=1 OR drm_date_expire=2"

.field public static final QUERY_EXPIRED_CONTENTS_NOT_REPLACED_TITLE:Ljava/lang/String; = "drm_date_expire=1 OR drm_date_expire=0"

.field public static final SKTDRM_NOTIFICATION_INTENT:Ljava/lang/String; = "com.motorola.sktdrm.intent.action.SKT_DRM_NOTIFICATION"

.field public static final SKTDRM_NOTIFICATION_ON:Ljava/lang/String; = "NOTIFICATION_ON"

.field public static final SKTDRM_VIEW_DIALOG_INTENT:Ljava/lang/String; = "com.motorola.sktdrm.intent.action.SKT_DRM_VIEW_DIALOG"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExistDrmFileExpired(Landroid/content/Context;Z)V
    .registers 15
    .parameter "context"
    .parameter "addNoti"

    .prologue
    const/4 v11, 0x0

    const-string v12, "com.motorola.sktdrm.intent.action.SKT_DRM_NOTIFICATION"

    .line 116
    const/4 v8, 0x0

    .line 120
    .local v8, expiredContentsCount:I
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_b

    .line 170
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_a
    :goto_a
    return-void

    .line 125
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_b
    const-string v3, "drm_date_expire=1 OR drm_date_expire=2"

    .line 126
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 129
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6b

    .line 130
    :goto_18
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 132
    add-int/lit8 v8, v8, 0x1

    .line 137
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 139
    .local v10, uri:Landroid/net/Uri;
    const-string v1, "DrmServiceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[notifyDrmFileExpired] position:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "     uri :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v1, "title"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v10, v1, v2}, Lcom/motorola/android/media/MediaSktDrmUtil;->replaceTitle2ExpiredTitle(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_18

    .line 145
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v10           #uri:Landroid/net/Uri;
    :catch_65
    move-exception v1

    move-object v7, v1

    .line 146
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_a

    .line 143
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_68
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_6b} :catch_65

    .line 149
    :cond_6b
    if-lez v8, :cond_7a

    .line 151
    if-eqz p1, :cond_a

    .line 154
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.motorola.sktdrm.intent.action.SKT_DRM_NOTIFICATION"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {p0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a

    .line 160
    .end local v9           #intent:Landroid/content/Intent;
    :cond_7a
    if-eqz p1, :cond_a

    .line 163
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.motorola.sktdrm.intent.action.SKT_DRM_NOTIFICATION"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v1, "NOTIFICATION_ON"

    invoke-virtual {v9, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a
.end method

.method public static isExpiredContent(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 46
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "drm_date_expire=1 OR drm_date_expire=2"

    .local v3, selection:Ljava/lang/String;
    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    .line 47
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 49
    .local v6, cs:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 50
    .local v7, exist:Z
    if-eqz v6, :cond_1b

    .line 51
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 52
    const/4 v7, 0x1

    .line 54
    :cond_18
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_1b
    return v7
.end method

.method public static isExpiredContentNotReplacedTitle(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "drm_date_expire=1 OR drm_date_expire=0"

    .local v3, selection:Ljava/lang/String;
    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    .line 64
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 66
    .local v6, cs:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 67
    .local v7, exist:Z
    if-eqz v6, :cond_1b

    .line 68
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 69
    const/4 v7, 0x1

    .line 71
    :cond_18
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_1b
    return v7
.end method

.method public static replaceTitle2ExpiredTitle(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    .registers 11
    .parameter "context"
    .parameter "uri"
    .parameter "beforeTitle"
    .parameter "addNoti"

    .prologue
    const-string v6, "DrmServiceUtil"

    .line 79
    const-string v4, "DrmServiceUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " replace title:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cursor expire:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, p1}, Lcom/motorola/android/media/MediaSktDrmUtil;->isExpiredContentNotReplacedTitle(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p0, p1}, Lcom/motorola/android/media/MediaSktDrmUtil;->isExpiredContentNotReplacedTitle(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 83
    monitor-enter p0

    .line 84
    :try_start_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v4, "[expired]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 91
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v4, "drm_date_expire"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v4, "DrmServiceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Replace a title ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] to ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_39 .. :try_end_8e} :catchall_a1

    .line 99
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_90
    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_a1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_90 .. :try_end_93} :catch_a4

    .line 102
    :goto_93
    :try_start_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_a1

    .line 105
    .end local v0           #b:Ljava/lang/StringBuilder;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_94
    if-eqz p3, :cond_a0

    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.motorola.sktdrm.intent.action.SKT_DRM_NOTIFICATION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    .end local v1           #intent:Landroid/content/Intent;
    :cond_a0
    return-void

    .line 102
    :catchall_a1
    move-exception v4

    :try_start_a2
    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v4

    .line 100
    .restart local v0       #b:Ljava/lang/StringBuilder;
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_a4
    move-exception v4

    goto :goto_93
.end method

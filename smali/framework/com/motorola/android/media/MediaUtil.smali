.class public Lcom/motorola/android/media/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertOrientationToDegree(Ljava/lang/String;)I
    .registers 3
    .parameter "orientation"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, degree:I
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_d
    return v0

    .line 102
    :pswitch_e
    const/4 v0, 0x0

    .line 103
    goto :goto_d

    .line 106
    :pswitch_10
    const/16 v0, 0xb4

    .line 107
    goto :goto_d

    .line 110
    :pswitch_13
    const/16 v0, 0x5a

    .line 111
    goto :goto_d

    .line 114
    :pswitch_16
    const/16 v0, 0x10e

    .line 115
    goto :goto_d

    .line 99
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_13
        :pswitch_13
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public static getTagIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentProvider;)J
    .registers 13
    .parameter "db"
    .parameter "nameField"
    .parameter "rawName"
    .parameter "srcuri"
    .parameter "provider"

    .prologue
    .line 405
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    .end local p3
    if-nez p3, :cond_b

    .line 406
    :cond_8
    const-wide/16 p0, -0x1

    .line 442
    .end local p0
    .end local p1
    .end local p2
    .end local p4
    :cond_a
    :goto_a
    return-wide p0

    .line 408
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p4
    :cond_b
    const/4 p3, 0x1

    new-array v4, p3, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, v4, p3

    .line 409
    .local v4, selargs:[Ljava/lang/String;
    const-string v1, "keywords"

    const/4 v2, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "=?"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 412
    .local p3, c:Landroid/database/Cursor;
    :try_start_2f
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    packed-switch v0, :pswitch_data_a6

    .line 433
    const-string p0, "MediaUtil"

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Multiple entries in table keywords for name "

    .end local p4
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_2f .. :try_end_4e} :catchall_96

    .line 434
    const-wide/16 p0, -0x1

    .line 439
    .end local p2
    .local p0, rowId:J
    :cond_50
    :goto_50
    if-eqz p3, :cond_a

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 416
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1
    .restart local p2
    .restart local p4
    :pswitch_56
    :try_start_56
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 417
    .local v0, otherValues:Landroid/content/ContentValues;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string p1, "keywords"

    .end local p1
    const-string p2, "dummy"

    .end local p2
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    .line 419
    .local p0, rowId:J
    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-lez p2, :cond_50

    .line 420
    .end local v0           #otherValues:Landroid/content/ContentValues;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/motorola/android/provider/MediaStoreExt$Tag;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 421
    .local p2, uri:Landroid/net/Uri;
    invoke-virtual {p4}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p4

    .end local p4
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_95
    .catchall {:try_start_56 .. :try_end_95} :catchall_96

    goto :goto_50

    .line 439
    .end local p0           #rowId:J
    .end local p2           #uri:Landroid/net/Uri;
    :catchall_96
    move-exception p0

    if-eqz p3, :cond_9c

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_9c
    throw p0

    .line 427
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1
    .local p2, rawName:Ljava/lang/String;
    .restart local p4
    :pswitch_9d
    :try_start_9d
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 428
    const/4 p0, 0x0

    invoke-interface {p3, p0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_96

    .end local p0           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-wide p0

    .line 429
    .end local p1
    .local p0, rowId:J
    goto :goto_50

    .line 412
    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_56
        :pswitch_9d
    .end packed-switch
.end method

.method public static getTagName(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const-string v13, "find Tag name: "

    const-string v10, "MediaUtil"

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 46
    .local v2, len:I
    if-nez v2, :cond_15

    .line 47
    const-string v8, "MediaUtil"

    const-string v8, "not mot define format and ignore\n"

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v8, 0x0

    .line 94
    :goto_14
    return-object v8

    .line 53
    :cond_15
    const-string v1, "([^ \"]+)|\"(.*?)\""

    .line 56
    .local v1, kwReg:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 57
    .local v4, p:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 58
    .local v3, m:Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 59
    .local v0, end:I
    const/4 v5, 0x0

    .line 60
    .local v5, rs:Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v7, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_26
    if-ge v0, v2, :cond_91

    .line 63
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v5

    .line 64
    if-eqz v5, :cond_91

    .line 65
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5d

    .line 68
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, tag:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5d

    .line 70
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v8, "MediaUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find Tag name: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v6           #tag:Ljava/lang/String;
    :cond_5d
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8c

    .line 78
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 79
    .restart local v6       #tag:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8c

    .line 80
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v8, "MediaUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find Tag name: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v6           #tag:Ljava/lang/String;
    :cond_8c
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_26

    :cond_91
    move-object v8, v7

    .line 94
    goto :goto_14
.end method

.method public static pruneDeadSpeedDataFiles(Landroid/content/IContentProvider;Landroid/net/Uri;)V
    .registers 16
    .parameter "mediaProvider"
    .parameter "SpeedDataUri"

    .prologue
    const/4 v1, 0x0

    const-string v0, "MediaUtil"

    .line 124
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 125
    .local v8, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v7, "/sdcard/DCIM/.speeddata"

    .line 126
    .local v7, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 127
    .local v10, files:[Ljava/lang/String;
    if-nez v10, :cond_17

    .line 128
    new-array v10, v1, [Ljava/lang/String;

    .line 130
    :cond_17
    const/4 v12, 0x0

    .local v12, i:I
    :goto_18
    array-length v0, v10

    if-ge v12, v0, :cond_3a

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v10, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 132
    .local v11, fullPathString:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    .line 136
    .end local v11           #fullPathString:Ljava/lang/String;
    :cond_3a
    const/4 v0, 0x1

    :try_start_3b
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 142
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "MediaUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pruneDeadSpeedDataFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz v6, :cond_79

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 145
    :cond_6b
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 146
    .restart local v11       #fullPathString:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 150
    .end local v11           #fullPathString:Ljava/lang/String;
    :cond_79
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_7d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_89} :catch_b2

    .line 154
    .local v9, fileToDelete:Ljava/lang/String;
    :try_start_89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_91
    .catch Ljava/lang/SecurityException; {:try_start_89 .. :try_end_91} :catch_92
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_91} :catch_b2

    goto :goto_7d

    .line 155
    :catch_92
    move-exception v0

    goto :goto_7d

    .line 159
    .end local v9           #fileToDelete:Ljava/lang/String;
    :cond_94
    :try_start_94
    const-string v0, "MediaUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/pruneDeadSpeedDataFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz v6, :cond_b1

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_b1} :catch_b2

    .line 166
    .end local v6           #c:Landroid/database/Cursor;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_b1
    :goto_b1
    return-void

    .line 163
    :catch_b2
    move-exception v0

    goto :goto_b1
.end method

.method public static pruneVideoDeadThumbnailFiles(Landroid/content/IContentProvider;Landroid/net/Uri;)V
    .registers 16
    .parameter "mediaProvider"
    .parameter "videoThumbsUri"

    .prologue
    const/4 v1, 0x0

    const-string v0, "MediaUtil"

    .line 170
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 171
    .local v8, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v7, "/sdcard/DCIM/.video_thumbnails"

    .line 172
    .local v7, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, files:[Ljava/lang/String;
    if-nez v10, :cond_17

    .line 174
    new-array v10, v1, [Ljava/lang/String;

    .line 176
    :cond_17
    const/4 v12, 0x0

    .local v12, i:I
    :goto_18
    array-length v0, v10

    if-ge v12, v0, :cond_3a

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v10, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 178
    .local v11, fullPathString:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    .line 182
    .end local v11           #fullPathString:Ljava/lang/String;
    :cond_3a
    const/4 v0, 0x1

    :try_start_3b
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 188
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "MediaUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pruneDeadThumbnailFiles... for video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz v6, :cond_79

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 191
    :cond_6b
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 192
    .restart local v11       #fullPathString:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 193
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 196
    .end local v11           #fullPathString:Ljava/lang/String;
    :cond_79
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_7d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_89} :catch_b2

    .line 200
    .local v9, fileToDelete:Ljava/lang/String;
    :try_start_89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_91
    .catch Ljava/lang/SecurityException; {:try_start_89 .. :try_end_91} :catch_92
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_91} :catch_b2

    goto :goto_7d

    .line 201
    :catch_92
    move-exception v0

    goto :goto_7d

    .line 205
    .end local v9           #fileToDelete:Ljava/lang/String;
    :cond_94
    :try_start_94
    const-string v0, "MediaUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/pruneDeadThumbnailFiles... for video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz v6, :cond_b1

    .line 207
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_b1} :catch_b2

    .line 212
    .end local v6           #c:Landroid/database/Cursor;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_b1
    :goto_b1
    return-void

    .line 209
    :catch_b2
    move-exception v0

    goto :goto_b1
.end method

.method public static updateDatabase(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 3
    .parameter "db"
    .parameter "internal"

    .prologue
    .line 217
    const-string v0, "ALTER TABLE images ADD COLUMN puid TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 218
    const-string v0, "ALTER TABLE images ADD COLUMN protect_status INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 219
    const-string v0, "ALTER TABLE images ADD COLUMN use_count INTTEGER default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 220
    const-string v0, "ALTER TABLE images ADD COLUMN date_used INTTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    const-string v0, "ALTER TABLE images ADD COLUMN rating INTTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
    const-string v0, "ALTER TABLE images ADD COLUMN width INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    const-string v0, "ALTER TABLE images ADD COLUMN height INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    const-string v0, "ALTER TABLE images ADD COLUMN dlna_profile INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    const-string v0, "ALTER TABLE images ADD COLUMN dlna_share INTEGER default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    const-string v0, "ALTER TABLE thumbnails ADD COLUMN format TEXT default \'JPEG\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN puid TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN protect_status INTEGER ;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN rating INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN use_count INTEGER default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN date_used INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN buy_flag INTEGER default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 235
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN album_artist TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN audio_bitrate INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN sample_rate INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN channels INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 239
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN drm_type INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN dlna_profile INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN dlna_share INTEGER default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN drm_date_expire INTEGER default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    const-string v0, "ALTER TABLE albums ADD COLUMN puid TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    const-string v0, "ALTER TABLE albums ADD COLUMN date_modified INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    const-string v0, "ALTER TABLE albums ADD COLUMN rating INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    const-string v0, "ALTER TABLE albums ADD COLUMN buy_flag INTEGER default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    const-string v0, "ALTER TABLE albums ADD COLUMN artist TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    const-string v0, "ALTER TABLE albums ADD COLUMN genre TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    const-string v0, "ALTER TABLE album_art ADD COLUMN width INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 252
    const-string v0, "ALTER TABLE album_art ADD COLUMN height INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 253
    const-string v0, "ALTER TABLE album_art ADD COLUMN format TEXT default \'JPEG\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 256
    const-string v0, "DROP VIEW IF EXISTS album_info;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    const-string v0, "CREATE VIEW IF NOT EXISTS album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs,album_art._data AS album_art,album_art.format AS album_art_format,album_art.width AS album_art_width,album_art.height AS album_art_height FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE is_music=1 GROUP BY audio.album_id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    if-nez p1, :cond_bb

    .line 270
    const-string v0, "ALTER TABLE audio_playlists ADD COLUMN puid TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    const-string v0, "CREATE TRIGGER IF NOT EXISTS genre_clean AFTER DELETE ON audio_genres_map BEGIN DELETE FROM audio_genres where _id not in (select genre_id from audio_genres_map);END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    :cond_bb
    const-string v0, "ALTER TABLE video ADD COLUMN puid TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 279
    const-string v0, "ALTER TABLE video ADD COLUMN protect_status INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    const-string v0, "ALTER TABLE video ADD COLUMN rating INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    const-string v0, "ALTER TABLE video ADD COLUMN use_count INTEGER default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    const-string v0, "ALTER TABLE video ADD COLUMN date_used INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 283
    const-string v0, "ALTER TABLE video ADD COLUMN buy_flag INTEGER default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 284
    const-string v0, "ALTER TABLE video ADD COLUMN audio_bitrate INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 285
    const-string v0, "ALTER TABLE video ADD COLUMN audio_samplerate INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    const-string v0, "ALTER TABLE video ADD COLUMN channels INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 287
    const-string v0, "ALTER TABLE video ADD COLUMN video_bitrate INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    const-string v0, "ALTER TABLE video ADD COLUMN framerate INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    const-string v0, "ALTER TABLE video ADD COLUMN drm_type INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    const-string v0, "ALTER TABLE video ADD COLUMN dlna_profile INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 291
    const-string v0, "ALTER TABLE video ADD COLUMN dlna_share INTEGER default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 292
    const-string v0, "ALTER TABLE video ADD COLUMN drm_date_expire INTEGER default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 294
    const-string v0, "CREATE TRIGGER IF NOT EXISTS video_cleanup1 DELETE ON video BEGIN delete from videothumbnails where video_id=old._id;delete from association where media_id=old._id and media_type=2;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    const-string v0, "ALTER TABLE images ADD COLUMN maker TEXT ;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    const-string v0, "ALTER TABLE video ADD COLUMN maker TEXT ;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    const-string v0, "DROP TRIGGER IF EXISTS images_cleanup;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    const-string v0, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON images BEGIN DELETE FROM thumbnails WHERE image_id = old._id;DELETE FROM association where media_id = old._id and media_type=1;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    const-string v0, "CREATE TABLE IF NOT EXISTS keywords (_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 315
    const-string v0, "CREATE TABLE IF NOT EXISTS association (_id INTEGER PRIMARY KEY,media_id INTEGER,media_type INTEGER,keyword_id INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    const-string v0, "CREATE TRIGGER IF NOT EXISTS keywords_clean AFTER DELETE ON keywords BEGIN DELETE FROM association WHERE keyword_id=old._id; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 328
    const-string v0, "CREATE TRIGGER IF NOT EXISTS association_clean AFTER DELETE ON association BEGIN DELETE FROM keywords WHERE _id=old.keyword_id AND (SELECT _id FROM association WHERE keyword_id=old.keyword_id) IS NULL;END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    const-string v0, "CREATE VIEW IF NOT EXISTS taginfo_image AS  SELECT DISTINCT  i._id _id, i._data _data, i.datetaken datetaken, i.date_added date_added,  i.date_modified date_modified, i.mini_thumb_magic mini_thumb_magic, i.orientation orientation, i.mime_type mime_type,  i.latitude latitude,i.longitude longitude, i.bucket_id bucket_id,i.bucket_display_name bucket_display_name,  k._id tag_id, k._data tag_data  FROM images i, association a,keywords k  where i._id=a.media_id AND a.media_type=1 AND a.keyword_id=k._id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 346
    const-string v0, "CREATE VIEW IF NOT EXISTS taginfo_video AS  SELECT DISTINCT  v._id _id , v._data _data, v.datetaken datetaken, v.date_added date_added,  v.date_modified date_modified, v.title title, v.duration duration, v._display_name _display_name, v.description description,  v.isprivate isprivate, v.tags tags, v.category category, v.language language, v.latitude latitude, v.longitude longitude,  v.mini_thumb_magic mini_thumb_magic, v.mime_type mime_type, v.bucket_id bucket_id, v.bucket_display_name bucket_display_name,  k._id tag_id, k._data tag_data  FROM video v, association a,keywords k  where v._id=a.media_id AND a.media_type=2 AND a.keyword_id=k._id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    const-string v0, "CREATE TABLE IF NOT EXISTS speed_data (_id INTEGER PRIMARY KEY,_data TEXT,image_id INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 363
    const-string v0, "CREATE INDEX IF NOT EXISTS speeddata_id_index on speed_data(image_id);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 364
    const-string v0, "CREATE TRIGGER IF NOT EXISTS images_speeddata_cleanup DELETE ON images BEGIN SELECT _DELETE_FILE(old._data);delete from speed_data where image_id=old._id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 369
    const-string v0, "CREATE TRIGGER IF NOT EXISTS speeddata_cleanup DELETE ON speed_data BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 376
    const-string v0, "CREATE VIEW IF NOT EXISTS image_search  AS  select _id as _id,_data as name,lower(_data) as xname,0 as suggestiontype,\'content://media/external/image/tags/\'||_id||\'/\'||_data AS suggest_intent_data  from  keywords   union   select distinct bucket_id as _id , bucket_display_name as name,lower(bucket_display_name) as xname, 1 as suggestiontype,  \'content://media/external/image/folders/\'||bucket_id||\'/\'||bucket_display_name AS suggest_intent_data  from images   union   select distinct v.bucket_id as _id, v.bucket_display_name as name ,lower(v.bucket_display_name) as xname,1 as suggestiontype,  \'content://media/external/image/folders/\'||v.bucket_id||\'/\'||v.bucket_display_name AS suggest_intent_data  from video v where  not exists (select distinct i.bucket_display_name  from images i where i.bucket_display_name = v.bucket_display_name ) order by  suggestiontype,xname;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 388
    return-void
.end method

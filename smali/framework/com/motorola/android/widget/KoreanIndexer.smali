.class public Lcom/motorola/android/widget/KoreanIndexer;
.super Landroid/database/DataSetObserver;
.source "KoreanIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field protected mDataCursor:Landroid/database/Cursor;

.field protected mKorean:Ljava/lang/CharSequence;

.field private mKoreanArray:[Ljava/lang/String;

.field private mKoreanArray2:[Ljava/lang/String;

.field private mKoreanLength:I

.field private mKoreanMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-string v0, "KoreanIndexer"

    sput-object v0, Lcom/motorola/android/widget/KoreanIndexer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .registers 11
    .parameter "cursor"
    .parameter "sortedColumnIndex"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 44
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " "

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\uac00"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\uae4c"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\ub098"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\ub2e4"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\ub530"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\ub77c"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\ub9c8"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\ubc14"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\ube60"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\uc0ac"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\uc2f8"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\uc544"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\uc790"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\uc9dc"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\ucc28"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\uce74"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\ud0c0"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\ud30c"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\ud558"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanArray:[Ljava/lang/String;

    .line 60
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " "

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u3131"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u3132"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u3134"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u3137"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u3138"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u3139"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u3141"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u3142"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u3143"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u3145"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u3146"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u3147"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u3148"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u3149"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u314a"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u314b"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u314c"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u314d"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u314e"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanArray2:[Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanLength:I

    .line 115
    iput-object p1, p0, Lcom/motorola/android/widget/KoreanIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 116
    iput p2, p0, Lcom/motorola/android/widget/KoreanIndexer;->mColumnIndex:I

    .line 117
    new-instance v0, Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanLength:I

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanMap:Landroid/util/SparseIntArray;

    .line 118
    if-eqz p1, :cond_239

    .line 119
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 122
    :cond_239
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mCollator:Ljava/text/Collator;

    .line 123
    iget-object v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, v3}, Ljava/text/Collator;->setStrength(I)V

    .line 124
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "word"
    .parameter "letter"

    .prologue
    const/4 v5, 0x0

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_30

    .line 156
    const-string v2, " "

    .line 161
    .local v2, firstLetter:Ljava/lang/String;
    :goto_9
    invoke-virtual {v2, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 163
    .local v0, LetterNum:I
    const/16 v4, 0x3131

    if-lt v0, v4, :cond_29

    const/16 v4, 0x314e

    if-gt v0, v4, :cond_29

    .line 164
    const/16 v3, 0x1b

    .local v3, i:I
    :goto_17
    iget v4, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanLength:I

    if-ge v3, v4, :cond_29

    .line 165
    iget-object v4, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanArray2:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 166
    .local v1, charnum:I
    if-ne v1, v0, :cond_36

    .line 167
    iget-object v4, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanArray:[Ljava/lang/String;

    aget-object v2, v4, v3

    .line 173
    .end local v1           #charnum:I
    .end local v3           #i:I
    :cond_29
    iget-object v4, p0, Lcom/motorola/android/widget/KoreanIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v4, v2, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4

    .line 158
    .end local v0           #LetterNum:I
    .end local v2           #firstLetter:Ljava/lang/String;
    :cond_30
    const/4 v4, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #firstLetter:Ljava/lang/String;
    goto :goto_9

    .line 164
    .restart local v0       #LetterNum:I
    .restart local v1       #charnum:I
    .restart local v3       #i:I
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_17
.end method

.method public getPositionForSection(I)I
    .registers 20
    .parameter "sectionIndex"

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanMap:Landroid/util/SparseIntArray;

    move-object v9, v0

    .line 187
    .local v9, koreanMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/KoreanIndexer;->mDataCursor:Landroid/database/Cursor;

    move-object v5, v0

    .line 189
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_e

    if-gtz p1, :cond_11

    .line 190
    :cond_e
    const/16 v16, 0x0

    .line 288
    :goto_10
    return v16

    .line 194
    :cond_11
    if-gtz p1, :cond_16

    .line 195
    const/16 v16, 0x0

    goto :goto_10

    .line 197
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanLength:I

    move/from16 v16, v0

    move/from16 v0, p1

    move/from16 v1, v16

    if-lt v0, v1, :cond_2c

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanLength:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int p1, v16, v17

    .line 201
    :cond_2c
    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 203
    .local v13, savedCursorPos:I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 204
    .local v3, count:I
    const/4 v14, 0x0

    .line 205
    .local v14, start:I
    move v7, v3

    .line 208
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanArray:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v15, v16, p1

    .line 209
    .local v15, targetLetter:Ljava/lang/String;
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    .line 212
    .local v8, key:I
    const/high16 v16, -0x8000

    const/high16 v17, -0x8000

    move-object v0, v9

    move v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .local v10, pos:I
    move/from16 v0, v16

    move v1, v10

    if-eq v0, v1, :cond_59

    .line 217
    if-gez v10, :cond_a6

    .line 218
    neg-int v10, v10

    .line 219
    move v7, v10

    .line 227
    :cond_59
    if-lez p1, :cond_82

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanArray:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    sub-int v17, p1, v17

    aget-object v16, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    .line 231
    .local v11, prevLetter:I
    const/high16 v16, -0x8000

    move-object v0, v9

    move v1, v11

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 232
    .local v12, prevLetterPos:I
    const/high16 v16, -0x8000

    move v0, v12

    move/from16 v1, v16

    if-eq v0, v1, :cond_82

    .line 233
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 238
    .end local v11           #prevLetter:I
    .end local v12           #prevLetterPos:I
    :cond_82
    add-int v16, v7, v14

    div-int/lit8 v10, v16, 0x2

    .line 240
    :goto_86
    if-ge v10, v7, :cond_9c

    .line 242
    invoke-interface {v5, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 243
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/KoreanIndexer;->mColumnIndex:I

    move/from16 v16, v0

    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, curName:Ljava/lang/String;
    if-nez v4, :cond_ad

    .line 245
    if-nez v10, :cond_aa

    .line 286
    .end local v4           #curName:Ljava/lang/String;
    :cond_9c
    :goto_9c
    invoke-virtual {v9, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 287
    invoke-interface {v5, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    move/from16 v16, v10

    .line 288
    goto/16 :goto_10

    :cond_a6
    move/from16 v16, v10

    .line 222
    goto/16 :goto_10

    .line 248
    .restart local v4       #curName:Ljava/lang/String;
    :cond_aa
    add-int/lit8 v10, v10, -0x1

    .line 249
    goto :goto_86

    .line 252
    :cond_ad
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/widget/KoreanIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 253
    .local v6, diff:I
    if-eqz v6, :cond_c5

    .line 265
    if-gez v6, :cond_bf

    .line 266
    add-int/lit8 v14, v10, 0x1

    .line 267
    if-lt v14, v3, :cond_c0

    .line 268
    move v10, v3

    .line 269
    goto :goto_9c

    .line 272
    :cond_bf
    move v7, v10

    .line 284
    :cond_c0
    :goto_c0
    add-int v16, v14, v7

    div-int/lit8 v10, v16, 0x2

    .line 285
    goto :goto_86

    .line 276
    :cond_c5
    if-eq v14, v10, :cond_9c

    .line 281
    move v7, v10

    goto :goto_c0
.end method

.method public getSectionForPosition(I)I
    .registers 8
    .parameter "position"

    .prologue
    .line 296
    iget-object v4, p0, Lcom/motorola/android/widget/KoreanIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 297
    .local v2, savedCursorPos:I
    iget-object v4, p0, Lcom/motorola/android/widget/KoreanIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 298
    iget-object v4, p0, Lcom/motorola/android/widget/KoreanIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/motorola/android/widget/KoreanIndexer;->mColumnIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, curName:Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/android/widget/KoreanIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 302
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    iget v4, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanLength:I

    if-ge v1, v4, :cond_2c

    .line 303
    iget-object v4, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanArray:[Ljava/lang/String;

    aget-object v3, v4, v1

    .line 304
    .local v3, targetLetter:Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/motorola/android/widget/KoreanIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_29

    move v4, v1

    .line 308
    .end local v3           #targetLetter:Ljava/lang/String;
    :goto_28
    return v4

    .line 302
    .restart local v3       #targetLetter:Ljava/lang/String;
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 308
    .end local v3           #targetLetter:Ljava/lang/String;
    :cond_2c
    const/4 v4, 0x0

    goto :goto_28
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanArray2:[Ljava/lang/String;

    return-object v0
.end method

.method public onChanged()V
    .registers 2

    .prologue
    .line 316
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 317
    iget-object v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 318
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 325
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 326
    iget-object v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 327
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 142
    :cond_9
    iput-object p1, p0, Lcom/motorola/android/widget/KoreanIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 143
    if-eqz p1, :cond_12

    .line 144
    iget-object v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 146
    :cond_12
    iget-object v0, p0, Lcom/motorola/android/widget/KoreanIndexer;->mKoreanMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 147
    return-void
.end method

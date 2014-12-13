.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;
.super Ljava/lang/Object;
.source "KeyguardFlipboardDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS flipboardData(data_id INTEGER PRIMARY KEY AUTOINCREMENT,wallpaperPath TEXT,title TEXT,author TEXT,url TEXT,time INTEGER);"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final DB_NAME:Ljava/lang/String; = "FliboardData.db"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS flipboardData"

.field public static final TABLE_NAME:Ljava/lang/String; = "flipboardData"

.field private static final TAG:Ljava/lang/String; = "KeyguardFlipboardDBAdapter"

.field private static mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private static mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mDbIsOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    .line 51
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    .line 52
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->DEBUG:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mContext:Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbIsOpen:Z

    .line 98
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method private declared-synchronized close()V
    .locals 3

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    const-string v1, "KeyguardFlipboardDBAdapter"

    const-string v2, "close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :try_start_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    if-eqz v1, :cond_0

    .line 155
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;->close()V

    .line 157
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 158
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbIsOpen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/database/SQLException;
    :try_start_3
    const-string v1, "KeyguardFlipboardDBAdapter"

    const-string v2, "close database exception"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 151
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;
    .locals 2
    .parameter "context"

    .prologue
    .line 107
    const-class v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    .line 110
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private insertData(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)J
    .locals 4
    .parameter "itemData"

    .prologue
    .line 168
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 169
    :cond_0
    const-wide/16 v1, -0x1

    .line 179
    :goto_0
    return-wide v1

    .line 171
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "wallpaperPath"

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "title"

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "author"

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "url"

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "time"

    iget-wide v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "flipboardData"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto :goto_0
.end method

.method private declared-synchronized openToRead()Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;
    .locals 3

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    const-string v1, "KeyguardFlipboardDBAdapter"

    const-string v2, "open to read"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    .line 137
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    :goto_0
    :try_start_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbIsOpen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-object p0

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Landroid/database/SQLException;
    :try_start_3
    const-string v1, "KeyguardFlipboardDBAdapter"

    const-string v2, "open database exception"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 133
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized openToWrite()Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;
    .locals 3

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    const-string v1, "KeyguardFlipboardDBAdapter"

    const-string v2, "open to write"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    .line 119
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    :goto_0
    :try_start_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbIsOpen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :cond_0
    monitor-exit p0

    return-object p0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Landroid/database/SQLException;
    :try_start_3
    const-string v1, "KeyguardFlipboardDBAdapter"

    const-string v2, "open database exception"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 115
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getDataList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbIsOpen:Z

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-object v2

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->openToRead()Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    .line 213
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "flipboardData"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 217
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    goto :goto_0

    .line 220
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 221
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    goto :goto_0

    .line 226
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v9, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;>;"
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    :cond_4
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 233
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 234
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    move-object v2, v9

    .line 237
    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 234
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    throw v0
.end method

.method public insertDataList(Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, itemDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;>;"
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 183
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDbIsOpen:Z

    if-eqz v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v2

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->openToWrite()Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    .line 187
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    .line 190
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "flipboardData"

    invoke-virtual {v3, v4, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 194
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    .line 195
    .local v1, itemData:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->insertData(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 201
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 202
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    goto :goto_0

    .line 199
    .end local v1           #itemData:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    :cond_3
    :try_start_1
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 202
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    .line 205
    const/4 v2, 0x1

    goto :goto_0

    .line 201
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 202
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->close()V

    throw v2
.end method

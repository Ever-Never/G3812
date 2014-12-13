.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicWidet"
.end annotation


# static fields
.field private static final MUSICPLAYER_CHECK_PLAY_STATUS:Ljava/lang/String; = "com.sec.android.app.music.musicservicecommand.checkplaystatus"

.field private static final MUSICPLAYER_MEDIA_INFO:Ljava/lang/String; = "com.sec.android.music.musicservicecommnad.mediainfo"

.field private static final TAG:Ljava/lang/String; = "ClearCoverMusicWidet"


# instance fields
.field private final DEBUG:Z

.field private final MSG_MEDIA_UPDATE:I

.field private currentAlbumID:Ljava/lang/String;

.field private currentArtist:Ljava/lang/String;

.field private currentTitle:Ljava/lang/String;

.field private mAlbumArtBitmap:Landroid/graphics/Bitmap;

.field private mAlbumArtWithImage:Landroid/widget/ImageView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mIsPlaying:Z

.field private mMediaUri:Landroid/net/Uri;

.field private mMusicHandler:Landroid/os/Handler;

.field private mTrackTitle:Landroid/widget/TextView;

.field private mTransportControls:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 477
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 441
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->DEBUG:Z

    .line 452
    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentTitle:Ljava/lang/String;

    .line 453
    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    .line 454
    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentAlbumID:Ljava/lang/String;

    .line 456
    const/16 v1, 0x12c2

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->MSG_MEDIA_UPDATE:I

    .line 457
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mIsPlaying:Z

    .line 459
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mMusicHandler:Landroid/os/Handler;

    .line 479
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mContentResolver:Landroid/content/ContentResolver;

    .line 481
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 482
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.music.musicservicecommnad.mediainfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet$2;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 500
    const-string v1, "ClearCoverMusicWidet"

    const-string v2, "MusicWidet ()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 503
    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;IILandroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 437
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->handleMediaUpdate(IILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mMusicHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleMediaUpdate(IILandroid/net/Uri;)V
    .locals 15
    .parameter "isPlaying"
    .parameter "isStop"
    .parameter "mediaUri"

    .prologue
    .line 530
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    const/4 v7, 0x1

    .line 531
    .local v7, bIsPlaying:Z
    :goto_0
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    const/4 v8, 0x1

    .line 533
    .local v8, bIsStop:Z
    :goto_1
    if-eqz v7, :cond_13

    if-nez v8, :cond_13

    .line 534
    if-nez p3, :cond_4

    .line 535
    const-string v1, "ClearCoverMusicWidet"

    const-string v2, "handleMediaUpdate ( mediaUri is null)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    :cond_1
    :goto_2
    return-void

    .line 530
    .end local v7           #bIsPlaying:Z
    .end local v8           #bIsStop:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 531
    .restart local v7       #bIsPlaying:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 538
    .restart local v8       #bIsStop:Z
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mMediaUri:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 539
    const-string v1, "ClearCoverMusicWidet"

    const-string v2, "handleMediaUpdate( mediaUri is same and playing. does not need update )"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 543
    :cond_6
    const-string v1, "ClearCoverMusicWidet"

    const-string v2, "handleMediaUpdate( New mediaUri and playing. must update!! )"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mMediaUri:Landroid/net/Uri;

    .line 545
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 547
    .local v12, mCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_11

    .line 548
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_f

    .line 549
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 551
    :try_start_0
    const-string v1, "title"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentTitle:Ljava/lang/String;

    .line 552
    const-string v1, "artist"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    .line 553
    const-string v1, "album_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentAlbumID:Ljava/lang/String;

    .line 555
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentTitle:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 556
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:string@clearcover_music_widget_unkown#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentTitle:Ljava/lang/String;

    .line 558
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, "<unknown>"

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 559
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:string@clearcover_music_widget_unkown#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    .line 561
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentAlbumID:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 562
    const-string v1, "0"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentAlbumID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :cond_a
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 577
    .local v14, strTitle:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 580
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_b

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/external/audio/albumart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentAlbumID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 583
    .local v9, currentAlbumArtURI:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 584
    .local v13, mInputStream:Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 585
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 586
    .local v11, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput v1, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 588
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    .line 589
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iput v1, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 590
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iput v1, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 592
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    .line 600
    :goto_4
    if-eqz v13, :cond_b

    .line 601
    const/4 v1, 0x0

    invoke-static {v13, v1, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 603
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 613
    .end local v9           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v11           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #mInputStream:Ljava/io/InputStream;
    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_10

    .line 615
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 619
    :cond_c
    :goto_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 620
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 625
    .end local v14           #strTitle:Ljava/lang/String;
    :cond_e
    :goto_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 564
    :catch_0
    move-exception v10

    .line 565
    .local v10, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 567
    const-string v1, "ClearCoverMusicWidet"

    const-string v2, "Can\'t get String from Cursor"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 570
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:string@clearcover_music_widget_unkown#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentTitle:Ljava/lang/String;

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:string@clearcover_music_widget_unkown#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    .line 572
    const-string v1, "0"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->currentAlbumID:Ljava/lang/String;

    goto/16 :goto_3

    .line 593
    .restart local v9       #currentAlbumArtURI:Landroid/net/Uri;
    .restart local v11       #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #mInputStream:Ljava/io/InputStream;
    .restart local v14       #strTitle:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 595
    .local v10, e:Ljava/io/FileNotFoundException;
    const-string v1, "ClearCoverMusicWidet"

    const-string v2, "Album Art doesn\'t exit."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 596
    .end local v10           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v10

    .line 597
    .local v10, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 598
    const-string v1, "ClearCoverMusicWidet"

    const-string v2, "Maybe unknown url."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 604
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v10

    .line 606
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "ClearCoverMusicWidet"

    const-string v2, "mInputStream.close() Failed!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 616
    .end local v9           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #mInputStream:Ljava/io/InputStream;
    :cond_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_c

    .line 617
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const v2, #android:drawable@appce_ic_music#t

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 622
    .end local v14           #strTitle:Ljava/lang/String;
    :cond_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    :cond_12
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 628
    .end local v12           #mCursor:Landroid/database/Cursor;
    :cond_13
    const-string v1, "ClearCoverMusicWidet"

    const-string v2, "handleMediaUpdate( no playing )"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    :cond_14
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 515
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 517
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 521
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 524
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    .line 527
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 507
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 508
    const v0, #android:id@transport_controls#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTransportControls:Landroid/widget/LinearLayout;

    .line 509
    const v0, #android:id@clear_title#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    .line 510
    const v0, #android:id@clear_albumart#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    .line 511
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 639
    const-string v0, "ClearCoverMusicWidet"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 635
    const-string v0, "ClearCoverMusicWidet"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

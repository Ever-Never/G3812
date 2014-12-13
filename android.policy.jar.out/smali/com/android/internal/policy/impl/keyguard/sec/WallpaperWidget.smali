.class public Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "WallpaperWidget.java"


# static fields
.field private static sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;


# instance fields
.field private final DBG:Z

.field private final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsLiveWallpaper:Z

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field private mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "WallpaperWidget"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->DBG:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 37
    const-string v0, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mIsLiveWallpaper:Z

    .line 53
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mIsLiveWallpaper:Z

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->addView(Landroid/view/View;II)V

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->setLockScreenWallpaper()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;
    .locals 1
    .parameter "cotext"

    .prologue
    .line 184
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    .line 186
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    return-object v0
.end method

.method private setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    .prologue
    const v8, #android:drawable@keyguard_default_wallpaper#t

    .line 137
    new-instance v1, Ljava/io/File;

    const-string v7, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v7, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, fileMultiCSC:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v7, "//system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v4, filePng:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "//system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, fileMultiCSCPng:Ljava/io/File;
    const/4 v5, 0x0

    .line 142
    .local v5, is:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 144
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_0
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 172
    .local v6, tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 176
    :goto_1
    return-object v6

    .line 145
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 147
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 148
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 150
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 151
    .end local v5           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 152
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 153
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 154
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 156
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 157
    .end local v5           #is:Ljava/io/InputStream;
    :catch_2
    move-exception v0

    .line 158
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 159
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 160
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 162
    :try_start_4
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 163
    .end local v5           #is:Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 164
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 165
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 167
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0

    .line 173
    .restart local v6       #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_4
    move-exception v0

    .line 174
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "WallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method

.method public setLockScreenWallpaper()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 76
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "usm_setting"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v4, :cond_0

    .line 77
    .local v4, isStandbyOn:Z
    :goto_0
    if-eqz v4, :cond_1

    .line 78
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, #android:drawable@keyguard_ultimate_wallpaper#t

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 79
    .local v3, is:Ljava/io/InputStream;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 81
    .local v7, tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    .end local v3           #is:Ljava/io/InputStream;
    .end local v7           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    return-void

    .end local v4           #isStandbyOn:Z
    :cond_0
    move v4, v8

    .line 76
    goto :goto_0

    .line 82
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #isStandbyOn:Z
    .restart local v7       #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 92
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v7           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isAdminWallpaper()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 93
    const-string v8, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 95
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 97
    :catch_1
    move-exception v1

    .line 99
    .local v1, ex:Ljava/lang/Exception;
    const-string v8, "WallpaperWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading Admin wallpaper EX:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lockscreen_wallpaper_path"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 109
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 110
    const-string v8, "WallpaperWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MultiSim Device wallpaperPath:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 114
    const-string v8, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 117
    :cond_4
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 120
    .local v5, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 122
    :try_start_2
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    .end local v5           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .local v6, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v6

    .line 127
    .end local v6           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_2

    .line 124
    :catch_2
    move-exception v1

    .line 125
    .restart local v1       #ex:Ljava/lang/Exception;
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    .line 126
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 129
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    .line 130
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 124
    .end local v5           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v6       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :catch_3
    move-exception v1

    move-object v5, v6

    .end local v6           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_3
.end method

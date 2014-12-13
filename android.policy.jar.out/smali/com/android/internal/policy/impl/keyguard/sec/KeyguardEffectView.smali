.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$6;,
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;,
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;
    }
.end annotation


# static fields
.field private static final MSG_CHANGE_WALLPAPER_TYPE:I = 0x12f0

.field private static final MSG_WALLPAPER_FILE_CHANGED:I = 0x12f2

.field private static final MSG_WALLPAPER_PATH_CHANGED:I = 0x12f1

.field private static final TAG:Ljava/lang/String; = "KeyguardBackgroundView"

.field private static sKeyguardBackgroundView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;


# instance fields
.field private final mAdminReceiver:Landroid/content/BroadcastReceiver;

.field private mBackground:Landroid/widget/FrameLayout;

.field private mBackgroundView:Landroid/view/View;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mForeground:Landroid/widget/FrameLayout;

.field private mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

.field private mGradationView:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIs_JBP_upgrade:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 166
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    .line 168
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    .line 169
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    .line 171
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mGradationView:Landroid/widget/ImageView;

    .line 172
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mGradationView:Landroid/widget/ImageView;

    const v2, #android:drawable@gradation_indi_bg#t

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mGradationView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 175
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->setWallpaperObserve()V

    .line 180
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:bool@config_is_JBP_Upgrade#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mIs_JBP_upgrade:Z

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleUpdateKeygaurdBackgroud()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/FileObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/FileObserver;)Landroid/os/FileObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;
    .locals 2
    .parameter "context"

    .prologue
    .line 209
    const-string v0, "KeyguardBackgroundView"

    const-string v1, "*** KeyguardEffectView getInstance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->sKeyguardBackgroundView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->sKeyguardBackgroundView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    .line 212
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->sKeyguardBackgroundView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    return-object v0
.end method

.method private handleChangeWallpaperType()V
    .locals 6

    .prologue
    .line 343
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    .line 345
    .local v0, isLiveWallpaper:Z
    if-eqz v0, :cond_1

    .line 347
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mIs_JBP_upgrade:Z

    if-eqz v2, :cond_0

    .line 348
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->circle:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 349
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    .line 382
    :goto_0
    return-void

    .line 351
    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->lens:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 352
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 359
    .local v1, unlockEffect:I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 362
    :pswitch_0
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->circle:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 363
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->flipboard:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_0

    .line 366
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->wallpaper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_0

    .line 370
    :pswitch_1
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->lens:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 371
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 372
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->flipboard:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_0

    .line 374
    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->wallpaper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_0

    .line 378
    :pswitch_2
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 379
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->ripple:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleUpdateKeygaurdBackgroud()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->setLockScreenWallpaper()V

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->setBackground()V

    .line 395
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setLockScreenWallpaper()V

    goto :goto_0
.end method

.method private makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V
    .locals 3
    .parameter "background"

    .prologue
    const/4 v2, 0x0

    .line 571
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$6;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$KeyguardEffectView$Background:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 573
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-nez v0, :cond_1

    .line 574
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 575
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 577
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->setBackground()V

    goto :goto_0

    .line 580
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    if-nez v0, :cond_0

    .line 581
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 582
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 583
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->setBackground()V

    goto :goto_0

    .line 587
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 588
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 589
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->setBackground()V

    goto :goto_0

    .line 593
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-nez v0, :cond_0

    .line 594
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 596
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->setBackground()V

    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V
    .locals 4
    .parameter "foreground"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 544
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$6;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$KeyguardEffectView$Foreground:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 563
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_1

    .line 565
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 567
    :cond_1
    return-void

    .line 546
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    if-nez v0, :cond_0

    .line 547
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    .line 548
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    goto :goto_0

    .line 552
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    if-nez v0, :cond_0

    .line 553
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    .line 554
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    goto :goto_0

    .line 558
    :pswitch_2
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setBackground()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 606
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mGradationView:Landroid/widget/ImageView;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 613
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->cleanUp()V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->cleanUp()V

    .line 470
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 471
    return-void

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->cleanUp()V

    goto :goto_0
.end method

.method public getBackgroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getForegroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->getUnlockDelay()J

    move-result-wide v0

    .line 513
    :goto_0
    return-wide v0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->getUnlockDelay()J

    move-result-wide v0

    goto :goto_0

    .line 513
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 524
    :goto_0
    return v0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->handleHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 524
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleNextScreenShowing()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 632
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setContentVisible(Z)V

    .line 634
    :cond_0
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 407
    :goto_0
    return v0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 407
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public playLockSound()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->playLockSound()V

    .line 541
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_3

    .line 476
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->reset()V

    .line 488
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_4

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->reset()V

    .line 492
    :cond_2
    :goto_1
    return-void

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->show()V

    goto :goto_0

    .line 490
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->reset()V

    goto :goto_1
.end method

.method public screenTurnedOff()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->screenTurnedOff()V

    .line 627
    :cond_0
    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->screenTurnedOn()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->screenTurnedOn()V

    .line 503
    :cond_1
    :goto_0
    return-void

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->screenTurnedOn()V

    goto :goto_0
.end method

.method public setWallpaperObserve()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 219
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    .line 222
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$4;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_ripple_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path_2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path_tracker"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usm_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    .line 303
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    .line 305
    const-string v0, "KeyguardBackgroundView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiSim Device wallpaperPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    const-string v0, "KeyguardBackgroundView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 313
    :cond_2
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    .line 314
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$5;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 337
    :cond_3
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 423
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v1, :cond_5

    .line 424
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 428
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    .line 430
    .local v0, isLiveWallpaper:Z
    if-eqz v0, :cond_2

    .line 431
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    .line 449
    .end local v0           #isLiveWallpaper:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->show()V

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v1, :cond_7

    .line 453
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->show()V

    .line 457
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 458
    return-void

    .line 433
    .restart local v0       #isLiveWallpaper:Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 434
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->sCurrentSecurityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_3

    .line 435
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    goto :goto_0

    .line 437
    :cond_3
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->flipboard:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_0

    .line 439
    :cond_4
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->wallpaper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_0

    .line 443
    .end local v0           #isLiveWallpaper:Z
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    goto :goto_0

    .line 446
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    goto :goto_0

    .line 454
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->show()V

    goto :goto_1
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1
    .parameter "startDelay"
    .parameter "rect"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.class public Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "FlipboardWallpaperWidget.java"


# static fields
.field private static sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;


# instance fields
.field private ANIMATION_FULL_PLAY_TIME:I

.field private ANIMATION_HALF_PLAY_TIME:I

.field private ANIMATION_START_DELAY:I

.field private BEHIND_ALPHA_FROM:F

.field private BEHIND_ALPHA_TO:F

.field private BEHIND_IMAGE_SCALE_FROM:F

.field private BEHIND_IMAGE_SCALE_TO:F

.field private final DBG:Z

.field private FRONT_ALPHA_FROM:F

.field private FRONT_ALPHA_TO:F

.field private FRONT_IMAGE_SCALE_FROM:F

.field private FRONT_IMAGE_SCALE_TO:F

.field private final TAG:Ljava/lang/String;

.field private mAuthorViews:[Landroid/widget/TextView;

.field private mBehindTextAlpha:Landroid/animation/ObjectAnimator;

.field private mBehindViewIdx:I

.field private mContentFrames:[Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCoverLockTouchedDownTime:J

.field private mCurrentDataIdx:I

.field private mFlipboardDataUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mFlipboardItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontTextAlpha:Landroid/animation/ObjectAnimator;

.field private mFrontViewIdx:I

.field private mHandler:Landroid/os/Handler;

.field private mImageAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIsAnimating:Z

.field private mIsContentViewVisible:Z

.field private mIsCoverLockIconTouchedDown:Z

.field private mIsInitializationSucceed:Z

.field private mIsScreenOn:Z

.field private mIsSetFrontWallpaper:Z

.field private mRootFrames:[Landroid/widget/FrameLayout;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mTimeViews:[Landroid/widget/TextView;

.field private mTitleViews:[Landroid/widget/TextView;

.field private mTransitionAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field mTransitionControlRunnable:Ljava/lang/Runnable;

.field private mWallpaperImageViews:[Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v0, "FlipboardWallpaperWidget"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->TAG:Ljava/lang/String;

    .line 48
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->DBG:Z

    .line 54
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    .line 58
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    .line 64
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    .line 65
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    .line 66
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    .line 67
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    .line 68
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    .line 69
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    .line 70
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    .line 76
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    .line 77
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mCurrentDataIdx:I

    .line 79
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsScreenOn:Z

    .line 80
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsSetFrontWallpaper:Z

    .line 81
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsContentViewVisible:Z

    .line 87
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_START_DELAY:I

    .line 88
    const/16 v0, 0x29b

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_HALF_PLAY_TIME:I

    .line 89
    const/16 v0, 0x535

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_FULL_PLAY_TIME:I

    .line 90
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_FROM:F

    .line 91
    const v0, 0x3f8ccccd

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_TO:F

    .line 92
    const v0, 0x3f666666

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_FROM:F

    .line 93
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_TO:F

    .line 94
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_FROM:F

    .line 95
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_TO:F

    .line 96
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_ALPHA_FROM:F

    .line 97
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_ALPHA_TO:F

    .line 98
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsAnimating:Z

    .line 99
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    .line 100
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontTextAlpha:Landroid/animation/ObjectAnimator;

    .line 101
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindTextAlpha:Landroid/animation/ObjectAnimator;

    .line 107
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsCoverLockIconTouchedDown:Z

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mCoverLockTouchedDownTime:J

    .line 449
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTransitionControlRunnable:Ljava/lang/Runnable;

    .line 457
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTransitionAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 608
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardDataUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 118
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->loadViews()Z

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->init()V

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardDataUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->generateAndStartAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_START_DELAY:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->switchViewOrder()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->enableAnimation()V

    return-void
.end method

.method private adjustContentFramePosition()V
    .locals 8

    .prologue
    const/16 v7, 0x636

    const/16 v6, 0x546

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 412
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    if-nez v3, :cond_0

    .line 435
    :goto_0
    return-void

    .line 415
    :cond_0
    const/16 v0, 0x212

    .line 416
    .local v0, NORMAL_TOP_MARGIN:I
    const/16 v1, 0x1c2

    .line 418
    .local v1, SHORTCUT_TOP_MARGIN:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->isShortcutEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 419
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 420
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 421
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #params:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 424
    .restart local v2       #params:Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 425
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 427
    .end local v2           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 428
    .restart local v2       #params:Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 429
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #params:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 432
    .restart local v2       #params:Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 433
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private declared-synchronized disableAnimation()V
    .locals 2

    .prologue
    .line 532
    monitor-enter p0

    :try_start_0
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "disableAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTransitionControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsAnimating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :cond_0
    monitor-exit p0

    return-void

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enableAnimation()V
    .locals 4

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "enableAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsAnimating:Z

    if-nez v0, :cond_0

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsAnimating:Z

    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTransitionControlRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_START_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :cond_0
    monitor-exit p0

    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private generateAndStartAnimation()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 474
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    if-nez v5, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_0

    .line 480
    const-string v5, "FlipboardWallpaperWidget"

    const-string v6, "generateAndStartAnimation"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setLockScreenWallpaper()V

    .line 483
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_FROM:F

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 484
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_FROM:F

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 485
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 486
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "scaleX"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 488
    .local v3, frontImageScaleX:Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "scaleY"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 490
    .local v4, frontImageScaleY:Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "alpha"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 493
    .local v2, frontImageAlpha:Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_FROM:F

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 494
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_FROM:F

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 495
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 496
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "scaleX"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 498
    .local v0, behindImageScaleX:Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "scaleY"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 501
    .local v1, behindImageScaleY:Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    .line 502
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v10

    aput-object v4, v6, v9

    aput-object v2, v6, v11

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const/4 v7, 0x4

    aput-object v1, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 503
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_FULL_PLAY_TIME:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 504
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTransitionAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 506
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_FROM:F

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 507
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "alpha"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontTextAlpha:Landroid/animation/ObjectAnimator;

    .line 509
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontTextAlpha:Landroid/animation/ObjectAnimator;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_HALF_PLAY_TIME:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 511
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_ALPHA_FROM:F

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 512
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "alpha"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_ALPHA_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_ALPHA_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindTextAlpha:Landroid/animation/ObjectAnimator;

    .line 514
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindTextAlpha:Landroid/animation/ObjectAnimator;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_HALF_PLAY_TIME:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 515
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindTextAlpha:Landroid/animation/ObjectAnimator;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_HALF_PLAY_TIME:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 517
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontTextAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 518
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindTextAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 519
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private getCurrentItem()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mCurrentDataIdx:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;
    .locals 1
    .parameter "cotext"

    .prologue
    .line 273
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    .line 276
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    return-object v0
.end method

.method private getTimeString(J)Ljava/lang/CharSequence;
    .locals 6
    .parameter "time"

    .prologue
    const-wide/16 v4, 0x3e8

    .line 374
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 375
    const-string v0, ""

    .line 377
    :goto_0
    return-object v0

    :cond_0
    mul-long v0, p1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private getWallpaper(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "wallpaperPath"

    .prologue
    const/4 v3, 0x0

    .line 326
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-object v3

    .line 329
    :cond_1
    const/4 v2, 0x0

    .line 330
    .local v2, is:Ljava/io/InputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 334
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #is:Ljava/io/InputStream;
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 339
    .restart local v2       #is:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 343
    :cond_2
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 346
    .local v3, tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_0

    .line 347
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 335
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v0

    .line 336
    .restart local v0       #e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private isInCoverLockIconArea(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 572
    const/16 v1, 0x3c3

    .line 573
    .local v1, LEFT:I
    const/16 v2, 0x6cc

    .line 574
    .local v2, RIGHT:I
    const/16 v3, 0x413

    .line 575
    .local v3, TOP:I
    const/16 v0, 0x71c

    .line 577
    .local v0, BOTTOM:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 578
    .local v4, touchedEventX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 580
    .local v5, touchedEventY:F
    const v6, 0x4470c000

    cmpg-float v6, v6, v4

    if-gtz v6, :cond_0

    const v6, 0x44d98000

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_0

    const v6, 0x44826000

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_0

    const v6, 0x44e38000

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_0

    .line 582
    const/4 v6, 0x1

    .line 584
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isShortcutEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x2

    const/4 v1, 0x0

    .line 397
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_shortcut"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v1

    .line 401
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_shortcut_app_list"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, activityList:Ljava/lang/String;
    if-eqz v0, :cond_0

    move v1, v2

    .line 408
    goto :goto_0
.end method

.method private launchMagazineApp()V
    .locals 5

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getCurrentItem()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    move-result-object v0

    .line 589
    .local v0, currentItem:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    if-nez v0, :cond_0

    .line 601
    :goto_0
    return-void

    .line 592
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 593
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "sstream.app"

    const-string v4, "sstream.app.activities.StreamActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 596
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 597
    :catch_0
    move-exception v1

    .line 598
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "FlipboardWallpaperWidget"

    const-string v4, "There\'s no Magazine activity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadViews()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 128
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    .line 130
    const v1, #android:layout@keyguard_flipboard_wallpaper#t

    .line 131
    .local v1, layoutId:I
    if-nez v1, :cond_0

    .line 132
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "LayoutId is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    .line 200
    :goto_0
    return v2

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 137
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-nez v0, :cond_1

    .line 138
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to get LayoutInflater"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    .line 143
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    if-nez v2, :cond_2

    .line 144
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to inflate"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto :goto_0

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->addView(Landroid/view/View;)V

    .line 150
    new-array v2, v7, [Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    .line 151
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, #android:id@keyguard_fbw_first_root_frame#t

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    aput-object v2, v3, v6

    .line 152
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, #android:id@keyguard_fbw_second_root_frame#t

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    aput-object v2, v3, v5

    .line 153
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v5

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v6

    if-nez v2, :cond_4

    .line 154
    :cond_3
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to load root frames"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto :goto_0

    .line 158
    :cond_4
    new-array v2, v7, [Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    .line 159
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, #android:id@keyguard_fbw_first_content_frame#t

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    aput-object v2, v3, v6

    .line 160
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, #android:id@keyguard_fbw_second_content_frame#t

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    aput-object v2, v3, v5

    .line 161
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v6

    if-nez v2, :cond_6

    .line 162
    :cond_5
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to load content frames"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto/16 :goto_0

    .line 166
    :cond_6
    new-array v2, v7, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    .line 167
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, #android:id@keyguard_fbw_first_wallpaper#t

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v6

    .line 168
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, #android:id@keyguard_fbw_second_wallpaper#t

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v5

    .line 169
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    if-nez v2, :cond_8

    .line 170
    :cond_7
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to load wallpaper image views"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto/16 :goto_0

    .line 174
    :cond_8
    new-array v2, v7, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    .line 175
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, #android:id@keyguard_fbw_first_title#t

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v6

    .line 176
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, #android:id@keyguard_fbw_second_title#t

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v5

    .line 177
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    if-nez v2, :cond_a

    .line 178
    :cond_9
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to load title views"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto/16 :goto_0

    .line 182
    :cond_a
    new-array v2, v7, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    .line 183
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, #android:id@keyguard_fbw_first_author#t

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v6

    .line 184
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, #android:id@keyguard_fbw_second_author#t

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v5

    .line 185
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    if-nez v2, :cond_c

    .line 186
    :cond_b
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to load author views"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto/16 :goto_0

    .line 190
    :cond_c
    new-array v2, v7, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    .line 191
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, #android:id@keyguard_fbw_first_time#t

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v6

    .line 192
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, #android:id@keyguard_fbw_second_time#t

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v5

    .line 193
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    if-nez v2, :cond_e

    .line 194
    :cond_d
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to load time views"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto/16 :goto_0

    .line 198
    :cond_e
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    .line 200
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto/16 :goto_0
.end method

.method private setViewData(I)V
    .locals 4
    .parameter "viewIdx"

    .prologue
    .line 302
    const-string v1, "FlipboardWallpaperWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mCurrentDataIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mCurrentDataIdx:I

    .line 305
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getCurrentItem()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    move-result-object v0

    .line 306
    .local v0, currentItem:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    if-nez v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getWallpaper(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    if-eqz v1, :cond_3

    .line 313
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    if-eqz v1, :cond_4

    .line 316
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    if-eqz v1, :cond_5

    .line 319
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    iget-wide v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getTimeString(J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchViewOrder()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 356
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 359
    :cond_0
    const-string v0, "FlipboardWallpaperWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchViewOrder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 364
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    if-nez v0, :cond_1

    .line 365
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    .line 366
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    goto :goto_0

    .line 368
    :cond_1
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    .line 369
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 253
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->disableAnimation()V

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardDataUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsScreenOn:Z

    .line 264
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsSetFrontWallpaper:Z

    goto :goto_0
.end method

.method public handleTouchDown(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->isInCoverLockIconArea(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsCoverLockIconTouchedDown:Z

    .line 548
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsCoverLockIconTouchedDown:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mCoverLockTouchedDownTime:J

    .line 550
    :cond_0
    return-void
.end method

.method public handleTouchUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 554
    const/4 v2, 0x0

    .line 556
    .local v2, isDismissRequesed:Z
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsCoverLockIconTouchedDown:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->isInCoverLockIconArea(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 559
    .local v0, currentTime:J
    iget-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mCoverLockTouchedDownTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->launchMagazineApp()V

    .line 561
    const/4 v2, 0x1

    .line 565
    .end local v0           #currentTime:J
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsCoverLockIconTouchedDown:Z

    .line 566
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mCoverLockTouchedDownTime:J

    .line 568
    return v2
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 204
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFlipboardItemList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mCurrentDataIdx:I

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setLockScreenWallpaper()V

    .line 215
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->adjustContentFramePosition()V

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setContentVisible(Z)V

    .line 236
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 246
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsScreenOn:Z

    .line 249
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->disableAnimation()V

    .line 250
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 239
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsScreenOn:Z

    .line 242
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->enableAnimation()V

    .line 243
    return-void
.end method

.method public setContentVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 381
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsContentViewVisible:Z

    if-ne v1, p1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsContentViewVisible:Z

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, visibility:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsContentViewVisible:Z

    if-nez v1, :cond_2

    .line 388
    const/4 v0, 0x4

    .line 390
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    .line 391
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLockScreenWallpaper()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 281
    :cond_0
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "item list is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    if-nez v0, :cond_2

    .line 286
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->loadViews()Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "Initialization failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsSetFrontWallpaper:Z

    if-eqz v0, :cond_3

    .line 294
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setViewData(I)V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsSetFrontWallpaper:Z

    goto :goto_0

    .line 297
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setViewData(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFlipboardItemList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    .line 221
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->adjustContentFramePosition()V

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setContentVisible(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setLockScreenWallpaper()V

    .line 225
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsScreenOn:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->enableAnimation()V

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->disableAnimation()V

    goto :goto_0
.end method

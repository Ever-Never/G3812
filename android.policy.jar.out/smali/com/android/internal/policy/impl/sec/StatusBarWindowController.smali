.class public abstract Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;,
        Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;,
        Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;,
        Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;
    }
.end annotation


# static fields
.field static final ACTION_COLLAPSE:Ljava/lang/String; = "com.android.systemui.statusbar.COLLAPSED"

.field static final ACTION_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field static final ACTION_NOTIFICATION_ARRIVED:Ljava/lang/String; = "com.system.action.NOTIFICATION"

.field static final DELAY_ANIMATING_HIDE_IN_FULLSCREEN:I = 0x12c

.field static final DELAY_HIDE_IN_FULLSCREEN:I = 0xbb8

.field static final DELAY_HIDE_IN_FULLSCREEN_BY_NOTIFICATION:I = 0x9c4

.field static final DELAY_SHOW_HOVERING_IN_FULLSCREEN:I = 0x1f4

.field static final DELAY_SHOW_IN_FULLSCREEN_BY_NOTIFICATION:I = 0x3e8

.field static final KEY_DISABLE_STATUS_BAR_OPEN:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Disable"

.field static final MIN_RAW_PY_CONTROL_VOLUME:I = 0xa

.field static final NOTIFICATION_FIELD_TYPE:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Type"

.field static final NOTIFICATION_TYPE_ADD:I = 0x1

.field static final POINTER_COUNT_CONTROL_VOLUME:I = 0x2

.field static final TAG:Ljava/lang/String; = "StatusBarWindowController"


# instance fields
.field final DEBUG:Z

.field final SAFE_DEBUG:Z

.field mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mDefaultHideOnFullScreen:Ljava/lang/Runnable;

.field mDefaultShowOnFullScreen:Ljava/lang/Runnable;

.field mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

.field mEventDispatchThread:Ljava/lang/Thread;

.field mEventInjectionGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

.field mFlingGestureMaxXVelocityPx:F

.field mFlingGestureMinVelocityPy:F

.field mHandler:Landroid/os/Handler;

.field mHideNormalScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

.field mHoveringInStatusBarArea:Z

.field mInstrumentation:Landroid/app/Instrumentation;

.field mIsFingerAirViewEnabled:Z

.field mIsShowUpIndicatorEnabled:Z

.field mIsStatusBarExpandEnabled:Z

.field mIsStatusBarHideEnabled:Z

.field mIsStatusBarWindow:Z

.field mLastControlEventRawY:F

.field mPreviousHiddenOnNormalScreen:Z

.field mPreviousShownOnFullScreen:Z

.field mReadyControlStatusBar:Z

.field mReadyInjectionBackKeyEvent:Z

.field final mServiceAquireLock:Ljava/lang/Object;

.field mShowFullScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

.field mStatusBarExpanded:Z

.field mStatusBarHeight:I

.field mStatusBarHiddenOnNormalScreen:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mStatusBarShownOnFullScreen:Z

.field mTopIsFullScreen:Z

.field mUseStatusBarOpenByNotification:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 637
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->DEBUG:Z

    .line 42
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-ne v3, v5, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    .line 68
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventDispatchThread:Ljava/lang/Thread;

    .line 70
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mServiceAquireLock:Ljava/lang/Object;

    .line 76
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    .line 77
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mUseStatusBarOpenByNotification:Z

    .line 78
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarWindow:Z

    .line 79
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarExpandEnabled:Z

    .line 80
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    .line 82
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    .line 84
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    .line 87
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    .line 88
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    .line 90
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    .line 91
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    .line 92
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    .line 94
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 96
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyInjectionBackKeyEvent:Z

    .line 97
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    .line 99
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 449
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    .line 461
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

    .line 475
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$5;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    .line 482
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$6;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

    .line 638
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 640
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 642
    .local v1, res:Landroid/content/res/Resources;
    const v3, #android:dimen@fling_gesture_max_x_velocity#t

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMaxXVelocityPx:F

    .line 644
    const v3, #android:dimen@fling_gesture_min_y_velocity#t

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMinVelocityPy:F

    .line 646
    const v3, #android:dimen@status_bar_height#t

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    .line 649
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    .line 650
    new-instance v3, Landroid/app/Instrumentation;

    invoke-direct {v3}, Landroid/app/Instrumentation;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mInstrumentation:Landroid/app/Instrumentation;

    .line 652
    new-instance v2, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    .line 653
    .local v2, settingsObserver:Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;->observe()V

    .line 655
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    invoke-direct {v3, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mShowFullScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    .line 657
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mShowFullScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->setIsLongpressEnabled(Z)V

    .line 659
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    invoke-direct {v3, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHideNormalScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    .line 661
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHideNormalScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->setIsLongpressEnabled(Z)V

    .line 663
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    invoke-direct {v3, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventInjectionGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    .line 665
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventInjectionGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->setIsLongpressEnabled(Z)V

    .line 667
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 668
    .local v0, mReceiveFilter:Landroid/content/IntentFilter;
    const-string v3, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 670
    const-string v3, "com.system.action.NOTIFICATION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 671
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 672
    return-void

    .end local v0           #mReceiveFilter:Landroid/content/IntentFilter;
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v2           #settingsObserver:Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;
    :cond_0
    move v3, v5

    .line 42
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->injectionKeyEvent(I)V

    return-void
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .parameter "key"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "StatusBarWindowController"

    const-string v1, "send interrupt to previous mEventDispatchThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventDispatchThread:Ljava/lang/Thread;

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 240
    return-void
.end method

.method private postHoverEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const-wide/16 v8, 0xbb8

    const-wide/16 v6, 0x1f4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 391
    .local v0, action:I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 392
    iget v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    div-int/lit8 v1, v2, 0x2

    .line 407
    .local v1, hoverAllowHeight:I
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v2, :cond_2

    .line 447
    :cond_0
    :goto_1
    return-void

    .line 394
    .end local v1           #hoverAllowHeight:I
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    mul-int/lit8 v1, v2, 0x2

    .restart local v1       #hoverAllowHeight:I
    goto :goto_0

    .line 408
    :cond_2
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 430
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 431
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 432
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 434
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-nez v2, :cond_0

    .line 435
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 411
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 412
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 415
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-nez v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 420
    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    goto :goto_1

    .line 424
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 439
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 440
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 441
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 408
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 777
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 778
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 779
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract onHideStatusBarOnNormalScreen(Z)V
.end method

.method public onInputPointerEvent(Landroid/view/MotionEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "isStatusBarWindow"

    .prologue
    .line 687
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarWindow:Z

    .line 694
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 695
    .local v0, action:I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 697
    .local v1, type:I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 731
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 704
    :pswitch_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isWatchSpecialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 705
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventInjectionGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 707
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v2, :cond_2

    .line 708
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mShowFullScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 709
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    if-eqz v2, :cond_0

    .line 710
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHideNormalScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 717
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 718
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    if-eqz v2, :cond_0

    .line 719
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->postHoverEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 722
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 723
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isStatusBarHoverOpenEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 724
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->postHoverEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 697
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public abstract onShowStatusBarOnFullScreen(Z)V
.end method

.method public performHideStatusBarOnNormalScreen(Z)V
    .locals 1
    .parameter "hide"

    .prologue
    .line 616
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performHideStatusBarOnNormalScreen(ZZ)V

    .line 617
    return-void
.end method

.method public performHideStatusBarOnNormalScreen(ZZ)V
    .locals 1
    .parameter "hide"
    .parameter "force"

    .prologue
    .line 625
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    if-eq p1, v0, :cond_1

    .line 626
    :cond_0
    if-eqz p1, :cond_2

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    .line 631
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->onHideStatusBarOnNormalScreen(Z)V

    .line 633
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    .line 634
    return-void

    .line 629
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    goto :goto_0
.end method

.method public performShowStatusBarOnFullScreen(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(ZZ)V

    .line 360
    return-void
.end method

.method public performShowStatusBarOnFullScreen(ZZ)V
    .locals 4
    .parameter "show"
    .parameter "force"

    .prologue
    const/4 v1, 0x1

    .line 368
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    if-eq p1, v0, :cond_1

    .line 369
    :cond_0
    if-eqz p1, :cond_2

    .line 370
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    .line 377
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->onShowStatusBarOnFullScreen(Z)V

    .line 379
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    .line 380
    return-void

    .line 372
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->setStatusBarHidingOnFullScreen(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setProperties(ZZ)V
    .locals 2
    .parameter "topIsFullScreen"
    .parameter "openByNotification"

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eq v0, p1, :cond_0

    .line 676
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    .line 677
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 679
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mUseStatusBarOpenByNotification:Z

    .line 684
    return-void

    .line 679
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract setStatusBarHidingOnFullScreen(Z)V
.end method

.method updateSetting()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 758
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 759
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "finger_air_view"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 761
    .local v0, isFingerAirViewEnabled:Z
    :goto_0
    const-string v6, "finger_air_view_show_up_indicator"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 763
    .local v1, isShowUpIndicatorEnabled:Z
    :goto_1
    const-string v6, "use_status_bar_hide"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 765
    .local v2, isStatusBarHideEnabled:Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    if-eq v4, v0, :cond_0

    .line 766
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    .line 768
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    if-eq v4, v1, :cond_1

    .line 769
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    .line 771
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    if-eq v4, v2, :cond_2

    .line 772
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    .line 774
    :cond_2
    return-void

    .end local v0           #isFingerAirViewEnabled:Z
    .end local v1           #isShowUpIndicatorEnabled:Z
    .end local v2           #isStatusBarHideEnabled:Z
    :cond_3
    move v0, v5

    .line 759
    goto :goto_0

    .restart local v0       #isFingerAirViewEnabled:Z
    :cond_4
    move v1, v5

    .line 761
    goto :goto_1

    .restart local v1       #isShowUpIndicatorEnabled:Z
    :cond_5
    move v2, v5

    .line 763
    goto :goto_2
.end method

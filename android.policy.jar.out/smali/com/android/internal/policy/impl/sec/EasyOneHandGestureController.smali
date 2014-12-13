.class public Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;
.super Ljava/lang/Object;
.source "EasyOneHandGestureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$SettingsObserver;,
        Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;
    }
.end annotation


# static fields
.field static final ACTION_COLLAPSE:Ljava/lang/String; = "com.android.systemui.statusbar.COLLAPSED"

.field static final ACTION_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field static final ACTION_NOTIFICATION_ARRIVED:Ljava/lang/String; = "com.system.action.NOTIFICATION"

.field static final TAG:Ljava/lang/String; = "EasyOneHandGestureController"


# instance fields
.field final DEBUG:Z

.field final SAFE_DEBUG:Z

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mEasyOneHandGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

.field private mEasyOneHandRunning:I

.field private mFirstDownX:F

.field private mFirstDownY:F

.field mFlingGestureMaxXVelocityPx:F

.field mFlingGestureMinVelocityPy:F

.field mHandler:Landroid/os/Handler;

.field private mLastUpX:F

.field private mLastUpY:F

.field private mMaxX:F

.field private mMinX:F

.field mResources:Landroid/content/res/Resources;

.field mStatusBarExpanded:Z

.field mStatusBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->DEBUG:Z

    .line 45
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v5

    if-ne v5, v3, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->SAFE_DEBUG:Z

    .line 54
    iput v4, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mEasyOneHandRunning:I

    .line 71
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mStatusBarExpanded:Z

    .line 74
    new-instance v3, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$1;-><init>(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mContext:Landroid/content/Context;

    .line 177
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 179
    .local v1, res:Landroid/content/res/Resources;
    const v3, #android:dimen@fling_gesture_max_x_velocity#t

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mFlingGestureMaxXVelocityPx:F

    .line 181
    const v3, #android:dimen@fling_gesture_min_y_velocity#t

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mFlingGestureMinVelocityPy:F

    .line 183
    const v3, #android:dimen@status_bar_height#t

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mStatusBarHeight:I

    .line 186
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mHandler:Landroid/os/Handler;

    .line 188
    new-instance v2, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$SettingsObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)V

    .line 189
    .local v2, settingsObserver:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$SettingsObserver;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$SettingsObserver;->observe()V

    .line 191
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;-><init>(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)V

    invoke-direct {v3, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mEasyOneHandGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    .line 193
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mEasyOneHandGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->setIsLongpressEnabled(Z)V

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v0, mReceiveFilter:Landroid/content/IntentFilter;
    const-string v3, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v3, "com.system.action.NOTIFICATION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mResources:Landroid/content/res/Resources;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mFirstDownX:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mLastUpX:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMinX:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMaxX:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mEasyOneHandRunning:I

    return v0
.end method


# virtual methods
.method public onInputPointerEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 211
    .local v0, action:I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    .line 214
    .local v2, type:I
    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 217
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mLastUpX:F

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mLastUpY:F

    .line 219
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mEasyOneHandGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 223
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mFirstDownX:F

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mFirstDownY:F

    .line 225
    iget v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mFirstDownX:F

    iput v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMaxX:F

    iput v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMinX:F

    .line 226
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mEasyOneHandGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 230
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 231
    .local v1, pointX:F
    iget v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMinX:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_1

    move v3, v1

    :goto_1
    iput v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMinX:F

    .line 232
    iget v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMaxX:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMaxX:F

    .end local v1           #pointX:F
    :cond_0
    iput v1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMaxX:F

    .line 233
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mEasyOneHandGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 231
    .restart local v1       #pointX:F
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMinX:F

    goto :goto_1

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public startEasyOneHandService(Z)V
    .locals 6
    .parameter "isLeftHand"

    .prologue
    .line 89
    const-string v3, "EasyOneHandGestureController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEasyOneHandService() isLeftHand="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easyonehand"

    const-string v4, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 94
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "LeftHandMode"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "EasyOneHandGestureController"

    const-string v4, "Exception updateEasyOneHandService: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method updateSetting()V
    .locals 4

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 258
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "any_screen_running"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mEasyOneHandRunning:I

    .line 259
    return-void
.end method

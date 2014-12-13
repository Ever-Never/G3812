.class final Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;
.super Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ShowFullScreenGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;-><init>()V

    .line 248
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 290
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v3, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v5

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v0, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    .line 299
    .local v0, controlAllowHeight:I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 300
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v5, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_0

    .line 294
    .end local v0           #controlAllowHeight:I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    mul-int/lit8 v0, v3, 0x2

    goto :goto_1

    .line 306
    .restart local v0       #controlAllowHeight:I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v3, :cond_5

    .line 308
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarWindow:Z

    if-nez v3, :cond_0

    .line 310
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 311
    .local v2, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_4

    .line 312
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v2           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(Z)V

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 316
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_2

    .line 320
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v3, :cond_0

    .line 321
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v6, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_0
.end method

.method public onFinished(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x1

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v3

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-nez v0, :cond_0

    .line 270
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMaxXVelocityPx:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMinVelocityPy:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(Z)V

    goto :goto_0
.end method

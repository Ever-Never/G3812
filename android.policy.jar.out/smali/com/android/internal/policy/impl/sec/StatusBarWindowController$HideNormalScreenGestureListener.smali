.class final Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;
.super Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideNormalScreenGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;-><init>()V

    .line 496
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    .line 544
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v3

    .line 548
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    mul-int/lit8 v0, v1, 0x2

    .line 553
    .local v0, controlAllowHeight:I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 554
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_0

    .line 548
    .end local v0           #controlAllowHeight:I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    mul-int/lit8 v0, v1, 0x5

    goto :goto_1

    .line 558
    .restart local v0       #controlAllowHeight:I
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_0
.end method

.method public onFinished(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v0, :cond_0

    .line 610
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v2

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    if-eqz v0, :cond_2

    .line 519
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMaxXVelocityPx:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMinVelocityPy:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performHideStatusBarOnNormalScreen(Z)V

    goto :goto_0

    .line 525
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMaxXVelocityPx:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMinVelocityPy:F

    neg-float v0, v0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performHideStatusBarOnNormalScreen(Z)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return v3

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    if-eqz v0, :cond_2

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_0

    .line 586
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_0
.end method

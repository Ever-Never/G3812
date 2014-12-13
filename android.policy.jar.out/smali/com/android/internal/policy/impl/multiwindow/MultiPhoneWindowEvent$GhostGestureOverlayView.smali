.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;
.super Landroid/gesture/GestureOverlayView;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GhostGestureOverlayView"
.end annotation


# instance fields
.field private mGd:Landroid/view/GestureDetector;

.field private mIsDefaultHover:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 2515
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 2516
    invoke-direct {p0, p2}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;)V

    .line 2512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    .line 2518
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->setSkipInvalidate(Z)V

    .line 2519
    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLEBAR_GESTURE_TRIGGER:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$3200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2520
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mGd:Landroid/view/GestureDetector;

    .line 2549
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "event"

    .prologue
    .line 2569
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getWindowMode()I

    move-result v11

    .line 2570
    .local v11, windowMode:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNormalWindow(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2571
    invoke-super/range {p0 .. p1}, Landroid/gesture/GestureOverlayView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 2635
    :goto_0
    return v12

    .line 2574
    :cond_0
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v3, v12, -0x801

    .line 2576
    .local v3, currentLaunchMode:I
    and-int/lit8 v12, v11, 0xf

    if-nez v12, :cond_1

    .line 2577
    const/4 v3, 0x4

    .line 2580
    :cond_1
    const/4 v12, 0x4

    if-eq v3, v12, :cond_2

    const/4 v12, 0x1

    if-eq v3, v12, :cond_2

    invoke-static {v11}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 2583
    invoke-super/range {p0 .. p1}, Landroid/gesture/GestureOverlayView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    goto :goto_0

    .line 2586
    :cond_2
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 2587
    .local v10, th:I
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 2588
    .local v0, bh:I
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    .line 2590
    .local v2, bw:I
    const/4 v5, -0x1

    .line 2592
    .local v5, hoverIcon:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x7

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/16 v13, 0x9

    if-ne v12, v13, :cond_b

    :cond_3
    invoke-static {v11}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v12

    if-nez v12, :cond_b

    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const-string v13, "fixedSize"

    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasApplicationStyle(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const-string v13, "fixedSize"

    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasActivityStyle(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 2597
    new-instance v6, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/16 v13, 0x14

    add-int/lit8 v14, v0, -0x14

    invoke-direct {v6, v12, v10, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2598
    .local v6, leftHover:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    add-int/lit8 v12, v2, -0x14

    add-int/lit8 v13, v0, -0x14

    invoke-direct {v8, v12, v10, v2, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2599
    .local v8, rightHover:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    const/4 v12, 0x0

    add-int/lit8 v13, v0, -0x28

    const/16 v14, 0x28

    invoke-direct {v7, v12, v13, v14, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2600
    .local v7, leftbottomHover:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    add-int/lit8 v12, v2, -0x28

    add-int/lit8 v13, v0, -0x28

    invoke-direct {v9, v12, v13, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2601
    .local v9, rightbottomHover:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    const/16 v12, 0x14

    add-int/lit8 v13, v0, -0x14

    add-int/lit8 v14, v2, -0x14

    invoke-direct {v1, v12, v13, v14, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2603
    .local v1, bottomHover:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2604
    const/4 v5, 0x6

    .line 2605
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    .line 2629
    .end local v1           #bottomHover:Landroid/graphics/Rect;
    .end local v6           #leftHover:Landroid/graphics/Rect;
    .end local v7           #leftbottomHover:Landroid/graphics/Rect;
    .end local v8           #rightHover:Landroid/graphics/Rect;
    .end local v9           #rightbottomHover:Landroid/graphics/Rect;
    :cond_4
    :goto_1
    if-lez v5, :cond_5

    .line 2630
    const/4 v12, -0x1

    :try_start_0
    invoke-static {v5, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2635
    :cond_5
    :goto_2
    invoke-super/range {p0 .. p1}, Landroid/gesture/GestureOverlayView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 2606
    .restart local v1       #bottomHover:Landroid/graphics/Rect;
    .restart local v6       #leftHover:Landroid/graphics/Rect;
    .restart local v7       #leftbottomHover:Landroid/graphics/Rect;
    .restart local v8       #rightHover:Landroid/graphics/Rect;
    .restart local v9       #rightbottomHover:Landroid/graphics/Rect;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2607
    const/4 v5, 0x6

    .line 2608
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    goto :goto_1

    .line 2609
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2610
    const/16 v5, 0x9

    .line 2611
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    goto :goto_1

    .line 2612
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v9, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2613
    const/16 v5, 0x8

    .line 2614
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    goto :goto_1

    .line 2615
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2616
    const/4 v5, 0x7

    .line 2617
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    goto :goto_1

    .line 2619
    :cond_a
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    if-nez v12, :cond_4

    .line 2620
    const/4 v5, 0x1

    .line 2621
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mIsDefaultHover:Z

    goto :goto_1

    .line 2624
    .end local v1           #bottomHover:Landroid/graphics/Rect;
    .end local v6           #leftHover:Landroid/graphics/Rect;
    .end local v7           #leftbottomHover:Landroid/graphics/Rect;
    .end local v8           #rightHover:Landroid/graphics/Rect;
    .end local v9           #rightbottomHover:Landroid/graphics/Rect;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_4

    .line 2625
    const/4 v5, 0x1

    goto :goto_1

    .line 2632
    :catch_0
    move-exception v4

    .line 2633
    .local v4, e:Landroid/os/RemoteException;
    const-string v12, "MultiPhoneWindowEvent"

    const-string v13, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$3100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$3300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2555
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$3400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2556
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$3300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2558
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLEBAR_GESTURE_TRIGGER:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$3200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2559
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$3400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v1

    #calls: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasOverlayTitleBar(I)Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2560
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->mGd:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2564
    :cond_1
    invoke-super {p0, p1}, Landroid/gesture/GestureOverlayView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 2641
    invoke-super {p0, p1}, Landroid/gesture/GestureOverlayView;->onWindowFocusChanged(Z)V

    .line 2643
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    .line 2644
    .local v0, windowMode:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #calls: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasOverlayTitleBar(I)Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2645
    if-nez p1, :cond_0

    .line 2646
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hideTitleBar()V

    .line 2649
    :cond_0
    return-void
.end method

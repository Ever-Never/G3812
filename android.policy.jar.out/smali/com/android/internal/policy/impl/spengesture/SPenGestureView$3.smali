.class Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 574
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    .line 579
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 615
    if-eqz p1, :cond_0

    .line 616
    iget-object v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 617
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 618
    .local v2, diffX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 619
    .local v3, diffY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 620
    .local v0, absDiffX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 622
    .local v1, absDiffY:I
    const/16 v6, 0x64

    if-ge v0, v6, :cond_0

    if-gez v3, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 624
    iget-object v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v6, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    .line 625
    iget-object v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v7, 0x2

    #calls: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V
    invoke-static {v6, v7, v5}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;IZ)V

    .line 630
    .end local v0           #absDiffX:I
    .end local v1           #absDiffY:I
    .end local v2           #diffX:I
    .end local v3           #diffY:I
    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 569
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x1

    .line 589
    if-eqz p1, :cond_2

    .line 590
    iget-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 591
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 592
    .local v2, diffX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v3, v5

    .line 593
    .local v3, diffY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 594
    .local v0, absDiffX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 596
    .local v1, absDiffY:I
    const/16 v5, 0x64

    if-ge v0, v5, :cond_0

    if-ltz v3, :cond_1

    .line 597
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    .line 606
    .end local v0           #absDiffX:I
    .end local v1           #absDiffY:I
    .end local v2           #diffX:I
    .end local v3           #diffY:I
    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

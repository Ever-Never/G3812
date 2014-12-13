.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private SWEEP_MIN_DISTANCE:F

.field private SWEEP_MIN_DISTANCE_FROM_SCREEN:F

.field private SWEEP_MIN_VELOCITY:I

.field private density:F

.field final synthetic this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->val$this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2521
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    const/high16 v1, 0x4320

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->density:F

    .line 2522
    const/high16 v0, 0x41a0

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->SWEEP_MIN_DISTANCE:F

    .line 2523
    const/high16 v0, 0x4170

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->SWEEP_MIN_DISTANCE_FROM_SCREEN:F

    .line 2524
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->SWEEP_MIN_VELOCITY:I

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 2529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 2530
    .local v2, startX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v0, v4, v5

    .line 2531
    .local v0, deltaX:F
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    move v1, v2

    .line 2532
    .local v1, distFromEdge:F
    :goto_0
    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->SWEEP_MIN_DISTANCE:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    invoke-static {p3}, Landroid/util/MathUtils;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->SWEEP_MIN_VELOCITY:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->SWEEP_MIN_DISTANCE_FROM_SCREEN:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    .line 2545
    :cond_0
    :goto_1
    return v3

    .line 2531
    .end local v1           #distFromEdge:F
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v4, v2

    goto :goto_0

    .line 2542
    .restart local v1       #distFromEdge:F
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->showTitleBar(Z)V

    .line 2545
    const/4 v3, 0x1

    goto :goto_1
.end method

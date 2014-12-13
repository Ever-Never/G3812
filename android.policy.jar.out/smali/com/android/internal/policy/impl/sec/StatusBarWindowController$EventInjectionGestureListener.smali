.class final Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;
.super Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EventInjectionGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;-><init>()V

    .line 133
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    mul-int/lit8 v0, v1, 0x2

    .line 162
    .local v0, controlAllowHeight:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyInjectionBackKeyEvent:Z

    .line 165
    :cond_0
    return v3
.end method

.method public onFinished(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyInjectionBackKeyEvent:Z

    .line 208
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyInjectionBackKeyEvent:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMaxXVelocityPx:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMinVelocityPy:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x4

    #calls: Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->injectionKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->access$000(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;I)V

    .line 150
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 179
    .local v0, e1PointerCount:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 180
    .local v1, e2PointerCount:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 182
    .local v2, e2RawY:F
    if-eq v0, v5, :cond_0

    if-ne v1, v5, :cond_1

    .line 184
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyInjectionBackKeyEvent:Z

    .line 187
    :cond_1
    if-ne v1, v5, :cond_5

    .line 188
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_3

    .line 189
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput v2, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    .line 202
    :cond_2
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 190
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x4120

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 191
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_4

    .line 192
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/16 v4, 0x18

    #calls: Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->injectionKeyEvent(I)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->access$000(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;I)V

    .line 196
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput v2, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    goto :goto_0

    .line 194
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/16 v4, 0x19

    #calls: Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->injectionKeyEvent(I)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->access$000(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;I)V

    goto :goto_1

    .line 199
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput v6, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    goto :goto_0
.end method

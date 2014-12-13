.class final Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;
.super Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;
.source "EasyOneHandGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EasyOneHandGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;-><init>()V

    .line 107
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public onFinished(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 171
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v9, 0x1

    .line 119
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 121
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "EasyOneHandGestureController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFirstDownX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mFirstDownX:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$000(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLastUpX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mLastUpX:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$100(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", vX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mMinX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMinX:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$200(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mMaxX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMaxX:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$300(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", diff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMaxX:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$300(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMinX:F
    invoke-static {v6}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$200(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mEasyOneHandRunning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mEasyOneHandRunning:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$400(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeDiff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v4, :cond_2

    .line 152
    :cond_1
    :goto_0
    return v9

    .line 129
    :cond_2
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v3, 0x5

    .line 130
    .local v2, triggerDistance:I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v3, 0x8

    .line 140
    .local v1, startPosX:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMaxX:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$300(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mMinX:F
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$200(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F

    move-result v4

    sub-float/2addr v3, v4

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mFirstDownX:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$000(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x320

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mFirstDownX:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$000(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mLastUpX:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$100(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 142
    const/high16 v3, -0x3b86

    cmpg-float v3, p3, v3

    if-gez v3, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    invoke-virtual {v3, v9}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->startEasyOneHandService(Z)V

    goto :goto_0

    .line 145
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mFirstDownX:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$000(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F

    move-result v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    #getter for: Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mLastUpX:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->access$100(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)F

    move-result v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 146
    const/high16 v3, 0x447a

    cmpl-float v3, p3, v3

    if-lez v3, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$EasyOneHandGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->startEasyOneHandService(Z)V

    goto/16 :goto_0
.end method

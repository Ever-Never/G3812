.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x1b58

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 499
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 500
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 501
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 502
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I
    invoke-static {v7, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1602(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;I)I

    .line 503
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 543
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_1

    .line 506
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    const-wide/16 v8, 0x1b58

    invoke-interface {v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 508
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 509
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_2

    move v5, v6

    .line 510
    .local v5, registeredAttempt:Z
    :cond_2
    if-eqz v5, :cond_3

    .line 511
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1608(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I

    .line 512
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1708(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I

    .line 513
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 518
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z

    move-result v4

    .line 519
    .local v4, lDeviceDisableForMaxFailedAttempt:Z
    if-nez v4, :cond_5

    .line 521
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 522
    .local v0, attempts:I
    if-eqz v5, :cond_4

    rem-int/lit8 v7, v0, 0x5

    if-nez v7, :cond_4

    .line 525
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$2002(Z)Z

    .line 526
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v1

    .line 527
    .local v1, deadline:J
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V
    invoke-static {v6, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;J)V

    .line 530
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PATTERN_LOCK_FAIL"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v3, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 533
    .end local v1           #deadline:J
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    move-result-object v7

    const v8, #android:string@kg_wrong_pattern#t

    invoke-interface {v7, v8, v6}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 534
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 539
    .end local v0           #attempts:I
    :cond_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->disableDevicePermanently()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    goto/16 :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 482
    return-void
.end method

.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->updateSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 10
    .parameter "success"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 359
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 360
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->hide()V

    .line 362
    :cond_0
    if-eqz p1, :cond_3

    .line 363
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isSIMToastEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 364
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 365
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, #android:layout@transient_notification#t

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const v7, #android:id@toast_layout_root#t

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 368
    .local v2, layout:Landroid/view/View;
    const v5, #android:id@message#t

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 369
    .local v3, text:Landroid/widget/TextView;
    const v5, #android:string@lockscreen_pin_unblocked#t

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 371
    new-instance v4, Landroid/widget/Toast;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 372
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4, v8}, Landroid/widget/Toast;->setDuration(I)V

    .line 373
    const/16 v5, 0x10

    invoke-virtual {v4, v5, v9, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 374
    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 375
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 377
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    .end local v3           #text:Landroid/widget/TextView;
    .end local v4           #toast:Landroid/widget/Toast;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 378
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 380
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 381
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 382
    .local v0, i:Landroid/content/Intent;
    const-string v5, "ACTION_UNLOCK_PIN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v5, "PINPUKUnlock"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 402
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v6, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 403
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mCheckInProgress:Z
    invoke-static {v5, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$1602(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Z)Z

    .line 404
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 405
    return-void

    .line 387
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 388
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v6, #android:string@kg_invalid_puk#t

    invoke-interface {v5, v6, v8}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 389
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Z)Z

    .line 390
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getSimPukRetry()I
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)I

    move-result v6

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mRemainingCount:I
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;I)I

    .line 391
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v5

    if-eqz v5, :cond_5

    .line 392
    const-string v5, "KeyguardSimPukView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRemainingCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mRemainingCount:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "old_Num_of_retry:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->old_Num_of_retry:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->old_Num_of_retry:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mRemainingCount:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)I

    move-result v6

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mRemainingCount:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    .line 395
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v6, #android:string@cardCrash#t

    invoke-interface {v5, v6, v8}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 396
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v5, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Z)Z

    .line 397
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->isWrongPUKCrash:Z
    invoke-static {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Z)Z

    .line 400
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->updateRetryCount()V

    goto/16 :goto_0
.end method

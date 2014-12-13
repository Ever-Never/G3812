.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(Z)V
    .locals 9
    .parameter "success"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 276
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->hide()V

    .line 279
    :cond_0
    if-eqz p1, :cond_2

    .line 280
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isSIMToastEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 282
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, #android:layout@transient_notification#t

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    const v6, #android:id@toast_layout_root#t

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 285
    .local v1, layout:Landroid/view/View;
    const v4, #android:id@message#t

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 286
    .local v2, text:Landroid/widget/TextView;
    const v4, #android:string@keyguard_pin_accepted#t

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 288
    new-instance v3, Landroid/widget/Toast;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 289
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 290
    const/16 v4, 0x10

    invoke-virtual {v3, v4, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 291
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 292
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 296
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layout:Landroid/view/View;
    .end local v2           #text:Landroid/widget/TextView;
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 297
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 306
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 307
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z
    invoke-static {v4, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Z)Z

    .line 308
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 309
    return-void

    .line 299
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v5, #android:string@kg_password_wrong_pin_code#t

    invoke-interface {v4, v5, v7}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 301
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->isWrongPIN:Z
    invoke-static {v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Z)Z

    .line 303
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getSimPinRetry()I
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)I

    move-result v5

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;I)I

    .line 304
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->updateRetryCount()V

    goto :goto_0
.end method

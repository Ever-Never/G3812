.class Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen$5;
.super Landroid/os/CountDownTimer;
.source "PasswordUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 339
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 327
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 328
    .local v1, secondsRemaining:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #android:string@lockscreen_too_many_failed_attempts_countdown#t

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, instructions:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 332
    return-void
.end method

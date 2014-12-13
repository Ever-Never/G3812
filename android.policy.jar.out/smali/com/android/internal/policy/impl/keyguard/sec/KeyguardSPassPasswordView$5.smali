.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView$5;
.super Landroid/os/CountDownTimer;
.source "KeyguardSPassPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;->mMessageText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;->access$700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;->resetState()V

    .line 332
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 323
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 324
    .local v0, secondsRemaining:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;->mMessageText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;->access$700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;

    move-result-object v2

    const v3, #android:string@kg_too_many_failed_attempts_countdown#t

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    return-void
.end method

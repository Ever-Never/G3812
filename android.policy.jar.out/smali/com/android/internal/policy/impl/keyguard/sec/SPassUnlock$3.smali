.class Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$3;
.super Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;
.source "SPassUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startFailedAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

.field final synthetic val$monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$3;->val$monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .locals 2

    .prologue
    .line 504
    const-string v0, "SPassUnlock"

    const-string v1, "startFailedAnimation() : End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$3;->val$monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startIdentify()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->access$700(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Z

    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startStandbyAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->access$800(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)V

    .line 510
    :cond_0
    return-void
.end method

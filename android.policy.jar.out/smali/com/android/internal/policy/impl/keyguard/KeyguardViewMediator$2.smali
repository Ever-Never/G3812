.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHidden()Z
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 589
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 593
    return-void
.end method

.method public keyguardDonePending()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1502(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 608
    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateUserActivityTimeout()V

    .line 603
    return-void
.end method

.method public requestWakeUpAfterDrawing(Z)V
    .locals 1
    .parameter "request"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->requestWakeUpAfterDrawing(Z)V

    .line 620
    return-void
.end method

.method public resetStateLocked(Landroid/os/Bundle;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 612
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1
    .parameter "needsInput"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->setNeedsInput(Z)V

    .line 598
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V

    .line 581
    return-void
.end method

.method public userActivity(J)V
    .locals 1
    .parameter "holdMs"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity(J)V

    .line 585
    return-void
.end method

.method public wakeUp()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 577
    return-void
.end method

.method public wakeUpIfNeeded()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUpIfNeeded()V

    .line 616
    return-void
.end method

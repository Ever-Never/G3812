.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


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
    .line 1605
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1608
    const-string v11, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1609
    const-string v11, "seq"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1610
    .local v9, sequence:I
    const-string v11, "KeyguardViewMediator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mDelayedShowingSequence = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v12

    .line 1613
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I

    move-result v11

    if-ne v11, v9, :cond_0

    .line 1615
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v13, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v11, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 1617
    sget-boolean v11, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v11, :cond_3

    .line 1618
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 1619
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v13, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v11, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 1620
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1621
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1634
    :cond_0
    :goto_0
    monitor-exit v12

    .line 1769
    .end local v9           #sequence:I
    :cond_1
    :goto_1
    return-void

    .line 1623
    .restart local v9       #sequence:I
    :cond_2
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1624
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v13, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v11, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1634
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 1627
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isSupportSPC()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1629
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1637
    .end local v9           #sequence:I
    :cond_4
    const-string v11, "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1639
    const-string v11, "KeyguardViewMediator"

    const-string v12, "received DISABLE_KEYGUARD_FACTORY_ACTION!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isFactoryMode()Z
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1641
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_1

    .line 1645
    :cond_5
    const-string v11, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1646
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_1

    .line 1647
    :cond_6
    const-string v11, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1648
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1649
    const-string v11, "KeyguardViewMediator"

    const-string v12, "dpc"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    .line 1652
    .local v8, isSecure:Z
    if-nez v8, :cond_7

    .line 1653
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_1

    .line 1655
    :cond_7
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1656
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 1661
    .end local v8           #isSecure:Z
    :cond_8
    const-string v11, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1662
    const-string v11, "KeyguardViewMediator"

    const-string v12, "FMM_LOCKED_ACTION intent is received."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1664
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 1666
    :cond_9
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1667
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1669
    :cond_a
    const-string v11, "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1670
    const-string v11, "KeyguardViewMediator"

    const-string v12, "received intent to unlock FMM unlockscreen!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    .line 1672
    .restart local v8       #isSecure:Z
    if-nez v8, :cond_b

    .line 1673
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_1

    .line 1675
    :cond_b
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1676
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1678
    .end local v8           #isSecure:Z
    :cond_c
    const-string v11, "com.android.internal.policy.impl.Keyguard.LANDSCAPE_WAKE_TIME_LIMIT_EXPIRED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1679
    const-string v11, "KeyguardViewMediator"

    const-string v12, "landscape wakeup time limit expired"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsInLandscapeWakeTimeLimit:Z

    goto/16 :goto_1

    .line 1681
    :cond_d
    const-string v11, "com.sec.android.FindingLostPhone.SUBSCRIBE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1682
    const-string v11, "KeyguardViewMediator"

    const-string v12, "CARRIER_LOCKED_ACTION intent is received."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v11

    if-nez v11, :cond_e

    .line 1684
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 1686
    :cond_e
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1687
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1689
    :cond_f
    const-string v11, "com.sec.android.FindingLostPhone.CANCEL"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1690
    const-string v11, "KeyguardViewMediator"

    const-string v12, "received intent to unlock FLP!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    .line 1692
    .restart local v8       #isSecure:Z
    if-nez v8, :cond_10

    .line 1693
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_1

    .line 1695
    :cond_10
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1696
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1698
    .end local v8           #isSecure:Z
    :cond_11
    const-string v11, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 1699
    const-string v11, "KeyguardViewMediator"

    const-string v12, "ACTION_CONFIGURATION_CHANGED intent is received."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v4, v11, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1701
    .local v4, hardKeyboardConfig:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1702
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v11

    if-nez v11, :cond_14

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isFolderOpened(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_14

    .line 1703
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLastHardKeyboardConfig:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I

    move-result v11

    if-eq v11, v4, :cond_12

    const/4 v11, 0x2

    if-ne v4, v11, :cond_12

    .line 1704
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "sub_lcd_auto_lock"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13

    const/4 v10, 0x1

    .line 1705
    .local v10, subLCDAutoLock:Z
    :goto_2
    const-string v11, "service.camera.running"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1706
    .local v6, isCameraRunning:Z
    const-string v11, "KeyguardViewMediator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "subLCDAutoLock :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isCameraRunning :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    if-eqz v10, :cond_12

    if-nez v6, :cond_12

    .line 1708
    const-string v11, "KeyguardViewMediator"

    const-string v12, "onReceive, Folder is closed, doKeyguardLocked"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1719
    .end local v6           #isCameraRunning:Z
    .end local v10           #subLCDAutoLock:Z
    :cond_12
    :goto_3
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLastHardKeyboardConfig:I
    invoke-static {v11, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2102(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;I)I

    goto/16 :goto_1

    .line 1704
    :cond_13
    const/4 v10, 0x0

    goto :goto_2

    .line 1712
    :cond_14
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v11

    if-nez v11, :cond_12

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isFolderOpened(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1713
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLastHardKeyboardConfig:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I

    move-result v11

    if-eq v11, v4, :cond_12

    .line 1714
    const-string v11, "KeyguardViewMediator"

    const-string v12, "onReceive, Folder is opened, keyguardDone"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_3

    .line 1720
    .end local v4           #hardKeyboardConfig:I
    :cond_15
    const-string v11, "com.samsung.cover.OPEN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1721
    const-string v11, "KeyguardViewMediator"

    const-string v12, "received intent for Cover!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    const-string v11, "coverOpen"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 1723
    .local v7, isCoverOpen:Z
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "automatic_unlock"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1724
    .local v5, isAutoUnlock:I
    const/4 v11, 0x1

    if-ne v5, v11, :cond_1

    if-nez v7, :cond_1

    .line 1725
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1726
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_1

    .line 1729
    .end local v5           #isAutoUnlock:I
    .end local v7           #isCoverOpen:Z
    :cond_16
    const-string v11, "com.android.internal.policy.impl.Keyguard.SHOW_KEYGUARD_TO_CHANGE_USER"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 1730
    const-string v11, "KeyguardViewMediator"

    const-string v12, "SHOW_KEYGUARD_TO_CHANGE_USER intent is received."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v11

    if-nez v11, :cond_17

    .line 1732
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 1734
    :cond_17
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1735
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1737
    :cond_18
    const-string v11, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 1738
    const-string v11, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1739
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_1

    .line 1740
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 1741
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_1

    .line 1742
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    .line 1743
    .local v3, deviceClass:I
    const-string v11, "KeyguardViewMediator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " deviceClass = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v11

    if-nez v11, :cond_1

    const/16 v11, 0x704

    if-ne v3, v11, :cond_1

    .line 1747
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 1748
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->connectedBTforSmartLock:Z
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1602(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 1749
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1750
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1754
    .end local v1           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #deviceClass:I
    :cond_19
    const-string v11, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1755
    const-string v11, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1756
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_1

    .line 1757
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 1758
    .restart local v1       #btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_1

    .line 1759
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    .line 1760
    .restart local v3       #deviceClass:I
    const-string v11, "KeyguardViewMediator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " deviceClass = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v11

    if-nez v11, :cond_1

    const/16 v11, 0x704

    if-ne v3, v11, :cond_1

    .line 1764
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v12, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->connectedBTforSmartLock:Z
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1602(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    goto/16 :goto_1
.end method

.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 4
    .parameter "view"
    .parameter "pendingIntent"
    .parameter "fillInIntent"

    .prologue
    const/4 v1, 0x1

    .line 1286
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaPatentIssue(Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isGERFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShortcutDAWithPendingIntent(Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isAUSFeature()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShortcutDAWithPendingIntent(Landroid/app/PendingIntent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1290
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 1312
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$500()Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isGERFeature()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isAUSFeature()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1314
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$500()Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    .line 1325
    :goto_0
    return v1

    .line 1317
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "KeyguardHostView"

    const-string v3, "can\'t dismiss keyguard on launch"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1325
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0
.end method

.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V

    .line 248
    :goto_0
    monitor-exit v1

    .line 249
    return-void

    .line 246
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onConfigurationChanged: view not visible"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

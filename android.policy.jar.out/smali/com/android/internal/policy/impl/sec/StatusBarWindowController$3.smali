.class Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "StatusBarWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultShowOnFullScreen : mTopIsFullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-nez v0, :cond_1

    .line 458
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

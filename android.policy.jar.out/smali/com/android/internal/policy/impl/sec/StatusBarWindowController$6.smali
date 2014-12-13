.class Lcom/android/internal/policy/impl/sec/StatusBarWindowController$6;
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
    .line 482
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$6;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$6;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarWindowController"

    const-string v1, "mAnimatingHideOnFullScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$6;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->setStatusBarHidingOnFullScreen(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$6;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    .line 487
    return-void
.end method

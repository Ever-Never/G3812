.class Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$1;
.super Landroid/content/BroadcastReceiver;
.source "EasyOneHandGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$1;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$1;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EasyOneHandGestureController"

    const-string v2, "Receive COLLAPSED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$1;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mStatusBarExpanded:Z

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$1;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "EasyOneHandGestureController"

    const-string v2, "Receive EXPANDED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$1;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mStatusBarExpanded:Z

    goto :goto_0

    .line 83
    :cond_4
    const-string v1, "com.system.action.NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

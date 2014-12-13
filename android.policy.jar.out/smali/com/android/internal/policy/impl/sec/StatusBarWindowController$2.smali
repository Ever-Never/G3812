.class Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->injectionKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput p2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;->val$key:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "StatusBarWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEventDispatchThread : Thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ThreadName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 228
    const-string v0, "StatusBarWindowController"

    const-string v1, "Runnable.mEventDispatchThread : before mInstrumentation.sendKeyDownUpSync(key)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mInstrumentation:Landroid/app/Instrumentation;

    iget v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;->val$key:I

    const/16 v2, 0x1002

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(II)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2

    .line 233
    const-string v0, "StatusBarWindowController"

    const-string v1, "Runnable.mEventDispatchThread : after mInstrumentation.sendKeyDownUpSync(key)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2
    return-void
.end method

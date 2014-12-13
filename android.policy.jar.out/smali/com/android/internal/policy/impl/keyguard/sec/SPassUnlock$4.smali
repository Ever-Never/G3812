.class Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$4;
.super Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;
.source "SPassUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startSucceedAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .locals 3

    .prologue
    .line 527
    const-string v0, "SPassUnlock"

    const-string v1, "startSucceedAnimation() : End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->access$900(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->access$900(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->handleUnlock()V

    .line 532
    return-void
.end method

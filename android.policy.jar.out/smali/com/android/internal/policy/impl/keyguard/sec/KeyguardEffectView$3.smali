.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 197
    const-string v0, "KeyguardBackgroundView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** onUserSwitched - userId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->setWallpaperObserve()V

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleUpdateKeygaurdBackgroud()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->show()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->show()V

    .line 205
    :cond_1
    return-void
.end method

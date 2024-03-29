.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewManagerHost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 223
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .line 224
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->setFitsSystemWindows(Z)V

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->setSkipRtlCheck(Z)V

    .line 227
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v0, 0x1

    .line 278
    .local v0, isPortrait:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mDelayedScreenOnRequested:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchDraw: size=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mDelayedScreenOnRequested:Z
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Z)Z

    .line 281
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->wakeUpIfNeeded()V

    .line 282
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mPostDrawWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 284
    :cond_0
    return-void

    .end local v0           #isPortrait:Z
    :cond_1
    move v0, v1

    .line 277
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 255
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 257
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 258
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 259
    .local v0, keyCode:I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->handleBackKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    .end local v0           #keyCode:I
    :cond_0
    :goto_0
    return v1

    .line 261
    .restart local v0       #keyCode:I
    :cond_1
    const/16 v2, 0x52

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->handleMenuKey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    .end local v0           #keyCode:I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 272
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3
    .parameter "insets"

    .prologue
    .line 231
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bug 7643792: fitSystemWindows("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method

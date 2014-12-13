.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "cxt"
    .parameter "intent"

    .prologue
    const/16 v4, 0x12f2

    .line 109
    const-string v0, "KeyguardBackgroundView"

    const-string v1, "*** mAdminReceiver - onReceive ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    .line 116
    const-string v0, "KeyguardBackgroundView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiSim Device wallpaperPath3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/FileObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/FileObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$302(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/FileObserver;)Landroid/os/FileObserver;

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2$1;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;Ljava/lang/String;)V

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$302(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/FileObserver;)Landroid/os/FileObserver;

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/FileObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 150
    :cond_2
    const-string v0, "KeyguardBackgroundView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    const-string v0, "KeyguardBackgroundView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intet action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

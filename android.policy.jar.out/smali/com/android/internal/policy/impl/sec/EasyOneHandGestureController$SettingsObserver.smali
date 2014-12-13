.class Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "EasyOneHandGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)V
    .locals 1
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    .line 242
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 243
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->updateSetting()V

    .line 249
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->updateSetting()V

    .line 253
    return-void
.end method

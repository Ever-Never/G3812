.class Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V
    .locals 1
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    .line 735
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 736
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 739
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 740
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "finger_air_view"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 743
    const-string v1, "finger_air_view_show_up_indicator"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 746
    const-string v1, "use_status_bar_hide"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 749
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->updateSetting()V

    .line 750
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->updateSetting()V

    .line 754
    return-void
.end method

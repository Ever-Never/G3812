.class Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "FlipboardWallpaperWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onFlipboardDataUpdated()V
    .locals 2

    .prologue
    .line 610
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "onFlipboardDataUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->init()V

    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->enableAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V

    .line 614
    return-void
.end method

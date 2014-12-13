.class Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$1;
.super Ljava/lang/Object;
.source "FlipboardWallpaperWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 449
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->generateAndStartAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTransitionControlRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_START_DELAY:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 454
    return-void
.end method

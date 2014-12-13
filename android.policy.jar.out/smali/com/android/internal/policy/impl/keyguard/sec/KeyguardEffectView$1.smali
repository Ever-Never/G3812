.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;
.super Landroid/os/Handler;
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
    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->disableFlipboardWallpaper(Landroid/content/Context;)V

    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleUpdateKeygaurdBackgroud()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x12f0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showShortcutHelpText(Z)V
    .locals 3
    .parameter "shortcutPressed"

    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$1300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->doTransition(Landroid/view/View;F)V

    .line 835
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    if-eqz p1, :cond_2

    .line 837
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 858
    :cond_0
    :goto_1
    return-void

    .line 834
    :cond_1
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 847
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14$1;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;->showShortcutHelpText(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;)V
    .locals 0
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, #android:string@lockscreen_short_cut_guide_text#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 842
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 844
    :cond_0
    return-void
.end method

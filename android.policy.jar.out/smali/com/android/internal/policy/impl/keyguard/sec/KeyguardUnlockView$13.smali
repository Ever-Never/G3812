.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$13;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->showUsabilityHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

.field final synthetic val$mBounserView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$13;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$13;->val$mBounserView:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$13;->val$mBounserView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 635
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 630
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$13;->val$mBounserView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 626
    return-void
.end method

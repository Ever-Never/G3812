.class Lcom/android/internal/policy/impl/keyguard/PagedView$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PagedView$5;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/PagedView$5;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PagedView$5;)V
    .locals 0
    .parameter

    .prologue
    .line 2121
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/PagedView$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/PagedView$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->access$500(Lcom/android/internal/policy/impl/keyguard/PagedView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2125
    return-void
.end method

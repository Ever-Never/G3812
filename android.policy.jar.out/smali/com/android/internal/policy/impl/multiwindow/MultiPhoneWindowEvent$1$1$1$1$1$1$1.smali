.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$6:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1$1;->this$6:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1$1;->this$6:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1;->this$5:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1;->this$4:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1;->this$3:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1;->this$2:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 580
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1$1;->this$6:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1;->this$5:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1;->this$4:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1;->this$3:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1;->this$2:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mHide:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1$1;->this$6:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1$1;->this$5:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1$1;->this$4:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1$1;->this$3:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1$1;->this$2:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hideIconAnimation(Z)V

    .line 583
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 584
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 585
    return-void
.end method

.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 719
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$3200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_operation_left_is_pressed"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 723
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)V

    .line 724
    return-void

    .line 713
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z

    goto :goto_0

    .line 716
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z

    goto :goto_0

    .line 711
    nop

    :pswitch_data_0
    .packed-switch #android:id@onehand_left_arrow#t
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

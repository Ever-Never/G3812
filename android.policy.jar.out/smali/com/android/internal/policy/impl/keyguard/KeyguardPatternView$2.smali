.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;
.super Landroid/database/ContentObserver;
.source "KeyguardPatternView.java"


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
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getOneHandSwitchState()I
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I

    move-result v0

    .line 137
    .local v0, oneHandSwitchState:I
    if-ne v0, v1, :cond_2

    .line 138
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z

    .line 139
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_operation_left_is_pressed"

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)V

    .line 146
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 139
    goto :goto_0

    .line 141
    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z

    .line 143
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_operation_left_is_pressed"

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 143
    goto :goto_2
.end method

.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getSimPukRetry()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)I

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mRemainingCount:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;I)I

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->doHapticKeyClick()V

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->verifyPasswordAndUnlock()V

    .line 204
    return-void
.end method

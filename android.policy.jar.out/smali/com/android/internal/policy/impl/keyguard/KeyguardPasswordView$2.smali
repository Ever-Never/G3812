.class Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;
.super Ljava/lang/Object;
.source "KeyguardPasswordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->makeEmergencyCircleView()V

    .line 129
    return-void
.end method

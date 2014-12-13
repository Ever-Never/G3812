.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView$4;
.super Ljava/lang/Object;
.source "KeyguardSPassPasswordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 174
    return-void
.end method

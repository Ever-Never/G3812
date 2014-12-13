.class Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView$1;
.super Ljava/lang/Object;
.source "KeyguardUltimateStandbyView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView;->mCurrentSecurity:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUltimateStandbyView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

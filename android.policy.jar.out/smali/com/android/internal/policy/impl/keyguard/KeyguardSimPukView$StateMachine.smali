.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field private state:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PUK:I

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PIN:I

    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->CONFIRM_PIN:I

    .line 99
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->DONE:I

    .line 100
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, msg:I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-nez v1, :cond_3

    .line 105
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->checkPuk()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 107
    const v0, #android:string@kg_puk_enter_pin_hint#t

    .line 129
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    if-eqz v0, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 133
    :cond_1
    return-void

    .line 109
    :cond_2
    const v0, #android:string@kg_invalid_sim_puk_hint#t

    goto :goto_0

    .line 111
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_5

    .line 112
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->checkPin()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 114
    const v0, #android:string@kg_enter_confirm_pin_hint#t

    goto :goto_0

    .line 116
    :cond_4
    const v0, #android:string@kg_invalid_sim_pin_hint#t

    goto :goto_0

    .line 118
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 120
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 121
    const v0, #android:string@lockscreen_sim_unlock_progress_dialog_message#t

    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->updateSim()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V

    goto :goto_0

    .line 125
    :cond_6
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 126
    const v0, #android:string@kg_invalid_confirm_pin_hint#t

    goto :goto_0
.end method

.method reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const-string v1, ""

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$402(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const-string v1, ""

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, #android:string@kg_invalid_puk#t

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Z)Z

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 149
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->isWrongPUKCrash:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, #android:string@cardCrash#t

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->isWrongPUKCrash:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Z)Z

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, #android:string@kg_puk_enter_puk_hint#t

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

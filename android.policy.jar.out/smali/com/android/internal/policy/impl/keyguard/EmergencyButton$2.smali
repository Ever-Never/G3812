.class Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;
.super Ljava/lang/Object;
.source "EmergencyButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 113
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isEmergencyCallListEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->takeEmergencyCallList()V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->takeEmergencyCallAction()V

    goto :goto_0
.end method

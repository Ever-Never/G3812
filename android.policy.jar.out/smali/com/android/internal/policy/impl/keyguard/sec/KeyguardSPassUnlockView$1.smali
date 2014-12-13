.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$1;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.class public final Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SamsungPolicyGestureInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 1931
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1932
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 1936
    const/4 v1, 0x0

    .line 1938
    .local v1, handled:Z
    :try_start_0
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_3

    .line 1939
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportGestureWithIRSensor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1940
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTspInputEventObserver:Lcom/samsung/android/service/gesture/TspInputEventObserver;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Lcom/samsung/android/service/gesture/TspInputEventObserver;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/service/gesture/TspInputEventObserver;->onInputEvent(Landroid/view/InputEvent;)V

    .line 1943
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportEasyOneHand()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasyOneHandEnabled:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1944
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasyOneHandGestureController:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1945
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    new-instance v4, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasyOneHandGestureController:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$402(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    .line 1948
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 1949
    .local v2, rawEvent:Landroid/view/MotionEvent;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 1950
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasyOneHandGestureController:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;->onInputPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1954
    .end local v2           #rawEvent:Landroid/view/MotionEvent;
    :cond_2
    const/4 v1, 0x1

    .line 1957
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1959
    return-void

    .line 1957
    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v3
.end method

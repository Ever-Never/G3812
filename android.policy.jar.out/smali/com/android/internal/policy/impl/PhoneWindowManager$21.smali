.class Lcom/android/internal/policy/impl/PhoneWindowManager$21;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 6331
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6333
    const-string v2, "WindowManager"

    const-string v3, "ACTION_USBHID_MOUSE_EVENT Received..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6334
    const-string v2, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6335
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v3, "android.intent.extra.device_state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    .line 6337
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_USBHID_MOUSE_EVENT Received.status  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6338
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    if-ne v6, v2, :cond_3

    .line 6339
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v6, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 6340
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 6342
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    .line 6343
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 6344
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_2

    .line 6346
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v2, :cond_1

    .line 6347
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$21;)V

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 6357
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6380
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 6381
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6383
    return-void

    .line 6358
    :catch_0
    move-exception v0

    .line 6359
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "WindowManager"

    const-string v3, "Phone window manager doesn\'t have the permssion READ_PHONE_STATE. please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6364
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v5, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 6365
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 6366
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_2

    .line 6367
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 6372
    :cond_4
    :try_start_1
    const-string v2, "uimode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v1

    .line 6374
    .local v1, uiModeService:Landroid/app/IUiModeManager;
    if-eqz v1, :cond_2

    .line 6375
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v3

    iput v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6377
    .end local v1           #uiModeService:Landroid/app/IUiModeManager;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

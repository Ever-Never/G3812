.class public Lcom/android/internal/policy/impl/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final ACTION_EMERGENCY_LIST:Ljava/lang/String; = "com.android.phone.EmergencyDialer.LIST"

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "EmergencyButton"


# instance fields
.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntryView:Landroid/widget/TextView;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;-><init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/widget/TextView;

    .line 89
    return-void
.end method

.method private VoIPIsInUse()Z
    .locals 6

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, bVoIP_InUse:Z
    :try_start_0
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 276
    .local v2, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    .line 277
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 281
    .end local v2           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_0
    :goto_0
    const-string v3, "EmergencyButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bVoIP_InUse = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "EmergencyButton"

    const-string v4, "VoIPIsInUse() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private callToEmergencyLine(Ljava/lang/String;)V
    .locals 3
    .parameter "emergencyNumber"

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method private updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 12
    .parameter "simState"
    .parameter "phoneState"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x2

    .line 220
    const/4 v3, 0x0

    .line 221
    .local v3, enabled:Z
    move v2, p2

    .line 223
    .local v2, DefaultPhoneState:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v0

    if-ne v0, v11, :cond_1

    .line 224
    invoke-static {}, Landroid/telephony/TelephonyManager;->getFirst()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eq v0, v11, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-ne v0, v11, :cond_1

    .line 226
    :cond_0
    const-string v0, "EmergencyButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEmergencyCallButton First: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getFirst()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Secondary: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v2, 0x2

    .line 230
    :cond_1
    const-string v0, "EmergencyButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEmergencyCallButton DefaultPhoneState : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " phoneState : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-ne v2, v11, :cond_5

    .line 233
    const/4 v3, 0x1

    .line 245
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isEmergencyCallListEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v7

    .line 247
    .local v7, failedAttempts:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v10

    .line 248
    .local v10, simLocked:Z
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v8

    .line 249
    .local v8, fmmlock:Z
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled()Z

    move-result v6

    .line 250
    .local v6, carrierlock:Z
    if-nez v6, :cond_3

    if-eqz v8, :cond_8

    .line 251
    :cond_3
    const/4 v3, 0x1

    .line 262
    .end local v6           #carrierlock:Z
    .end local v7           #failedAttempts:I
    .end local v8           #fmmlock:Z
    .end local v10           #simLocked:Z
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZZZ)V

    .line 264
    return-void

    .line 234
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v10

    .line 236
    .restart local v10       #simLocked:Z
    if-eqz v10, :cond_6

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v3

    goto :goto_0

    .line 242
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v0, :cond_7

    const/4 v3, 0x1

    :goto_2
    goto :goto_0

    :cond_7
    move v3, v5

    goto :goto_2

    .line 252
    .restart local v6       #carrierlock:Z
    .restart local v7       #failedAttempts:I
    .restart local v8       #fmmlock:Z
    :cond_8
    if-nez v10, :cond_4

    if-eq v2, v11, :cond_4

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v9

    .line 254
    .local v9, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v9, v0, :cond_9

    const/4 v0, 0x5

    if-lt v7, v0, :cond_9

    .line 256
    const/4 v3, 0x1

    goto :goto_1

    .line 258
    :cond_9
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 95
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 101
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 105
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 106
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 107
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 108
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isEmergencyCallListEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 111
    :cond_0
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;-><init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 122
    .local v0, phoneState:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    const-string v2, "EmergencyButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takeEmergencyCallAction First: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getFirst()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Secondary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Landroid/telephony/TelephonyManager;->getFirst()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eq v2, v5, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 126
    :cond_1
    const/4 v0, 0x2

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 131
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 132
    return-void
.end method

.method public setPasswordEntryView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "passwordEntryView"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/widget/TextView;

    .line 269
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 142
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 144
    .local v1, phoneState:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    const-string v2, "EmergencyButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takeEmergencyCallAction First: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getFirst()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Secondary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Landroid/telephony/TelephonyManager;->getFirst()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 148
    :cond_0
    const/4 v1, 0x2

    .line 152
    :cond_1
    if-ne v1, v6, :cond_2

    .line 153
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 173
    :goto_0
    return-void

    .line 155
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->VoIPIsInUse()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeVoIPCall()V

    goto :goto_0

    .line 160
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 161
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, emergencyNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->callToEmergencyLine(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->launchEmergencyDialer()V

    goto :goto_0

    .line 170
    .end local v0           #emergencyNumber:Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method public takeEmergencyCallList()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 196
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 197
    .local v1, phoneState:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 198
    const-string v2, "EmergencyButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takeEmergencyCallAction First: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getFirst()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Secondary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Landroid/telephony/TelephonyManager;->getFirst()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 201
    :cond_0
    const/4 v1, 0x2

    .line 205
    :cond_1
    if-ne v1, v6, :cond_2

    .line 206
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 217
    :goto_0
    return-void

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->VoIPIsInUse()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeVoIPCall()V

    goto :goto_0

    .line 212
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.LIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

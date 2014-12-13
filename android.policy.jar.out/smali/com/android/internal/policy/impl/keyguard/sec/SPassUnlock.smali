.class public Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;
.super Ljava/lang/Object;
.source "SPassUnlock.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
.implements Landroid/os/Handler$Callback;
.implements Ljava/util/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;
    }
.end annotation


# static fields
.field private static final ACTION_LAUNCH_SHORTCUT:Ljava/lang/String; = "com.samsung.android.secretmode.action.LAUNCH_SHORTCUT"

.field private static final CONTACT_NUMBER_SEPERATOR:C = ','

.field private static final DEBUG:Z = true

.field private static final PACKAGE_CLASS_SEPERATOR:C = '/'

.field private static final PERM_NAME_APP:Ljava/lang/String; = "com.android.settings.permission.shortcut_app"

.field private static final PERM_NAME_BOOKMARK:Ljava/lang/String; = "com.android.settings.permission.shortcut_bookmark"

.field private static final PERM_NAME_CONTACT:Ljava/lang/String; = "com.android.settings.permission.shortcut_contact"

.field private static final PERM_NAME_DRIVINGMODE:Ljava/lang/String; = "com.android.settings.permission.shortcut_drivingmode"

.field private static final PERM_NAME_KIDSMODE:Ljava/lang/String; = "com.android.settings.permission.shortcut_kidsmode"

.field private static final SECRET_FS_KEY:Ljava/lang/String; = "secret_fs_key"

.field private static final SHORTCUT_LAUNCHER_COMPONENT:Landroid/content/ComponentName; = null

.field private static final SHORTCUT_SEPERATOR:C = ';'

.field private static final TAG:Ljava/lang/String; = "SPassUnlock"

.field private static mStatusText:Landroid/widget/TextView;

.field private static mUnlockImg:Landroid/widget/ImageView;


# instance fields
.field private final MSG_CANCEL:I

.field private final MSG_IDENTIFY:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_READY:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_SCANNING_CANCEL:I

.field private final MSG_UNLOCK:I

.field private final SCREEN_TIMEOUT:I

.field private ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

.field private aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private bRegisterClient:Z

.field private final mContext:Landroid/content/Context;

.field private mErrorText:Ljava/lang/String;

.field private mExpiredTime:J

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mImageQuality:I

.field private mIsFinishedIdentify:Z

.field private mIsFinishedScanning:Z

.field private volatile mIsRunning:Z

.field private mIsSucceed:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mPowerManager:Landroid/os/PowerManager;

.field private mSPassUnlockView:Landroid/view/View;

.field private mShortcutIntent:Landroid/content/Intent;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.secretmode.service"

    const-string v2, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->SHORTCUT_LAUNCHER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 56
    const/16 v0, 0x458

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->MSG_UNLOCK:I

    .line 57
    const/16 v0, 0x459

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->MSG_CANCEL:I

    .line 58
    const/16 v0, 0x45a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->MSG_REPORT_FAILED_ATTEMPT:I

    .line 59
    const/16 v0, 0x45b

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->MSG_POKE_WAKELOCK:I

    .line 60
    const/16 v0, 0x45c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->MSG_READY:I

    .line 61
    const/16 v0, 0x45d

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->MSG_SCANNING_CANCEL:I

    .line 62
    const/16 v0, 0x45e

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->MSG_IDENTIFY:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsRunning:Z

    .line 88
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->SCREEN_TIMEOUT:I

    .line 99
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 172
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    .line 173
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedScanning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedIdentify:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsSucceed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startSucceedAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startIdentify()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startStandbyAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private pokeWakelock()V
    .locals 3

    .prologue
    .line 459
    const-string v1, "SPassUnlock"

    const-string v2, "pokeWakelock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x45b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 461
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 462
    return-void
.end method

.method private registerClient()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 439
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 440
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v3, :cond_0

    .line 448
    :goto_0
    return v2

    .line 444
    :cond_0
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v3, "system"

    invoke-direct {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, builder:Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->demandExtraEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 446
    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->useManualTimeout(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 447
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    .line 448
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private setErrorCaseText(I)V
    .locals 3
    .parameter "quality"

    .prologue
    .line 563
    sparse-switch p1, :sswitch_data_0

    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, #android:string@recognize_fail#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    .line 599
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v2, #android:string@please_try_again#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    .line 601
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    return-void

    .line 565
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, #android:string@spass_image_quality_too_fast#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto :goto_0

    .line 568
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, #android:string@spass_image_quality_too_short#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto :goto_0

    .line 571
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, #android:string@spass_image_quality_too_slow#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto :goto_0

    .line 574
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, #android:string@spass_image_quality_skew_too_large#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto :goto_0

    .line 577
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, #android:string@spass_image_quality_pressure_too_light#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto :goto_0

    .line 580
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, #android:string@spass_image_quality_finger_offset_too_far_left#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto/16 :goto_0

    .line 583
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, #android:string@spass_image_quality_pressure_too_hard#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto/16 :goto_0

    .line 586
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, #android:string@spass_image_quality_wet_finger#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto/16 :goto_0

    .line 589
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, #android:string@spass_image_quality_finger_too_thin#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto/16 :goto_0

    .line 592
    :sswitch_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, #android:string@spass_image_quality_stiction#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto/16 :goto_0

    .line 563
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1000 -> :sswitch_5
        0x8000 -> :sswitch_3
        0x10000 -> :sswitch_4
        0x80000 -> :sswitch_6
        0x1000000 -> :sswitch_7
        0x2000000 -> :sswitch_8
    .end sparse-switch
.end method

.method private startFailedAnimation()V
    .locals 3

    .prologue
    .line 493
    const-string v1, "SPassUnlock"

    const-string v2, "startFailedAnimation()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->stop()V

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 499
    .local v0, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    const v2, #android:anim@spass_failed#t

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 500
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 501
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$3;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    .line 512
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->start()V

    .line 513
    return-void
.end method

.method private startIdentify()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 219
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->bRegisterClient:Z

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v3

    .line 222
    :cond_1
    const-string v0, "SPassUnlock"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->registerClient()Z

    .line 224
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->bRegisterClient:Z

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "SPassUnlock"

    const-string v1, "identify request failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startScanningAnimation()V
    .locals 3

    .prologue
    .line 465
    const-string v0, "SPassUnlock"

    const-string v1, "startScanningAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->stop()V

    .line 470
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v2, #android:string@scanning#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    const v1, #android:anim@spass_unlock#t

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 472
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 473
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$2;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->start()V

    .line 490
    return-void
.end method

.method private startShortcut(ILjava/lang/String;)V
    .locals 3
    .parameter "fingerIndex"
    .parameter "permissionName"

    .prologue
    .line 554
    const-string v0, "SPassUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startShortcut() : fingerIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permissionName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.secretmode.action.LAUNCH_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->SHORTCUT_LAUNCHER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    const-string v1, "commandName"

    const-string v2, "fingerprintShortcut"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    const-string v1, "permissionName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    const-string v1, "fingerIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 560
    return-void
.end method

.method private startStandbyAnimation()V
    .locals 2

    .prologue
    .line 538
    const-string v0, "SPassUnlock"

    const-string v1, "startStandbyAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->stop()V

    .line 542
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    const v1, #android:anim@spass_standby#t

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 543
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 544
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$5;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$5;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->start()V

    .line 551
    return-void
.end method

.method private startSucceedAnimation()V
    .locals 3

    .prologue
    .line 516
    const-string v0, "SPassUnlock"

    const-string v1, "startSucceedAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->stop()V

    .line 521
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    const v1, #android:anim@spass_succeed#t

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 522
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v2, #android:string@succeed#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 524
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$4;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->start()V

    .line 535
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "SPassUnlock"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->stop()Z

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    .line 267
    return-void
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 273
    const/high16 v0, 0x8

    return v0
.end method

.method handleCancel()V
    .locals 3

    .prologue
    .line 411
    const-string v0, "SPassUnlock"

    const-string v1, "handleCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 417
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12
    .parameter "msg"

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0x45d

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 282
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 284
    .local v1, event:Lcom/samsung/android/fingerprint/FingerprintEvent;
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 391
    const-string v7, "SPassUnlock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled message = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    return v6

    .line 286
    :sswitch_0
    const-string v6, "SPassUnlock"

    const-string v8, "handleMessage : MSG_UNLOCK"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->handleUnlock()V

    :cond_0
    :goto_1
    move v6, v7

    .line 395
    goto :goto_0

    .line 290
    :sswitch_1
    const-string v6, "SPassUnlock"

    const-string v8, "handleMessage : MSG_CANCEL"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->handleCancel()V

    goto :goto_1

    .line 294
    :sswitch_2
    const-string v6, "SPassUnlock"

    const-string v8, "handleMessage : MSG_REPORT_FAILED_ATTEMPT"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->handleReportFailedAttempt()V

    goto :goto_1

    .line 298
    :sswitch_3
    const-string v6, "SPassUnlock"

    const-string v8, "handleMessage : MSG_POKE_WAKELOCK"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->handlePokeWakelock()V

    goto :goto_1

    .line 303
    :sswitch_4
    const-string v8, "SPassUnlock"

    const-string v9, "handleMessage : EVENT_IDENTIFY_STARTED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    .line 305
    iget-wide v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mExpiredTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-lez v6, :cond_1

    .line 306
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->pokeWakelock()V

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startScanningAnimation()V

    goto :goto_1

    .line 313
    :sswitch_5
    const-string v6, "SPassUnlock"

    const-string v8, "handleMessage : EVENT_FINGER_REMOVED"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x7d0

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 319
    :sswitch_6
    const-string v8, "SPassUnlock"

    const-string v9, "handleMessage : EVENT_IDENTIFY_READY"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedScanning:Z

    .line 321
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedIdentify:Z

    goto :goto_1

    .line 325
    :sswitch_7
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    .line 327
    iget v8, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v8, :cond_6

    .line 328
    const-string v8, "SPassUnlock"

    const-string v9, "handleMessage : RESULT_SUCCESS"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->stopIdentify()Z

    .line 330
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_fingerprint_shortcut"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    move v0, v7

    .line 331
    .local v0, bEnableShorcut:Z
    :goto_2
    if-eqz v0, :cond_5

    .line 332
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getGrantedPermissions()Ljava/util/List;

    move-result-object v5

    .line 333
    .local v5, perms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 334
    .local v4, permName:Ljava/lang/String;
    const-string v6, "com.android.settings.permission.shortcut_app"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.android.settings.permission.shortcut_app"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.android.settings.permission.shortcut_contact"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.android.settings.permission.shortcut_bookmark"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.android.settings.permission.shortcut_kidsmode"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.android.settings.permission.shortcut_drivingmode"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 340
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getFingerIndex()I

    move-result v2

    .line 341
    .local v2, fingerIndex:I
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startShortcut(ILjava/lang/String;)V

    goto :goto_3

    .end local v0           #bEnableShorcut:Z
    .end local v2           #fingerIndex:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #permName:Ljava/lang/String;
    .end local v5           #perms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move v0, v6

    .line 330
    goto :goto_2

    .line 345
    .restart local v0       #bEnableShorcut:Z
    :cond_5
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedIdentify:Z

    .line 346
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsSucceed:Z

    .line 347
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedScanning:Z

    if-eqz v6, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startSucceedAnimation()V

    goto/16 :goto_1

    .line 350
    .end local v0           #bEnableShorcut:Z
    :cond_6
    iget v8, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->stopIdentify()Z

    .line 352
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedIdentify:Z

    .line 353
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsSucceed:Z

    .line 354
    iget v8, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_7

    .line 355
    const-string v6, "SPassUnlock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage : RESULT_FAILED eventStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 356
    :cond_7
    iget v8, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v8, v10, :cond_8

    .line 357
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    .line 358
    const-string v6, "SPassUnlock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage : RESULT_FAILED eventStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " quality = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->setErrorCaseText(I)V

    .line 360
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedScanning:Z

    if-eqz v6, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    goto/16 :goto_1

    .line 364
    :cond_8
    const-string v8, "SPassUnlock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage : RESULT_FAILED eventStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->setErrorCaseText(I)V

    .line 366
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedScanning:Z

    if-eqz v6, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    goto/16 :goto_1

    .line 374
    :sswitch_8
    const-string v6, "SPassUnlock"

    const-string v8, "handleMessage : EVENT_IDENTIFY_STATUS"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget v6, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v6, v10, :cond_0

    .line 376
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    .line 377
    const-string v6, "SPassUnlock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "quality = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 382
    :sswitch_9
    const-string v8, "SPassUnlock"

    const-string v9, "handleMessage : MSG_SCANNING_CANCEL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->stopIdentify()Z

    .line 384
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedIdentify:Z

    .line 385
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsSucceed:Z

    .line 386
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->setErrorCaseText(I)V

    .line 387
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    goto/16 :goto_1

    .line 284
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xc -> :sswitch_4
        0xd -> :sswitch_7
        0xe -> :sswitch_8
        0x3f3 -> :sswitch_5
        0x458 -> :sswitch_0
        0x459 -> :sswitch_1
        0x45a -> :sswitch_2
        0x45b -> :sswitch_3
        0x45d -> :sswitch_9
    .end sparse-switch
.end method

.method handlePokeWakelock()V
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 436
    :cond_0
    return-void
.end method

.method handleReportFailedAttempt()V
    .locals 2

    .prologue
    .line 423
    const-string v0, "SPassUnlock"

    const-string v1, "handleReportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 426
    return-void
.end method

.method handleUnlock()V
    .locals 2

    .prologue
    .line 402
    const-string v0, "SPassUnlock"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 405
    return-void
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2
    .parameter "biometricUnlockView"

    .prologue
    .line 182
    const-string v0, "SPassUnlock"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mSPassUnlockView:Landroid/view/View;

    .line 184
    return-void
.end method

.method public initializeViews(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "status"
    .parameter "unlock"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mPowerManager:Landroid/os/PowerManager;

    .line 188
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    sput-object p1, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    .line 189
    check-cast p2, Landroid/widget/ImageView;

    .end local p2
    sput-object p2, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    .line 190
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsRunning:Z

    return v0
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "keyguardScreenCallback"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 179
    return-void
.end method

.method public start()Z
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mExpiredTime:J

    .line 213
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startStandbyAnimation()V

    .line 214
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v2, #android:string@kg_spass_swipe_unlock#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startIdentify()Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->stop()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x45d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->stopIdentify()Z

    move-result v0

    return v0
.end method

.method public stopAndShowBackup()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "SPassUnlock"

    const-string v1, "stopAndShowBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x459

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    return-void
.end method

.method public stopIdentify()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 249
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->bRegisterClient:Z

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return v2

    .line 252
    :cond_0
    const-string v0, "SPassUnlock"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->unregisterClient()V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->bRegisterClient:Z

    goto :goto_0
.end method

.method public unregisterClient()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    .line 456
    :cond_0
    return-void
.end method

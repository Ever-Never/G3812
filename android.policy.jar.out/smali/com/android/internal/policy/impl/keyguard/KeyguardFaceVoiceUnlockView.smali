.class public Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardFaceVoiceUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FULKeyguardFaceUnlockView"


# instance fields
.field private final MSG_HIDE_VOICE_LAYOUT:I

.field private final MSG_SHOW_VOICE_LAYOUT:I

.field private final MSG_SHOW_VOICE_LAYOUT_ERROR_MSG:I

.field private final MSG_SHOW_VOICE_LAYOUT_RECOGNITION_MSG:I

.field private final MSG_SHOW_VOICE_LAYOUT_SUCCESS_MSG:I

.field private final MSG_VOICE_LAYOUT_VOLUME_UPDATE:I

.field private mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyCircleText:Landroid/widget/TextView;

.field private mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

.field private mErrorShowed:Z

.field private mFaceUnlockAreaView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsShowing:Z

.field private final mIsShowingLock:Ljava/lang/Object;

.field private mKeyguardSecurityCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMainView:Landroid/widget/RelativeLayout;

.field private mMsg:Landroid/widget/TextView;

.field private mMsg2:Landroid/widget/TextView;

.field private mResId:I

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mStatusImg:Landroid/widget/ImageView;

.field mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

.field private mVolumeImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    .line 64
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mResId:I

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mErrorShowed:Z

    .line 69
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->MSG_SHOW_VOICE_LAYOUT:I

    .line 70
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->MSG_SHOW_VOICE_LAYOUT_RECOGNITION_MSG:I

    .line 71
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->MSG_SHOW_VOICE_LAYOUT_ERROR_MSG:I

    .line 72
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->MSG_SHOW_VOICE_LAYOUT_SUCCESS_MSG:I

    .line 73
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->MSG_HIDE_VOICE_LAYOUT:I

    .line 74
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->MSG_VOICE_LAYOUT_VOLUME_UPDATE:I

    .line 213
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    .line 426
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayPrepareMsg()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayRecognitionMsg(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->maybeStartBiometricUnlock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsgDelayed(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsg()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifySuccessMsg()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->hideVoiceLayout()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    return-object v0
.end method

.method private displayPrepareMsg()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "displayPrepareMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    return-void
.end method

.method private displayRecognitionMsg(J)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 144
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "displayRecognitionMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 148
    return-void
.end method

.method private displayVerifyFailMsg()V
    .locals 4

    .prologue
    .line 162
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "displayVerifyFailMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 168
    return-void
.end method

.method private displayVerifyFailMsgDelayed(J)V
    .locals 3
    .parameter "timeoutMillis"

    .prologue
    .line 152
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayVerifyFailMsgDelayed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 158
    return-void
.end method

.method private displayVerifySuccessMsg()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "displayVerifySuccessMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    return-void
.end method

.method private hideVoiceLayout()V
    .locals 2

    .prologue
    .line 181
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "hideVoiceLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    return-void
.end method

.method private initializeBiometricUnlockView()V
    .locals 3

    .prologue
    .line 369
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "initializeBiometricUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const v0, #android:id@face_unlock_area_view#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    .line 374
    const v0, #android:id@face_unlock_cancel_button#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "Couldn\'t find biometric unlock view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private maybeStartBiometricUnlock()V
    .locals 6

    .prologue
    .line 392
    const-string v4, "FULKeyguardFaceUnlockView"

    const-string v5, "maybeStartBiometricUnlock()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    if-eqz v4, :cond_1

    .line 394
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 395
    .local v2, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    const/4 v0, 0x1

    .line 398
    .local v0, backupIsTimedOut:Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 402
    .local v3, powerManager:Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    monitor-enter v5

    .line 403
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    .line 404
    .local v1, isShowing:Z
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_3

    .line 410
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 424
    .end local v0           #backupIsTimedOut:Z
    .end local v1           #isShowing:Z
    .end local v2           #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .end local v3           #powerManager:Landroid/os/PowerManager;
    :cond_1
    :goto_1
    return-void

    .line 395
    .restart local v2       #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 404
    .restart local v0       #backupIsTimedOut:Z
    .restart local v3       #powerManager:Landroid/os/PowerManager;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 416
    .restart local v1       #isShowing:Z
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    .line 419
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->start()Z

    goto :goto_1

    .line 421
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    goto :goto_1
.end method

.method private removeWakeupCmdDisplayMessages()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 589
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mKeyguardSecurityCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 96
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 119
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Unhandled message"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return v0

    .line 98
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->setPrepareMsg()V

    .line 122
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 106
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->setRecognitionMsg()V

    .line 107
    const-wide/16 v0, 0x1770

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsgDelayed(J)V

    goto :goto_1

    .line 110
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->setErrorMsg()V

    goto :goto_1

    .line 113
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->setSuccessMsg()V

    goto :goto_1

    .line 116
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->updateVolumeBg(I)V

    goto :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public hideBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 495
    return-void
.end method

.method public isErrorShowed()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mErrorShowed:Z

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 327
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->cleanUp()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 333
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 258
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 259
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 262
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->initializeBiometricUnlockView()V

    .line 264
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 265
    const v1, #android:id@keyguard_selector_fade_container#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEcaView:Landroid/view/View;

    .line 266
    const v1, #android:id@keyguard_bouncer_frame#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 267
    .local v0, bouncerFrameView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 271
    :cond_0
    const v1, #android:id@voiceunlock_main#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    .line 272
    const v1, #android:id@voiceunlock_msg#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    .line 273
    const v1, #android:id@voiceunlock_msg2#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    .line 274
    const v1, #android:id@voiceunlock_icon#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    .line 275
    const v1, #android:id@voiceunlock_level#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    .line 278
    const v1, #android:id@keyguard_frame_root#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 281
    const v1, #android:id@emergency_call_text#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    .line 282
    const v1, #android:id@emergency_call_button#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 284
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    .line 285
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 286
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    :cond_1
    :goto_1
    return-void

    .line 259
    .end local v0           #bouncerFrameView:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    .line 294
    .restart local v0       #bouncerFrameView:Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 364
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->initializeView(Landroid/view/View;)V

    .line 366
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 337
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 342
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 346
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    .line 348
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->maybeStartBiometricUnlock()V

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 350
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 317
    .local v0, phoneState:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 323
    .end local v0           #phoneState:I
    :cond_0
    return-void
.end method

.method public setErrorMsg()V
    .locals 2

    .prologue
    .line 514
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "setErrorMsg() mErrorShowed=true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mErrorShowed:Z

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, #android:string@lockscreen_voiceunlock_failed_to_recognise_voice_text#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, #android:drawable@keyguard_lockscreen_ic_voice_fail#t

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 520
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mKeyguardSecurityCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 304
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 309
    return-void
.end method

.method public setPrepareMsg()V
    .locals 2

    .prologue
    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mErrorShowed:Z

    .line 499
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, #android:string@lockscreen_voiceunlock_guide_text#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, #android:string@lockscreen_voiceunlock_recognising_text#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 503
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, #android:drawable@keyguard_lockscreen_ic_voice#t

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 505
    return-void
.end method

.method public setRecognitionMsg()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, #android:string@lockscreen_voiceunlock_guide_text#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 509
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 510
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, #android:drawable@keyguard_lockscreen_ic_voice#t

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    return-void
.end method

.method public setSuccessMsg()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, #android:string@lockscreen_voiceunlock_verification_completed_text#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 524
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 525
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, #android:drawable@keyguard_lockscreen_ic_voice_check#t

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 526
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 489
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public updateVolume(I)V
    .locals 4
    .parameter "volume"

    .prologue
    .line 190
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "updateVolume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 192
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    return-void
.end method

.method public updateVolumeBg(I)V
    .locals 4
    .parameter "rmsValue"

    .prologue
    .line 529
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mResId:I

    if-eq v1, p1, :cond_0

    .line 530
    const-string v1, "FULKeyguardFaceUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVolumeBg("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, img:I
    const/16 v1, 0x1c

    if-ge p1, v1, :cond_1

    .line 535
    const v0, #android:drawable@keyguard_lockscreen_voice_level0#t

    .line 578
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 579
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 581
    .end local v0           #img:I
    :cond_0
    return-void

    .line 536
    .restart local v0       #img:I
    :cond_1
    const/16 v1, 0x1f

    if-ge p1, v1, :cond_2

    .line 537
    const v0, #android:drawable@keyguard_lockscreen_voice_level1#t

    goto :goto_0

    .line 538
    :cond_2
    const/16 v1, 0x22

    if-ge p1, v1, :cond_3

    .line 539
    const v0, #android:drawable@keyguard_lockscreen_voice_level2#t

    goto :goto_0

    .line 540
    :cond_3
    const/16 v1, 0x25

    if-ge p1, v1, :cond_4

    .line 541
    const v0, #android:drawable@keyguard_lockscreen_voice_level3#t

    goto :goto_0

    .line 542
    :cond_4
    const/16 v1, 0x28

    if-ge p1, v1, :cond_5

    .line 543
    const v0, #android:drawable@keyguard_lockscreen_voice_level4#t

    goto :goto_0

    .line 544
    :cond_5
    const/16 v1, 0x2b

    if-ge p1, v1, :cond_6

    .line 545
    const v0, #android:drawable@keyguard_lockscreen_voice_level5#t

    goto :goto_0

    .line 546
    :cond_6
    const/16 v1, 0x2e

    if-ge p1, v1, :cond_7

    .line 547
    const v0, #android:drawable@keyguard_lockscreen_voice_level6#t

    goto :goto_0

    .line 548
    :cond_7
    const/16 v1, 0x31

    if-ge p1, v1, :cond_8

    .line 549
    const v0, #android:drawable@keyguard_lockscreen_voice_level7#t

    goto :goto_0

    .line 550
    :cond_8
    const/16 v1, 0x34

    if-ge p1, v1, :cond_9

    .line 551
    const v0, #android:drawable@keyguard_lockscreen_voice_level8#t

    goto :goto_0

    .line 552
    :cond_9
    const/16 v1, 0x37

    if-ge p1, v1, :cond_a

    .line 553
    const v0, #android:drawable@keyguard_lockscreen_voice_level9#t

    goto :goto_0

    .line 554
    :cond_a
    const/16 v1, 0x3a

    if-ge p1, v1, :cond_b

    .line 555
    const v0, #android:drawable@keyguard_lockscreen_voice_level10#t

    goto :goto_0

    .line 556
    :cond_b
    const/16 v1, 0x3d

    if-ge p1, v1, :cond_c

    .line 557
    const v0, #android:drawable@keyguard_lockscreen_voice_level11#t

    goto :goto_0

    .line 558
    :cond_c
    const/16 v1, 0x40

    if-ge p1, v1, :cond_d

    .line 559
    const v0, #android:drawable@keyguard_lockscreen_voice_level12#t

    goto :goto_0

    .line 560
    :cond_d
    const/16 v1, 0x43

    if-ge p1, v1, :cond_e

    .line 561
    const v0, #android:drawable@keyguard_lockscreen_voice_level13#t

    goto :goto_0

    .line 562
    :cond_e
    const/16 v1, 0x46

    if-ge p1, v1, :cond_f

    .line 563
    const v0, #android:drawable@keyguard_lockscreen_voice_level14#t

    goto :goto_0

    .line 564
    :cond_f
    const/16 v1, 0x49

    if-ge p1, v1, :cond_10

    .line 565
    const v0, #android:drawable@keyguard_lockscreen_voice_level15#t

    goto/16 :goto_0

    .line 566
    :cond_10
    const/16 v1, 0x4c

    if-ge p1, v1, :cond_11

    .line 567
    const v0, #android:drawable@keyguard_lockscreen_voice_level16#t

    goto/16 :goto_0

    .line 568
    :cond_11
    const/16 v1, 0x4f

    if-ge p1, v1, :cond_12

    .line 569
    const v0, #android:drawable@keyguard_lockscreen_voice_level17#t

    goto/16 :goto_0

    .line 570
    :cond_12
    const/16 v1, 0x52

    if-ge p1, v1, :cond_13

    .line 571
    const v0, #android:drawable@keyguard_lockscreen_voice_level18#t

    goto/16 :goto_0

    .line 572
    :cond_13
    const/16 v1, 0x55

    if-ge p1, v1, :cond_14

    .line 573
    const v0, #android:drawable@keyguard_lockscreen_voice_level19#t

    goto/16 :goto_0

    .line 575
    :cond_14
    const v0, #android:drawable@keyguard_lockscreen_voice_level20#t

    goto/16 :goto_0
.end method

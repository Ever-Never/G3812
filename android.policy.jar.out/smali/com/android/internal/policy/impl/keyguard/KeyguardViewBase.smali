.class public abstract Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"


# static fields
.field private static final BACKGROUND_COLOR:I = 0x0

.field private static final KEYGUARD_MANAGES_VOLUME:Z = true

.field private static final SCANCODE_ZOOM_RING_IN:I = 0x225

.field private static final SCANCODE_ZOOM_RING_OUT:I = 0x226

.field private static final mBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->resetBackground()V

    .line 90
    return-void
.end method

.method private interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/16 v8, 0xa8

    const/16 v7, 0x18

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 167
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 168
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_c

    .line 169
    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    move v4, v2

    .line 254
    :cond_1
    :goto_1
    return v4

    .line 175
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_1

    .line 191
    :cond_3
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 197
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    .line 198
    .local v1, scanCode:I
    const/16 v5, 0x225

    if-eq v1, v5, :cond_4

    const/16 v5, 0x226

    if-ne v1, v5, :cond_5

    :cond_4
    move v4, v2

    goto :goto_1

    .line 206
    .end local v1           #scanCode:I
    :cond_5
    :sswitch_3
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_6

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "audio"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 211
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 215
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    if-eq v0, v7, :cond_7

    const/16 v2, 0xf2

    if-eq v0, v2, :cond_7

    if-ne v0, v8, :cond_8

    :cond_7
    move v2, v4

    :goto_2
    invoke-virtual {v5, v6, v2}, Landroid/media/AudioManager;->adjustLocalOrRemoteStreamVolume(II)V

    goto :goto_1

    .line 211
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_8
    move v2, v3

    .line 215
    goto :goto_2

    .line 221
    :cond_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/16 v5, 0xa

    if-eq v0, v7, :cond_a

    const/16 v6, 0xf2

    if-eq v0, v6, :cond_a

    if-ne v0, v8, :cond_b

    :cond_a
    move v3, v4

    :cond_b
    invoke-virtual {v2, v5, v3}, Landroid/media/AudioManager;->adjustLocalOrRemoteStreamVolume(II)V

    goto :goto_1

    .line 236
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 237
    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    .line 249
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_1

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x4f -> :sswitch_1
        0x55 -> :sswitch_0
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_3
        0xa8 -> :sswitch_2
        0xa9 -> :sswitch_2
        0xf1 -> :sswitch_3
        0xf2 -> :sswitch_3
    .end sparse-switch

    .line 237
    :sswitch_data_1
    .sparse-switch
        0x4f -> :sswitch_4
        0x55 -> :sswitch_4
        0x56 -> :sswitch_4
        0x57 -> :sswitch_4
        0x58 -> :sswitch_4
        0x59 -> :sswitch_4
        0x5a -> :sswitch_4
        0x5b -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x82 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 276
    const/high16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->setSystemUiVisibility(I)V

    .line 278
    :cond_0
    return-void
.end method

.method public abstract getUserActivityTimeout()J
.end method

.method handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "keyEvent"

    .prologue
    .line 258
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 260
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "KeyguardViewBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardViewBase"

    const-string v3, "Unable to find IAudioService for media key event"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract reset()V
.end method

.method public resetBackground()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V
    .locals 0
    .parameter "viewMediatorCallback"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 283
    return-void
.end method

.method public abstract show()V
.end method

.method public abstract verifyUnlock()V
.end method

.method public abstract wakeWhenReadyTq(I)V
.end method

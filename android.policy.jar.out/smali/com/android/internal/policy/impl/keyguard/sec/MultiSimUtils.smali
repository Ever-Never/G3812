.class public Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;
.super Ljava/lang/Object;
.source "MultiSimUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DUALSIMSLOT:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "MultiSimUtils"

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String; = null

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String; = null

.field private static final PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH:[Ljava/lang/String; = null

.field private static final PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH_DATABASE:[Ljava/lang/String; = null

.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field public static final SIMSLOT3:I = 0x2

.field public static final SIMSLOT4:I = 0x3

.field public static final SIMSLOT5:I = 0x4

.field public static final UNKNOWN:I = -0x1

.field private static mCurrentPukLockSlot:I

.field private static mCurrnetPinLockSlot:I

.field private static mDsdsService:Lcom/android/plugin/dsds/PlugInDsdsService;

.field private static mOldCurrentVoiceCall:I

.field private static mPINPUKRequest:Z

.field private static mPINPUKSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 49
    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 52
    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    .line 56
    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    .line 61
    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mOldCurrentVoiceCall:I

    .line 63
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    aput-object v1, v0, v2

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_2.jpg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    aput-object v1, v0, v2

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple_2.jpg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH:[Ljava/lang/String;

    .line 71
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lockscreen_wallpaper_path_ripple"

    aput-object v1, v0, v2

    const-string v1, "lockscreen_wallpaper_path_ripple_2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    .line 74
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lockscreen_wallpaper_path"

    aput-object v1, v0, v2

    const-string v1, "lockscreen_wallpaper_path_2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SimRefreshCheck(Landroid/content/Context;)Z
    .locals 1
    .parameter "mContext"

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public static appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "property"
    .parameter "simSlot"

    .prologue
    .line 292
    move-object v0, p0

    .line 297
    .local v0, str:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_0
    return-object v0
.end method

.method public static getActiveSIMCount(Landroid/content/Context;)I
    .locals 5
    .parameter "mContext"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, mSimCount:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 189
    :cond_1
    const-string v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inserted SIM card count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return v0
.end method

.method public static getCurrentPinLockSlot()I
    .locals 3

    .prologue
    .line 236
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v0

    .line 243
    :goto_0
    return v0

    .line 241
    :cond_0
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPinLockSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    goto :goto_0
.end method

.method public static getCurrentPukLockSlot()I
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v0

    .line 274
    :goto_0
    return v0

    .line 272
    :cond_0
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPukLockSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    goto :goto_0
.end method

.method public static getCurrentSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 369
    :goto_0
    return-object v0

    .line 365
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 369
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method public static getCurrentVoiceCall()I
    .locals 4

    .prologue
    .line 112
    const-string v1, "persist.radio.calldefault.simid"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, sim:Ljava/lang/String;
    const-string v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentVoiceCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "mContext"

    .prologue
    .line 78
    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, mSimMode:Ljava/lang/String;
    const/4 v1, 0x0

    .line 81
    .local v1, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    :cond_0
    const-string v2, "persist.radio.calldefault.simid"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSIMCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2 sim inserted getCurrentWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-nez v1, :cond_2

    .line 90
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v3

    aget-object v1, v2, v3

    .line 106
    :cond_2
    :goto_0
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v1

    .line 92
    :cond_3
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimMode = 1, getCurrentWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-nez v1, :cond_2

    .line 96
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v3

    aget-object v1, v2, v3

    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimMode = 0, inserted getCurrentWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-nez v1, :cond_2

    .line 101
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v3

    aget-object v1, v2, v3

    goto :goto_0
.end method

.method public static getDualModePINPUKRequest()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 474
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, mCDMAstate:Ljava/lang/String;
    const-string v4, "gsm.sim.state2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, mGSMstate:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 479
    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PUK_REQUIRED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PUK_REQUIRED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 490
    :cond_1
    :goto_0
    return v2

    .line 487
    :cond_2
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    if-eqz v4, :cond_1

    move v2, v3

    .line 488
    goto :goto_0
.end method

.method public static getDualModePINPUKRequest(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 496
    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, mCDMAstate:Ljava/lang/String;
    const-string v5, "gsm.sim.state2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, mGSMstate:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v5

    if-ne v5, v3, :cond_5

    .line 501
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v0, v3

    .line 502
    .local v0, airPlaneEnabled:Z
    :goto_0
    const-string v5, "MultiSimUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "airPlaneEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    if-eqz v0, :cond_2

    .line 522
    .end local v0           #airPlaneEnabled:Z
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v0, v4

    .line 501
    goto :goto_0

    .line 507
    .restart local v0       #airPlaneEnabled:Z
    :cond_2
    const-string v5, "PIN_REQUIRED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "PUK_REQUIRED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "PIN_REQUIRED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "PUK_REQUIRED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 509
    :cond_3
    const-string v4, "MultiSimUtils"

    const-string v5, "getDualModePINPUKRequest : true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 511
    goto :goto_1

    .line 513
    :cond_4
    const-string v3, "MultiSimUtils"

    const-string v5, "getDualModePINPUKRequest : false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 519
    .end local v0           #airPlaneEnabled:Z
    :cond_5
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    if-eqz v5, :cond_0

    move v4, v3

    .line 520
    goto :goto_1
.end method

.method public static getPINPUKRequest()Z
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getDualModePINPUKRequest()Z

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINRequest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPINPUKRequest(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 223
    .local v0, airPlaneEnabled:I
    if-ne v0, v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getDualModePINPUKRequest(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    .line 231
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINRequest()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static getPINPUKSlot()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 528
    const-string v2, "ril.ICC_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, mCDMAtype:Ljava/lang/String;
    const-string v2, "ril.ICC2_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, mGSMtype:Ljava/lang/String;
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINPUKSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 535
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 537
    :cond_0
    sput v5, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    .line 545
    :cond_1
    :goto_0
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINPUKSlot return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    return v2

    .line 539
    :cond_2
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    :cond_3
    const/4 v2, 0x2

    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    goto :goto_0
.end method

.method public static getPINRequest()Z
    .locals 5

    .prologue
    .line 147
    const/4 v2, -0x1

    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 148
    const/4 v0, 0x0

    .local v0, simSlot:I
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 149
    const-string v2, "gsm.sim.state"

    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, simState:Ljava/lang/String;
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 154
    const/4 v2, 0x1

    .line 157
    .end local v1           #simState:Ljava/lang/String;
    :goto_1
    return v2

    .line 148
    .restart local v1       #simState:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v1           #simState:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getPUKRequest()Z
    .locals 5

    .prologue
    .line 278
    const/4 v2, -0x1

    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 279
    const/4 v0, 0x0

    .local v0, simSlot:I
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 280
    const-string v2, "gsm.sim.state"

    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, simState:Ljava/lang/String;
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v2, "PUK_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 285
    const/4 v2, 0x1

    .line 288
    .end local v1           #simState:Ljava/lang/String;
    :goto_1
    return v2

    .line 279
    .restart local v1       #simState:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v1           #simState:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getSIMCount()I
    .locals 6

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, mSimCount:I
    const/4 v1, 0x0

    .local v1, simSlot:I
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 164
    const-string v3, "ril.ICC_TYPE"

    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, simSlotState:Ljava/lang/String;
    const-string v3, "MultiSimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", simState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v2           #simSlotState:Ljava/lang/String;
    :cond_1
    const-string v3, "MultiSimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inserted SIM card count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v0
.end method

.method public static getSimPinRetry()I
    .locals 6

    .prologue
    .line 314
    const/4 v2, 0x0

    .line 315
    .local v2, result:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v1

    .line 316
    .local v1, mSimCardId:I
    const-string v3, "DSDS"

    invoke-static {v3}, Lcom/android/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/plugin/dsds/PlugInDsdsService;

    sput-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mDsdsService:Lcom/android/plugin/dsds/PlugInDsdsService;

    .line 319
    :try_start_0
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mDsdsService:Lcom/android/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v3, v1}, Lcom/android/plugin/dsds/PlugInDsdsService;->getPinRetry(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 333
    :goto_0
    const-string v3, "MultiSimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimPinRetry = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " counnt on slot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v2

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSimPukRetry()I
    .locals 6

    .prologue
    .line 338
    const/4 v2, 0x0

    .line 339
    .local v2, result:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPukLockSlot()I

    move-result v1

    .line 340
    .local v1, mSimCardId:I
    const-string v3, "DSDS"

    invoke-static {v3}, Lcom/android/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/plugin/dsds/PlugInDsdsService;

    sput-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mDsdsService:Lcom/android/plugin/dsds/PlugInDsdsService;

    .line 343
    :try_start_0
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mDsdsService:Lcom/android/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v3, v1}, Lcom/android/plugin/dsds/PlugInDsdsService;->getPukRetry(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 357
    :goto_0
    const-string v3, "MultiSimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimPukRetry = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count on slot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return v2

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSimSlotCount()I
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x2

    return v0
.end method

.method public static getSimStatus()Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;
    .locals 4

    .prologue
    .line 128
    const-string v2, "ril.ICC_TYPE"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, simState_1:Ljava/lang/String;
    const-string v2, "ril.ICC_TYPE_1"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, simState_2:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_NO_SIM:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    .line 142
    :goto_0
    return-object v2

    .line 133
    :cond_0
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_TWO_SIMS:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    goto :goto_0

    .line 135
    :cond_1
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_ONLY_SIM1:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    goto :goto_0

    .line 137
    :cond_2
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 138
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_ONLY_SIM2:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    goto :goto_0

    .line 141
    :cond_3
    const-string v2, "MultiSimUtils"

    const-string v3, "sim status error"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_ERROR:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    goto :goto_0
.end method

.method public static getWhichSIMOn(Landroid/content/Context;)I
    .locals 5
    .parameter "mContext"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    const/4 v0, 0x0

    .line 199
    .local v0, mSimCount:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 203
    const/4 v0, 0x0

    .line 207
    :cond_1
    const-string v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inserted SIM card count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v0
.end method

.method public static isChangedVoiceCall()Z
    .locals 4

    .prologue
    .line 120
    sget v1, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mOldCurrentVoiceCall:I

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 122
    .local v0, ret:Z
    :goto_0
    const-string v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChangedVoiceCall oldstate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mOldCurrentVoiceCall:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mOldCurrentVoiceCall:I

    .line 124
    return v0

    .line 120
    .end local v0           #ret:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultiSIMDevice()Z
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    return v0
.end method

.method public static isPlmnEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 251
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 257
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSIMCount()I

    move-result v2

    if-gt v2, v0, :cond_0

    move v0, v1

    .line 261
    goto :goto_0

    :cond_2
    move v0, v1

    .line 263
    goto :goto_0
.end method

.method public static setPINPUKRequest(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 463
    sput-boolean p0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    .line 464
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void
.end method

.method public static setPINPUKSlot(I)V
    .locals 3
    .parameter "slot"

    .prologue
    .line 468
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sput p0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    .line 470
    return-void
.end method

.method public static supplyPin(Ljava/lang/String;)Z
    .locals 4
    .parameter "mPin"

    .prologue
    .line 374
    const/4 v2, 0x0

    .line 375
    .local v2, result:Z
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v1

    .line 376
    .local v1, mSimCardId:I
    const-string v3, "DSDS"

    invoke-static {v3}, Lcom/android/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/plugin/dsds/PlugInDsdsService;

    sput-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mDsdsService:Lcom/android/plugin/dsds/PlugInDsdsService;

    .line 379
    :try_start_0
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mDsdsService:Lcom/android/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v3, p0, v1}, Lcom/android/plugin/dsds/PlugInDsdsService;->supplyPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 393
    :goto_0
    return v2

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "mPuk"
    .parameter "mPin"

    .prologue
    .line 397
    const/4 v2, 0x0

    .line 398
    .local v2, result:Z
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPukLockSlot()I

    move-result v1

    .line 399
    .local v1, mSimCardId:I
    const-string v3, "DSDS"

    invoke-static {v3}, Lcom/android/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/plugin/dsds/PlugInDsdsService;

    sput-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mDsdsService:Lcom/android/plugin/dsds/PlugInDsdsService;

    .line 402
    :try_start_0
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mDsdsService:Lcom/android/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v3, p0, p1, v1}, Lcom/android/plugin/dsds/PlugInDsdsService;->supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 416
    :goto_0
    return v2

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

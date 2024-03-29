.class public Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;
.super Ljava/lang/Object;
.source "SamsungPolicyProperties.java"


# static fields
.field private static mAlwaysHideStatusBar:Z

.field private static mAlwaysHideStatusBarChecked:Z

.field private static mHasFolderTypeFeature:Z

.field private static mHasFolderTypeFeatureChecked:Z

.field private static mHasNumericKeyboard:Z

.field private static mHasNumericKeyboardChecked:Z

.field private static mHasQwertyKeyboard:Z

.field private static mHasQwertyKeyboardChecked:Z

.field private static mHasSPenFeature:Z

.field private static mHasSPenFeatureChecked:Z

.field private static mPendingThresholdTime:I

.field private static mPendingThresholdTimeChecked:Z

.field private static mScreenShotChordEnableChecked:Z

.field private static mScreenShotChordEnabled:Z

.field private static mUseSviewCover:Z

.field private static mUseSviewCoverChecked:Z

.field private static mVoiceTalkDefaultLaunch:Z

.field private static mVoiceTalkDefaultLaunchChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z

    .line 41
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunchChecked:Z

    .line 43
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    .line 44
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    .line 46
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    .line 47
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    .line 49
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    .line 50
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    .line 52
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasFolderTypeFeature:Z

    .line 53
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasFolderTypeFeatureChecked:Z

    .line 55
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mAlwaysHideStatusBar:Z

    .line 56
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mAlwaysHideStatusBarChecked:Z

    .line 58
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    .line 59
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    .line 61
    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I

    .line 62
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTimeChecked:Z

    .line 64
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mUseSviewCover:Z

    .line 65
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mUseSviewCoverChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "prefix"
    .parameter "pw"
    .parameter "args"
    .parameter "context"

    .prologue
    .line 291
    const-string v0, "  SAMSUNG policy properties:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isVoiceTalkDefaultLaunch="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVoiceTalkDefaultLaunch(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 293
    const-string v0, " isCameraSpecialized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 294
    const-string v0, " isUseVibetonz="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 295
    const-string v0, " hasSPenFeature="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 296
    const-string v0, " hasQwertyKeyboard="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 297
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasNumericKeyboard="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 298
    const-string v0, " hasFolderTypeFeature="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 299
    const-string v0, " isAlwaysHideStatusBar="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isAlwaysHideStatusBar(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 300
    const-string v0, " isScreenShotChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 301
    const-string v0, " isScreenRecordChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 302
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isOneTouchReportChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 303
    const-string v0, " isSupportSPC="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 304
    const-string v0, " isSupportDMBAntennaDetach="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 305
    const-string v0, " isSupportDTVAntennaDetach="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 306
    const-string v0, " isBlockHomeKey="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockHomeKey(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 307
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "needInitializationWhenSystemReady="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->needInitializationWhenSystemReady()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 308
    const-string v0, " getKeyPendingThresholdTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->getKeyPendingThresholdTime()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 309
    const-string v0, " isDualSIMMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 310
    const-string v0, " isStatusBarHoverOpenEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isStatusBarHoverOpenEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 311
    const-string v0, " isUseSviewCover="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseSviewCover(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 312
    const-string v0, " hasHardMenuBackKey="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasHardMenuBackKey()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 313
    return-void
.end method

.method public static getKeyPendingThresholdTime()I
    .locals 2

    .prologue
    .line 211
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTimeChecked:Z

    if-nez v1, :cond_0

    .line 213
    :try_start_0
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTimeChecked:Z

    .line 220
    :cond_0
    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I

    return v1

    .line 215
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 216
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I

    goto :goto_0
.end method

.method public static hasFolderTypeFeature(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasFolderTypeFeatureChecked:Z

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasFolderTypeFeature:Z

    .line 134
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasFolderTypeFeatureChecked:Z

    .line 136
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasFolderTypeFeature:Z

    return v0
.end method

.method public static hasHardMenuBackKey()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public static hasNumericKeyboard(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 123
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    .line 126
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    .line 128
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    return v0

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasQwertyKeyboard(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 114
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    .line 117
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    .line 119
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    return v0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSPenFeature(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    .line 106
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    return v0
.end method

.method public static isAlwaysHideStatusBar(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 140
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mAlwaysHideStatusBarChecked:Z

    if-nez v1, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:bool@config_isAlwaysHideStatusBar#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mAlwaysHideStatusBar:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mAlwaysHideStatusBarChecked:Z

    .line 150
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mAlwaysHideStatusBar:Z

    return v1

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mAlwaysHideStatusBar:Z

    goto :goto_0
.end method

.method public static isBlockHomeKey(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 191
    const-string v1, "LGT"

    const-string v2, "UNICOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    const-string v1, "true"

    const-string v2, "ril.domesticOtaStart"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "18"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    const-string v1, "lock"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "missing_phone_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraKeyWakeKey(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 262
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMirrorLessCameraSpecialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraSpecialized()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public static isCompactCameraSpecialized()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public static isDisablePopupUI()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualSIMMode()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public static isMirrorLessCameraSpecialized()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneTouchReportChordEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 173
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOtaStatusOnKorModel()Z
    .locals 4

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, bStatus:Z
    const-string v1, "KOR"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    const-string v2, "ril.domesticOta"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 283
    :cond_0
    return v0
.end method

.method public static isScreenRecordChordEnabled()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public static isScreenShotChordEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 154
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    if-nez v1, :cond_0

    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:bool@config_enableScreenshotChord#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    .line 164
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    goto :goto_0
.end method

.method public static isStarKeyToVibrationMode()Z
    .locals 2

    .prologue
    .line 287
    const-string v0, "KOR"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStatusBarHoverOpenEnabled()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDMBAntennaDetach()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDTVAntennaDetach()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportEasyOneHand()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportGestureWithIRSensor()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportHapticfeedbackIntegrator()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportSPC()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public static isUseSviewCover(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 248
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mUseSviewCoverChecked:Z

    if-nez v1, :cond_0

    .line 250
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:bool@config_isSViewCover#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mUseSviewCover:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mUseSviewCoverChecked:Z

    .line 258
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mUseSviewCover:Z

    return v1

    .line 252
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mUseSviewCover:Z

    goto :goto_0
.end method

.method public static isUseVibetonz()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public static isVoiceTalkDefaultLaunch(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 68
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunchChecked:Z

    if-nez v1, :cond_0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:bool@config_isDefaultSvoiceLaunched#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunchChecked:Z

    .line 78
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z

    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z

    goto :goto_0
.end method

.method public static isWatchSpecialized()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public static needInitializationWhenSystemReady()Z
    .locals 2

    .prologue
    .line 207
    const-string v0, "LGT"

    const-string v1, "UNICOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

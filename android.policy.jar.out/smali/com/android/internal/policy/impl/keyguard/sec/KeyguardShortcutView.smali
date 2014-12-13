.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
.super Landroid/widget/LinearLayout;
.source "KeyguardShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;,
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;
    }
.end annotation


# static fields
.field private static final ACTION_USER_ACTIVITY_BY_SHORTCUT:Ljava/lang/String; = "com.android.internal.policy.impl.sec.UserActivityByShortcut"

.field private static final APPLICATION_SEPERATOR:C = ';'

.field private static final BADGE_COLUMNS:[Ljava/lang/String; = null

.field private static final BADGE_URI:Landroid/net/Uri; = null

.field private static final PACKAGE_CLASS_SEPERATOR:C = '/'

.field private static final mBlurPaint:Landroid/graphics/Paint;

.field private static mGlowCanvas:Landroid/graphics/Canvas;

.field private static final mHolographicPaint:Landroid/graphics/Paint;

.field private static mOuterGlowColor:I

.field private static final mSaturationPaint:Landroid/graphics/Paint;

.field private static mShortcutImageViewHeight:I

.field private static mShortcutImageViewWidth:I

.field private static mTempOffset:[I

.field private static sBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private static sCoarseClipTable:Landroid/graphics/MaskFilter;

.field private static sFontSizeDefault:I

.field private static sFontSizeSmall:I

.field private static sIconCenterXOffset:I

.field private static sIconTopToTopOffset:I

.field private static sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# instance fields
.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MISSED_EVENT_UPDATE:I

.field private TAG:Ljava/lang/String;

.field private isIgnoreTouch:Z

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDistance:D

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFirstBorder:I

.field private mHandler:Landroid/os/Handler;

.field private mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

.field private mIconDpi:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsFirst:Z

.field private mIsTouchExplorationEnabled:Z

.field private mItemCount:I

.field private mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

.field private mLaunchIntent:Landroid/content/Intent;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOldBounds:Landroid/graphics/Rect;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field private mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    .line 92
    const/16 v0, 0xc8

    invoke-static {v2, v0}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mTempOffset:[I

    .line 115
    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    .line 116
    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    .line 122
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "badgecount"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const-string v7, "KeyguardShortcutView"

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    .line 63
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    .line 71
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    .line 73
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    .line 74
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    .line 82
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    invoke-direct {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 83
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 84
    const/16 v7, 0x12c

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 96
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    .line 99
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    .line 100
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->isIgnoreTouch:Z

    .line 103
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D

    .line 128
    const/16 v7, 0x12c2

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->MISSED_EVENT_UPDATE:I

    .line 129
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$2;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 164
    const/16 v7, 0x11

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setGravity(I)V

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    .line 167
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getLauncherLargeIconDensity()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_shortcut"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_0

    .line 177
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    .line 311
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "easy_mode_switch"

    const/4 v9, 0x1

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_1

    .line 186
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "usm_setting"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 193
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:dimen@keyguard_lockscreen_first_border#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFirstBorder:I

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:dimen@keyguard_lockscreen_second_border#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I

    .line 219
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v7, :cond_3

    .line 220
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "density = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 223
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 225
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 226
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 229
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    .line 230
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 231
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v8, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v9, 0x4

    const/4 v10, 0x2

    invoke-direct {v8, v9, v10}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 234
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mGlowCanvas:Landroid/graphics/Canvas;

    .line 235
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mGlowCanvas:Landroid/graphics/Canvas;

    new-instance v8, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v9, 0x4

    const/4 v10, 0x2

    invoke-direct {v8, v9, v10}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 237
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 238
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 239
    new-instance v7, Landroid/graphics/BlurMaskFilter;

    const/high16 v8, 0x40c0

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v7, v8, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 240
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 241
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 242
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v8, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 243
    const/4 v7, -0x1

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOuterGlowColor:I

    .line 246
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 247
    .local v1, cm:Landroid/graphics/ColorMatrix;
    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f00

    invoke-static {v1, v7, v8}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V

    .line 250
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 251
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 252
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v8, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 254
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    if-nez v7, :cond_4

    .line 255
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "touch_exploration_enabled"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 258
    .local v3, exploreByTouchMode:I
    const/4 v7, 0x1

    if-ne v3, v7, :cond_5

    .line 259
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    .line 260
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v8, "explore by touch mode on"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v3           #exploreByTouchMode:I
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:dimen@keyguard_lockscreen_application_shortcut_icon_width#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:dimen@keyguard_lockscreen_application_shortcut_icon_height#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:drawable@homescreen_menu_noti_bg#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:dimen@keyguard_lockscreen_application_shortcut_badge_fontsize_default#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:dimen@keyguard_lockscreen_application_shortcut_badge_fontsize_small#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sFontSizeSmall:I

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:dimen@keyguard_lockscreen_application_shortcut_badge_icon_centerXOffset#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sIconCenterXOffset:I

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:dimen@keyguard_lockscreen_application_shortcut_badge_icon_topToTopOffset#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sIconTopToTopOffset:I

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_shortcut_app_list"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, activityList:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 294
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3b

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 296
    .local v6, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v6, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 297
    const/4 v2, 0x0

    .line 298
    .local v2, count:I
    invoke-interface {v6}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 299
    .local v5, pkgActivity:Ljava/lang/String;
    invoke-direct {p0, p1, v5, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setEachItem(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    .line 262
    .end local v0           #activityList:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #pkgActivity:Ljava/lang/String;
    .end local v6           #splitter:Landroid/text/TextUtils$StringSplitter;
    .restart local v3       #exploreByTouchMode:I
    :cond_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v8, "explore by touch mode off"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 302
    .end local v3           #exploreByTouchMode:I
    .restart local v0       #activityList:Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #splitter:Landroid/text/TextUtils$StringSplitter;
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->reArrangeSpace()V

    .line 305
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    goto/16 :goto_0

    .line 309
    .end local v2           #count:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #splitter:Landroid/text/TextUtils$StringSplitter;
    :cond_7
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->reloadBadges()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->isIgnoreTouch:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mStartX:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mStartX:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mStartY:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mStartY:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFirstBorder:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->launchApplication()V

    return-void
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I

    return v0
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sIconTopToTopOffset:I

    return v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sIconCenterXOffset:I

    return v0
.end method

.method static synthetic access$3100()Landroid/graphics/MaskFilter;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method static synthetic access$3200()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3300()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOuterGlowColor:I

    return v0
.end method

.method static synthetic access$3400()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3500()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    return v0
.end method

.method static synthetic access$3600()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    return v0
.end method

.method static synthetic access$3700()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3800()[I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mTempOffset:[I

    return-object v0
.end method

.method static synthetic access$3900()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sFontSizeSmall:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    return v0
.end method

.method static synthetic access$4000()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method private createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 844
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v16, v0

    .line 845
    .local v16, width:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    .line 847
    .local v9, height:I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 848
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "PaintDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v13, v0

    .line 851
    .local v13, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 852
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 863
    .end local v13           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 864
    .local v12, iconWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 866
    .local v11, iconHeight:I
    if-lez v16, :cond_6

    if-lez v9, :cond_6

    .line 867
    move/from16 v0, v16

    if-lt v0, v12, :cond_2

    if-ge v9, v11, :cond_b

    .line 868
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "width < iconWidth || height < iconHeight"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_3
    int-to-float v0, v12

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v21, v0

    div-float v14, v19, v21

    .line 872
    .local v14, ratio:F
    if-le v12, v11, :cond_9

    .line 873
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v9, v0

    .line 878
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 880
    .local v7, c:Landroid/graphics/Bitmap$Config;
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 881
    .local v15, thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 882
    .local v8, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 890
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShortcutResize()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, #android:dimen@keyguard_lockscreen_application_shortcut_icon_resize_width#t

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, #android:dimen@keyguard_lockscreen_application_shortcut_icon_resize_height#t

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    .line 897
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    div-int/lit8 v17, v19, 0x2

    .line 898
    .local v17, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    move/from16 v19, v0

    sub-int v19, v19, v9

    div-int/lit8 v18, v19, 0x2

    .line 899
    .local v18, y:I
    add-int v19, v17, v16

    add-int v21, v18, v9

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 900
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 903
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local p1
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .line 930
    .end local v7           #c:Landroid/graphics/Bitmap$Config;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v14           #ratio:F
    .end local v15           #thumb:Landroid/graphics/Bitmap;
    .end local v17           #x:I
    .end local v18           #y:I
    .restart local p1
    :cond_6
    :goto_3
    monitor-exit v20

    .line 932
    return-object p1

    .line 853
    .end local v11           #iconHeight:I
    .end local v12           #iconWidth:I
    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 854
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "BitmapDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_8
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 858
    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 859
    .local v5, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    if-nez v19, :cond_1

    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 930
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v9           #height:I
    .end local v16           #width:I
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 874
    .restart local v9       #height:I
    .restart local v11       #iconHeight:I
    .restart local v12       #iconWidth:I
    .restart local v14       #ratio:F
    .restart local v16       #width:I
    :cond_9
    if-le v11, v12, :cond_4

    .line 875
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_1

    .line 878
    :cond_a
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_2

    .line 905
    .end local v14           #ratio:F
    :cond_b
    move/from16 v0, v16

    if-ge v12, v0, :cond_6

    if-ge v11, v9, :cond_6

    .line 906
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "iconWidth < width && iconHeight < height"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_c
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 909
    .restart local v7       #c:Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 910
    .restart local v15       #thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 911
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 914
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShortcutResize()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, #android:dimen@keyguard_lockscreen_application_shortcut_icon_resize_width#t

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v12, v0

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, #android:dimen@keyguard_lockscreen_application_shortcut_icon_resize_height#t

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 921
    :cond_d
    sub-int v19, v16, v12

    div-int/lit8 v17, v19, 0x2

    .line 922
    .restart local v17       #x:I
    sub-int v19, v9, v11

    div-int/lit8 v18, v19, 0x2

    .line 923
    .restart local v18       #y:I
    add-int v19, v17, v12

    add-int v21, v18, v11

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 924
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 926
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    goto/16 :goto_3
.end method

.method private getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .parameter "cn"

    .prologue
    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 822
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 823
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 825
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 827
    :cond_0
    return-object v0
.end method

.method private hideOtherShortcuts(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hide"

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v0

    .local v0, children:I
    :goto_0
    if-ltz v0, :cond_2

    .line 469
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 470
    .local v1, tmpView:Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v2, :cond_0

    if-eq p1, v1, :cond_0

    .line 471
    if-eqz p2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 472
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 468
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 473
    check-cast v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 477
    .end local v1           #tmpView:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private isScreenLarge()Z
    .locals 2

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 938
    .local v0, screenSize:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchApplication()V
    .locals 6

    .prologue
    .line 1215
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1217
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1223
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1226
    :cond_0
    return-void

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v2, "dismissKeyguard remoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reArrangeSpace()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, additionalPadding:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v2

    .line 319
    .local v2, childrenCount:I
    packed-switch v2, :pswitch_data_0

    .line 331
    const/4 v0, 0x0

    .line 335
    :goto_0
    if-nez v0, :cond_1

    .line 348
    :cond_0
    return-void

    .line 321
    :pswitch_0
    const/4 v0, 0x0

    .line 322
    goto :goto_0

    .line 324
    :pswitch_1
    const/16 v0, 0xa

    .line 325
    goto :goto_0

    .line 328
    :pswitch_2
    const/16 v0, 0x11

    .line 329
    goto :goto_0

    .line 339
    :cond_1
    add-int/lit8 v1, v2, -0x1

    .local v1, child:I
    :goto_1
    if-ltz v1, :cond_0

    .line 340
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 341
    .local v5, tmpView:Landroid/view/View;
    instance-of v6, v5, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v6, :cond_2

    move-object v6, v5

    .line 342
    check-cast v6, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getPaddingLeft()I

    move-result v3

    .local v3, leftPadding:I
    move-object v6, v5

    .line 343
    check-cast v6, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getPaddingRight()I

    move-result v4

    .line 344
    .local v4, rightPadding:I
    check-cast v5, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    .end local v5           #tmpView:Landroid/view/View;
    add-int v6, v3, v0

    add-int v7, v4, v0

    invoke-virtual {v5, v6, v8, v7, v8}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setPadding(IIII)V

    .line 339
    .end local v3           #leftPadding:I
    .end local v4           #rightPadding:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshShortcutItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 480
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v0

    .local v0, children:I
    :goto_0
    if-ltz v0, :cond_1

    .line 481
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 482
    .local v1, tmpView:Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 483
    check-cast v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    .line 484
    check-cast v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    .end local v1           #tmpView:Landroid/view/View;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setOpacity(D)V

    .line 480
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 487
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V

    .line 488
    return-void
.end method

.method private reloadBadges()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v7

    .local v7, children:I
    :goto_0
    if-ltz v7, :cond_2

    .line 440
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 441
    .local v8, tmpView:Landroid/view/View;
    instance-of v0, v8, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v0, :cond_1

    move-object v0, v8

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v8

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\" and class=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v8

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 449
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 450
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 452
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setBadgeCount(I)V

    .line 453
    check-cast v8, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    .end local v8           #tmpView:Landroid/view/View;
    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->refreshBadgeCount()V

    .line 455
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 439
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 459
    :cond_2
    return-void
.end method

.method private static setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V
    .locals 11
    .parameter "cm"
    .parameter "contrast"
    .parameter "saturation"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 1192
    add-float v4, p1, v10

    .line 1193
    .local v4, scale:F
    const/high16 v6, -0x4100

    mul-float/2addr v6, v4

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    const/high16 v7, 0x437f

    mul-float v5, v6, v7

    .line 1194
    .local v5, translate:F
    sub-float v3, v10, p2

    .line 1195
    .local v3, invSat:F
    const v6, 0x3e5a1cac

    mul-float v2, v6, v3

    .line 1196
    .local v2, R:F
    const v6, 0x3f370a3d

    mul-float v1, v6, v3

    .line 1197
    .local v1, G:F
    const v6, 0x3d9374bc

    mul-float v0, v6, v3

    .line 1199
    .local v0, B:F
    const/16 v6, 0x14

    new-array v6, v6, [F

    const/4 v7, 0x0

    add-float v8, v2, p2

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    const/4 v7, 0x2

    aput v0, v6, v7

    const/4 v7, 0x3

    aput v9, v6, v7

    const/4 v7, 0x4

    aput v5, v6, v7

    const/4 v7, 0x5

    aput v2, v6, v7

    const/4 v7, 0x6

    add-float v8, v1, p2

    aput v8, v6, v7

    const/4 v7, 0x7

    aput v0, v6, v7

    const/16 v7, 0x8

    aput v9, v6, v7

    const/16 v7, 0x9

    aput v5, v6, v7

    const/16 v7, 0xa

    aput v2, v6, v7

    const/16 v7, 0xb

    aput v1, v6, v7

    const/16 v7, 0xc

    add-float v8, v0, p2

    aput v8, v6, v7

    const/16 v7, 0xd

    aput v9, v6, v7

    const/16 v7, 0xe

    aput v5, v6, v7

    const/16 v7, 0xf

    aput v9, v6, v7

    const/16 v7, 0x10

    aput v9, v6, v7

    const/16 v7, 0x11

    aput v9, v6, v7

    const/16 v7, 0x12

    aput v10, v6, v7

    const/16 v7, 0x13

    aput v9, v6, v7

    invoke-virtual {p0, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1206
    return-void
.end method

.method private setEachItem(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 8
    .parameter "context"
    .parameter "pkgActivity"
    .parameter "count"

    .prologue
    .line 352
    add-int/lit8 p3, p3, 0x1

    .line 354
    const/16 v5, 0x2f

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 355
    .local v2, commaIndex:I
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, pkgName:Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, activityName:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v5, :cond_0

    .line 358
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg name ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", activityName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    const/4 v1, 0x0

    .line 369
    .local v1, cn:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cn:Landroid/content/ComponentName;
    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .restart local v1       #cn:Landroid/content/ComponentName;
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 373
    .local v4, testItem:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;
    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 375
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->addView(Landroid/view/View;)V

    .line 398
    :goto_0
    const/4 v1, 0x0

    .line 399
    const/4 v4, 0x0

    .line 401
    return p3

    .line 392
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v5, :cond_2

    .line 393
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v6, "mIntent=null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 980
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "info"

    .prologue
    .line 955
    const/4 v1, 0x0

    .line 957
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    .line 958
    const/4 v3, 0x0

    .line 964
    .local v3, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v3, :cond_3

    .line 965
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 967
    if-eqz v1, :cond_2

    move-object v4, v1

    .line 976
    :goto_2
    return-object v4

    .line 960
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 961
    .end local v3           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 962
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 965
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 971
    :cond_2
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    .line 972
    .local v2, iconId:I
    if-eqz v2, :cond_3

    .line 973
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 976
    .end local v2           #iconId:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 945
    :try_start_0
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 950
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 946
    :catch_0
    move-exception v1

    .line 947
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 950
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    return v0
.end method

.method public getLauncherLargeIconDensity()I
    .locals 5

    .prologue
    const/16 v3, 0x140

    .line 491
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 492
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 493
    .local v0, density:I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 495
    .local v2, sw:I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShortcutResize()Z

    move-result v4

    if-nez v4, :cond_0

    .line 516
    .end local v0           #density:I
    :goto_0
    return v0

    .line 500
    .restart local v0       #density:I
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 516
    int-to-float v3, v0

    const/high16 v4, 0x3fc0

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_0

    .line 502
    :sswitch_0
    const/16 v0, 0xa0

    goto :goto_0

    .line 504
    :sswitch_1
    const/16 v0, 0xf0

    goto :goto_0

    :sswitch_2
    move v0, v3

    .line 506
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 508
    goto :goto_0

    .line 510
    :sswitch_4
    const/16 v0, 0x1e0

    goto :goto_0

    .line 512
    :sswitch_5
    const/16 v0, 0x280

    goto :goto_0

    .line 500
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 425
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 431
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    .line 432
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 433
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 434
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    .line 435
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->refreshShortcutItems()V

    .line 409
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->refreshShortcutItems()V

    .line 416
    return-void
.end method

.method public refreshShortcuts(Landroid/content/ComponentName;)V
    .locals 9
    .parameter "cn"

    .prologue
    .line 1230
    const-string v0, "com.android.mms/com.android.mms.ui.ConversationComposer;com.sec.android.app.sbrowser/com.sec.android.app.sbrowser.SBrowserMainActivity;com.android.contacts/com.android.contacts.activities.PeopleActivity;com.android.contacts/com.android.contacts.activities.DialtactsActivity"

    .line 1233
    .local v0, activityList:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #android:string@widget_default_package_name#t

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:string@widget_default_class_name#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    .local v2, defaultAppWidget:Landroid/content/ComponentName;
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1244
    const-string v0, "flipboard.app/flipboard.app.flipboard.activities.FirstRunActivity;com.sec.android.app.clockpackage/com.sec.android.app.clockpackage.ClockPackage;com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 1247
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->removeAllViews()V

    .line 1249
    if-eqz v0, :cond_2

    .line 1252
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3b

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1254
    .local v5, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v5, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 1255
    const/4 v1, 0x0

    .line 1256
    .local v1, count:I
    invoke-interface {v5}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1257
    .local v4, pkgActivity:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v4, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setEachItem(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 1261
    .end local v4           #pkgActivity:Ljava/lang/String;
    :cond_1
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    .line 1263
    .end local v1           #count:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #splitter:Landroid/text/TextUtils$StringSplitter;
    :cond_2
    return-void
.end method

.method public setHelpTextCallback(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;)V
    .locals 0
    .parameter "helpTextCallback"

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    .line 1306
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 420
    return-void
.end method

.method public setPagedView(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V
    .locals 0
    .parameter "pagedView"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .line 152
    return-void
.end method

.method public updateShortcutView(Z)V
    .locals 6
    .parameter "isRightMostPage"

    .prologue
    .line 1266
    if-eqz p1, :cond_2

    .line 1268
    const-string v0, "com.android.mms/com.android.mms.ui.ConversationComposer;com.sec.android.app.sbrowser/com.sec.android.app.sbrowser.SBrowserMainActivity;com.android.contacts/com.android.contacts.activities.PeopleActivity;com.android.contacts/com.android.contacts.activities.DialtactsActivity"

    .line 1282
    .local v0, activityList:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->removeAllViews()V

    .line 1284
    if-eqz v0, :cond_1

    .line 1287
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3b

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1289
    .local v4, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 1290
    const/4 v1, 0x0

    .line 1291
    .local v1, count:I
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1292
    .local v3, pkgActivity:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v3, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setEachItem(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 1296
    .end local v3           #pkgActivity:Ljava/lang/String;
    :cond_0
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    .line 1302
    .end local v0           #activityList:Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #splitter:Landroid/text/TextUtils$StringSplitter;
    :cond_1
    :goto_1
    return-void

    .line 1299
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->removeAllViews()V

    goto :goto_1
.end method

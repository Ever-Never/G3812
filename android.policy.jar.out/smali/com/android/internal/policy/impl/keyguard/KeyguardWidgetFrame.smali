.class public Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
.super Landroid/widget/FrameLayout;
.source "KeyguardWidgetFrame.java"


# static fields
.field private static final ACTION_SHRINK_WIDGET:Ljava/lang/String; = "com.sec.android.app.keyguard.shrinkWidget"

.field static final ENABLE_HOVER_OVER_DELETE_DROP_TARGET_OVERLAY:Z = true

.field private static final HIDE_FRAME:I = 0x3

.field static final HOVER_OVER_DELETE_DROP_TARGET_OVERLAY_COLOR:I = -0x66010000

.field static final OUTLINE_ALPHA_MULTIPLIER:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "KeyguardWidgetFrame"

.field private static final sAddBlendMode:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private final HIDE_FRAME_DELAY:J

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundLightRect:Landroid/graphics/Rect;

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mBgAlphaController:Ljava/lang/Object;

.field private mContentAlpha:F

.field private mForegroundAlpha:I

.field private mForegroundGradient:Landroid/graphics/LinearGradient;

.field private final mForegroundRect:Landroid/graphics/Rect;

.field private mFrameFade:Landroid/animation/Animator;

.field private mFrameHeight:I

.field private mFrameStrokeAdjustment:I

.field private mGradientColor:I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mIsHoveringOverDeleteDropTarget:Z

.field private mIsReordering:Z

.field private mIsSmall:Z

.field mLeftToRight:Z

.field private mLeftToRightGradient:Landroid/graphics/LinearGradient;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

.field private mMaxChallengeTop:I

.field private mOverScrollAmount:F

.field private mPerformAppWidgetSizeUpdateOnBootComplete:Z

.field private mRightToLeftGradient:Landroid/graphics/LinearGradient;

.field private mSmallFrameHeight:I

.field private mSmallWidgetHeight:I

.field private mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mWidgetLockedSmall:Z

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    .line 67
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    .line 69
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    .line 70
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    .line 71
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    .line 74
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 79
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    .line 81
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    .line 84
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    .line 90
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    .line 91
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    .line 109
    const-wide/16 v3, 0x15e

    iput-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->HIDE_FRAME_DELAY:J

    .line 110
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 638
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsReordering:Z

    .line 132
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 137
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 138
    .local v0, density:F
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4100

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 139
    .local v1, padding:I
    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v3, v1, v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPadding(IIII)V

    .line 141
    const/high16 v3, 0x4000

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    .line 145
    const v3, #android:dimen@kg_small_widget_height#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    .line 147
    const v3, #android:drawable@kg_widget_bg_padded#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 149
    const v3, #android:drawable@lock_widget_page_light#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    const v3, #android:color@kg_widget_pager_gradient#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    .line 151
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 152
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    return-void
.end method

.method private drawGradientOverlay(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 273
    return-void
.end method

.method private drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    const/high16 v0, -0x6601

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 279
    :cond_0
    return-void
.end method

.method private isSPlannerWidget()Z
    .locals 6

    .prologue
    .line 451
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 452
    .local v3, res:Landroid/content/res/Resources;
    const v4, #android:bool@config_isSPlannerWidget#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 453
    .local v2, isSPlannerWidget:Z
    if-eqz v2, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 455
    .local v0, content:Landroid/view/View;
    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_0

    .line 456
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .end local v0           #content:Landroid/view/View;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 457
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const v5, #android:string@widget_default_class_name#t

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 458
    const/4 v4, 0x1

    .line 462
    .end local v1           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private performAppWidgetSizeCallbacksIfNecessary()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v7

    .line 583
    .local v7, content:Landroid/view/View;
    instance-of v1, v7, Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_0

    .line 599
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    goto :goto_0

    :cond_1
    move-object v0, v7

    .line 593
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 594
    .local v0, awhv:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    .line 596
    .local v8, density:F
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v2, v1

    .line 597
    .local v2, width:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v3, v1

    .line 598
    .local v3, height:I
    const/4 v1, 0x0

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    goto :goto_0
.end method

.method private setWidgetHeight(I)V
    .locals 4
    .parameter "height"

    .prologue
    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, needLayout:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    .line 403
    .local v2, widget:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 404
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 405
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, p1, :cond_0

    .line 406
    const/4 v1, 0x1

    .line 407
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 410
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    if-eqz v1, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->requestLayout()V

    .line 413
    :cond_1
    return-void
.end method

.method private shrinkWidgetDelay()V
    .locals 5

    .prologue
    .line 469
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.keyguard.shrinkWidget"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v1, mIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, content:Landroid/view/View;
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 478
    return-void
.end method

.method private updateGradient()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 548
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_0

    move v1, v2

    .line 549
    .local v1, x0:F
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    .line 550
    .local v3, x1:F
    :goto_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    .line 552
    new-instance v7, Landroid/graphics/LinearGradient;

    iget v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v8, v3

    move v9, v2

    move v10, v1

    move v11, v2

    move v13, v6

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    .line 554
    return-void

    .line 548
    .end local v1           #x0:F
    .end local v3           #x1:F
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    goto :goto_0

    .restart local v1       #x0:F
    :cond_1
    move v3, v2

    .line 549
    goto :goto_1
.end method


# virtual methods
.method public adjustFrame(I)V
    .locals 2
    .parameter "challengeTop"

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getPaddingBottom()I

    move-result v1

    add-int v0, p1, v1

    .line 434
    .local v0, frameHeight:I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 435
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->cancelLongPress()V

    .line 266
    return-void
.end method

.method public disableHardwareLayers()V
    .locals 2

    .prologue
    .line 343
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setLayerType(ILandroid/graphics/Paint;)V

    .line 344
    return-void
.end method

.method public disableHardwareLayersForContent()V
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, widget:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 334
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 336
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->drawBg(Landroid/graphics/Canvas;)V

    .line 306
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 307
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->drawGradientOverlay(Landroid/graphics/Canvas;)V

    .line 309
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 312
    return-void
.end method

.method protected drawBg(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x437f

    .line 282
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 285
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 286
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 290
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsReordering:Z

    if-nez v2, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 293
    .local v1, bgLight:Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 294
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 295
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 298
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    .end local v1           #bgLight:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setLayerType(ILandroid/graphics/Paint;)V

    .line 340
    return-void
.end method

.method public enableHardwareLayersForContent()V
    .locals 3

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, widget:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 322
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 324
    :cond_0
    return-void
.end method

.method public fadeFrame(Ljava/lang/Object;ZFI)V
    .locals 5
    .parameter "caller"
    .parameter "takeControl"
    .parameter "alpha"
    .parameter "duration"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 529
    if-eqz p2, :cond_0

    .line 530
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 545
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 538
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 539
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    .line 541
    :cond_2
    const-string v1, "backgroundAlpha"

    new-array v2, v4, [F

    aput p3, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 542
    .local v0, bgAlpha:Landroid/animation/PropertyValuesHolder;
    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    .line 543
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 544
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentAlpha()F
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    return v0
.end method

.method public getContentAppWidgetId()I
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 352
    .local v0, content:Landroid/view/View;
    instance-of v1, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_0

    .line 353
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .end local v0           #content:Landroid/view/View;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    .line 357
    :goto_0
    return v1

    .line 354
    .restart local v0       #content:Landroid/view/View;
    :cond_0
    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    if-eqz v1, :cond_1

    .line 355
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    .end local v0           #content:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->getAppWidgetId()I

    move-result v1

    goto :goto_0

    .line 357
    .restart local v0       #content:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmallFrameHeight()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    return v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hideFrame(Ljava/lang/Object;)V
    .locals 3
    .parameter "caller"

    .prologue
    .line 516
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x23f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 517
    return-void
.end method

.method public hideFrameTouched(Ljava/lang/Object;)V
    .locals 3
    .parameter "caller"

    .prologue
    .line 520
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x23f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 521
    return-void
.end method

.method public isSmall()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    return v0
.end method

.method public onActive(Z)V
    .locals 0
    .parameter "isActive"

    .prologue
    .line 618
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 170
    return-void
.end method

.method public onBouncerShowing(Z)V
    .locals 0
    .parameter "showing"

    .prologue
    .line 627
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 164
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 207
    .local v0, appWidgetId:I
    if-nez v0, :cond_0

    .line 208
    const-string v1, "KeyguardWidgetFrame"

    const-string v2, "appWidgetId is invalid"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return v3

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isContextualWidget(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    const-string v1, "KeyguardWidgetFrame"

    const-string v2, "appWidgetId is in Contextual widget"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->postCheckForLongPress(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 577
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 578
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    .line 579
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v6, 0x0

    .line 558
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 560
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-nez v0, :cond_0

    .line 561
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 572
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->updateGradient()V

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 574
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 253
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    .line 260
    return-void
.end method

.method public resetSize()V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 497
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-nez v0, :cond_0

    .line 498
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 501
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 377
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    .line 379
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 381
    :cond_0
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .locals 1
    .parameter "multiplier"

    .prologue
    .line 366
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    .line 368
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 370
    :cond_0
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 388
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, content:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 393
    :cond_0
    return-void
.end method

.method public setFrameHeight(I)V
    .locals 7
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 504
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 510
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 511
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->updateGradient()V

    .line 512
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 513
    return-void
.end method

.method setIsHoveringOverDeleteDropTarget(Z)V
    .locals 1
    .parameter "isHovering"

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eq v0, p1, :cond_0

    .line 186
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 190
    :cond_0
    return-void
.end method

.method public setIsReordering(Z)V
    .locals 0
    .parameter "isReordering"

    .prologue
    .line 641
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsReordering:Z

    .line 642
    return-void
.end method

.method public setMaxChallengeTop(I)V
    .locals 2
    .parameter "top"

    .prologue
    .line 416
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 417
    .local v0, dirty:Z
    :goto_0
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    .line 418
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getPaddingTop()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    .line 419
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    .line 420
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-eqz v1, :cond_2

    .line 421
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 422
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 426
    :cond_0
    :goto_1
    return-void

    .line 416
    .end local v0           #dirty:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 423
    .restart local v0       #dirty:Z
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-eqz v1, :cond_0

    .line 424
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    goto :goto_1
.end method

.method setOverScrollAmount(FZ)V
    .locals 3
    .parameter "r"
    .parameter "left"

    .prologue
    .line 602
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    .line 604
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    .line 605
    const/high16 v1, 0x3f00

    mul-float/2addr v1, p1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    .line 609
    const v1, 0x3f19999a

    const v2, 0x3ecccccc

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 611
    .local v0, bgAlpha:F
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 612
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 614
    .end local v0           #bgAlpha:F
    :cond_0
    return-void

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    goto :goto_0
.end method

.method public setWidgetLockedSmall(Z)V
    .locals 1
    .parameter "locked"

    .prologue
    .line 489
    if-eqz p1, :cond_0

    .line 490
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 492
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    .line 493
    return-void
.end method

.method public setWorkerHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "workerHandler"

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    .line 631
    return-void
.end method

.method public showFrame(Ljava/lang/Object;)V
    .locals 3
    .parameter "caller"

    .prologue
    .line 524
    const/4 v0, 0x1

    const v1, 0x3f19999a

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 526
    return-void
.end method

.method public shrinkWidget()V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 486
    return-void
.end method

.method public shrinkWidget(Z)V
    .locals 1
    .parameter "alsoShrinkFrame"

    .prologue
    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 439
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSPlannerWidget()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 440
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidgetDelay()V

    .line 445
    :goto_0
    if-eqz p1, :cond_0

    .line 446
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 448
    :cond_0
    return-void

    .line 442
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    goto :goto_0
.end method

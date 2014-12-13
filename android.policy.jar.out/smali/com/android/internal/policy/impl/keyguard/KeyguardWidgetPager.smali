.class public Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
.super Lcom/android/internal/policy/impl/keyguard/PagedView;
.source "KeyguardWidgetPager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field public static final CHILDREN_OUTLINE_FADE_IN_DURATION:I = 0x64

.field public static final CHILDREN_OUTLINE_FADE_OUT_DURATION:I = 0x23f

.field private static final CUSTOM_WIDGET_USER_ACTIVITY_TIMEOUT:J = 0x2710L

.field private static final CUSTOM_WIDGET_USER_ACTIVITY_TIMEOUT_WITH_SMART_STAY:J = 0x1388L

.field protected static OVERSCROLL_MAX_ROTATION:F = 0.0f

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardWidgetPager"


# instance fields
.field private BOUNCER_SCALE_FACTOR:F

.field private mAddWidgetView:Landroid/view/View;

.field private final mBackgroundWorkerHandler:Landroid/os/Handler;

.field private final mBackgroundWorkerThread:Landroid/os/HandlerThread;

.field private mBouncerZoomInOutDuration:I

.field private mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

.field private mCenterSmallWidgetsVertically:Z

.field protected mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

.field private mHasMeasure:Z

.field private mIsEasyUxOn:Z

.field private mIsMultipleLockOn:Z

.field private mIsSmartStayOn:Z

.field private mIsStandbyOn:Z

.field private mLastHeightMeasureSpec:I

.field private mLastWidthMeasureSpec:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPage:I

.field protected mScreenCenter:I

.field protected mShowingInitialHints:Z

.field protected mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

.field private mWidgetToResetAfterFadeOut:I

.field mZInterpolator:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;

.field showHintsAfterLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const v0, 0x461c4000

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    .line 59
    const/high16 v0, 0x41f0

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;

    const/high16 v3, 0x3f00

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZInterpolator:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;

    .line 70
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showHintsAfterLayout:Z

    .line 77
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    .line 81
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    .line 89
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    .line 90
    const v0, 0x3f2b851f

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setImportantForAccessibility(I)V

    .line 110
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setPageSwitchListener(Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;)V

    .line 112
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "KeyguardWidgetPager Worker"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 114
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsEasyUxOn:Z

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_multiple_lockscreen"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsMultipleLockOn:Z

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "usm_setting"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsStandbyOn:Z

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsSmartStayOn:Z

    .line 129
    return-void

    :cond_1
    move v0, v2

    .line 117
    goto :goto_0

    :cond_2
    move v0, v1

    .line 120
    goto :goto_1

    :cond_3
    move v0, v1

    .line 124
    goto :goto_2

    :cond_4
    move v2, v1

    .line 127
    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    return-void
.end method

.method private captureUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 267
    .local v0, currentWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private enforceKeyguardWidgetFrame(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 466
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyguardWidgetPager children must be KeyguardWidgetFrames"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_0
    return-void
.end method

.method private getContextualWidgetsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_contextual_widget_ids"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, appWidgetIdString:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 244
    .end local v0           #appWidgetIdString:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #appWidgetIdString:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePageAlphaValues(I)V
    .locals 0
    .parameter "screenCenter"

    .prologue
    .line 548
    return-void
.end method

.method private updateWidgetFrameImportantForAccessibility(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V
    .locals 2
    .parameter "frame"

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 215
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method private updateWidgetFramesImportantForAccessibility()V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageCount()I

    move-result v2

    .line 207
    .local v2, pageCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 208
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 209
    .local v0, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_0
    return-void
.end method

.method private userActivity()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onUserActivityTimeoutChanged()V

    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->userActivity()V

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 0
    .parameter "child"
    .parameter "index"

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 432
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;I)V

    .line 433
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 442
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;II)V

    .line 443
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 462
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 463
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "params"

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 452
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    return-void
.end method

.method public addWidget(Landroid/view/View;)V
    .locals 1
    .parameter "widget"

    .prologue
    .line 308
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 309
    return-void
.end method

.method public addWidget(Landroid/view/View;I)V
    .locals 12
    .parameter "widget"
    .parameter "pageIndex"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    .line 374
    instance-of v7, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-nez v7, :cond_3

    .line 375
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 376
    .local v3, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 378
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x30

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 382
    invoke-virtual {p1, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 383
    invoke-virtual {v3, p1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    instance-of v7, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v7, :cond_0

    move-object v0, p1

    .line 387
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 388
    .local v0, awhv:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 389
    .local v4, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_2

    .line 390
    invoke-virtual {v3, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    .line 403
    .end local v0           #awhv:Landroid/appwidget/AppWidgetHostView;
    .end local v4           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 405
    .local v6, pageLp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 406
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWorkerHandler(Landroid/os/Handler;)V

    .line 408
    if-ne p2, v8, :cond_4

    .line 409
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    :goto_1
    if-ne p1, v3, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v1

    .line 416
    .local v1, content:Landroid/view/View;
    :goto_2
    if-eqz v1, :cond_1

    .line 417
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    const v8, #android:string@keyguard_accessibility_widget#t

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, contentDescription:Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 422
    .end local v2           #contentDescription:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    .line 423
    return-void

    .line 393
    .end local v1           #content:Landroid/view/View;
    .end local v6           #pageLp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v0       #awhv:Landroid/appwidget/AppWidgetHostView;
    .restart local v4       #info:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v5       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {v3, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    .line 394
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCenterSmallWidgetsVertically:Z

    if-eqz v7, :cond_0

    .line 395
    const/16 v7, 0x11

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .end local v0           #awhv:Landroid/appwidget/AppWidgetHostView;
    .end local v3           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v4           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    move-object v3, p1

    .line 400
    check-cast v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .restart local v3       #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    goto :goto_0

    .line 411
    .restart local v6       #pageLp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {p0, v3, p2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    move-object v1, p1

    .line 415
    goto :goto_2
.end method

.method animateOutlinesAndSidePages(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 730
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V

    .line 731
    return-void
.end method

.method animateOutlinesAndSidePages(ZI)V
    .locals 13
    .parameter "show"
    .parameter "duration"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 742
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_0

    .line 743
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->cancel()V

    .line 744
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v4

    .line 748
    .local v4, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v2, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 751
    if-eqz p1, :cond_2

    const/16 p2, 0x64

    .line 755
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v5

    .line 756
    .local v5, curPage:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v4, :cond_6

    .line 758
    if-eqz p1, :cond_3

    .line 759
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v6

    .line 765
    .local v6, finalContentAlpha:F
    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 767
    .local v3, child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    const-string v9, "contentAlpha"

    new-array v10, v11, [F

    aput v6, v10, v12

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 768
    .local v1, alpha:Landroid/animation/PropertyValuesHolder;
    new-array v9, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v9, v12

    invoke-static {v3, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 769
    .local v0, a:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    if-eqz p1, :cond_5

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getOutlineAlphaForPage(IIZ)F

    move-result v7

    .line 772
    .local v7, finalOutlineAlpha:F
    :goto_3
    invoke-virtual {v3, p0, p1, v7, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 756
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 751
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v1           #alpha:Landroid/animation/PropertyValuesHolder;
    .end local v3           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v5           #curPage:I
    .end local v6           #finalContentAlpha:F
    .end local v7           #finalOutlineAlpha:F
    .end local v8           #i:I
    :cond_2
    const/16 p2, 0x23f

    goto :goto_0

    .line 760
    .restart local v5       #curPage:I
    .restart local v8       #i:I
    :cond_3
    if-nez p1, :cond_4

    if-ne v8, v5, :cond_4

    .line 761
    const/high16 v6, 0x3f80

    .restart local v6       #finalContentAlpha:F
    goto :goto_2

    .line 763
    .end local v6           #finalContentAlpha:F
    :cond_4
    const/4 v6, 0x0

    .restart local v6       #finalContentAlpha:F
    goto :goto_2

    .line 771
    .restart local v0       #a:Landroid/animation/ObjectAnimator;
    .restart local v1       #alpha:Landroid/animation/PropertyValuesHolder;
    .restart local v3       #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 775
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v1           #alpha:Landroid/animation/PropertyValuesHolder;
    .end local v3           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v6           #finalContentAlpha:F
    :cond_6
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    .line 776
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 778
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    int-to-long v10, p2

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 779
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;

    invoke-direct {v10, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;Z)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 802
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 803
    return-void
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 1
    .parameter "r"

    .prologue
    .line 544
    const/high16 v0, 0x3f80

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method boundByReorderablePages(Z[I)V
    .locals 4
    .parameter "isReordering"
    .parameter "range"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 630
    if-eqz p1, :cond_3

    .line 632
    :goto_0
    aget v0, p2, v3

    aget v1, p2, v2

    if-lt v0, v1, :cond_1

    aget v0, p2, v3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isContextualPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    aget v0, p2, v3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    :cond_0
    aget v0, p2, v3

    add-int/lit8 v0, v0, -0x1

    aput v0, p2, v3

    goto :goto_0

    .line 634
    :cond_1
    :goto_1
    aget v0, p2, v2

    aget v1, p2, v3

    if-gt v0, v1, :cond_3

    aget v0, p2, v2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isContextualPage(I)Z

    move-result v0

    if-nez v0, :cond_2

    aget v0, p2, v2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 635
    :cond_2
    aget v0, p2, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v2

    goto :goto_1

    .line 637
    :cond_3
    return-void
.end method

.method protected disablePageContentLayers()V
    .locals 3

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 514
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 515
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->disableHardwareLayersForContent()V

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 235
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected enablePageContentLayers()V
    .locals 3

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 507
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 508
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->enableHardwareLayersForContent()V

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    :cond_0
    return-void
.end method

.method public getAlphaForPage(IIZ)F
    .locals 2
    .parameter "screenCenter"
    .parameter "index"
    .parameter "showSidePages"

    .prologue
    const/high16 v0, 0x3f80

    .line 551
    if-eqz p3, :cond_1

    .line 554
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-eq p2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutlineAlphaForPage(IIZ)F
    .locals 2
    .parameter "screenCenter"
    .parameter "index"
    .parameter "showSidePages"

    .prologue
    .line 559
    if-eqz p3, :cond_0

    .line 560
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    .line 563
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserActivityTimeout()J
    .locals 8

    .prologue
    const-wide/16 v5, 0x2710

    const-wide/16 v3, 0x1388

    .line 275
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, page:Landroid/view/View;
    instance-of v7, v0, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    move-object v1, v0

    .line 277
    check-cast v1, Landroid/view/ViewGroup;

    .line 278
    .local v1, vg:Landroid/view/ViewGroup;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 279
    .local v2, view:Landroid/view/View;
    instance-of v7, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    if-nez v7, :cond_3

    instance-of v7, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    if-nez v7, :cond_3

    .line 281
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v7

    if-eqz v7, :cond_1

    move-wide v3, v5

    .line 292
    .end local v1           #vg:Landroid/view/ViewGroup;
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-wide v3

    .line 283
    .restart local v1       #vg:Landroid/view/ViewGroup;
    .restart local v2       #view:Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isFolderOpened(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 287
    :cond_2
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsSmartStayOn:Z

    if-nez v7, :cond_0

    move-wide v3, v5

    goto :goto_0

    .line 292
    .end local v1           #vg:Landroid/view/ViewGroup;
    .end local v2           #view:Landroid/view/View;
    :cond_3
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .locals 1
    .parameter "index"

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    return-object v0
.end method

.method public getWidgetPageIndex(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 845
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 849
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getWidgetToResetOnPageFadeOut()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method hideOutlinesAndSidePages()V
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    .line 662
    return-void
.end method

.method public isAddPage(I)Z
    .locals 3
    .parameter "pageIndex"

    .prologue
    .line 946
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 947
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, #android:id@keyguard_add_widget#t

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCameraPage(I)Z
    .locals 2
    .parameter "pageIndex"

    .prologue
    .line 951
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 952
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isContextualPage(I)Z
    .locals 4
    .parameter "pageIndex"

    .prologue
    const/4 v2, 0x0

    .line 961
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 973
    :cond_0
    :goto_0
    return v2

    .line 964
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 965
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v3, :cond_0

    .line 967
    instance-of v3, v1, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;

    if-nez v3, :cond_0

    move-object v0, v1

    .line 970
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 971
    .local v0, kwf:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isContextualWidget(I)Z

    move-result v2

    goto :goto_0
.end method

.method protected isOverScrollChild(IF)Z
    .locals 6
    .parameter "index"
    .parameter "scrollProgress"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 568
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    if-le v3, v4, :cond_3

    :cond_0
    move v0, v1

    .line 569
    .local v0, isInOverscroll:Z
    :goto_0
    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    cmpg-float v3, p2, v5

    if-ltz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_4

    cmpl-float v3, p2, v5

    if-lez v3, :cond_4

    :cond_2
    :goto_1
    return v1

    .end local v0           #isInOverscroll:Z
    :cond_3
    move v0, v2

    .line 568
    goto :goto_0

    .restart local v0       #isInOverscroll:Z
    :cond_4
    move v1, v2

    .line 569
    goto :goto_1
.end method

.method public isWidgetPage(I)Z
    .locals 4
    .parameter "pageIndex"

    .prologue
    const/4 v2, 0x0

    .line 610
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 622
    :cond_0
    :goto_0
    return v2

    .line 613
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 614
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v3, :cond_0

    .line 616
    instance-of v3, v1, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;

    if-nez v3, :cond_0

    move-object v0, v1

    .line 619
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 620
    .local v0, kwf:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onAddView(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "index"

    .prologue
    .line 345
    move-object v2, p1

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 346
    .local v0, appWidgetId:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    array-length v2, v2

    new-array v1, v2, [I

    .line 347
    .local v1, pagesRange:[I
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getVisiblePages([I)V

    .line 348
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->boundByReorderablePages(Z[I)V

    .line 350
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onAddView(Landroid/view/View;)V

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onAddView(Landroid/view/View;)V

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$2;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;II[I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 689
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onAttachedToWindow()V

    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 691
    return-void
.end method

.method public onBouncerStateChanged(Z)V
    .locals 0
    .parameter "bouncerActive"

    .prologue
    .line 862
    if-eqz p1, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    .line 867
    :goto_0
    return-void

    .line 865
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onDetachedFromWindow()V

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 137
    return-void
.end method

.method protected onEndReordering()V
    .locals 0

    .prologue
    .line 652
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onEndReordering()V

    .line 653
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 654
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 260
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsStandbyOn:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsEasyUxOn:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsMultipleLockOn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getContextualWidgetsString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 262
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 808
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeOverlapping()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 811
    .local v0, isChallengeOverlapping:Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 812
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    const v3, #android:string@keyguard_edit_widget_toast_diable#t

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 824
    :cond_0
    :goto_1
    return v1

    .end local v0           #isChallengeOverlapping:Z
    :cond_1
    move v0, v1

    .line 808
    goto :goto_0

    .line 818
    .restart local v0       #isChallengeOverlapping:Z
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsMultipleLockOn:Z

    if-eqz v3, :cond_0

    .line 821
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->startReordering()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 822
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 694
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    .line 695
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    .line 697
    const/4 v4, -0x1

    .line 698
    .local v4, maxChallengeTop:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 699
    .local v5, parent:Landroid/view/View;
    const/4 v0, 0x0

    .line 703
    .local v0, challengeShowing:Z
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v8, :cond_1

    .line 704
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 705
    .local v6, scl:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMaxChallengeTop()I

    move-result v7

    .line 709
    .local v7, top:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPaddingTop()I

    move-result v8

    sub-int v4, v7, v8

    .line 711
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v4, v8

    .line 712
    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    .line 714
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 715
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 716
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    .line 717
    .local v2, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setMaxChallengeTop(I)V

    .line 720
    if-eqz v0, :cond_0

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ne v3, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    if-nez v8, :cond_0

    .line 721
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget()V

    .line 715
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 725
    .end local v1           #count:I
    .end local v2           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v3           #i:I
    .end local v6           #scl:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .end local v7           #top:I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onMeasure(II)V

    .line 726
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 727
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageBeginMoving()V

    .line 486
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 489
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 490
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageEndMoving()V

    .line 500
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 503
    :cond_1
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 9
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    const/4 v8, 0x0

    .line 156
    const/4 v4, 0x0

    .line 157
    .local v4, showingStatusWidget:Z
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v5, p1

    .line 158
    check-cast v5, Landroid/view/ViewGroup;

    .line 159
    .local v5, vg:Landroid/view/ViewGroup;
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    if-eqz v6, :cond_0

    .line 160
    const/4 v4, 0x1

    .line 165
    .end local v5           #vg:Landroid/view/ViewGroup;
    :cond_0
    if-eqz v4, :cond_5

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v6

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    .line 172
    :goto_0
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    if-eq v6, p2, :cond_3

    .line 173
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    .line 174
    .local v2, oldPageIndex:I
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    .line 175
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 176
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 177
    .local v3, oldWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {v3, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    .line 180
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 181
    .local v1, newWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_2

    .line 182
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    .line 183
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->requestAccessibilityFocus()Z

    .line 185
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 186
    const/16 v6, 0x1000

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 188
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 190
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 193
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    .end local v1           #newWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v2           #oldPageIndex:I
    .end local v3           #oldWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v6, :cond_4

    .line 194
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageSwitched(Landroid/view/View;I)V

    .line 196
    :cond_4
    return-void

    .line 168
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v6

    const v7, -0x800001

    and-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 1
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageSwitching(Landroid/view/View;I)V

    .line 152
    :cond_0
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "deletePermanently"

    .prologue
    .line 312
    move-object v1, p1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 313
    .local v0, appWidgetId:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveView(Landroid/view/View;Z)V

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onRemoveView(Landroid/view/View;)V

    .line 320
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveView(Landroid/view/View;Z)V

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onRemoveView(Landroid/view/View;)V

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveViewAnimationCompleted()V

    .line 342
    :cond_0
    return-void
.end method

.method protected onStartReordering()V
    .locals 0

    .prologue
    .line 645
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onStartReordering()V

    .line 646
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enablePageContentLayers()V

    .line 647
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->reorderStarting()V

    .line 648
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 251
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsStandbyOn:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsEasyUxOn:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsMultipleLockOn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getContextualWidgetsString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 253
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showPagingFeedback()V

    .line 479
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->acceleratedOverScroll(F)V

    .line 541
    return-void
.end method

.method public removeWidget(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 828
    instance-of v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_0

    .line 829
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    .line 842
    :goto_0
    return-void

    .line 833
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    .line 834
    .local v1, pos:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 835
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 836
    .local v0, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->removeView(Landroid/view/View;)V

    .line 837
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 839
    .end local v0           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_1
    const-string v2, "KeyguardWidgetPager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeWidget() can\'t find:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected reorderStarting()V
    .locals 0

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 641
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 10
    .parameter "screenCenter"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 575
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    .line 576
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updatePageAlphaValues(I)V

    .line 577
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 578
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v5

    .line 579
    .local v5, v:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-ne v5, v6, :cond_1

    .line 577
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_1
    if-eqz v5, :cond_0

    .line 581
    invoke-virtual {p0, p1, v5, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 583
    .local v4, scrollProgress:F
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    sget v8, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    mul-float/2addr v6, v8

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setCameraDistance(F)V

    .line 585
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isOverScrollChild(IF)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 586
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .line 587
    .local v2, pivotX:F
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .line 588
    .local v3, pivotY:F
    invoke-virtual {v5, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPivotX(F)V

    .line 589
    invoke-virtual {v5, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPivotY(F)V

    .line 590
    sget v6, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    neg-float v6, v6

    mul-float/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    .line 591
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v6, v4, v9

    if-gez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v8, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    .line 597
    .end local v2           #pivotX:F
    .end local v3           #pivotY:F
    :goto_3
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getAlpha()F

    move-result v0

    .line 600
    .local v0, alpha:F
    cmpl-float v6, v0, v9

    if-nez v6, :cond_4

    .line 601
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1

    .end local v0           #alpha:F
    .restart local v2       #pivotX:F
    .restart local v3       #pivotY:F
    :cond_2
    move v6, v7

    .line 591
    goto :goto_2

    .line 593
    .end local v2           #pivotX:F
    .end local v3           #pivotY:F
    :cond_3
    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    .line 594
    invoke-virtual {v5, v9, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    goto :goto_3

    .line 602
    .restart local v0       #alpha:F
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 603
    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1

    .line 607
    .end local v0           #alpha:F
    .end local v4           #scrollProgress:F
    .end local v5           #v:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_5
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 200
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->sendAccessibilityEvent(I)V

    .line 203
    :cond_1
    return-void
.end method

.method setAddWidgetEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 928
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 929
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;I)V

    .line 932
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->measure(II)V

    .line 934
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 935
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 937
    const v1, #android:id@keyguard_add_widget#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 938
    .local v0, addWidget:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 939
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    .line 940
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method setBouncerAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 870
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    .line 871
    return-void
.end method

.method public setCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;)V
    .locals 0
    .parameter "callbacks"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    .line 297
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0
    .parameter "currentPage"

    .prologue
    .line 683
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setCurrentPage(I)V

    .line 684
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    .line 685
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 145
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 1
    .parameter "viewIndex"
    .parameter "isHovering"

    .prologue
    .line 855
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 856
    .local v0, child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setIsHoveringOverDeleteDropTarget(Z)V

    .line 857
    return-void
.end method

.method public setViewStateManager(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V
    .locals 0
    .parameter "viewStateManager"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .line 141
    return-void
.end method

.method public setWidgetToResetOnPageFadeOut(I)V
    .locals 0
    .parameter "widget"

    .prologue
    .line 734
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    .line 735
    return-void
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 957
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showInitialPageHints()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 665
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    .line 666
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 667
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 668
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 669
    .local v0, child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-eq v2, v3, :cond_0

    .line 671
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 673
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    .line 667
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 675
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 676
    const/high16 v3, 0x3f80

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    goto :goto_1

    .line 679
    .end local v0           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_1
    return-void
.end method

.method showOutlinesAndSidePages()V
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    .line 658
    return-void
.end method

.method public showPagingFeedback()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method zoomInFromBouncer()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 875
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 878
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 879
    .local v0, currentPage:Landroid/view/View;
    if-nez v0, :cond_2

    .line 894
    .end local v0           #currentPage:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 882
    .restart local v0       #currentPage:Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_4

    .line 883
    :cond_3
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 884
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 887
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 888
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc0

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 889
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 891
    :cond_4
    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v1, :cond_1

    .line 892
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .end local v0           #currentPage:Landroid/view/View;
    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    goto :goto_0
.end method

.method zoomOutToBouncer()V
    .locals 9

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 898
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 899
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v0

    .line 902
    .local v0, curPage:I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 903
    .local v1, currentPage:Landroid/view/View;
    if-nez v1, :cond_2

    .line 925
    .end local v1           #currentPage:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 906
    .restart local v1       #currentPage:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 907
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 910
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 911
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 913
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_4

    .line 914
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 915
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v6, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "scaleY"

    new-array v5, v7, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v6, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 918
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 919
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc0

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 920
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 922
    :cond_4
    instance-of v2, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_1

    .line 923
    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .end local v1           #currentPage:Landroid/view/View;
    invoke-virtual {v1, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    goto :goto_0
.end method

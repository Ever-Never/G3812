.class public Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
    }
.end annotation


# static fields
.field private static REVISE_WINDOW_BOUNDARY_X:I = 0x0

.field private static REVISE_WINDOW_BOUNDARY_Y:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MultiPhoneWindowEvent"

.field private static mIsFillWindow:Z

.field private static sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

.field private static sIsQueriedActionBarViewSetMultiWindowReserved:Z

.field private static statusBarHeight:I


# instance fields
.field private ENABLED_EXIT_BUTTON:Z

.field private ENABLED_MINIMIZED_BUTTON:Z

.field private ENABLED_MINIMIZE_MOVING_ANIMATION:Z

.field private ENABLED_OVERLAY_TITLEBAR:Z

.field private ENABLED_PINUP_BUTTON:Z

.field private ENABLED_REVISE_MINIMIZED_POSITION:Z

.field private ENABLED_TITLEBAR_GESTURE_TRIGGER:Z

.field private ENABLED_TITLE_BAR_DOUBLE_TAPPING:Z

.field private final HOVERING_WIDTH:I

.field private fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

.field private hasGuideLayout:Z

.field private longDownX:I

.field private longDownY:I

.field private mActivity:Landroid/app/Activity;

.field private mActivityStyles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationStyles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArrange:I

.field private mBorderFrame:Landroid/widget/FrameLayout;

.field private mBorderLayout:Landroid/widget/LinearLayout;

.field private mBottomBorderPadding:I

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDecor:Landroid/view/ViewGroup;

.field private mDisplayOrientation:I

.field mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

.field private mDividor1:Landroid/view/View;

.field private mDividor2:Landroid/view/View;

.field private mDividor3:Landroid/view/View;

.field private mDividor4:Landroid/view/View;

.field private mDividor5:Landroid/view/View;

.field private mExitButton:Landroid/widget/ImageButton;

.field private mGestureView:Landroid/gesture/GestureOverlayView;

.field final mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

.field private mHide:Z

.field private mIsDelay:Z

.field private mIsFixedRatio:Z

.field private mIsFreestyleOnly:Z

.field private mIsHideFlashBarTray:Z

.field private mIsLastMinimized:Z

.field private mIsLastPinup:Z

.field private mIsNoTitleBar:Z

.field private mIsPhone:Z

.field private mIsResizeOnly:Z

.field private mIsTouchable:Z

.field private mIvt:[B

.field private mLastMode:I

.field private mLastMultiwindowRect:Landroid/graphics/Rect;

.field private mLastWindowBackground:Landroid/graphics/drawable/Drawable;

.field private mLastWindowMode:I

.field private mLastWindowRect:Landroid/graphics/Rect;

.field private mLeftBorderPadding:I

.field private mMaxSize:Landroid/graphics/Point;

.field private mMaximizeButton:Landroid/widget/ImageButton;

.field private mMinHeight:F

.field private mMinWidth:F

.field private mMinimizeButton:Landroid/widget/ImageButton;

.field private mMinimizeIcon:Landroid/graphics/drawable/Drawable;

.field private mMoveWindowView:Landroid/view/View;

.field private mMultiWindowButton:Landroid/widget/ImageButton;

.field private mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

.field private mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

.field mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

.field private mOnTouchedView:Landroid/view/View;

.field private mOrientationChanging:Z

.field private mOwner:Landroid/view/Window;

.field private final mPaddingWidth:I

.field private mPinupButton:Landroid/widget/ImageButton;

.field private mRightBorderPadding:I

.field private mTitleText:Landroid/widget/TextView;

.field private mTopBorderPadding:I

.field private mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

.field private mUserWindowFlags:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

.field private mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowBackground:Landroid/graphics/drawable/Drawable;

.field private mWindowContentFrame:Landroid/widget/LinearLayout;

.field private mWindowIconic:Landroid/widget/ImageView;

.field private mWindowMode:I

.field private mWindowTitleBar:Landroid/view/View;

.field private mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

.field private supportFlick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    sput v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    .line 191
    sput-boolean v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    .line 203
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    .line 204
    sput-boolean v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sIsQueriedActionBarViewSetMultiWindowReserved:Z

    .line 206
    const/16 v0, 0x12c

    sput v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_X:I

    .line 207
    const/16 v0, 0xc8

    sput v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_Y:I

    return-void
.end method

.method private constructor <init>(Landroid/view/Window;)V
    .locals 27
    .parameter "owner"

    .prologue
    .line 728
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsResizeOnly:Z

    .line 115
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFreestyleOnly:Z

    .line 116
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFixedRatio:Z

    .line 117
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsNoTitleBar:Z

    .line 119
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsHideFlashBarTray:Z

    .line 125
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 126
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 127
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 129
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    .line 134
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    .line 139
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsTouchable:Z

    .line 153
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    .line 155
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 156
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    .line 158
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 161
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLeftBorderPadding:I

    .line 162
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTopBorderPadding:I

    .line 163
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mRightBorderPadding:I

    .line 164
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBottomBorderPadding:I

    .line 166
    const/high16 v25, 0x100

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    .line 167
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowRect:Landroid/graphics/Rect;

    .line 172
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 173
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    .line 175
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    .line 176
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    .line 177
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLE_BAR_DOUBLE_TAPPING:Z

    .line 178
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_PINUP_BUTTON:Z

    .line 179
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLEBAR_GESTURE_TRIGGER:Z

    .line 180
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_REVISE_MINIMIZED_POSITION:Z

    .line 181
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZE_MOVING_ANIMATION:Z

    .line 182
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_EXIT_BUTTON:Z

    .line 184
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportFlick:Z

    .line 186
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    .line 187
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    .line 188
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mHide:Z

    .line 189
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsDelay:Z

    .line 193
    const/16 v25, 0x1e

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPaddingWidth:I

    .line 194
    const/16 v25, 0x14

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->HOVERING_WIDTH:I

    .line 196
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    .line 197
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    .line 199
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    .line 201
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    .line 214
    new-instance v25, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    .line 216
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 217
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 219
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    .line 220
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastMultiwindowRect:Landroid/graphics/Rect;

    .line 223
    const/16 v25, 0x26

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v25, v0

    fill-array-data v25, :array_0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIvt:[B

    .line 2748
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 2832
    new-instance v25, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$7;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$7;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

    .line 729
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->arrange:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayOrientation:I

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportMinimize(Landroid/content/Context;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    .line 736
    sget-boolean v25, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v25, v0

    if-nez v25, :cond_2

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/content/ContextWrapper;

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    check-cast v25, Landroid/content/ContextWrapper;

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    .line 747
    .local v3, a:Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getMultiPhoneWindowEvent()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 748
    .local v23, stubEvent:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    if-eqz v23, :cond_2

    .line 749
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDisplayStub(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    .line 756
    .end local v3           #a:Landroid/app/Activity;
    .end local v23           #stubEvent:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "multiwindow"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "vibrator"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/SystemVibrator;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVibrator:Landroid/os/SystemVibrator;

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/Activity;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    .line 760
    const-string v25, "com.sec.android.multiwindow.STYLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->parseApplicationInfoMetaData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mApplicationStyles:Ljava/util/ArrayList;

    .line 761
    const-string v25, "com.sec.android.multiwindow.activity.STYLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->parseActivityInfoMetaData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivityStyles:Ljava/util/ArrayList;

    .line 762
    const-string v25, "resizeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasActivityStyle(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsResizeOnly:Z

    .line 763
    const-string v25, "freestyleOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasApplicationStyle(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFreestyleOnly:Z

    .line 764
    const-string v25, "noTitleBar"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasApplicationStyle(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    const-string v25, "noTitleBar"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasActivityStyle(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    :cond_3
    const/16 v25, 0x1

    :goto_1
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsNoTitleBar:Z

    .line 767
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, #android:array@config_multiWindowFixedRatioList#t

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 768
    .local v13, fixedRatioAppList:[Ljava/lang/String;
    move-object v9, v13

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    aget-object v12, v9, v16

    .line 769
    .local v12, fixedRatioApp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mApplicationStyles:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const-string v26, "fixedRatio"

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFixedRatio:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 780
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v12           #fixedRatioApp:Ljava/lang/String;
    .end local v13           #fixedRatioAppList:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v19           #len$:I
    :cond_4
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, #android:array@config_multiWindowHideFlashBarAppList#t

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 781
    .local v15, hideFlashBarAppList:[Ljava/lang/String;
    move-object v9, v15

    .restart local v9       #arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    .restart local v19       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    aget-object v14, v9, v16

    .line 782
    .local v14, hideApp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 783
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsHideFlashBarTray:Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 792
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v14           #hideApp:Ljava/lang/String;
    .end local v15           #hideFlashBarAppList:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v19           #len$:I
    :cond_5
    :goto_5
    const/4 v10, 0x0

    .line 793
    .local v10, disableFunctions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 794
    .local v21, pm:Landroid/content/pm/PackageManager;
    if-eqz v21, :cond_8

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v25

    const/16 v26, 0x80

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 796
    .local v5, activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_6

    .line 797
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 798
    .local v8, applicationMetaData:Landroid/os/Bundle;
    :goto_6
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 799
    .local v6, activityMetaData:Landroid/os/Bundle;
    if-eqz v6, :cond_6

    .line 800
    const-string v25, "com.samsung.android.sdk.multiwindow.disablefunction"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 801
    .local v4, activityFunction:Ljava/lang/String;
    if-eqz v4, :cond_e

    .line 802
    new-instance v11, Ljava/util/ArrayList;

    const-string v25, "\\|"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v10           #disableFunctions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, disableFunctions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v10, v11

    .line 813
    .end local v4           #activityFunction:Ljava/lang/String;
    .end local v6           #activityMetaData:Landroid/os/Bundle;
    .end local v8           #applicationMetaData:Landroid/os/Bundle;
    .end local v11           #disableFunctions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #disableFunctions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :goto_7
    const-string v25, "minimize"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v10, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->checkFunctionState(Ljava/util/List;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 814
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    .line 816
    :cond_7
    const-string v25, "exit"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v10, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->checkFunctionState(Ljava/util/List;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 817
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_EXIT_BUTTON:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 823
    .end local v5           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v21           #pm:Landroid/content/pm/PackageManager;
    :cond_8
    :goto_8
    new-instance v25, Landroid/graphics/Point;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    .line 827
    .local v22, shortSize:I
    :goto_9
    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0xa0

    move/from16 v25, v0

    sget v26, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v25, v25, v26

    const/16 v26, 0x258

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_10

    const/16 v25, 0x1

    :goto_a
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    .line 829
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v25

    sput v25, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 832
    .local v17, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getWindowMode()I

    move-result v24

    .line 833
    .local v24, windowMode:I
    invoke-static/range {v24 .. v24}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v20

    .line 835
    .local v20, mode:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateSplitRect(I)V

    .line 836
    sparse-switch v20, :sswitch_data_0

    .line 854
    :cond_9
    :goto_b
    new-instance v25, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "keyguard"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/KeyguardManager;

    .line 888
    .local v18, km:Landroid/app/KeyguardManager;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 889
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    goto/16 :goto_0

    .line 764
    .end local v10           #disableFunctions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #km:Landroid/app/KeyguardManager;
    .end local v20           #mode:I
    .end local v22           #shortSize:I
    .end local v24           #windowMode:I
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 768
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v12       #fixedRatioApp:Ljava/lang/String;
    .restart local v13       #fixedRatioAppList:[Ljava/lang/String;
    .restart local v16       #i$:I
    .restart local v19       #len$:I
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 781
    .end local v12           #fixedRatioApp:Ljava/lang/String;
    .end local v13           #fixedRatioAppList:[Ljava/lang/String;
    .restart local v14       #hideApp:Ljava/lang/String;
    .restart local v15       #hideFlashBarAppList:[Ljava/lang/String;
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 797
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v14           #hideApp:Ljava/lang/String;
    .end local v15           #hideFlashBarAppList:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v19           #len$:I
    .restart local v5       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v10       #disableFunctions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21       #pm:Landroid/content/pm/PackageManager;
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 804
    .restart local v4       #activityFunction:Ljava/lang/String;
    .restart local v6       #activityMetaData:Landroid/os/Bundle;
    .restart local v8       #applicationMetaData:Landroid/os/Bundle;
    :cond_e
    if-eqz v8, :cond_6

    .line 805
    :try_start_3
    const-string v25, "com.samsung.android.sdk.multiwindow.disablefunction"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 806
    .local v7, applicationFunction:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 807
    new-instance v11, Ljava/util/ArrayList;

    const-string v25, "\\|"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v10           #disableFunctions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #disableFunctions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v10, v11

    .end local v11           #disableFunctions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #disableFunctions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_7

    .line 826
    .end local v4           #activityFunction:Ljava/lang/String;
    .end local v5           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #activityMetaData:Landroid/os/Bundle;
    .end local v7           #applicationFunction:Ljava/lang/String;
    .end local v8           #applicationMetaData:Landroid/os/Bundle;
    .end local v21           #pm:Landroid/content/pm/PackageManager;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    goto/16 :goto_9

    .line 827
    .restart local v22       #shortSize:I
    :cond_10
    const/16 v25, 0x0

    goto/16 :goto_a

    .line 838
    .restart local v17       #intent:Landroid/content/Intent;
    .restart local v20       #mode:I
    .restart local v24       #windowMode:I
    :sswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v25

    if-nez v25, :cond_11

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->freestyleModeLayout(Landroid/content/Context;I)V

    .line 841
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto/16 :goto_b

    .line 844
    :sswitch_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v25

    if-nez v25, :cond_12

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fullScreenModeLayout(Landroid/content/Context;)V

    .line 847
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 848
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto/16 :goto_b

    .line 820
    .end local v17           #intent:Landroid/content/Intent;
    .end local v20           #mode:I
    .end local v22           #shortSize:I
    .end local v24           #windowMode:I
    :catch_0
    move-exception v25

    goto/16 :goto_8

    .line 787
    .end local v10           #disableFunctions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v25

    goto/16 :goto_5

    .line 775
    :catch_2
    move-exception v25

    goto/16 :goto_3

    .line 223
    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x4dt
        0x0t
        0x61t
        0x0t
        0x67t
        0x0t
        0x53t
        0x0t
        0x77t
        0x0t
        0x65t
        0x0t
        0x65t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 836
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->createGhostView(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasOverlayTitleBar(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsTouchable:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsTouchable:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOnTouchedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOnTouchedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMoveWindowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLE_BAR_DOUBLE_TAPPING:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZE_MOVING_ANIMATION:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportFlick:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mHide:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/os/SystemVibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLEBAR_GESTURE_TRIGGER:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/impl/MultiWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private calculatePaddingRect(I)Landroid/graphics/Rect;
    .locals 14
    .parameter "windowMode"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1520
    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v10

    .line 1522
    .local v10, winInfo:Landroid/os/Bundle;
    invoke-direct {p0, p1, v10}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1523
    .local v2, currentRect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1525
    .local v6, paddingRect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 1526
    .local v5, left:I
    const/4 v9, 0x0

    .line 1527
    .local v9, top:I
    const/4 v7, 0x0

    .line 1528
    .local v7, right:I
    const/4 v0, 0x0

    .line 1529
    .local v0, bottom:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1531
    .local v8, titleBarHeight:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v3, v11

    .line 1532
    .local v3, currentWidth:F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v1, v11

    .line 1533
    .local v1, currentHeight:F
    div-float v4, v3, v1

    .line 1535
    .local v4, fixedRatio:F
    div-float v11, v3, v4

    sub-float v11, v1, v11

    cmpl-float v11, v11, v13

    if-lez v11, :cond_1

    .line 1537
    div-float v11, v3, v4

    sub-float v11, v1, v11

    float-to-int v11, v11

    div-int/lit8 v0, v11, 0x2

    move v9, v0

    .line 1538
    invoke-virtual {v6, v5, v9, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1544
    :cond_0
    :goto_0
    return-object v6

    .line 1539
    :cond_1
    mul-float v11, v1, v4

    sub-float v11, v3, v11

    cmpl-float v11, v11, v13

    if-lez v11, :cond_0

    .line 1541
    mul-float v11, v1, v4

    sub-float v11, v3, v11

    float-to-int v11, v11

    div-int/lit8 v7, v11, 0x2

    move v5, v7

    .line 1542
    invoke-virtual {v6, v5, v9, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private checkFunctionState(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter "disableFunction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 936
    .local p1, disableFunctionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    const/4 v0, 0x0

    .line 940
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createGhostView(II)Z
    .locals 16
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 2465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    if-eqz v2, :cond_0

    .line 2467
    const-string v2, "MultiPhoneWindowEvent"

    const-string v3, "fd is not null. dismiss old guide relayout window"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 2471
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowMode()I

    move-result v14

    .line 2472
    .local v14, windowMode:I
    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v3, 0x200

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 2473
    const/4 v2, 0x0

    .line 2508
    :goto_0
    return v2

    .line 2476
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 2478
    .local v15, windowParam:Landroid/view/WindowManager$LayoutParams;
    iget v12, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2479
    .local v12, scaleWidth:I
    iget v11, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2480
    .local v11, scaleHeight:I
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->hScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 2481
    :cond_2
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->hScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->hScale:F

    :goto_1
    iget v3, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v12, v2

    .line 2482
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->vScale:F

    :goto_2
    iget v3, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v11, v2

    .line 2485
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v15, Landroid/view/WindowManager$LayoutParams;->y:I

    sget v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    sub-int/2addr v3, v5

    iget v5, v15, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v5, v12

    iget v7, v15, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v7, v11

    sget v8, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    sub-int/2addr v7, v8

    invoke-direct {v4, v2, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2488
    .local v4, windowRect:Landroid/graphics/Rect;
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_4

    .line 2491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v13, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2492
    .local v13, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2493
    .local v10, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    .line 2494
    iget v2, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v13

    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 2495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 2496
    iget v2, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v10

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 2498
    .end local v10           #height:I
    .end local v13           #width:I
    :cond_4
    new-instance v6, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int v2, v12, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int v3, v11, v3

    invoke-direct {v6, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 2501
    .local v6, delta:Landroid/graphics/Point;
    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    const/16 v7, 0x8

    const/16 v8, 0x1e

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;IILcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 2503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    sget v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setStatusBarHeight(I)V

    .line 2504
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    .line 2506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLeftBorderPadding:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTopBorderPadding:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mRightBorderPadding:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBottomBorderPadding:I

    invoke-virtual {v2, v3, v5, v7, v8}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setBackgroundPadding(IIII)V

    .line 2508
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2481
    .end local v4           #windowRect:Landroid/graphics/Rect;
    .end local v6           #delta:Landroid/graphics/Point;
    :cond_5
    const/high16 v2, 0x3f80

    goto/16 :goto_1

    .line 2482
    :cond_6
    const/high16 v2, 0x3f80

    goto/16 :goto_2
.end method

.method private forceHideInputMethod()Z
    .locals 2

    .prologue
    .line 314
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 315
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    .line 318
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private freestyleModeLayout(Landroid/content/Context;I)V
    .locals 24
    .parameter "context"
    .parameter "decoVisibility"

    .prologue
    .line 1047
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1049
    .local v7, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getWindowMode()I

    move-result v19

    .line 1051
    .local v19, windowMode:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isToolkitMode(I)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1052
    const v20, #android:layout@mw_window_border#t

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const v21, #android:id@windowContentFrame#t

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1056
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->wrapContentView(I)V

    .line 1057
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 1200
    :goto_0
    return-void

    .line 1061
    :cond_0
    const v20, #android:layout@mw_window_border#t

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const v21, #android:id@windowContentFrame#t

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const v21, #android:id@windowIconic#t

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    .line 1065
    new-instance v8, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    .line 1066
    .local v8, listener:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;
    new-instance v13, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v8}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;)V

    .line 1067
    .local v13, pwl:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
    new-instance v17, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    .line 1070
    .local v17, tbl:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x80

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1071
    .local v9, metaData:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v18

    .line 1072
    .local v18, winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 1074
    .local v14, r:Landroid/content/res/Resources;
    if-eqz v18, :cond_5

    .line 1075
    const-string v20, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 1076
    .local v10, minSize:Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 1077
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    .line 1091
    .end local v10           #minSize:Landroid/graphics/Rect;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_3

    .line 1092
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, #android:dimen@multiwindow_def_width#t

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, #android:dimen@multiwindow_def_height#t

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    .line 1096
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_8

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const-string v21, "activity"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 1098
    .local v4, am:Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1099
    .local v12, pm:Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_8

    if-eqz v12, :cond_8

    .line 1100
    const/16 v20, 0x64

    const/16 v21, 0x2

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v15

    .line 1101
    .local v15, runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v15, :cond_7

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_7

    .line 1102
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1103
    .local v16, t:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1104
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1115
    .end local v4           #am:Landroid/app/ActivityManager;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #metaData:Landroid/os/Bundle;
    .end local v12           #pm:Landroid/content/pm/PackageManager;
    .end local v14           #r:Landroid/content/res/Resources;
    .end local v15           #runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v16           #t:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v18           #winInfo:Landroid/os/Bundle;
    :catch_0
    move-exception v20

    .line 1118
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1121
    const v20, #android:layout@mw_window_title_bar#t

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, #android:id@dividor1#t

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, #android:id@dividor2#t

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, #android:id@dividor3#t

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor3:Landroid/view/View;

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor3:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, #android:id@dividor4#t

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor4:Landroid/view/View;

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor4:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, #android:id@dividor5#t

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, #android:id@titleText#t

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, #android:id@pinupButton#t

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, #android:id@multiwindowButton#t

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, #android:id@minimizeButton#t

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, #android:id@maximizeButton#t

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, #android:id@exitButton#t

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1163
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 1164
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1174
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1177
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->wrapContentView(I)V

    .line 1178
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 1182
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1183
    .local v3, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v20, "mPinupClickListener"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1184
    .local v5, field:Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$5;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 1197
    .end local v3           #activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #field:Ljava/lang/reflect/Field;
    :catch_1
    move-exception v20

    goto/16 :goto_0

    .line 1078
    .restart local v9       #metaData:Landroid/os/Bundle;
    .restart local v14       #r:Landroid/content/res/Resources;
    .restart local v18       #winInfo:Landroid/os/Bundle;
    :cond_5
    if-eqz v9, :cond_1

    .line 1079
    if-eqz v14, :cond_1

    .line 1080
    :try_start_2
    const-string v20, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1081
    .local v11, minSizeId:I
    if-eqz v11, :cond_6

    .line 1082
    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 1084
    :cond_6
    const-string v20, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1085
    if-eqz v11, :cond_1

    .line 1086
    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    goto/16 :goto_1

    .line 1108
    .end local v11           #minSizeId:I
    .restart local v4       #am:Landroid/app/ActivityManager;
    .restart local v12       #pm:Landroid/content/pm/PackageManager;
    .restart local v15       #runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_8

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 1113
    .end local v4           #am:Landroid/app/ActivityManager;
    .end local v12           #pm:Landroid/content/pm/PackageManager;
    .end local v15           #runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    sget-object v21, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 1167
    .end local v9           #metaData:Landroid/os/Bundle;
    .end local v14           #r:Landroid/content/res/Resources;
    .end local v18           #winInfo:Landroid/os/Bundle;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1171
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 1199
    :catch_2
    move-exception v20

    goto/16 :goto_0

    .line 1198
    :catch_3
    move-exception v20

    goto/16 :goto_0
.end method

.method private fullScreenModeLayout(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isResizable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1577
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->freestyleModeLayout(Landroid/content/Context;I)V

    .line 1579
    :cond_0
    return-void
.end method

.method private getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;
    .locals 1
    .parameter "windowMode"
    .parameter "winInfo"

    .prologue
    .line 2069
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getCurrentRect(ILandroid/os/Bundle;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentRect(ILandroid/os/Bundle;I)Landroid/graphics/Rect;
    .locals 13
    .parameter "windowMode"
    .parameter "winInfo"
    .parameter "windowInfoChanged"

    .prologue
    .line 2073
    const-string v10, "enable.mw.fi"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2074
    .local v8, strEnable:Ljava/lang/String;
    and-int/lit8 v10, p3, 0x1

    if-nez v10, :cond_2

    const/4 v1, 0x1

    .line 2075
    .local v1, bTouchedTitleButton:Z
    :goto_0
    const/4 v0, 0x0

    .line 2076
    .local v0, bEnableFloatingIcon:Z
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2077
    const/4 v0, 0x1

    .line 2082
    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    const-string v10, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    invoke-direct {v3, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2083
    .local v3, minimizedSize:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2084
    if-eqz v0, :cond_5

    .line 2085
    const-string v10, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v1, :cond_0

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_REVISE_MINIMIZED_POSITION:Z

    if-nez v10, :cond_1

    .line 2086
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    const-string v10, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    invoke-direct {v2, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2087
    .local v2, lastSize:Landroid/graphics/Rect;
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2135
    .end local v2           #lastSize:Landroid/graphics/Rect;
    .end local v3           #minimizedSize:Landroid/graphics/Rect;
    :cond_1
    :goto_2
    return-object v3

    .line 2074
    .end local v0           #bEnableFloatingIcon:Z
    .end local v1           #bTouchedTitleButton:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2079
    .restart local v0       #bEnableFloatingIcon:Z
    .restart local v1       #bTouchedTitleButton:Z
    :cond_3
    const-string v10, "0"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v0, 0x1

    :goto_3
    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 2090
    .restart local v3       #minimizedSize:Landroid/graphics/Rect;
    :cond_5
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 2091
    .local v7, pt:Landroid/graphics/Point;
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 2092
    .local v9, wm:Landroid/view/WindowManager;
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    const-string v11, "multiwindow"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/multiwindow/impl/MultiWindowManager;

    .line 2093
    .local v4, mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    if-eqz v9, :cond_1

    if-eqz v4, :cond_1

    .line 2094
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2096
    invoke-virtual {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppListPosition()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto :goto_2

    .line 2098
    :pswitch_0
    iget v10, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    neg-int v11, v11

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    .line 2101
    :pswitch_1
    iget v10, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    .line 2104
    :pswitch_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    neg-int v10, v10

    iget v11, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    .line 2107
    :pswitch_3
    iget v10, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    .line 2116
    .end local v4           #mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    .end local v7           #pt:Landroid/graphics/Point;
    .end local v9           #wm:Landroid/view/WindowManager;
    :cond_6
    const-string v10, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 2117
    .restart local v2       #lastSize:Landroid/graphics/Rect;
    if-eqz v2, :cond_a

    .line 2118
    invoke-static {p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2119
    if-eqz v0, :cond_7

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_REVISE_MINIMIZED_POSITION:Z

    if-eqz v10, :cond_7

    .line 2120
    if-eqz v1, :cond_7

    .line 2121
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v5, v10, v11

    .line 2122
    .local v5, offsetX:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v6, v10, v11

    .line 2123
    .local v6, offsetY:I
    iget v10, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v5

    if-lez v10, :cond_8

    .line 2124
    :goto_4
    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    if-lez v10, :cond_9

    .line 2125
    :goto_5
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2131
    .end local v5           #offsetX:I
    .end local v6           #offsetY:I
    :cond_7
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v3, v2

    .line 2132
    goto/16 :goto_2

    .line 2123
    .restart local v5       #offsetX:I
    .restart local v6       #offsetY:I
    :cond_8
    iget v10, v2, Landroid/graphics/Rect;->left:I

    neg-int v5, v10

    goto :goto_4

    .line 2124
    :cond_9
    iget v10, v2, Landroid/graphics/Rect;->top:I

    neg-int v6, v10

    goto :goto_5

    .line 2135
    .end local v5           #offsetX:I
    .end local v6           #offsetY:I
    :cond_a
    const-string v10, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    move-object v3, v10

    goto/16 :goto_2

    .line 2096
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasOverlayTitleBar(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsNoTitleBar:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static installDecor(Landroid/view/Window;)Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .locals 1
    .parameter "owner"

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->needsMultiWindowDecor(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;-><init>(Landroid/view/Window;)V

    .line 376
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isCascadeWindow(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 401
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v0

    return v0
.end method

.method private static isCompatModeEnabled(Landroid/view/Window;)Z
    .locals 6
    .parameter "w"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 359
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 360
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 362
    .local v0, a:Landroid/app/Activity;
    const-string v5, "activity"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 364
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v2

    .line 365
    .local v2, compatMode:I
    if-ne v2, v3, :cond_0

    .line 367
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v2           #compatMode:I
    :goto_0
    return v3

    .restart local v0       #a:Landroid/app/Activity;
    .restart local v1       #am:Landroid/app/ActivityManager;
    .restart local v2       #compatMode:I
    :cond_0
    move v3, v4

    .line 365
    goto :goto_0

    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v2           #compatMode:I
    :cond_1
    move v3, v4

    .line 367
    goto :goto_0
.end method

.method private static isFillWindow(Landroid/view/Window;)Z
    .locals 9
    .parameter "owner"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 276
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 278
    .local v1, context:Landroid/content/Context;
    const/4 v3, 0x0

    .line 279
    .local v3, width:I
    const/4 v2, 0x0

    .line 281
    .local v2, height:I
    sput-boolean v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    .line 283
    instance-of v6, v1, Landroid/app/Activity;

    if-nez v6, :cond_0

    instance-of v6, v1, Landroid/content/ContextWrapper;

    if-eqz v6, :cond_0

    .line 284
    check-cast v1, Landroid/content/ContextWrapper;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 286
    .restart local v1       #context:Landroid/content/Context;
    :cond_0
    if-eqz v1, :cond_1

    instance-of v6, v1, Landroid/app/Activity;

    if-eqz v6, :cond_1

    move-object v0, v1

    .line 287
    check-cast v0, Landroid/app/Activity;

    .line 288
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v4

    .line 289
    .local v4, windowMode:I
    const/high16 v6, 0x40

    and-int/2addr v6, v4

    if-nez v6, :cond_2

    .line 310
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #context:Landroid/content/Context;
    .end local v4           #windowMode:I
    :cond_1
    :goto_0
    return v5

    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v4       #windowMode:I
    :cond_2
    move-object v5, v1

    .line 292
    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 293
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 298
    if-lez v3, :cond_4

    if-lez v2, :cond_4

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v5, :cond_4

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v5, :cond_4

    .line 301
    sput-boolean v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    .line 310
    :cond_3
    :goto_1
    sget-boolean v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    goto :goto_0

    .line 302
    :cond_4
    if-lez v3, :cond_5

    if-lez v2, :cond_5

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-ne v3, v5, :cond_5

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 305
    sput-boolean v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    goto :goto_1

    .line 306
    :cond_5
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, v8, :cond_3

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v8, :cond_3

    .line 308
    sput-boolean v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    goto :goto_1
.end method

.method private static isForceTitleBar(Landroid/view/Window;)Z
    .locals 4
    .parameter "owner"

    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 347
    .local v1, context:Landroid/content/Context;
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 348
    check-cast v0, Landroid/app/Activity;

    .line 349
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 350
    .local v2, windowMode:I
    const/high16 v3, 0x4

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 351
    const/4 v3, 0x1

    .line 355
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #windowMode:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isMinimized(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 397
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v0

    return v0
.end method

.method static isMultiWindow(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 385
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    return v0
.end method

.method private isNoTitleBar(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 334
    const/high16 v0, 0x8

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNormalWindow(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 381
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isNormalWindow(I)Z

    move-result v0

    return v0
.end method

.method static isPinup(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 393
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPinup(I)Z

    move-result v0

    return v0
.end method

.method static isResizable(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 389
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isResizable(I)Z

    move-result v0

    return v0
.end method

.method private isToolkitMode(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 338
    sget v0, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_TOOLKIT:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static needsMultiWindowDecor(Landroid/view/Window;)Z
    .locals 3
    .parameter "owner"

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-virtual {p0}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 242
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportedMultiWindow(Landroid/view/Window;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isFillWindow(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->isNoWindowDecor()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isForceTitleBar(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCompatModeEnabled(Landroid/view/Window;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private needsMultiWindowPadding()Z
    .locals 2

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    .line 254
    .local v0, windowMode:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    const-string v1, "fixedRatio"

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasApplicationStyle(Ljava/lang/String;)Z

    move-result v1

    .line 259
    .end local v0           #windowMode:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseActivityInfoMetaData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 915
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v1, empty:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 932
    .end local v1           #empty:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 921
    .restart local v1       #empty:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 923
    .local v0, activityMetaData:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 925
    .local v2, style:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 926
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    .line 929
    .end local v0           #activityMetaData:Landroid/os/Bundle;
    .end local v2           #style:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private parseApplicationInfoMetaData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 894
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v1, empty:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 911
    .end local v1           #empty:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 900
    .restart local v1       #empty:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 902
    .local v0, appInfoMetaData:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 904
    .local v2, style:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 905
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    .line 908
    .end local v0           #appInfoMetaData:Landroid/os/Bundle;
    .end local v2           #style:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 5
    .parameter "windowRect"
    .parameter "maxSize"

    .prologue
    .line 1548
    sget v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_X:I

    .line 1549
    .local v0, boundaryX:I
    sget v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_Y:I

    .line 1551
    .local v1, boundaryY:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 1552
    .local v2, windowMode:I
    invoke-static {v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1553
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1554
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1556
    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    if-le v3, v4, :cond_3

    .line 1557
    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1562
    :cond_1
    :goto_0
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_4

    .line 1563
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1568
    :cond_2
    :goto_1
    return-void

    .line 1558
    :cond_3
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v3, v0, :cond_1

    .line 1559
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v0, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 1565
    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    if-ge v3, v4, :cond_2

    .line 1566
    iget v3, p1, Landroid/graphics/Rect;->left:I

    sget v4, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1
.end method

.method private setActionBarMenuVisibility(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    const v3, #android:id@action_bar#t

    .line 949
    const/4 v0, 0x0

    .line 950
    .local v0, actionBarView:Lcom/android/internal/widget/ActionBarView;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v2, :cond_1

    .line 951
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #actionBarView:Lcom/android/internal/widget/ActionBarView;
    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .line 956
    .restart local v0       #actionBarView:Lcom/android/internal/widget/ActionBarView;
    :goto_0
    if-nez v0, :cond_2

    .line 982
    :cond_0
    :goto_1
    return-void

    .line 953
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #actionBarView:Lcom/android/internal/widget/ActionBarView;
    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .restart local v0       #actionBarView:Lcom/android/internal/widget/ActionBarView;
    goto :goto_0

    .line 960
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sIsQueriedActionBarViewSetMultiWindowReserved:Z

    if-nez v2, :cond_3

    .line 962
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setMultiWindowReserved"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 968
    :cond_3
    :goto_2
    sget-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 970
    :try_start_1
    sget-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 971
    :catch_0
    move-exception v1

    .line 973
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 963
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 965
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 974
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 976
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 977
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 979
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method private static setAddonViewFlags(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "flags"

    .prologue
    .line 2058
    invoke-virtual {p0, p1}, Landroid/view/View;->setAddonViewFlags(I)V

    .line 2059
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 2060
    check-cast v1, Landroid/view/ViewGroup;

    .line 2061
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2062
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2063
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setAddonViewFlags(Landroid/view/View;I)V

    .line 2062
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2066
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private static supportedMultiWindow(Landroid/view/Window;)Z
    .locals 4
    .parameter "owner"

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 264
    .local v1, context:Landroid/content/Context;
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 265
    check-cast v0, Landroid/app/Activity;

    .line 266
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 267
    .local v2, windowMode:I
    const/high16 v3, 0x40

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 268
    const/4 v3, 0x1

    .line 272
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #windowMode:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateBorderPadding(I)V
    .locals 7
    .parameter "windowMode"

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2267
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v3, :cond_0

    .line 2268
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {v3, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateBorderPadding(I)V

    .line 2271
    :cond_0
    const/4 v2, 0x0

    .line 2272
    .local v2, needPadding:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2274
    .local v0, config:Landroid/content/res/Configuration;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2278
    :goto_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_3

    .line 2279
    and-int/lit8 v3, p1, 0xf

    if-eq v3, v4, :cond_1

    and-int/lit8 v3, p1, 0xf

    if-eq v3, v6, :cond_1

    and-int/lit8 v3, p1, 0xf

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2282
    :cond_1
    const/4 v2, 0x1

    .line 2293
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2294
    .local v1, decor:Landroid/view/ViewGroup;
    if-eqz v2, :cond_5

    .line 2295
    sget v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    invoke-virtual {v1, v5, v3, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2299
    :goto_2
    return-void

    .line 2285
    .end local v1           #decor:Landroid/view/ViewGroup;
    :cond_3
    and-int/lit8 v3, p1, 0xf

    if-eq v3, v4, :cond_4

    and-int/lit8 v3, p1, 0xf

    const/16 v4, 0xc

    if-eq v3, v4, :cond_4

    and-int/lit8 v3, p1, 0xf

    if-eq v3, v6, :cond_4

    and-int/lit8 v3, p1, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2289
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 2297
    .restart local v1       #decor:Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_2

    .line 2275
    .end local v1           #decor:Landroid/view/ViewGroup;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private updateSplitRect(I)V
    .locals 0
    .parameter "windowMode"

    .prologue
    .line 2145
    return-void
.end method

.method private windowIsTranslucent(I)Z
    .locals 4
    .parameter "windowMode"

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isForceTitleBar(Landroid/view/Window;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 330
    :cond_0
    :goto_0
    return v1

    .line 325
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 326
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 327
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 328
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    goto :goto_0
.end method

.method private wrapContentView(I)V
    .locals 5
    .parameter "windowMode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1014
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1016
    .local v0, decor:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1017
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    .line 1018
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1020
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 1021
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    .line 1022
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1023
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1024
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1026
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1028
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    .line 1029
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1030
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V

    .line 1031
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v4}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    .line 1032
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->setByPassingMode(Z)V

    .line 1033
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->addView(Landroid/view/View;)V

    .line 1035
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1038
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1039
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1040
    return-void
.end method


# virtual methods
.method public exitWindow()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->exitWindow(Z)V

    .line 406
    return-void
.end method

.method public exitWindow(Z)V
    .locals 3
    .parameter "forceExit"

    .prologue
    .line 409
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    const-string v1, "MultiPhoneWindowEvent"

    const-string v2, "onWindowExit return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->forceHideInputMethod()Z

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public getSwitchToPreviousSizeWindow(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .locals 6
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 2653
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 2654
    const/4 v2, 0x0

    .line 2662
    :goto_0
    return-object v2

    .line 2657
    :cond_0
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V

    .line 2658
    .local v1, mButton:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->setHoverPopupType(I)V

    .line 2659
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2660
    .local v0, frameLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2662
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0, v4, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    goto :goto_0
.end method

.method public hasActivityStyle(Ljava/lang/String;)Z
    .locals 1
    .parameter "style"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivityStyles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivityStyles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasApplicationStyle(Ljava/lang/String;)Z
    .locals 1
    .parameter "style"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mApplicationStyles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mApplicationStyles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCustomViewForMoveWindow()Z
    .locals 1

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMoveWindowView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOnTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2810
    const/4 v0, 0x1

    .line 2812
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideIconAnimation(Z)V
    .locals 9
    .parameter "bIsDelay"

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    const/high16 v6, 0x3f00

    const/4 v2, 0x0

    .line 646
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsDelay:Z

    .line 647
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 648
    .local v0, scaleAnimation1:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 649
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 650
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsDelay:Z

    if-eqz v1, :cond_0

    .line 651
    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 654
    :cond_0
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 685
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 686
    return-void
.end method

.method hideTitleBar()V
    .locals 2

    .prologue
    .line 2790
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    if-eqz v0, :cond_0

    .line 2791
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$6;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2800
    :goto_0
    return-void

    .line 2798
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isWfdConnected(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1005
    const/4 v0, 0x0

    .line 1006
    .local v0, wfdManager:Lcom/samsung/wfd/WfdManager;
    const-string v1, "wfd"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #wfdManager:Lcom/samsung/wfd/WfdManager;
    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 1007
    .restart local v0       #wfdManager:Lcom/samsung/wfd/WfdManager;
    if-nez v0, :cond_0

    .line 1008
    const/4 v1, 0x0

    .line 1010
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->WFDGetStatus()Z

    move-result v1

    goto :goto_0
.end method

.method public minimizeWindow(IZ)V
    .locals 17
    .parameter "windowMode"
    .parameter "hide"

    .prologue
    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v16

    .line 483
    .local v16, winInfo:Landroid/os/Bundle;
    const/4 v13, 0x0

    .line 484
    .local v13, isNeededMinimize:Z
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mHide:Z

    .line 485
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    .line 486
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    .line 488
    invoke-static/range {p1 .. p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    .line 490
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    const/high16 v4, 0x200

    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    .line 491
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    const/high16 v4, 0x20

    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    .line 492
    const/4 v13, 0x1

    .line 495
    :cond_0
    const-string v3, "MultiPhoneWindowEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "minimize : windowMode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hide="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isNeededMinimize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    if-eqz v16, :cond_1

    .line 501
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 502
    .local v14, lastSize:Landroid/graphics/Rect;
    if-eqz v14, :cond_1

    iget v3, v14, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_1

    .line 503
    iget v3, v14, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 504
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    .line 509
    .end local v14           #lastSize:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZE_MOVING_ANIMATION:Z

    if-eqz v3, :cond_3

    .line 510
    if-eqz v16, :cond_2

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastMultiwindowRect:Landroid/graphics/Rect;

    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 514
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    if-eqz v3, :cond_3

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/sec/multiwindow/impl/MultiWindowManager;->registerCallback(Landroid/os/IBinder;ILandroid/os/IBinder;)Z

    .line 516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    invoke-virtual {v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->setMinimizeStackedIcon()V

    .line 520
    :cond_3
    if-nez v13, :cond_4

    if-eqz p2, :cond_4

    .line 521
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hideIconAnimation(Z)V

    .line 642
    :goto_0
    return-void

    .line 523
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    .line 524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->updateThumbNail()V

    .line 525
    const-string v3, "enable.mw.fi"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 526
    .local v15, strEnable:Ljava/lang/String;
    const/4 v12, 0x0

    .line 527
    .local v12, bEnableFloatingIcon:Z
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 528
    const/4 v12, 0x1

    .line 532
    :goto_1
    if-eqz v12, :cond_7

    .line 533
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 534
    .local v2, scaleAnimation:Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 535
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 537
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-direct {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 538
    .local v10, alphaAnimation:Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v10, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 539
    const-wide/16 v3, 0x12c

    invoke-virtual {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 541
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 542
    .local v11, animationSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 543
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    new-instance v4, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v4, v11}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 546
    new-instance v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    goto :goto_0

    .line 530
    .end local v2           #scaleAnimation:Landroid/view/animation/Animation;
    .end local v10           #alphaAnimation:Landroid/view/animation/Animation;
    .end local v11           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_5
    const-string v3, "0"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v12, 0x1

    :goto_2
    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 627
    :cond_7
    const v3, -0x200001

    and-int v9, p1, v3

    .line 628
    .local v9, _windowMode:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0
.end method

.method public moveWindow(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2803
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMoveWindowView:Landroid/view/View;

    .line 2804
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    .line 2805
    .local v0, pwl:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2806
    return-void
.end method

.method public multiWindow(IZ)V
    .locals 3
    .parameter "windowMode"
    .parameter "pinup"

    .prologue
    .line 456
    const v1, 0xffffff

    and-int/2addr p1, v1

    .line 457
    const/high16 v1, 0x200

    or-int/2addr p1, v1

    .line 458
    if-eqz p2, :cond_2

    .line 459
    const/high16 v1, 0x80

    or-int/2addr p1, v1

    .line 464
    :goto_0
    const v1, -0x200001

    and-int/2addr p1, v1

    .line 465
    and-int/lit8 p1, p1, -0x10

    .line 467
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

    invoke-virtual {v1, v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->unRegisterCallback(Landroid/os/IBinder;)Z

    .line 471
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZE_MOVING_ANIMATION:Z

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 473
    .local v0, winInfo:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastMultiwindowRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 474
    const-string v1, "android.intent.extra.WINDOW_LAST_SIZE"

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastMultiwindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 475
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    .line 478
    .end local v0           #winInfo:Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 479
    return-void

    .line 462
    :cond_2
    const v1, -0x800001

    and-int/2addr p1, v1

    goto :goto_0
.end method

.method multiwindowWithAni(I)V
    .locals 11
    .parameter "windowMode"

    .prologue
    const-wide/16 v9, 0x12c

    const v1, 0x3e99999a

    const/high16 v2, 0x3f80

    const/4 v5, 0x0

    .line 435
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->multiWindow(IZ)V

    .line 437
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    .line 439
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 440
    .local v0, bubbleAnimation1:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 442
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v5, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 443
    .local v7, alphaAnimation:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 444
    invoke-virtual {v7, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 446
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 447
    .local v8, animationSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 448
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 450
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v2, v8}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 451
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 453
    .end local v0           #bubbleAnimation1:Landroid/view/animation/Animation;
    .end local v7           #alphaAnimation:Landroid/view/animation/Animation;
    .end local v8           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_0
    return-void
.end method

.method public normalWindow(I)V
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 425
    const v0, 0xffffff

    and-int/2addr p1, v0

    .line 426
    const/high16 v0, 0x100

    or-int/2addr p1, v0

    .line 427
    const v0, -0x800001

    and-int/2addr p1, v0

    .line 428
    const v0, -0x200001

    and-int/2addr p1, v0

    .line 429
    and-int/lit8 p1, p1, -0x10

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 432
    return-void
.end method

.method public onAttachedFromWindow()V
    .locals 3

    .prologue
    .line 986
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 987
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.VIDEOCAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 988
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 990
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const v7, -0x200001

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1984
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    invoke-static {v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1985
    const/4 v0, 0x1

    .line 1986
    .local v0, arrange:I
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayOrientation:I

    if-eq v2, v3, :cond_0

    .line 1987
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOrientationChanging:Z

    .line 1988
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayOrientation:I

    .line 1997
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowMode()I

    move-result v1

    .line 1998
    .local v1, windowMode:I
    invoke-static {v1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v3, 0x200

    if-eq v2, v3, :cond_1

    .line 1999
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOrientationChanging:Z

    .line 2055
    :goto_0
    return-void

    .line 2003
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    iget v3, p1, Landroid/content/res/Configuration;->arrange:I

    if-eq v2, v3, :cond_2

    .line 2004
    const-string v2, "MultiPhoneWindowEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configuration changed : oldArrange=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newArrange=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->arrange:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    iget v2, p1, Landroid/content/res/Configuration;->arrange:I

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 2008
    iget v2, p1, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v0, v2, -0x801

    .line 2012
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 2043
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2044
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 2045
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v3, #android:id@pinupButton#t

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    .line 2046
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v3, #android:id@minimizeButton#t

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    .line 2047
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v3, #android:id@maximizeButton#t

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    .line 2048
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v3, #android:id@exitButton#t

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    .line 2050
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 2053
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 2054
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOrientationChanging:Z

    goto/16 :goto_0

    .line 2018
    :sswitch_0
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2019
    and-int/2addr v1, v7

    .line 2020
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1, v5}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_1

    .line 2024
    :sswitch_1
    invoke-static {v1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    .line 2025
    const v2, 0xffffff

    and-int/2addr v1, v2

    .line 2026
    const/high16 v2, 0x100

    or-int/2addr v1, v2

    .line 2027
    and-int/2addr v1, v7

    .line 2028
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1, v5}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_1

    .line 2032
    :sswitch_2
    const/high16 v2, 0x10

    and-int/2addr v2, v1

    if-nez v2, :cond_7

    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2034
    :cond_6
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->minimizeWindow(IZ)V

    .line 2036
    :cond_7
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOrientationChanging:Z

    goto/16 :goto_0

    .line 2012
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x100 -> :sswitch_2
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->unRegisterCallback(Landroid/os/IBinder;)Z

    .line 1002
    :cond_1
    return-void
.end method

.method public onWindowAttributesChanged(II)V
    .locals 6
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 2236
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    if-eq v4, p1, :cond_1

    if-eqz p2, :cond_1

    .line 2240
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 2241
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    or-int/2addr v4, p1

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 2245
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowMode()I

    move-result v3

    .line 2246
    .local v3, windowMode:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2247
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2248
    .local v0, curLp:Landroid/view/WindowManager$LayoutParams;
    const v2, 0x10400

    .line 2250
    .local v2, noNeedsFlags:I
    const/16 v1, 0x320

    .line 2254
    .local v1, needsFlags:I
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateBorderPadding(I)V

    .line 2256
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v2

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v1

    if-eq v4, v1, :cond_1

    .line 2257
    :cond_0
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x10401

    and-int/2addr v4, v5

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2258
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v4, v1

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2260
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2264
    .end local v0           #curLp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #needsFlags:I
    .end local v2           #noNeedsFlags:I
    .end local v3           #windowMode:I
    :cond_1
    return-void
.end method

.method public onWindowStatusChanged(II)V
    .locals 11
    .parameter "windowMode"
    .parameter "windowInfoChanged"

    .prologue
    .line 2148
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-static {v8}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportedMultiWindow(Landroid/view/Window;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2233
    :cond_0
    :goto_0
    return-void

    .line 2152
    :cond_1
    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_2

    const/high16 v8, 0x10

    and-int/2addr v8, p1

    if-nez v8, :cond_2

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2155
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->minimizeWindow(IZ)V

    .line 2156
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 2158
    :cond_2
    and-int/lit8 v8, p2, 0x4

    if-eqz v8, :cond_3

    const/high16 v8, 0x10

    and-int/2addr v8, p1

    if-nez v8, :cond_3

    .line 2160
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->multiwindowWithAni(I)V

    goto :goto_0

    .line 2164
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateSplitRect(I)V

    .line 2166
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportMultiWindow(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v8

    const/high16 v9, 0x200

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    .line 2168
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->closeAllPanels()V

    .line 2179
    :cond_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v8, :cond_5

    .line 2180
    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v8

    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v9

    if-eq v8, v9, :cond_a

    .line 2181
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v8

    const/high16 v10, 0x200

    if-ne v8, v10, :cond_9

    const/4 v8, 0x1

    :goto_1
    invoke-interface {v9, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    .line 2197
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2198
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 2200
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 2201
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->relayoutTitleBar(I)V

    .line 2203
    const/4 v1, 0x0

    .line 2204
    .local v1, isNormalWindow:Z
    const/4 v0, 0x0

    .line 2205
    .local v0, isMinimized:Z
    const/4 v2, 0x0

    .line 2207
    .local v2, isPinup:Z
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v5

    .line 2208
    .local v5, mode:I
    sparse-switch v5, :sswitch_data_0

    .line 2220
    :goto_3
    if-eqz v1, :cond_7

    .line 2221
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 2222
    .local v3, km:Landroid/app/KeyguardManager;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2223
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    .line 2227
    .end local v3           #km:Landroid/app/KeyguardManager;
    :cond_7
    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastMode:I

    if-ne v5, v8, :cond_8

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsLastMinimized:Z

    if-ne v0, v8, :cond_8

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsLastPinup:Z

    if-eq v2, v8, :cond_0

    .line 2228
    :cond_8
    iput v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastMode:I

    .line 2229
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsLastMinimized:Z

    .line 2230
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsLastPinup:Z

    .line 2231
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v1, v0, v2}, Landroid/app/Activity;->onWindowStatusChanged(ZZZ)V

    goto/16 :goto_0

    .line 2181
    .end local v0           #isMinimized:Z
    .end local v1           #isNormalWindow:Z
    .end local v2           #isPinup:Z
    .end local v5           #mode:I
    :cond_9
    const/4 v8, 0x0

    goto :goto_1

    .line 2182
    :cond_a
    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v8

    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v9

    if-eq v8, v9, :cond_b

    .line 2183
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_2

    .line 2184
    :cond_b
    const/high16 v8, 0x20

    and-int/2addr v8, p1

    if-nez v8, :cond_5

    .line 2185
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v7

    .line 2186
    .local v7, winInfo:Landroid/os/Bundle;
    if-eqz v7, :cond_5

    .line 2187
    const-string v8, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 2188
    .local v4, lastSize:Landroid/graphics/Rect;
    if-eqz v4, :cond_5

    .line 2189
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ne v8, v9, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-eq v8, v9, :cond_5

    .line 2190
    :cond_c
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v8, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 2210
    .end local v4           #lastSize:Landroid/graphics/Rect;
    .end local v7           #winInfo:Landroid/os/Bundle;
    .restart local v0       #isMinimized:Z
    .restart local v1       #isNormalWindow:Z
    .restart local v2       #isPinup:Z
    .restart local v5       #mode:I
    :sswitch_0
    const/4 v1, 0x1

    .line 2211
    goto/16 :goto_3

    .line 2214
    :sswitch_1
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v6

    .line 2215
    .local v6, params:I
    const/high16 v8, 0x20

    and-int/2addr v8, v6

    if-eqz v8, :cond_d

    const/4 v0, 0x1

    .line 2216
    :goto_4
    const/high16 v8, 0x80

    and-int/2addr v8, v6

    if-eqz v8, :cond_e

    const/4 v2, 0x1

    :goto_5
    goto/16 :goto_3

    .line 2215
    :cond_d
    const/4 v0, 0x0

    goto :goto_4

    .line 2216
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 2208
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
    .end sparse-switch
.end method

.method relayoutTitleBar(I)V
    .locals 5
    .parameter "windowMode"

    .prologue
    const v4, #android:id@windowTitleBar#t

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 689
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsNoTitleBar:Z

    if-eqz v1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    if-eqz v1, :cond_6

    .line 694
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 695
    .local v0, parentView:Landroid/view/View;
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 696
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 698
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 700
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->showTitleBar(Z)V

    .line 701
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 703
    :cond_3
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 704
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 706
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 708
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 710
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 714
    .end local v0           #parentView:Landroid/view/View;
    :cond_6
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 715
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 717
    :cond_8
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 718
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 720
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method requestHideTitleBar()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2754
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2755
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->removeMessages(I)V

    .line 2757
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    if-eqz v0, :cond_1

    .line 2758
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2762
    :goto_0
    return-void

    .line 2760
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setDecorPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1346
    :cond_0
    return-void
.end method

.method setDecorVisibility(I)V
    .locals 10
    .parameter "windowMode"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 1361
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1363
    .local v0, decor:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v2, :cond_0

    .line 1364
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 1368
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isToolkitMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1369
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v8, :cond_6

    .line 1371
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    if-eqz v2, :cond_1

    .line 1372
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v2, v7}, Landroid/gesture/GestureOverlayView;->setEnabled(Z)V

    .line 1517
    :cond_1
    :goto_0
    return-void

    .line 1376
    :cond_2
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1378
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1382
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 1383
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1386
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsNoTitleBar:Z

    if-nez v2, :cond_4

    .line 1387
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    const v3, #android:drawable@mw_border_bg#t

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1390
    :cond_4
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1391
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1393
    :cond_5
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1394
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v3, #android:drawable@mw_minimize_titlebar#t

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1398
    :goto_1
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1399
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    const v3, #android:drawable@multi_window_header_ic_fix_press#t

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1405
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->needsMultiWindowPadding()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1406
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->calculatePaddingRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1407
    .local v1, paddingRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorPadding(IIII)V

    .line 1428
    .end local v1           #paddingRect:Landroid/graphics/Rect;
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1429
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1430
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1431
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor3:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1432
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1433
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1435
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1436
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1437
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1438
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor4:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1439
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1440
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1442
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1443
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1444
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor4:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1445
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1446
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor3:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1448
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1449
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->showTitleBar(Z)V

    .line 1481
    :goto_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFreestyleOnly:Z

    if-eqz v2, :cond_7

    .line 1482
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1483
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1486
    :cond_7
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    if-nez v2, :cond_8

    .line 1487
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1488
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1489
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1492
    :cond_8
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_EXIT_BUTTON:Z

    if-nez v2, :cond_9

    .line 1493
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1494
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1497
    :cond_9
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_PINUP_BUTTON:Z

    if-nez v2, :cond_a

    .line 1498
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1499
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1502
    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    if-eqz v2, :cond_12

    .line 1503
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLEBAR_GESTURE_TRIGGER:Z

    if-eqz v2, :cond_1

    .line 1504
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/gesture/GestureOverlayView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1396
    :cond_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v3, #android:drawable@mw_titlebar#t

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1402
    :cond_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    const v3, #android:drawable@multi_window_header_ic_fix#t

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    .line 1410
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1414
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_e

    .line 1415
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1417
    :cond_e
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1418
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v3, #android:drawable@mw_full_titlebar#t

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1419
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorPadding(IIII)V

    goto/16 :goto_3

    .line 1450
    :cond_f
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1451
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1452
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1453
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1454
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1455
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1456
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor3:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1457
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1458
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor4:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1459
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1460
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1463
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1464
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->requestHideTitleBar()V

    goto/16 :goto_4

    .line 1466
    :cond_10
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1470
    :cond_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1471
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1472
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1473
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor4:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1474
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1475
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1477
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1478
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->requestHideTitleBar()V

    goto/16 :goto_4

    .line 1506
    :cond_12
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1507
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1508
    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    .line 1509
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/gesture/GestureOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1510
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    invoke-virtual {v2, v3}, Landroid/gesture/GestureOverlayView;->addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V

    .line 1511
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v2, v7}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    .line 1512
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v2, v8}, Landroid/gesture/GestureOverlayView;->setByPassingMode(Z)V

    .line 1513
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/gesture/GestureOverlayView;->addView(Landroid/view/View;)V

    .line 1514
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1515
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/gesture/GestureOverlayView;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method setDisplayStub(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2750
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 2751
    return-void
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 2744
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 2745
    const/4 v0, 0x1

    return v0
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 2732
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 2733
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2734
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2736
    :cond_0
    return-void
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 2739
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 2740
    const/4 v0, 0x1

    return v0
.end method

.method setTouchReceiver(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    const/4 v3, 0x0

    .line 1350
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    if-nez v1, :cond_1

    .line 1351
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    .line 1352
    .local v0, mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.multiwindow.MW_TOUCH_DETECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1358
    .end local v0           #mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1355
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1356
    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    goto :goto_0
.end method

.method setWindowParams(I)V
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 1203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(II)V

    .line 1204
    return-void
.end method

.method setWindowParams(II)V
    .locals 12
    .parameter "windowMode"
    .parameter "windowInfoChanged"

    .prologue
    .line 1207
    const/4 v2, 0x0

    .line 1208
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    .line 1210
    .local v4, p:Landroid/view/WindowManager$LayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    if-eqz v8, :cond_0

    .line 1211
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1214
    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1215
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1218
    :cond_1
    if-eqz v4, :cond_2

    if-nez v2, :cond_4

    .line 1219
    :cond_2
    const-string v8, "MultiPhoneWindowEvent"

    const-string v9, "setWindowParams: could not get windowLayoutParam."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_3
    :goto_0
    return-void

    .line 1223
    :cond_4
    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    if-eq v8, p1, :cond_5

    .line 1224
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    .line 1225
    iget-object v8, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v8, :cond_5

    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v8, :cond_5

    .line 1226
    const-string v8, "MultiPhoneWindowEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setWindowParams: token is null!!!! so replaced with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v8, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1231
    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-nez v8, :cond_6

    sget-boolean v8, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    if-eqz v8, :cond_6

    .line 1232
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1233
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_6

    instance-of v8, v0, Landroid/app/Activity;

    if-eqz v8, :cond_6

    .line 1234
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    .line 1238
    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-nez v8, :cond_7

    .line 1239
    const-string v8, "MultiPhoneWindowEvent"

    const-string v9, "setWindowParams: could not set windowLayoutParam."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1243
    :cond_7
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1244
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v7

    .line 1245
    .local v7, winInfo:Landroid/os/Bundle;
    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1249
    invoke-direct {p0, p1, v7, p2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getCurrentRect(ILandroid/os/Bundle;I)Landroid/graphics/Rect;

    move-result-object v3

    .line 1252
    .local v3, newSize:Landroid/graphics/Rect;
    iget v8, v3, Landroid/graphics/Rect;->left:I

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1253
    iget v8, v3, Landroid/graphics/Rect;->top:I

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1254
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1255
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1257
    const/16 v8, 0x33

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1259
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, -0x10401

    and-int/2addr v8, v9

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1260
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v8, v8, 0x320

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1264
    const/16 v8, 0x33

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1266
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, -0x10401

    and-int/2addr v8, v9

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1267
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v8, v8, 0x320

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1273
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.facebook.katana"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1274
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/Display;->setupFacekSize(ZII)V

    .line 1277
    :cond_8
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportScaleWindow(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isScaleWindow(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1278
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1279
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    sget v9, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    add-int/2addr v8, v9

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1280
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 1281
    .local v1, hScale:F
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sget v10, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 1282
    .local v6, vScale:F
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFixedRatio:Z

    if-eqz v8, :cond_c

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOrientationChanging:Z

    if-eqz v8, :cond_c

    .line 1283
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->vScale:F

    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->hScale:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_9

    .line 1284
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->vScale:F

    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->hScale:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1285
    .local v5, scale:F
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->hScale:F

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->vScale:F

    .line 1327
    .end local v1           #hScale:F
    .end local v3           #newSize:Landroid/graphics/Rect;
    .end local v5           #scale:F
    .end local v6           #vScale:F
    .end local v7           #winInfo:Landroid/os/Bundle;
    :cond_9
    :goto_1
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsHideFlashBarTray:Z

    if-eqz v8, :cond_a

    .line 1328
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v9, 0x400

    or-int/2addr v8, v9

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1331
    :cond_a
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v8, v9, :cond_b

    .line 1332
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 1335
    :cond_b
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 1336
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateBorderPadding(I)V

    .line 1337
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v8, :cond_3

    .line 1338
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v8, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto/16 :goto_0

    .line 1288
    .restart local v1       #hScale:F
    .restart local v3       #newSize:Landroid/graphics/Rect;
    .restart local v6       #vScale:F
    .restart local v7       #winInfo:Landroid/os/Bundle;
    :cond_c
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->vScale:F

    .line 1289
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->hScale:F

    goto :goto_1

    .line 1292
    .end local v1           #hScale:F
    .end local v6           #vScale:F
    :cond_d
    const/4 v8, 0x0

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->hScale:F

    .line 1293
    const/4 v8, 0x0

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->vScale:F

    goto :goto_1

    .line 1296
    .end local v3           #newSize:Landroid/graphics/Rect;
    .end local v7           #winInfo:Landroid/os/Bundle;
    :cond_e
    const/4 v8, 0x0

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1297
    const/4 v8, 0x0

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1298
    const/4 v8, -0x1

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1299
    const/4 v8, -0x1

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1300
    const/4 v8, 0x0

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1302
    const/4 v8, 0x0

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->hScale:F

    .line 1303
    const/4 v8, 0x0

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->vScale:F

    .line 1305
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, -0x10321

    and-int/2addr v8, v9

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1310
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    or-int/2addr v8, v9

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1312
    const/4 v8, 0x0

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1313
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, -0x10321

    and-int/2addr v8, v9

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1318
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    or-int/2addr v8, v9

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1322
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.facebook.katana"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1323
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/Display;->setupFacekSize(ZII)V

    goto/16 :goto_1
.end method

.method public showTitleBar(Z)V
    .locals 4
    .parameter "isCascadeWindow"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 2765
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2787
    :goto_0
    return-void

    .line 2769
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2770
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->removeMessages(I)V

    .line 2773
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    if-eqz v0, :cond_3

    .line 2774
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2775
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2776
    if-eqz p1, :cond_2

    .line 2777
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2779
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2780
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->requestHideTitleBar()V

    goto :goto_0

    .line 2782
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsNoTitleBar:Z

    if-eqz v0, :cond_4

    .line 2783
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2785
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

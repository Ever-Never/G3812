.class Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
.super Landroid/view/View;
.source "GuideRelayoutWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;,
        Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;
    }
.end annotation


# static fields
.field private static final DIR_BOTTOM:I = 0x2

.field private static final DIR_LEFT:I = 0x0

.field private static final DIR_MAX:I = 0x3

.field private static final DIR_RIGHT:I = 0x1

.field static final GESTURE_MAX:I = 0x7

.field static final GESTURE_MOVE:I = 0x1

.field static final GESTURE_NONE:I = 0x0

.field static final GESTURE_RESIZE_BOTTOM:I = 0x6

.field static final GESTURE_RESIZE_LEFT:I = 0x2

.field static final GESTURE_RESIZE_LEFTBOTTOM:I = 0x4

.field static final GESTURE_RESIZE_RIGHT:I = 0x3

.field static final GESTURE_RESIZE_RIGHTBOTTOM:I = 0x5


# instance fields
.field private final AUTO_CLOSE_MILLISEC:I

.field final FADEOUT_DELAY:I

.field final TAG:Ljava/lang/String;

.field private mAutoDismissHandler:Landroid/os/Handler;

.field private mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

.field private mCurrentOrientation:I

.field private mCurrentSide:I

.field private mDeltaX:I

.field private mDeltaY:I

.field private mFadeoutAlpha:I

.field private mFadeoutHandler:Landroid/os/Handler;

.field private mFadeoutRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;

.field private mFlagAutoClose:Z

.field private mFlagDimming:Z

.field private mFlagDrawResizeDecor:Z

.field private mFlagDrawingRedBorder:Z

.field private mGestureMode:I

.field private mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

.field private mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

.field private mPnt:Landroid/graphics/Paint;

.field private mPosX:I

.field private mPosY:I

.field private mResizeArrowRect:[Landroid/graphics/Rect;

.field private mResizePtrBmp:Landroid/graphics/Bitmap;

.field private mResizeSymbolRect:[Landroid/graphics/Rect;

.field private mRightArrowPtrBmp:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/content/Context;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "owner"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 390
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 391
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 335
    const-string v1, "GuideView"

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->TAG:Ljava/lang/String;

    .line 347
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 348
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    .line 349
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    .line 351
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaX:I

    .line 352
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaY:I

    .line 354
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    .line 355
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    .line 356
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->FADEOUT_DELAY:I

    .line 358
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    .line 362
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    .line 370
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 371
    new-array v1, v6, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeSymbolRect:[Landroid/graphics/Rect;

    .line 372
    new-array v1, v5, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    .line 373
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizePtrBmp:Landroid/graphics/Bitmap;

    .line 374
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 375
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mRightArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 378
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDimming:Z

    .line 379
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    .line 380
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    .line 381
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;

    .line 384
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    .line 385
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    .line 386
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    .line 387
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->AUTO_CLOSE_MILLISEC:I

    .line 392
    iput-object p3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 394
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    const/high16 v2, 0x4234

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 398
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 399
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 403
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 404
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeSymbolRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    .line 407
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 409
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    .line 412
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    .line 413
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;-><init>(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    .line 416
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    .line 418
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentOrientation:I

    .line 419
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaX:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    return p1
.end method

.method static synthetic access$2520(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaY:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 334
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateGesture(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 334
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateDockSide(II)I

    move-result v0

    return v0
.end method

.method private calculateDockSide(II)I
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x2

    .line 885
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v11

    .line 886
    .local v11, windowMode:I
    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v5

    .line 887
    .local v5, zone:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPreDockSide:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1702(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    .line 888
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    .line 890
    const/4 v9, 0x0

    .line 891
    .local v9, secondCompareValue:I
    const/4 v10, 0x0

    .line 893
    .local v10, secondMaxBoundary:I
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentOrientation:I

    if-ne v0, v2, :cond_5

    .line 894
    move v6, p1

    .line 895
    .local v6, firstCompareValue:I
    move v9, p2

    .line 896
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Point;->x:I

    .line 897
    .local v7, firstMaxBoundary:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Point;->y:I

    .line 906
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMultiWindowState:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 907
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMarginFinger:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    const/high16 v1, 0x100

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    .line 930
    :cond_1
    :goto_1
    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v8

    .line 931
    .local v8, options:I
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    and-int/lit8 v0, v8, 0xf

    if-eqz v0, :cond_3

    .line 934
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    const/4 v1, -0x1

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    .line 937
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPreDockSide:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1700(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 938
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/os/SystemVibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIvt:[B
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/os/SystemVibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 941
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    return v0

    .line 900
    .end local v6           #firstCompareValue:I
    .end local v7           #firstMaxBoundary:I
    .end local v8           #options:I
    :cond_5
    move v6, p2

    .line 901
    .restart local v6       #firstCompareValue:I
    move v9, p1

    .line 902
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Point;->y:I

    .line 903
    .restart local v7       #firstMaxBoundary:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 911
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMultiWindowState:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 912
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-lt v6, v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    sub-int v0, v7, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMarginFinger:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    if-le v6, v0, :cond_1

    .line 913
    :cond_7
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMultiWindowState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v4

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/sec/multiwindow/impl/MultiWindowManager;->findDockingWindowZone(IIIII)I

    move-result v0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    goto/16 :goto_1

    .line 916
    :cond_8
    if-nez v5, :cond_a

    .line 917
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-lt v6, v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    sub-int v0, v7, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMarginFinger:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    if-gt v6, v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-lt v9, v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    sub-int v0, v10, v0

    if-le v9, v0, :cond_1

    .line 919
    :cond_9
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMultiWindowState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v4

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/sec/multiwindow/impl/MultiWindowManager;->findDockingWindowZone(IIIII)I

    move-result v0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    goto/16 :goto_1

    .line 922
    :cond_a
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMultiWindowState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v4

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/sec/multiwindow/impl/MultiWindowManager;->findDockingWindowZone(IIIII)I

    move-result v0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    goto/16 :goto_1
.end method

.method private calculateGesture(II)I
    .locals 16
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 809
    const/16 v10, 0x32

    .line 810
    .local v10, th:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v12, v12, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 811
    .local v2, bh:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v12, v12, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 812
    .local v4, bw:I
    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v14, v14, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    const/16 v15, 0x32

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 813
    .local v11, titleBar:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v14

    sub-int v14, v2, v14

    invoke-direct {v5, v12, v10, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 814
    .local v5, leftResize:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v12

    sub-int v12, v4, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v13

    sub-int v13, v2, v13

    invoke-direct {v8, v12, v10, v4, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 815
    .local v8, rightResize:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    sub-int v13, v2, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    invoke-direct {v6, v12, v13, v14, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 816
    .local v6, leftbottomResize:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    sub-int v12, v4, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    sub-int v13, v2, v13

    invoke-direct {v9, v12, v13, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 817
    .local v9, rightbottomResize:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v13

    sub-int v13, v2, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v14

    sub-int v14, v4, v14

    invoke-direct {v3, v12, v13, v14, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 819
    .local v3, bottomResize:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 820
    .local v7, lp:Landroid/view/WindowManager$LayoutParams;
    iget v12, v7, Landroid/view/WindowManager$LayoutParams;->hScale:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_0

    iget v12, v7, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    .line 821
    :cond_0
    move/from16 v0, p1

    int-to-float v13, v0

    iget v12, v7, Landroid/view/WindowManager$LayoutParams;->hScale:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-eqz v12, :cond_2

    iget v12, v7, Landroid/view/WindowManager$LayoutParams;->hScale:F

    :goto_0
    mul-float/2addr v12, v13

    float-to-int v0, v12

    move/from16 p1, v0

    .line 822
    move/from16 v0, p2

    int-to-float v13, v0

    iget v12, v7, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-eqz v12, :cond_3

    iget v12, v7, Landroid/view/WindowManager$LayoutParams;->vScale:F

    :goto_1
    mul-float/2addr v12, v13

    float-to-int v0, v12

    move/from16 p2, v0

    .line 825
    :cond_1
    const-string v12, "GuideView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "calculateGesture("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v12, v12, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsMinimized:Z

    if-eqz v12, :cond_4

    .line 828
    const/4 v12, 0x1

    .line 853
    :goto_2
    return v12

    .line 821
    :cond_2
    const/high16 v12, 0x3f80

    goto :goto_0

    .line 822
    :cond_3
    const/high16 v12, 0x3f80

    goto :goto_1

    .line 831
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v12, v12, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedSize:Z

    if-eqz v12, :cond_5

    .line 832
    const/4 v12, 0x1

    goto :goto_2

    .line 835
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v12, v12, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseCoutomView:Z

    if-eqz v12, :cond_6

    .line 836
    const/4 v12, 0x1

    goto :goto_2

    .line 840
    :cond_6
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 841
    const/4 v12, 0x4

    goto :goto_2

    .line 842
    :cond_7
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 843
    const/4 v12, 0x5

    goto :goto_2

    .line 844
    :cond_8
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 845
    const/4 v12, 0x1

    goto :goto_2

    .line 846
    :cond_9
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 847
    const/4 v12, 0x2

    goto :goto_2

    .line 848
    :cond_a
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 849
    const/4 v12, 0x3

    goto :goto_2

    .line 850
    :cond_b
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 851
    const/4 v12, 0x6

    goto :goto_2

    .line 853
    :cond_c
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private doDocking(I)V
    .locals 3
    .parameter "dockSide"

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 946
    return-void
.end method

.method private drawResizeDecor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "canvas"
    .parameter "pnt"

    .prologue
    .line 503
    return-void
.end method

.method private resizeGuideView(II)V
    .locals 9
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    .line 1023
    const-string v4, "GuideView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPinupResizePosition("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 1026
    .local v1, left:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 1027
    .local v3, top:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 1028
    .local v2, right:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1030
    .local v0, bottom:I
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v4, v8, :cond_1

    .line 1031
    :cond_0
    add-int v4, v0, p2

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-gt v4, v5, :cond_5

    .line 1032
    add-int/2addr v0, p2

    .line 1039
    :cond_1
    :goto_0
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v4, v7, :cond_7

    .line 1040
    :cond_2
    add-int v4, v1, p1

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_6

    .line 1041
    add-int/2addr v1, p1

    .line 1055
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1057
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    if-eqz v4, :cond_4

    .line 1058
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->adjustRatio(Landroid/graphics/Rect;)V

    .line 1061
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->adjustSize(Landroid/graphics/Rect;)V

    .line 1063
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 1064
    return-void

    .line 1035
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int v0, v3, v4

    goto :goto_0

    .line 1044
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v1, v2, v4

    goto :goto_1

    .line 1047
    :cond_7
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v4, v8, :cond_3

    .line 1048
    :cond_8
    add-int v4, v2, p1

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_9

    .line 1049
    add-int/2addr v2, p1

    goto :goto_1

    .line 1052
    :cond_9
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int v2, v1, v4

    goto :goto_1
.end method

.method private updateResizeDecorRect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 506
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 518
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    if-ne v2, v4, :cond_2

    .line 520
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolRedBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizePtrBmp:Landroid/graphics/Bitmap;

    .line 523
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowRedBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 524
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowRedBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mRightArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 535
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 537
    .local v1, w:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 540
    .local v0, h:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 541
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x5

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 543
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x5

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 544
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x5

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 528
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolOrangeBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizePtrBmp:Landroid/graphics/Bitmap;

    .line 531
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowOrangeBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 532
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowOrangeBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mRightArrowPtrBmp:Landroid/graphics/Bitmap;

    goto :goto_1
.end method


# virtual methods
.method public adjustRatio(Landroid/graphics/Rect;)V
    .locals 9
    .parameter "rect"

    .prologue
    .line 950
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 951
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 953
    .local v2, height:I
    int-to-double v4, v3

    int-to-double v6, v2

    div-double v0, v4, v6

    .line 955
    .local v0, curRatio:D
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_3

    .line 956
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 957
    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-double v5, v2

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 962
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 963
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurHeight:I

    mul-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurWidth:I

    div-int v2, v4, v5

    .line 964
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 972
    :cond_1
    :goto_1
    return-void

    .line 959
    :cond_2
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 960
    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-double v5, v2

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 966
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    cmpg-double v4, v0, v4

    if-gez v4, :cond_1

    .line 967
    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-double v5, v3

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 968
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 969
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurWidth:I

    mul-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurHeight:I

    div-int v3, v4, v5

    .line 970
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method

.method public adjustSize(Landroid/graphics/Rect;)V
    .locals 8
    .parameter "rect"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 976
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 977
    .local v1, width:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 979
    .local v0, height:I
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    packed-switch v4, :pswitch_data_0

    .line 993
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-ge v1, v2, :cond_2

    .line 994
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 995
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 1001
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    if-eqz v2, :cond_2

    .line 1002
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 1004
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1008
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v0, v2, :cond_3

    .line 1009
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1011
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    if-eqz v2, :cond_3

    .line 1012
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v2, v6, :cond_9

    .line 1013
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 1020
    :cond_3
    :goto_2
    return-void

    .line 982
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-ge v1, v4, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_3

    .line 985
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v0, v4, :cond_5

    :goto_4
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_4

    .line 989
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v0, v4, :cond_6

    :goto_5
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_5

    .line 997
    :cond_7
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-eq v2, v7, :cond_8

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 998
    :cond_8
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1015
    :cond_9
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v2, v7, :cond_3

    .line 1016
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 979
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public moveGuideView(II)V
    .locals 8
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 857
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowMode()I

    move-result v1

    .line 858
    .local v1, windowMode:I
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    .line 859
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    add-int/2addr v2, v3

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateDockSide(II)I

    .line 861
    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 862
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v2

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v2

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 863
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 864
    .local v0, fullscreen:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 865
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 881
    .end local v0           #fullscreen:Landroid/graphics/Point;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 882
    :cond_1
    return-void

    .line 866
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v2

    if-eq v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 867
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->doDocking(I)V

    .line 868
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 869
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 872
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    if-ltz v2, :cond_1

    .line 874
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p2

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v6, v6, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v6, v6, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p2

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 877
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    if-ltz v2, :cond_1

    .line 879
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p2

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v6, v6, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v6, v6, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p2

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1068
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1069
    const-string v0, "GuideView"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 1072
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    .line 427
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 429
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 450
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    if-nez v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 458
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsMinimized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedSize:Z

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->drawResizeDecor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .parameter "event"

    .prologue
    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->getMode()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 551
    const-string v26, "GuideView"

    const-string v27, "onTouchEvent - the mode is not DIALOG_MODE_MOVE_N_RESIZE"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/16 v26, 0x0

    .line 792
    :goto_0
    return v26

    .line 555
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    float-to-int v11, v0

    .line 556
    .local v11, newX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    float-to-int v12, v0

    .line 559
    .local v12, newY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v26

    packed-switch v26, :pswitch_data_0

    .line 792
    :goto_1
    const/16 v26, 0x1

    goto :goto_0

    .line 561
    :pswitch_0
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    .line 562
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    .line 564
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateGesture(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateDockSide(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    .line 567
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    move/from16 v26, v0

    if-nez v26, :cond_1

    .line 568
    const-string v26, "GuideView"

    const-string v27, "onTouchEvent(ACTION_DOWN) - Invalid touch area. Close Dialog."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 570
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 572
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 577
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 581
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 582
    const/16 v26, 0xff

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 586
    :cond_3
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    .line 587
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 590
    :pswitch_1
    const/high16 v6, 0x3f80

    .line 591
    .local v6, hScale:F
    const/high16 v22, 0x3f80

    .line 592
    .local v22, vScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    if-nez v26, :cond_4

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static/range {v26 .. v27}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$902(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    .line 596
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->hScale:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_5

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->hScale:F

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    move/from16 v22, v0

    .line 601
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    move/from16 v26, v0

    sub-int v26, v11, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v6

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    mul-int/lit8 v20, v26, 0x2

    .line 602
    .local v20, tx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    move/from16 v26, v0

    sub-int v26, v12, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v22

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    mul-int/lit8 v21, v26, 0x2

    .line 607
    .local v21, ty:I
    if-nez v20, :cond_6

    if-nez v21, :cond_6

    .line 608
    const-string v26, "GuideView"

    const-string v27, "onTouchEvent::ACTION_MOVE [Filtered by offset[2]"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 612
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1

    .line 628
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 630
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 615
    :pswitch_2
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 616
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->moveGuideView(II)V

    goto :goto_2

    .line 624
    :pswitch_3
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 625
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->resizeGuideView(II)V

    goto :goto_2

    .line 641
    .end local v6           #hScale:F
    .end local v20           #tx:I
    .end local v21           #ty:I
    .end local v22           #vScale:F
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    move/from16 v26, v0

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    mul-int/lit8 v20, v26, 0x2

    .line 642
    .restart local v20       #tx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    move/from16 v26, v0

    sub-int v26, v12, v26

    div-int/lit8 v26, v26, 0x2

    mul-int/lit8 v21, v26, 0x2

    .line 644
    .restart local v21       #ty:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    goto/16 :goto_1

    .line 649
    :cond_7
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 650
    .local v14, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingLeft:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingTop:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v28, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v28

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingRight:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingBottom:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v30, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static/range {v30 .. v30}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    #calls: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    invoke-static {v0, v14, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getWindowMode()I

    move-result v24

    .line 658
    .local v24, windowMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v23

    .line 660
    .local v23, winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 661
    const/4 v10, 0x0

    .line 662
    .local v10, needsUpdateWindowInfo:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-static/range {v24 .. v24}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v26

    if-nez v26, :cond_9

    .line 663
    invoke-static/range {v24 .. v24}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v26

    if-eqz v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    if-eqz v26, :cond_e

    .line 665
    const/4 v10, 0x1

    .line 666
    and-int/lit8 v24, v24, -0x10

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    const/high16 v27, 0x100

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 668
    const v26, -0x2000001

    and-int v24, v24, v26

    .line 669
    const/4 v10, 0x0

    .line 671
    :cond_8
    const v26, -0x800001

    and-int v24, v24, v26

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    or-int v24, v24, v26

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 747
    :cond_9
    :goto_3
    invoke-static/range {v24 .. v24}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v26

    if-nez v26, :cond_a

    invoke-static/range {v24 .. v24}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 748
    :cond_a
    const/4 v10, 0x1

    .line 751
    :cond_b
    if-eqz v10, :cond_d

    .line 752
    const-string v26, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 753
    .local v8, lastSize:Landroid/graphics/Rect;
    if-nez v8, :cond_c

    .line 754
    const-string v26, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8           #lastSize:Landroid/graphics/Rect;
    check-cast v8, Landroid/graphics/Rect;

    .line 758
    .restart local v8       #lastSize:Landroid/graphics/Rect;
    :cond_c
    invoke-static/range {v24 .. v24}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v26

    if-nez v26, :cond_15

    .line 759
    const-string v26, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 764
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    .line 776
    .end local v8           #lastSize:Landroid/graphics/Rect;
    .end local v10           #needsUpdateWindowInfo:Z
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingLeft:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingTop:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 781
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 782
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 787
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 675
    .restart local v10       #needsUpdateWindowInfo:Z
    :cond_e
    const/4 v10, 0x0

    .line 678
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v26

    const/16 v27, 0x3e8

    const/16 v28, 0x3

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 693
    .local v17, runningTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v15, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    and-int/lit8 v18, v24, 0xf

    .line 696
    .local v18, sourceDockSide:I
    const/4 v9, 0x0

    .line 697
    .local v9, mergedSplitZone:I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 698
    .local v16, rt:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v19, v16

    .line 699
    .local v19, tempRT:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v26, v0

    and-int/lit8 v25, v26, 0xf

    .line 700
    .local v25, zone:I
    move/from16 v13, v18

    .line 701
    .local v13, newZone:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    and-int v26, v26, v25

    if-eqz v26, :cond_14

    .line 702
    const/16 v26, 0x3

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    const/16 v26, 0xc

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 704
    :cond_10
    packed-switch v25, :pswitch_data_2

    .line 719
    :cond_11
    :goto_6
    :pswitch_5
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, -0x10

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    .line 720
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v26, v0

    or-int v26, v26, v13

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    .line 721
    and-int v26, v9, v13

    if-nez v26, :cond_f

    if-eqz v13, :cond_f

    .line 723
    or-int/2addr v9, v13

    .line 724
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_12
    :goto_7
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    .line 736
    .end local v13           #newZone:I
    .end local v16           #rt:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v19           #tempRT:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v25           #zone:I
    :cond_13
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_9

    .line 737
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 739
    .local v4, am:Landroid/app/IActivityManager;
    :try_start_1
    invoke-interface {v4, v15}, Landroid/app/IActivityManager;->updateTasksOrder(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 740
    :catch_0
    move-exception v5

    .line 741
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 679
    .end local v4           #am:Landroid/app/IActivityManager;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #mergedSplitZone:I
    .end local v15           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v17           #runningTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v18           #sourceDockSide:I
    :catch_1
    move-exception v5

    .line 680
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 681
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 706
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #mergedSplitZone:I
    .restart local v13       #newZone:I
    .restart local v15       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v16       #rt:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v17       #runningTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v18       #sourceDockSide:I
    .restart local v19       #tempRT:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v25       #zone:I
    :pswitch_6
    const/4 v13, 0x4

    .line 707
    goto :goto_6

    .line 709
    :pswitch_7
    const/16 v13, 0x8

    .line 710
    goto :goto_6

    .line 712
    :pswitch_8
    const/4 v13, 0x1

    .line 713
    goto :goto_6

    .line 715
    :pswitch_9
    const/4 v13, 0x2

    goto :goto_6

    .line 725
    :cond_14
    and-int v26, v18, v25

    if-eqz v26, :cond_12

    .line 726
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, -0x10

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    .line 727
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v27

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    and-int v26, v26, v9

    if-nez v26, :cond_f

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    or-int v9, v9, v26

    .line 731
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7

    .line 761
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #mergedSplitZone:I
    .end local v13           #newZone:I
    .end local v15           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v16           #rt:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v17           #runningTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v18           #sourceDockSide:I
    .end local v19           #tempRT:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v25           #zone:I
    .restart local v8       #lastSize:Landroid/graphics/Rect;
    :cond_15
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 762
    const-string v26, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_4

    .line 767
    .end local v8           #lastSize:Landroid/graphics/Rect;
    .end local v10           #needsUpdateWindowInfo:Z
    :cond_16
    invoke-static/range {v24 .. v24}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v26

    const/high16 v27, 0x20

    and-int v26, v26, v27

    if-eqz v26, :cond_17

    .line 768
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 770
    :cond_17
    const-string v26, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 771
    const-string v26, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    const/16 v27, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 612
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 704
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 435
    const-string v0, "GuideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged( hasWindowFocus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    if-nez p1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 440
    :cond_0
    return-void
.end method

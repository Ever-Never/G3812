.class public Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardWindowController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$KeyguardViewHost;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

.field private final mContext:Landroid/content/Context;

.field private mKeyguardHost:Landroid/widget/FrameLayout;

.field private mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

.field private final mKeyguardViewProperties:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewProperties;

.field private mNeedsInput:Z

.field private mScreenOn:Z

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

.field private final mViewManager:Landroid/view/ViewManager;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "KeyguardViewManager"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewProperties;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "context"
    .parameter "viewManager"
    .parameter "callback"
    .parameter "keyguardViewProperties"
    .parameter "updateMonitor"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mNeedsInput:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mScreenOn:Z

    .line 75
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 77
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    .line 78
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewProperties;

    .line 80
    iput-object p5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized hide()V
    .locals 5

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    if-eqz v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    .line 290
    .local v0, lastView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    .line 291
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .end local v0           #lastView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;
    :cond_0
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isShowing()Z
    .locals 1

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 215
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mScreenOn:Z

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;)V
    .locals 2
    .parameter "showListener"

    .prologue
    .line 224
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mScreenOn:Z

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->onScreenTurnedOn()V

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :goto_0
    monitor-exit p0

    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 246
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_0
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNeedsInput(Z)V
    .locals 3
    .parameter "needsInput"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mNeedsInput:Z

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 192
    if-eqz p1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    :cond_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public declared-synchronized show()V
    .locals 11

    .prologue
    const/high16 v10, 0x100

    const/4 v6, 0x0

    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 109
    .local v7, res:Landroid/content/res/Resources;
    const-string v1, "lockscreen.rot_override"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, #android:bool@config_enableLockScreenRotation#t

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v6, 0x1

    .line 112
    .local v6, enableScreenRotation:Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v1, :cond_5

    .line 115
    new-instance v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$KeyguardViewHost;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$KeyguardViewHost;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$1;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    .line 117
    const/4 v8, -0x1

    .line 118
    .local v8, stretch:I
    const v4, 0x4100800

    .line 123
    .local v4, flags:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mNeedsInput:Z

    if-nez v1, :cond_2

    .line 124
    const/high16 v1, 0x2

    or-int/2addr v4, v1

    .line 126
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    or-int/2addr v4, v10

    .line 129
    :cond_3
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d4

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 132
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 133
    const v1, #android:style@Animation.LockScreen#t

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 134
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 136
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 139
    :cond_4
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 140
    const-string v1, "Keyguard"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 143
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #flags:I
    .end local v8           #stretch:I
    :cond_5
    if-eqz v6, :cond_7

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    if-nez v1, :cond_6

    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewProperties;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-interface {v1, v2, v3, v5, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewProperties;->createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardWindowController;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    const v2, #android:id@lock_screen#t

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->setId(I)V

    .line 162
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mScreenOn:Z

    if-eqz v1, :cond_6

    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->show()V

    .line 177
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const/high16 v9, 0x60

    .line 181
    .local v9, visFlags:I
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KGVM: Set visibility on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->requestFocus()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 151
    .end local v9           #visFlags:I
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    .end local v6           #enableScreenRotation:Z
    .end local v7           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized verifyUnlock()V
    .locals 1

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->show()V

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->verifyUnlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeWhenReadyTq(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->wakeWhenReadyTq(I)V

    .line 271
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    .line 273
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "mKeyguardView is null in wakeWhenReadyTq"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x0

    goto :goto_0
.end method

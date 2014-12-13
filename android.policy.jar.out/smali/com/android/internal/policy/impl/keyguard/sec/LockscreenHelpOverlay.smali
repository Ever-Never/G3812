.class public Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;
.super Landroid/widget/RelativeLayout;
.source "LockscreenHelpOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static DEBUG:Z = false

.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final TAG:Ljava/lang/String; = "LockscreenHelpOverlay"


# instance fields
.field private final FIRST_OVERLAY:I

.field private final LIMIT_COUNT:I

.field private final SCREEN_UPDATE:I

.field private dm:Landroid/util/DisplayMetrics;

.field private isHelpOverlayUSA:Z

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mChecked:I

.field private mContext:Landroid/content/Context;

.field private mEntireLayout:Landroid/widget/RelativeLayout;

.field private mHelpButton1:Landroid/widget/Button;

.field private mHelpButton2:Landroid/widget/Button;

.field private mHelpCheckBox1:Landroid/widget/CheckBox;

.field private mHelpCheckBox2:Landroid/widget/CheckBox;

.field private mOverlayLayout1:Landroid/widget/RelativeLayout;

.field private mOverlayLayout2:Landroid/widget/RelativeLayout;

.field private mPopupLayout1:Landroid/widget/LinearLayout;

.field private mPopupLayout2:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 62
    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->SCREEN_UPDATE:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->FIRST_OVERLAY:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->LIMIT_COUNT:I

    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 62
    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->SCREEN_UPDATE:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->FIRST_OVERLAY:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->LIMIT_COUNT:I

    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 62
    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->SCREEN_UPDATE:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->FIRST_OVERLAY:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->LIMIT_COUNT:I

    .line 78
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private castingDpi(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 287
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private checkPortrait()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 260
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private setDefaultCheckValue()V
    .locals 3

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->isHelpOverlayUSA:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    if-nez v0, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setHelpLayoutFlag()V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_overlay_checked"

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public checkOverlayCondition()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 131
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    if-gt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->isLargePhone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 134
    :cond_1
    return v0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 230
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    return-void
.end method

.method public isHelpOverlayVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 277
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 281
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLargePhone()Z
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 269
    .local v0, deviceSW:I
    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    .line 270
    const/4 v1, 0x0

    .line 272
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 240
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setHelpLayoutFlag()V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 244
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->removeCallback()V

    goto :goto_0

    .line 248
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setHelpLayoutFlag()V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->removeCallback()V

    goto :goto_0

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        #android:id@popup_button1#t -> :sswitch_0
        #android:id@popup_button2#t -> :sswitch_1
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_overlay_checked"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    .line 92
    const-string v0, "LockscreenHelpOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sput-boolean v4, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    .line 97
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->isHelpOverlayUSA:Z

    .line 98
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setDefaultCheckValue()V

    .line 100
    const v0, #android:id@help_entire_layout#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mEntireLayout:Landroid/widget/RelativeLayout;

    .line 101
    const v0, #android:id@help_overlay_first_view#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    .line 102
    const v0, #android:id@help_overlay_second_view#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    .line 103
    const v0, #android:id@popup_layout1#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout1:Landroid/widget/LinearLayout;

    .line 104
    const v0, #android:id@popup_layout2#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    .line 105
    const v0, #android:id@checkBox1#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    .line 106
    const v0, #android:id@checkBox2#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    .line 107
    const v0, #android:id@popup_button1#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpButton1:Landroid/widget/Button;

    .line 108
    const v0, #android:id@popup_button2#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpButton2:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->checkOverlayCondition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->removeCallback()V

    .line 128
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpButton1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpButton2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->showHelpTip()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 226
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 222
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 178
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 179
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 183
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 205
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v3, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x1388

    invoke-interface {v1, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    move v1, v2

    .line 207
    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 187
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_1

    .line 188
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 189
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_1

    .line 195
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 196
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_1

    .line 197
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 198
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_1

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public removeCallback()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 219
    return-void
.end method

.method public setCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 215
    return-void
.end method

.method public setHelpLayoutFlag()V
    .locals 4

    .prologue
    .line 165
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    .line 166
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 167
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "displayed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "help_overlay_checked"

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->checkOverlayCondition()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 174
    :cond_0
    return-void
.end method

.method public showHelpTip()V
    .locals 7

    .prologue
    const/high16 v6, -0x6700

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v5, 0x8

    .line 138
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kg_multiple_lockscreen"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 140
    .local v0, isMultipleLockscreen:Z
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 141
    const-string v1, "LockscreenHelpOverlay"

    const-string v3, "1st view show"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setBackgroundColor(I)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 161
    :goto_1
    return-void

    .end local v0           #isMultipleLockscreen:Z
    :cond_1
    move v0, v2

    .line 138
    goto :goto_0

    .line 147
    .restart local v0       #isMultipleLockscreen:Z
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v1, :cond_4

    if-eqz v0, :cond_4

    .line 148
    const-string v1, "LockscreenHelpOverlay"

    const-string v3, "2nd view show"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setBackgroundColor(I)V

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 155
    :cond_4
    const-string v1, "LockscreenHelpOverlay"

    const-string v2, "3rd all view GONE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->removeCallback()V

    goto :goto_1
.end method

.class public Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;
.super Landroid/widget/FrameLayout;
.source "LensFlareView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;,
        Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;,
        Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseIn;,
        Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;
    }
.end annotation


# static fields
.field private static final sound_tap_path:Ljava/lang/String; = "/system/media/audio/ui/lens_flare_tap.ogg"

.field private static final sound_unlock_path:Ljava/lang/String; = "/system/media/audio/ui/lens_flare_unlock.ogg"


# instance fields
.field private final AFFORDANCE_OFF_DURATION:I

.field private final AFFORDANCE_ON_DURATION:I

.field private final DBG:Z

.field private final FADEOUT_ANIMATION_DURATION:I

.field private FINGER_HOVER_Y_OFFSET:I

.field private final FOG_MAX_ALPHA:F

.field private final FOG_ON_DURATION:I

.field private final HEXAGON_CIRCLE_TOTAL:I

.field private HEXAGON_TAP_TOTAL:I

.field private HEXAGON_TOTAL:I

.field private final HOVER_DURATION:I

.field private final HOVER_LIGHT_IN_DURATION:I

.field private final HOVER_LIGHT_OUT_DURATION:I

.field private MAX_ALPHA_DISTANCE:I

.field private PEN_HOVER_Y_OFFSET:I

.field private final SHOW_ANIMATION_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private final TAP_ANIMATION_DURATION:I

.field private TAP_AREA_RADIUS:I

.field private final UNLOCK_ANIMATION_DURATION:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private final X_OFFSET:I

.field private Y_OFFSET:I

.field private affordanceAnimationValue:F

.field private affordanceOffAnimator:Landroid/animation/ValueAnimator;

.field private affordanceOnAnimator:Landroid/animation/ValueAnimator;

.field private affordancePoint:Landroid/graphics/Point;

.field private affordanceRunnable:Ljava/lang/Runnable;

.field private createdDelaytime:J

.field private currentX:F

.field private currentY:F

.field private defaultConfig:Landroid/graphics/Bitmap$Config;

.field private defaultInSampleSize:F

.field private distance:D

.field private distancePerMaxAlpha:F

.field private fadeOutAnimator:Landroid/animation/ValueAnimator;

.field private fadeoutAnimationValue:F

.field private fogAlpha:F

.field private fogAnimationValue:F

.field private fogOnAnimator:Landroid/animation/ValueAnimator;

.field private globalAlpha:F

.field private hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private hexagonDistance:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private hexagonRes:[I

.field private hexagonRotation:[I

.field private hexagonScale:[F

.field private hoverAnimator:Landroid/animation/ValueAnimator;

.field private hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private hoverLightAnimationValue:F

.field private hoverLightInAnimator:Landroid/animation/ValueAnimator;

.field private hoverLightOutAnimator:Landroid/animation/ValueAnimator;

.field private hoverX:F

.field private hoverY:F

.field private isBeforeInit:Z

.field private isPlayAffordance:Z

.field private isSoundEnable:Z

.field private isSystemSoundChecked:Z

.field private isTouched:Z

.field private lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private lightObj:Landroid/widget/FrameLayout;

.field private lightTap:Landroid/widget/FrameLayout;

.field private longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private mContext:Landroid/content/Context;

.field private mFirstCreatedRunnable:Ljava/lang/Runnable;

.field private objAlpha:F

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;

.field private particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private randomRotation:F

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private screenHeight:I

.field private screenWidth:I

.field private showStartX:F

.field private showStartY:F

.field private sound_tap:I

.field private sound_unlock:I

.field private soundpool:Landroid/media/SoundPool;

.field private tapAnimationValue:F

.field private tapAnimator:Landroid/animation/ValueAnimator;

.field private tapHexRandomPoint:[Landroid/graphics/Point;

.field private tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private tapHexagonScale:[F

.field private unlockAnimationValue:F

.field private unlockAnimator:Landroid/animation/ValueAnimator;

.field private vignetting:Landroid/widget/ImageView;

.field private vignettingAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v1, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 136
    const-string v0, "LensFlare"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->TAG:Ljava/lang/String;

    .line 140
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_CIRCLE_TOTAL:I

    .line 142
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    .line 144
    const v0, 0x3f19999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FOG_MAX_ALPHA:F

    .line 146
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->MAX_ALPHA_DISTANCE:I

    .line 148
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->SHOW_ANIMATION_DURATION:I

    .line 150
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->TAP_ANIMATION_DURATION:I

    .line 152
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->UNLOCK_ANIMATION_DURATION:I

    .line 154
    const v0, 0x186a0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HOVER_DURATION:I

    .line 156
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HOVER_LIGHT_IN_DURATION:I

    .line 158
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HOVER_LIGHT_OUT_DURATION:I

    .line 160
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->AFFORDANCE_ON_DURATION:I

    .line 162
    const/16 v0, 0x44c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->AFFORDANCE_OFF_DURATION:I

    .line 164
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->TAP_AREA_RADIUS:I

    .line 166
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FOG_ON_DURATION:I

    .line 168
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FADEOUT_ANIMATION_DURATION:I

    .line 170
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->X_OFFSET:I

    .line 172
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    .line 174
    const/16 v0, -0x50

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FINGER_HOVER_Y_OFFSET:I

    .line 176
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->PEN_HOVER_Y_OFFSET:I

    .line 180
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    .line 192
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isSoundEnable:Z

    .line 194
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->DBG:Z

    .line 196
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    .line 198
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 200
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->createdDelaytime:J

    .line 202
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->UNLOCK_SOUND_PLAY_TIME:J

    .line 204
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    .line 210
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 212
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isTouched:Z

    .line 214
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultConfig:Landroid/graphics/Bitmap$Config;

    .line 216
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    .line 218
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->globalAlpha:F

    .line 223
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    .line 224
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    .line 225
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 226
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragPos()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedHover()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightAnimationValue:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedHoverLight()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceAnimationValue:F

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceAnimationValue:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedAffordance()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Landroid/animation/Animator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->playUnlockAffordance()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAnimationValue:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lensFlareinit()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragAlpha()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedTap()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeoutAnimationValue:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedFadeOut()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedUnlock()V

    return-void
.end method

.method private animatedAffordance()V
    .locals 2

    .prologue
    .line 800
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceAnimationValue:F

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 802
    return-void
.end method

.method private animatedDragAlpha()V
    .locals 5

    .prologue
    .line 764
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAnimationValue:F

    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    .line 765
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->globalAlpha:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    .line 766
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAlpha:F

    .line 767
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    const v3, 0x3fa66666

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignettingAlpha:F

    .line 769
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 770
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignettingAlpha:F

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 772
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_0

    .line 773
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v0, v2, v1

    .line 774
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAlpha:F

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 772
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_0
    return-void
.end method

.method private animatedDragPos()V
    .locals 12

    .prologue
    const/high16 v6, 0x3f80

    .line 748
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    mul-float/2addr v0, v6

    add-float v11, v6, v0

    .line 749
    .local v11, scale:F
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v2, v11

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 750
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v2, v11

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 751
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    neg-float v0, v0

    const/high16 v2, 0x41f0

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    const/high16 v3, 0x4320

    mul-float/2addr v2, v3

    sub-float v10, v0, v2

    .line 752
    .local v10, rotation:F
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 754
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 756
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v9, v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v1, v0, v9

    .line 758
    .local v1, hex:Landroid/widget/ImageView;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    aget v7, v0, v9

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRotation:[I

    aget v8, v0, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFFFI)V

    .line 756
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 761
    .end local v1           #hex:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private animatedFadeOut()V
    .locals 5

    .prologue
    .line 779
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeoutAnimationValue:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 780
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignettingAlpha:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeoutAnimationValue:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 782
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_0

    .line 783
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v0, v2, v1

    .line 784
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAlpha:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeoutAnimationValue:F

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 786
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_0
    return-void
.end method

.method private animatedHover()V
    .locals 6

    .prologue
    const/high16 v5, 0x4040

    const/high16 v4, 0x4000

    .line 690
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverX:F

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setX(F)V

    .line 691
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverY:F

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setY(F)V

    .line 692
    return-void
.end method

.method private animatedHoverLight()V
    .locals 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightAnimationValue:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightAnimationValue:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 697
    return-void
.end method

.method private animatedTap()V
    .locals 19

    .prologue
    .line 701
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    const/high16 v16, 0x3f00

    cmpg-float v15, v15, v16

    if-gez v15, :cond_0

    const/high16 v1, 0x3f80

    .line 702
    .local v1, alpha:F
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->globalAlpha:F

    mul-float/2addr v1, v15

    .line 704
    const v15, 0x3e4ccccd

    const v16, 0x3f4ccccd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v2, v15, v16

    .line 705
    .local v2, distanceScale:F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    if-ge v4, v15, :cond_1

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v3, v15, v4

    .line 707
    .local v3, hex:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 709
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagonScale:[F

    aget v15, v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v16, v0

    const v17, 0x3f4ccccd

    mul-float v16, v16, v17

    const v17, 0x3f333333

    add-float v16, v16, v17

    mul-float v10, v15, v16

    .line 710
    .local v10, scale:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v15, v10

    invoke-virtual {v3, v15}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 711
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v15, v10

    invoke-virtual {v3, v15}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 713
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexRandomPoint:[Landroid/graphics/Point;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v13, v15, v16

    .line 714
    .local v13, tx:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexRandomPoint:[Landroid/graphics/Point;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v14, v15, v16

    .line 716
    .local v14, ty:F
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getWidth()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v13, v15

    .line 717
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    .line 719
    invoke-virtual {v3, v13}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setX(F)V

    .line 720
    invoke-virtual {v3, v14}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setY(F)V

    .line 705
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 701
    .end local v1           #alpha:F
    .end local v2           #distanceScale:F
    .end local v3           #hex:Landroid/widget/ImageView;
    .end local v4           #i:I
    .end local v10           #scale:F
    .end local v13           #tx:F
    .end local v14           #ty:F
    :cond_0
    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v16, v0

    const/high16 v17, 0x3f00

    sub-float v16, v16, v17

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    sub-float v1, v15, v16

    goto/16 :goto_0

    .line 724
    .restart local v1       #alpha:F
    .restart local v2       #distanceScale:F
    .restart local v4       #i:I
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    const v16, 0x3fe66666

    mul-float v11, v15, v16

    .line 725
    .local v11, tapAniamationParticleValue:F
    const/high16 v15, 0x3f00

    cmpg-float v15, v11, v15

    if-gez v15, :cond_2

    const/high16 v15, 0x3f80

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v7

    .line 726
    .local v7, prticleAalpha:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    const v16, 0x3f99999a

    mul-float v6, v15, v16

    .line 727
    .local v6, particleScale:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 728
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v6

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 729
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v6

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 732
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    const v16, 0x3fb33333

    mul-float v12, v15, v16

    .line 733
    .local v12, tapAniamationRingValue:F
    const/high16 v15, 0x3f00

    cmpg-float v15, v12, v15

    if-gez v15, :cond_3

    const/high16 v15, 0x3f80

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v8

    .line 734
    .local v8, ringAlpha:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 735
    const/high16 v15, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v16, v0

    add-float v9, v15, v16

    .line 736
    .local v9, ringScale:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 737
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 740
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 741
    const/high16 v15, 0x3fc0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v16, v0

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    add-float v5, v15, v16

    .line 742
    .local v5, longScale:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 743
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 744
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    move/from16 v16, v0

    const/high16 v17, 0x41f0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 745
    return-void

    .line 725
    .end local v5           #longScale:F
    .end local v6           #particleScale:F
    .end local v7           #prticleAalpha:F
    .end local v8           #ringAlpha:F
    .end local v9           #ringScale:F
    .end local v12           #tapAniamationRingValue:F
    :cond_2
    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f00

    sub-float v16, v11, v16

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    goto/16 :goto_2

    .line 733
    .restart local v6       #particleScale:F
    .restart local v7       #prticleAalpha:F
    .restart local v12       #tapAniamationRingValue:F
    :cond_3
    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f00

    sub-float v16, v12, v16

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    goto/16 :goto_3
.end method

.method private animatedUnlock()V
    .locals 9

    .prologue
    const/high16 v4, 0x4000

    const/high16 v3, 0x3f80

    const/high16 v2, 0x3f00

    .line 790
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    const v1, 0x3fa66666

    mul-float/2addr v0, v1

    add-float v8, v3, v0

    .line 791
    .local v8, rainbowScale:F
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    mul-float v7, v0, v4

    .line 793
    .local v7, rainbowAlpha:F
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 794
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    const v6, 0x3ecccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 795
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 796
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 797
    return-void

    .line 791
    .end local v7           #rainbowAlpha:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    sub-float v7, v3, v0

    goto :goto_0
.end method

.method private calculateDistance(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v6, 0x4000

    .line 814
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    sub-float v0, p1, v2

    .line 815
    .local v0, diffX:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    sub-float v1, p2, v2

    .line 816
    .local v1, diffY:F
    float-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    .line 817
    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    double-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->MAX_ALPHA_DISTANCE:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    .line 818
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animator"

    .prologue
    .line 902
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 904
    :cond_0
    return-void
.end method

.method private cleanUpAllViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 875
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 876
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 877
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 878
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 879
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 880
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 882
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_0

    .line 883
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v0, v2, v1

    .line 884
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 882
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    if-ge v1, v2, :cond_1

    .line 887
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v0, v2, v1

    .line 888
    .restart local v0       #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 886
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 891
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 892
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 893
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 894
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 895
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 896
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 897
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 898
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 899
    return-void
.end method

.method private getCorrectAlpha(F)F
    .locals 3
    .parameter "alpha"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 805
    cmpg-float v2, p1, v0

    if-gtz v2, :cond_1

    move p1, v0

    .line 810
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 807
    .restart local p1
    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    move p1, v1

    .line 808
    goto :goto_0
.end method

.method private hoverEnter(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 668
    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverX:F

    .line 669
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverY:F

    .line 671
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 672
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 673
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 674
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 675
    return-void
.end method

.method private hoverExit()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 684
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 685
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 686
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 687
    return-void
.end method

.method private hoverMove(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 678
    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverX:F

    .line 679
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverY:F

    .line 680
    return-void
.end method

.method private lensFlareinit()V
    .locals 7

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 232
    const-string v4, "LensFlare"

    const-string v5, "this.getChildCount() == 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 234
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenWidth:I

    .line 235
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenHeight:I

    .line 237
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenHeight:I

    if-ge v4, v5, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenWidth:I

    .line 239
    .local v3, smallestWidth:I
    :goto_0
    const-string v4, "LensFlare"

    const-string v5, "lensFlareinit ============================"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smallestWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v1, "0.8"

    .line 245
    .local v1, opacity:Ljava/lang/String;
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLOBALCONFIG_LOCKSCREEN_LIGHT_OPACITY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->globalAlpha:F

    .line 248
    const/16 v4, 0x438

    if-eq v3, v4, :cond_0

    .line 249
    int-to-float v4, v3

    const/high16 v5, 0x4487

    div-float v2, v4, v5

    .line 250
    .local v2, ratio:F
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ratio : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FINGER_HOVER_Y_OFFSET:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FINGER_HOVER_Y_OFFSET:I

    .line 252
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->MAX_ALPHA_DISTANCE:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->MAX_ALPHA_DISTANCE:I

    .line 253
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->TAP_AREA_RADIUS:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->TAP_AREA_RADIUS:I

    .line 256
    .end local v2           #ratio:F
    :cond_0
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FINGER_HOVER_Y_OFFSET : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FINGER_HOVER_Y_OFFSET:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAX_ALPHA_DISTANCE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->MAX_ALPHA_DISTANCE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAP_AREA_RADIUS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->TAP_AREA_RADIUS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setLayout()V

    .line 261
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setHover()V

    .line 262
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setHexagon()V

    .line 263
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setTapHexagon()V

    .line 264
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAnimator()V

    .line 266
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v1           #opacity:Ljava/lang/String;
    .end local v3           #smallestWidth:I
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    .line 267
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 268
    return-void

    .line 237
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenHeight:I

    goto/16 :goto_0
.end method

.method private playSound(I)V
    .locals 7
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 596
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isSoundEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 599
    :cond_0
    return-void
.end method

.method private playUnlockAffordance()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    .line 928
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_0

    .line 944
    :goto_0
    return-void

    .line 930
    :cond_0
    const-string v0, "LensFlare"

    const-string v1, "playUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    .line 932
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    .line 934
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setHexagonRandomTarget(Z)V

    .line 936
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 937
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 938
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 939
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 941
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 942
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 943
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private setAlphaAndVisibility(Landroid/view/View;F)V
    .locals 2
    .parameter "view"
    .parameter "alpha"

    .prologue
    const/16 v0, 0x8

    .line 863
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_2

    .line 864
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 865
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 872
    :cond_1
    :goto_0
    return-void

    .line 868
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 869
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 870
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setAnimator()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x2

    .line 483
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 494
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 496
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 505
    new-array v0, v4, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 516
    new-array v0, v4, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 527
    new-array v0, v4, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 538
    new-array v0, v4, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 540
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v1, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 549
    new-array v0, v4, [F

    fill-array-data v0, :array_6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->OUT:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    const/high16 v3, 0x4100

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 559
    new-array v0, v4, [F

    fill-array-data v0, :array_7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    .line 560
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 561
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 570
    new-array v0, v4, [F

    fill-array-data v0, :array_8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 584
    new-array v0, v4, [F

    fill-array-data v0, :array_9

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x44c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 593
    return-void

    .line 483
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 494
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0x3ft
    .end array-data

    .line 505
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 516
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 527
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 538
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 549
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 559
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 570
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0x3ft
    .end array-data

    .line 584
    :array_9
    .array-data 0x4
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private setCenterPos(Landroid/view/View;FFFFF)V
    .locals 4
    .parameter "view"
    .parameter "fromX"
    .parameter "fromY"
    .parameter "x"
    .parameter "y"
    .parameter "distanceScale"

    .prologue
    const/high16 v3, 0x4000

    .line 822
    sub-float v2, p4, p2

    mul-float/2addr v2, p6

    add-float v0, v2, p2

    .line 823
    .local v0, tx:F
    sub-float v2, p5, p3

    mul-float/2addr v2, p6

    add-float v1, v2, p3

    .line 825
    .local v1, ty:F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 826
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 828
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 830
    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    .line 832
    :cond_0
    return-void
.end method

.method private setCenterPos(Landroid/view/View;FFFFFFI)V
    .locals 18
    .parameter "view"
    .parameter "fromX"
    .parameter "fromY"
    .parameter "x"
    .parameter "y"
    .parameter "distanceScale"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 836
    const/high16 v12, 0x3f00

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    double-to-float v13, v13

    const/high16 v14, 0x4434

    div-float/2addr v13, v14

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    add-float v8, v12, v13

    .line 837
    .local v8, scaleByDistance:F
    const/high16 v12, 0x3f00

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    add-float v7, v12, v13

    .line 838
    .local v7, scaleByAnimationValue:F
    mul-float v12, p7, v8

    mul-float v9, v12, v7

    .line 839
    .local v9, tscale:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v12, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleX(F)V

    .line 840
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v12, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleY(F)V

    .line 842
    const/high16 v12, 0x3f00

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    add-float v2, v12, v13

    .line 843
    .local v2, distanceScaleByAnimation:F
    sub-float v12, p4, p2

    mul-float v12, v12, p6

    mul-float/2addr v12, v2

    add-float v10, v12, p2

    .line 844
    .local v10, tx:F
    sub-float v12, p5, p3

    mul-float v12, v12, p6

    mul-float/2addr v12, v2

    add-float v11, v12, p3

    .line 846
    .local v11, ty:F
    if-eqz p8, :cond_0

    .line 847
    const/high16 v12, 0x4396

    mul-float v1, p7, v12

    .line 848
    .local v1, dist:F
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    double-to-float v12, v12

    const/high16 v13, 0x447a

    div-float/2addr v12, v13

    mul-float v12, v12, p7

    mul-float v6, v12, p7

    .line 849
    .local v6, rotationByDistance:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    const/high16 v13, 0x3f80

    mul-float v5, v12, v13

    .line 850
    .local v5, rotationByAnimation:F
    move/from16 v0, p8

    int-to-double v12, v0

    const-wide v14, 0x400921fb54442d18L

    mul-double/2addr v12, v14

    const-wide v14, 0x4066800000000000L

    div-double/2addr v12, v14

    float-to-double v14, v6

    add-double/2addr v12, v14

    float-to-double v14, v5

    add-double v3, v12, v14

    .line 851
    .local v3, rad:D
    float-to-double v12, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    float-to-double v14, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    add-float v10, v12, p4

    .line 852
    float-to-double v12, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    neg-double v14, v14

    mul-double/2addr v12, v14

    float-to-double v14, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    add-float v11, v12, p5

    .line 855
    .end local v1           #dist:F
    .end local v3           #rad:D
    .end local v5           #rotationByAnimation:F
    .end local v6           #rotationByDistance:F
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v10, v12

    .line 856
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    .line 858
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setX(F)V

    .line 859
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setY(F)V

    .line 860
    return-void
.end method

.method private setHexagon()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 346
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRes:[I

    .line 353
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRes:[I

    array-length v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    .line 355
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    new-array v3, v3, [Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 356
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRotation:[I

    .line 357
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    .line 358
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    .line 360
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v1, v3, :cond_0

    .line 361
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    .line 362
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRes:[I

    aget v3, v3, v1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 363
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4034

    mul-double/2addr v3, v5

    double-to-float v2, v3

    .line 364
    .local v2, rotation:F
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 365
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 366
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightObj:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0, v7, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 367
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aput-object v0, v3, v1

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    .end local v2           #rotation:F
    :cond_0
    return-void

    .line 346
    nop

    :array_0
    .array-data 0x4
        #android:drawable@keyguard_flare_hexagon_blue#a
        #android:drawable@keyguard_flare_hexagon_orange#a
        #android:drawable@keyguard_flare_hexagon_blue#a
        #android:drawable@keyguard_flare_hexagon_orange#a
        #android:drawable@keyguard_flare_hexagon_green#a
        #android:drawable@keyguard_flare_hexagon_green#a
    .end array-data
.end method

.method private setHexagonRandomTarget(Z)V
    .locals 17
    .parameter "isForUnlockAffordance"

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    new-array v11, v11, [Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexRandomPoint:[Landroid/graphics/Point;

    .line 399
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    new-array v11, v11, [F

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagonScale:[F

    .line 400
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x4076800000000000L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    .line 403
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    if-ge v4, v11, :cond_1

    .line 404
    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x4076800000000000L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    .line 405
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->TAP_AREA_RADIUS:I

    int-to-double v13, v13

    mul-double/2addr v11, v13

    double-to-int v7, v11

    .line 406
    .local v7, randomDistance:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    invoke-static {v11}, Landroid/util/FloatMath;->cos(F)F

    move-result v11

    int-to-float v12, v7

    mul-float/2addr v11, v12

    float-to-int v9, v11

    .line 407
    .local v9, tx:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    invoke-static {v11}, Landroid/util/FloatMath;->sin(F)F

    move-result v11

    int-to-float v12, v7

    mul-float/2addr v11, v12

    float-to-int v10, v11

    .line 409
    .local v10, ty:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexRandomPoint:[Landroid/graphics/Point;

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    aput-object v12, v11, v4

    .line 410
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagonScale:[F

    const v12, 0x3e4ccccd

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide v15, 0x3fe99999a0000000L

    mul-double/2addr v13, v15

    double-to-float v13, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    .line 411
    const/high16 v11, 0x3f00

    const/high16 v12, 0x3f00

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v12, v13

    add-float v1, v11, v12

    .line 412
    .local v1, alpha:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v11, v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 403
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 416
    .end local v1           #alpha:F
    .end local v7           #randomDistance:I
    .end local v9           #tx:I
    .end local v10           #ty:I
    :cond_1
    if-nez p1, :cond_7

    .line 417
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 418
    :cond_2
    const v8, 0x3e4ccccd

    .line 419
    .local v8, startDistance:F
    const v2, 0x3e75c28f

    .line 420
    .local v2, distanceGap:F
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v5, v11, :cond_4

    .line 421
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x3f00

    sub-float/2addr v11, v12

    const v12, 0x3ecccccd

    mul-float v6, v11, v12

    .line 422
    .local v6, random:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    if-eqz v11, :cond_3

    .line 423
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    int-to-float v12, v5

    mul-float/2addr v12, v2

    add-float/2addr v12, v8

    add-float/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 425
    .end local v6           #random:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 427
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v4, v11, :cond_6

    .line 428
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v3, v11, v4

    .line 429
    .local v3, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    add-int/lit8 v11, v11, 0x0

    if-ge v4, v11, :cond_5

    .line 430
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRotation:[I

    const/4 v12, 0x0

    aput v12, v11, v4

    .line 431
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const v13, 0x3dcccccd

    add-float/2addr v11, v13

    aput v11, v12, v4

    .line 436
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    aget v11, v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v11, v12

    invoke-virtual {v3, v11}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 437
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    aget v11, v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v11, v12

    invoke-virtual {v3, v11}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 427
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 433
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRotation:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide v14, 0x4076800000000000L

    mul-double/2addr v12, v14

    double-to-int v12, v12

    aput v12, v11, v4

    .line 434
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    const v12, 0x3f19999a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide/high16 v15, 0x3ff0

    mul-double/2addr v13, v15

    double-to-float v13, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    goto :goto_3

    .line 439
    .end local v3           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    invoke-virtual {v11, v12}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 441
    .end local v2           #distanceGap:F
    .end local v5           #j:I
    .end local v8           #startDistance:F
    :cond_7
    return-void
.end method

.method private setHover()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 338
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v1, #android:drawable@keyguard_flare_hoverlight#t

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v0, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 343
    return-void
.end method

.method private setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V
    .locals 2
    .parameter "imageView"
    .parameter "resId"
    .parameter "config"

    .prologue
    .line 321
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 322
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-nez p3, :cond_0

    .line 323
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 332
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 333
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 334
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:F

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 335
    return-void

    .line 325
    :cond_0
    iput-object p3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private setLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 273
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    .line 274
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 275
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 276
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #android:drawable@keyguard_flare_vignetting#t

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;)V

    .line 282
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, #android:drawable@keyguard_flare_light_00040#t

    invoke-direct {p0, v1, v2, v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 285
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 288
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightObj:Landroid/widget/FrameLayout;

    .line 289
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightObj:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;)V

    .line 292
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightTap:Landroid/widget/FrameLayout;

    .line 293
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightTap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;)V

    .line 296
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 297
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, #android:drawable@keyguard_flare_ring#t

    invoke-direct {p0, v1, v2, v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 298
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 299
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 302
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 303
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, #android:drawable@keyguard_flare_long#t

    invoke-direct {p0, v1, v2, v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 304
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 308
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, #android:drawable@keyguard_flare_particle#t

    invoke-direct {p0, v1, v2, v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 311
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 314
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 315
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, #android:drawable@keyguard_flare_rainbow#t

    invoke-direct {p0, v1, v2, v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 316
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 317
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 318
    return-void
.end method

.method private setSound()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 444
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopReleaseSound()V

    .line 447
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 449
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 451
    .local v4, result:I
    :try_start_0
    const-string v5, "lockscreen_sounds_enabled"

    const/4 v8, -0x2

    invoke-static {v2, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 455
    :goto_0
    if-ne v4, v6, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isSystemSoundChecked:Z

    .line 457
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    if-nez v5, :cond_2

    .line 458
    new-instance v5, Landroid/media/SoundPool;

    const/16 v8, 0xa

    invoke-direct {v5, v8, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    .line 461
    new-instance v0, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/lens_flare_tap.ogg"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, checkTapFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/lens_flare_unlock.ogg"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .local v1, checkUnlockFile:Ljava/io/File;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/lens_flare_tap.ogg"

    invoke-virtual {v5, v7, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_tap:I

    .line 466
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/lens_flare_unlock.ogg"

    invoke-virtual {v5, v7, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_unlock:I

    .line 467
    const-string v5, "LensFlare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sound ID get from path sound_tap = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_tap:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sound_unlock = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_unlock:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 470
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    const v8, #android:raw@lens_flare_tap#t

    invoke-virtual {v5, v7, v8, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_tap:I

    .line 473
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 474
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    const v8, #android:raw@lens_flare_unlock#t

    invoke-virtual {v5, v7, v8, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_unlock:I

    .line 477
    :cond_1
    const-string v5, "LensFlare"

    const-string v6, "LensFlare sound : load"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .end local v0           #checkTapFile:Ljava/io/File;
    .end local v1           #checkUnlockFile:Ljava/io/File;
    :cond_2
    return-void

    .line 452
    :catch_0
    move-exception v3

    .line 453
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .end local v3           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    move v5, v7

    .line 455
    goto/16 :goto_1
.end method

.method private setTapHexagon()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    .line 372
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    new-array v5, v5, [Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 373
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    if-ge v1, v5, :cond_0

    .line 374
    rem-int/lit8 v2, v1, 0x3

    .line 375
    .local v2, index:I
    const/4 v4, 0x0

    .line 376
    .local v4, resource:I
    packed-switch v2, :pswitch_data_0

    .line 387
    :goto_1
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    .line 388
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 389
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 390
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x4076800000000000L

    mul-double/2addr v5, v7

    double-to-int v3, v5

    .line 391
    .local v3, randomRotation:I
    int-to-float v5, v3

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 392
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightTap:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0, v9, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 393
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aput-object v0, v5, v1

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    .end local v3           #randomRotation:I
    :pswitch_0
    const v4, #android:drawable@keyguard_flare_hexagon_blue#t

    .line 379
    goto :goto_1

    .line 381
    :pswitch_1
    const v4, #android:drawable@keyguard_flare_hexagon_orange#t

    .line 382
    goto :goto_1

    .line 384
    :pswitch_2
    const v4, #android:drawable@keyguard_flare_hexagon_green#t

    goto :goto_1

    .line 395
    .end local v2           #index:I
    .end local v4           #resource:I
    :cond_0
    return-void

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1043
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 1045
    :cond_0
    return-void
.end method

.method private stopUnlockAffordance()V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 948
    const-string v0, "LensFlare"

    const-string v1, "remove delayed UnlockAffordance callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    .line 952
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    .line 1020
    const-string v0, "LensFlare"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1022
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cleanUpAllViews()V

    .line 1023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 1025
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopReleaseSound()V

    .line 1026
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$13;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 1037
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 1065
    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 1071
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_0

    .line 1073
    const-string v0, "LensFlare"

    const-string v1, "Return handleTouchEvent!!! Becuase isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :goto_0
    return v3

    .line 1077
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1095
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverExit()V

    goto :goto_0

    .line 1079
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x4002

    const/16 v1, 0x4002

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x2002

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_2

    .line 1081
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->PEN_HOVER_Y_OFFSET:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    .line 1085
    :goto_1
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputDevice.SOURCE_STYLUS = 16386, Y_OFFSET = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverEnter(FF)V

    goto :goto_0

    .line 1083
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FINGER_HOVER_Y_OFFSET:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    goto :goto_1

    .line 1090
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverMove(FF)V

    goto :goto_0

    .line 1077
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 957
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_1

    .line 959
    const-string v0, "LensFlare"

    const-string v1, "Return handleTouchEvent!!! Becuase isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_0
    :goto_0
    return v3

    .line 963
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_4

    .line 964
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x4002

    const/16 v1, 0x4002

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x2002

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_3

    .line 966
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->PEN_HOVER_Y_OFFSET:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    .line 970
    :goto_1
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputDevice.SOURCE_STYLUS = 16386, Y_OFFSET = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->show(FF)V

    goto :goto_0

    .line 968
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FINGER_HOVER_Y_OFFSET:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    goto :goto_1

    .line 972
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_5

    .line 974
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->move(FF)V

    goto :goto_0

    .line 975
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 977
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hide()V

    goto :goto_0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 984
    const-string v0, "LensFlare"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlock()V

    .line 986
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isTouched:Z

    .line 651
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 652
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 653
    return-void
.end method

.method public move(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isTouched:Z

    if-nez v0, :cond_1

    .line 636
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->show(FF)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    .line 639
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    .line 640
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->calculateDistance(FF)V

    .line 642
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 643
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragAlpha()V

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragPos()V

    goto :goto_0
.end method

.method public playLockSound()V
    .locals 2

    .prologue
    .line 990
    const-string v0, "LensFlare"

    const-string v1, "playSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_unlock:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->playSound(I)V

    .line 992
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1049
    const-string v0, "LensFlare"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_0

    .line 1055
    :goto_0
    return-void

    .line 1052
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cleanUpAllViews()V

    .line 1053
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 1054
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopUnlockAffordance()V

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 1059
    const-string v0, "LensFlare"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 1061
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 996
    const-string v0, "LensFlare"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 999
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_0

    .line 1001
    const-string v0, "LensFlare"

    const-string v1, "isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1004
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$12;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 1011
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.postDelayed, createdDelaytime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->createdDelaytime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->createdDelaytime:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1015
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setSound()V

    .line 1016
    return-void
.end method

.method public show(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isTouched:Z

    .line 603
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopUnlockAffordance()V

    .line 605
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    .line 606
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    .line 607
    add-float v0, p1, v2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    .line 608
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    .line 609
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    .line 610
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setHexagonRandomTarget(Z)V

    .line 613
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragPos()V

    .line 615
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 616
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 617
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 618
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 621
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 622
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 623
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 627
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 628
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 629
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 631
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_tap:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->playSound(I)V

    .line 632
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 4
    .parameter "startDelay"
    .parameter "rect"

    .prologue
    .line 908
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    if-eqz v0, :cond_0

    .line 911
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopUnlockAffordance()V

    .line 912
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 913
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 915
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    .line 923
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 925
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 5

    .prologue
    .line 656
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v1, :cond_0

    .line 657
    const-string v1, "LensFlare"

    const-string v2, "unlock before init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lensFlareinit()V

    .line 665
    :goto_0
    return-void

    .line 660
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_unlock:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->playSound(I)V

    .line 661
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x4220

    sub-float v0, v1, v2

    .line 662
    .local v0, degree:F
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 663
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

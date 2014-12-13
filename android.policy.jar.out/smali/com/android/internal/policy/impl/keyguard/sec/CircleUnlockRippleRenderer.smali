.class public Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC_PNG:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.png"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.png"

.field private static final INK_DISABLE:I = 0x0

.field private static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"


# instance fields
.field BGResId:I

.field private final DBG:Z

.field private HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private final HOVER_FRESENL_MAX:F

.field private final HOVER_FRESENL_MIN:F

.field private final HOVER_INTENSITY_MAX:F

.field private final HOVER_SPECULAR_RATIO_MAX:F

.field private final HOVER_SPECULAR_RATIO_MIN:F

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field private final REDUCTION_RATE_NORMAL:F

.field private final REDUCTION_RATE_RAIN:F

.field private final REDUCTION_RATE_WAVE:F

.field RIPPLE_DRAG_THRESHOLD:D

.field private final RIPPLE_WAIT_TIME:J

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field private final TOUCH_EXPONENT:F

.field private final TOUCH_FRESENL:F

.field private final TOUCH_SPECULAR_RATIO:F

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field bitmapBG:Landroid/graphics/Bitmap;

.field bitmapWater:Landroid/graphics/Bitmap;

.field private calledIsScreenTurnedOn:Z

.field private defaultX:F

.field private defaultY:F

.field private diffPressTime:J

.field private downX:F

.field private downY:F

.field private drawCount:I

.field glX:F

.field glY:F

.field private gpuHeights:[F

.field private hasSystemNavBar:Z

.field private heights:[F

.field private heightsSub1:[F

.field private heightsSub2:[F

.field private indices:[S

.field private inkColorFromSetting:[[F

.field intensityForLandscape:F

.field intensityForPortrait:F

.field intensityForRipple:F

.field private isFirstTouched:Z

.field private isInkEnable:Z

.field private isMakedASpenToucdUp:Z

.field private isSystemSoundChecked:Z

.field isTouched:Z

.field private isUseLCD:Z

.field private is_JBP_Upgrade:Z

.field mBgChangeCheckArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapRatio:F

.field private mContext:Landroid/content/Context;

.field private mDefaultRunnable:Ljava/lang/Runnable;

.field private mExponent:F

.field private mFresnelRatio:F

.field private mHoverEnabled:Z

.field private mHoverIntensity:F

.field private mInkEffectColor:I

.field private mLandscape:Z

.field private mLightHeight:F

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field mParent:Landroid/view/View;

.field private mPreviousRippleTime:J

.field private mRDownId:I

.field private mRUpId:I

.field private mReductionRate:F

.field private mReductionRateSub:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSpecularRatio:F

.field private mSubWaveTime:J

.field private mWallpaperPath:Ljava/lang/String;

.field private mWaveEnable:Z

.field private mWaveVelocity:F

.field private max:I

.field private mouseX:F

.field private mouseY:F

.field private moveCount:I

.field private prevPressTime:J

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field textures0:[I

.field textures1:[I

.field tmx:F

.field tmy:F

.field translateXForLandscape:F

.field translateXForPortrait:F

.field translateYForLandscape:F

.field translateYForPortrait:F

.field translateZForLandscape:F

.field translateZForPortrait:F

.field unitCellHeight:F

.field unitCellWidth:F

.field private velocity:[F

.field private velocitySub1:[F

.field private velocitySub2:[F

.field private vertices:[F

.field private view:[F

.field private waveCount:I

.field private waveDealy:I

.field windowHeight:I

.field windowWidth:I

.field private world:[F

.field private wvp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 12
    .parameter "context"
    .parameter "view"

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 327
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->DBG:Z

    .line 96
    const-string v4, "CircleUnlockRippleRenderer"

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->TAG:Ljava/lang/String;

    .line 99
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 100
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 102
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 103
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 105
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 106
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 108
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    .line 109
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 111
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->unitCellWidth:F

    .line 112
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->unitCellHeight:F

    .line 114
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    .line 115
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    .line 117
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    .line 118
    new-array v4, v8, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    .line 120
    new-array v4, v8, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    .line 121
    new-array v4, v8, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    .line 124
    new-array v4, v8, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 125
    new-array v4, v8, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 126
    new-array v4, v8, [S

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 128
    new-array v4, v8, [I

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textures0:[I

    .line 129
    new-array v4, v8, [I

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textures1:[I

    .line 132
    new-array v4, v11, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    .line 133
    new-array v4, v11, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    .line 134
    new-array v4, v11, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    .line 135
    new-array v4, v11, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    .line 137
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    .line 139
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 140
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 142
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    .line 143
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    .line 146
    const/high16 v4, 0x3f00

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWaveVelocity:F

    .line 147
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWaveEnable:Z

    .line 150
    const v4, 0x3f70a3d7

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_NORMAL:F

    .line 151
    const v4, 0x3f75c28f

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_RAIN:F

    .line 152
    const v4, 0x3f7d70a4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_WAVE:F

    .line 155
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    .line 158
    const v4, 0x3dcccccd

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_FRESENL:F

    .line 159
    const/high16 v4, 0x40a0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_SPECULAR_RATIO:F

    .line 160
    const/high16 v4, 0x4220

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_EXPONENT:F

    .line 162
    const v4, 0x3dcccccd

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 163
    const/high16 v4, 0x40a0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 164
    const/high16 v4, 0x4220

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponent:F

    .line 167
    const v4, 0x3dcccccd

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MIN:F

    .line 168
    const/high16 v4, 0x40a0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MIN:F

    .line 170
    const v4, 0x3e99999a

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    .line 171
    const/high16 v4, 0x4220

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    .line 172
    const v4, 0x3d75c28f

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_INTENSITY_MAX:F

    .line 173
    const v4, 0x3d75c28f

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverIntensity:F

    .line 174
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    .line 175
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    .line 176
    const-wide/16 v6, 0x640

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_WAIT_TIME:J

    .line 179
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    .line 182
    const v4, 0x3f70a3d7

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRate:F

    .line 183
    const v4, 0x3f7d70a4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRateSub:F

    .line 184
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSubWaveTime:J

    .line 185
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->waveCount:I

    .line 186
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->waveDealy:I

    .line 189
    const/high16 v4, 0x3fc0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLightHeight:F

    .line 191
    const v4, 0x3f6e147b

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 192
    const v4, 0x3e051eb8

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 193
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    .line 194
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    .line 199
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    .line 200
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 202
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 203
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 205
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 206
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 214
    const/high16 v4, 0x3f00

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 215
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 219
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 220
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 223
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 224
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 227
    const/high16 v4, -0x3dd0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 228
    const/high16 v4, -0x3e48

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 231
    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 232
    iput v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 233
    iput v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 234
    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 237
    const/high16 v4, 0x4234

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 238
    const/high16 v4, 0x41c8

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 239
    const/high16 v4, 0x41c8

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 240
    const/high16 v4, 0x4238

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 241
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 242
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 247
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 248
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    .line 249
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    .line 252
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 253
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 254
    const-wide v6, 0x4062c00000000000L

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 255
    iget-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    .line 256
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 259
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 260
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 261
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 262
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 263
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    .line 264
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    .line 265
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SOUND_ID_DOWN:I

    .line 266
    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SOUND_ID_UP:I

    .line 267
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    .line 268
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    .line 269
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 270
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 271
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 272
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    .line 276
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    .line 277
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    .line 280
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    .line 282
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    .line 283
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    .line 297
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    .line 298
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    .line 299
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    move-object v4, v5

    .line 304
    check-cast v4, [[F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    .line 305
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    .line 306
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 311
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    .line 316
    const/16 v4, 0x2f0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    .line 317
    const/16 v4, 0x2d0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    .line 329
    const-string v4, "CircleUnlockRippleRenderer"

    const-string v5, "CircleUnlockRippleRenderer Constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :try_start_0
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 334
    .local v3, wm:Landroid/view/IWindowManager;
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v3           #wm:Landroid/view/IWindowManager;
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    .line 341
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    .line 343
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_is_JBP_Upgrade#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    .line 344
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_isWaterInkEnabled#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    .line 345
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_isWaterInkLCD#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    .line 347
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is_JBP_Upgrade = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInkEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUseLCD = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    if-eqz v4, :cond_0

    .line 353
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->inkColorFromSettingForLCD:[[F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    .line 360
    :goto_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 361
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 362
    .local v2, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 363
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    .line 364
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    .line 365
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setModeleConfiguration()V

    .line 367
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->initWaters()V

    .line 369
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    .line 371
    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 372
    return-void

    .line 335
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v2           #mWindowManager:Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 336
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "Navigation"

    const-string v5, "RemoteException Occured"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 357
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->inkColorFromSettingForLED:[[F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;FFFZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    return v0
.end method

.method private checkSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1292
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1293
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 1297
    .local v2, result:I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1305
    :goto_0
    if-ne v2, v5, :cond_0

    .line 1306
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 1310
    :goto_1
    return-void

    .line 1299
    :catch_0
    move-exception v1

    .line 1301
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1308
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private initWaters()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1089
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "initWaters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 1092
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 1094
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    .line 1095
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    .line 1096
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    .line 1097
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    .line 1098
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    .line 1099
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    .line 1101
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 1103
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->initWaters([F[SIIIII)V

    .line 1108
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1109
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1111
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1112
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1114
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1115
    return-void
.end method

.method private loadBitmapIfBitmapNull()V
    .locals 2

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1387
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapWater == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1392
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapBG == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 1397
    :cond_3
    return-void
.end method

.method private move()V
    .locals 14

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    if-nez v0, :cond_2

    .line 1131
    :cond_0
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "initWaters don\'t called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_1
    return-void

    .line 1136
    :cond_2
    const/4 v3, 0x1

    .line 1137
    .local v3, xSpan:I
    const/4 v2, 0x1

    .line 1139
    .local v2, ySpan:I
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v0, :cond_6

    .line 1140
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 1141
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 1142
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .line 1143
    .local v4, imax:I
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    .line 1151
    .local v5, jmax:I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRate:F

    const/high16 v10, 0x3f00

    invoke-static/range {v0 .. v10}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->move([F[FIIIIIIZFF)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1156
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    .line 1158
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_7

    .line 1160
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    if-nez v0, :cond_4

    .line 1162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setRenderModeDirty()V

    .line 1172
    :cond_4
    :goto_1
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v11, v0, :cond_1

    .line 1173
    const/4 v13, 0x0

    .local v13, j:I
    :goto_3
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v13, v0, :cond_8

    .line 1174
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v13

    add-int/2addr v0, v11

    mul-int/lit8 v12, v0, 0x3

    .line 1175
    .local v12, idx:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v13, 0x2

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1177
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x1

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v13, 0x2

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1179
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v13, 0x1

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1182
    add-int/lit8 v0, v11, -0x7

    if-lez v0, :cond_5

    .line 1183
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x0

    aget v6, v0, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v8, v13, 0x2

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x6

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v0, v1

    .line 1185
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x1

    aget v6, v0, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v8, v13, 0x2

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x7

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v0, v1

    .line 1187
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x2

    aget v6, v0, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v8, v13, 0x1

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x6

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v0, v1

    .line 1189
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x0

    aget v6, v0, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v8, v13, 0x2

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x6

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v0, v1

    .line 1191
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x1

    aget v6, v0, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v8, v13, 0x2

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x7

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v0, v1

    .line 1193
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x2

    aget v6, v0, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v8, v13, 0x1

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x6

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v0, v1

    .line 1173
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1145
    .end local v4           #imax:I
    .end local v5           #jmax:I
    .end local v11           #i:I
    .end local v12           #idx:I
    .end local v13           #j:I
    :cond_6
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 1146
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 1147
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .line 1148
    .restart local v4       #imax:I
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    .restart local v5       #jmax:I
    goto/16 :goto_0

    .line 1167
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setRenderModeDirty()V

    goto/16 :goto_1

    .line 1172
    .restart local v11       #i:I
    .restart local v13       #j:I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2
.end method

.method private perspectiveM([FFFFF)V
    .locals 9
    .parameter "m"
    .parameter "angle"
    .parameter "aspect"
    .parameter "near"
    .parameter "far"

    .prologue
    const/4 v8, 0x0

    .line 1233
    const-wide/high16 v2, 0x3fe0

    const-wide v4, 0x400921fb54442d18L

    float-to-double v6, p2

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1234
    .local v0, f:F
    sub-float v1, p4, p5

    .line 1235
    .local v1, range:F
    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    .line 1236
    const/4 v2, 0x1

    aput v8, p1, v2

    .line 1237
    const/4 v2, 0x2

    aput v8, p1, v2

    .line 1238
    const/4 v2, 0x3

    aput v8, p1, v2

    .line 1239
    const/4 v2, 0x4

    aput v8, p1, v2

    .line 1240
    const/4 v2, 0x5

    aput v0, p1, v2

    .line 1241
    const/4 v2, 0x6

    aput v8, p1, v2

    .line 1242
    const/4 v2, 0x7

    aput v8, p1, v2

    .line 1243
    const/16 v2, 0x8

    aput v8, p1, v2

    .line 1244
    const/16 v2, 0x9

    aput v8, p1, v2

    .line 1245
    const/16 v2, 0xa

    div-float v3, p5, v1

    aput v3, p1, v2

    .line 1246
    const/16 v2, 0xb

    const/high16 v3, -0x4080

    aput v3, p1, v2

    .line 1247
    const/16 v2, 0xc

    aput v8, p1, v2

    .line 1248
    const/16 v2, 0xd

    aput v8, p1, v2

    .line 1249
    const/16 v2, 0xe

    mul-float v3, p4, p5

    div-float/2addr v3, v1

    aput v3, p1, v2

    .line 1250
    const/16 v2, 0xf

    aput v8, p1, v2

    .line 1251
    return-void
.end method

.method private playDragSound(I)V
    .locals 9
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 1007
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 1009
    .local v8, streanID:I
    add-int/lit8 v8, v8, -0x1

    .line 1010
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;I)V

    .line 1011
    .local v7, soundpoolThread:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;->run()V

    .line 1013
    .end local v7           #soundpoolThread:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    .end local v8           #streanID:I
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 1000
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1003
    :cond_0
    return-void
.end method

.method private recycleBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1401
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "recycleBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1406
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1409
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1412
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    .line 1414
    :cond_1
    return-void
.end method

.method private removeDefaultRunnable()V
    .locals 2

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1656
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable isn\'t null, mParent.removeCallbacks(mDefaultRunnable)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    .line 1661
    :cond_0
    return-void
.end method

.method private ripple(FFFZ)V
    .locals 8
    .parameter "mx"
    .parameter "my"
    .parameter "intensity"
    .parameter "isTouchRipple"

    .prologue
    .line 1217
    if-eqz p4, :cond_0

    .line 1218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    .line 1220
    :cond_0
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ripple(), mx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", my = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1223
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->ripple([FIIIIFFF)V

    .line 1224
    return-void
.end method

.method private setBackground(Z)V
    .locals 12
    .parameter "isLoadWaterBitmap"

    .prologue
    .line 1418
    const-string v9, "CircleUnlockRippleRenderer"

    const-string v10, "setBackground"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lockscreen_wallpaper_path"

    const/4 v11, -0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1425
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1427
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1428
    const-string v9, "CircleUnlockRippleRenderer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MultiSim Device wallpaperPath:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 1432
    const-string v9, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1435
    :cond_1
    const/4 v6, 0x0

    .line 1436
    .local v6, inputStream:Ljava/io/InputStream;
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v8, wallpaperFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v0, adminWallpaperFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1443
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #inputStream:Ljava/io/InputStream;
    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1444
    .restart local v6       #inputStream:Ljava/io/InputStream;
    const-string v9, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1481
    :goto_0
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1483
    .local v7, pBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-nez v9, :cond_3

    .line 1485
    :cond_2
    if-nez v7, :cond_b

    .line 1487
    const-string v9, "CircleUnlockRippleRenderer"

    const-string v10, "pBitmap is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :goto_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, #android:drawable@keyguard_default_wallpaper#t

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 1495
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1498
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1500
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1501
    if-eqz p1, :cond_4

    .line 1502
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, #android:drawable@reflectionmap#t

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1511
    .end local v0           #adminWallpaperFile:Ljava/io/File;
    .end local v6           #inputStream:Ljava/io/InputStream;
    .end local v7           #pBitmap:Landroid/graphics/Bitmap;
    .end local v8           #wallpaperFile:Ljava/io/File;
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->transferBitmapToJni(Z)V

    .line 1512
    return-void

    .line 1447
    .restart local v0       #adminWallpaperFile:Ljava/io/File;
    .restart local v6       #inputStream:Ljava/io/InputStream;
    .restart local v8       #wallpaperFile:Ljava/io/File;
    :cond_5
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1448
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #inputStream:Ljava/io/InputStream;
    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 1452
    :cond_6
    new-instance v1, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1453
    .local v1, defaultWallpaperFile:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1454
    .local v2, defaultWallpaperFileMultiCSC:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1455
    .local v4, defaultWallpaperFilePng:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v3, defaultWallpaperFileMultiCSCPng:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1459
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #inputStream:Ljava/io/InputStream;
    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1461
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1463
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #inputStream:Ljava/io/InputStream;
    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1465
    :cond_8
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1467
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #inputStream:Ljava/io/InputStream;
    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1469
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1471
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #inputStream:Ljava/io/InputStream;
    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1475
    :cond_a
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, #android:drawable@keyguard_default_wallpaper#t

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    goto/16 :goto_0

    .line 1491
    .end local v1           #defaultWallpaperFile:Ljava/io/File;
    .end local v2           #defaultWallpaperFileMultiCSC:Ljava/io/File;
    .end local v3           #defaultWallpaperFileMultiCSCPng:Ljava/io/File;
    .end local v4           #defaultWallpaperFilePng:Ljava/io/File;
    .restart local v7       #pBitmap:Landroid/graphics/Bitmap;
    :cond_b
    const-string v9, "CircleUnlockRippleRenderer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pBitmap.height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1505
    .end local v0           #adminWallpaperFile:Ljava/io/File;
    .end local v6           #inputStream:Ljava/io/InputStream;
    .end local v7           #pBitmap:Landroid/graphics/Bitmap;
    .end local v8           #wallpaperFile:Ljava/io/File;
    :catch_0
    move-exception v5

    .line 1507
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private setFalseDefaultEffectFlag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1666
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    .line 1667
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    .line 1668
    return-void
.end method

.method private setHoverEnable(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    const/high16 v1, 0x40a0

    const v0, 0x3dcccccd

    .line 936
    if-eqz p1, :cond_0

    .line 938
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 939
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    .line 948
    :goto_0
    return-void

    .line 944
    :cond_0
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 945
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    goto :goto_0
.end method

.method private setModeleConfiguration()V
    .locals 7

    .prologue
    const v0, -0x3dd3cccd

    const/16 v6, 0x15

    const/16 v5, 0x68

    const/16 v4, 0x32

    const/4 v3, 0x0

    .line 377
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x500

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_2

    .line 379
    :cond_1
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 380
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 381
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 382
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 383
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 384
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 385
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 388
    const v1, 0x3f333333

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 389
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 393
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 394
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 397
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 398
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 401
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 402
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 405
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 406
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 407
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 408
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 411
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 412
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 413
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 414
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 415
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 416
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 589
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    .line 590
    return-void

    .line 419
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x21c

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x3c0

    if-eq v1, v2, :cond_4

    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x3c0

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x21c

    if-ne v1, v2, :cond_5

    .line 422
    :cond_4
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 423
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 425
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 426
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 427
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 428
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 429
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 432
    const v1, 0x3f19999a

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 433
    const v1, 0x3f666666

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 437
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 438
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 441
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 442
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 445
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 446
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 449
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 450
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 451
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 452
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 455
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 456
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 457
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 458
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 459
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 460
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto :goto_0

    .line 463
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x320

    if-eq v1, v2, :cond_7

    :cond_6
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x320

    if-ne v1, v2, :cond_9

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_9

    .line 466
    :cond_7
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 467
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 468
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 469
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 470
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 471
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 472
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 475
    const v1, 0x3f333333

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 476
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 480
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 481
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 484
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 485
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 488
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v1, :cond_8

    const v0, -0x3ddacccd

    :cond_8
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 489
    const v0, -0x3e388937

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 492
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 493
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 494
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 495
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 498
    const/high16 v0, 0x4240

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 499
    const/high16 v0, 0x41d8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 500
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 501
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 502
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 503
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto/16 :goto_0

    .line 507
    :cond_9
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x320

    if-eq v1, v2, :cond_b

    :cond_a
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x320

    if-ne v1, v2, :cond_c

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_c

    .line 510
    :cond_b
    const/16 v1, 0x4a

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 511
    const/16 v1, 0x4a

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 512
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 513
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 514
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 515
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 516
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 519
    const v1, 0x3eb851ec

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 520
    const v1, 0x3f028f5c

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 524
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 525
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 528
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 529
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 532
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 533
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 536
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 537
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 538
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 539
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 542
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 543
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 544
    const/high16 v0, 0x41e0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 545
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    goto/16 :goto_0

    .line 549
    :cond_c
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 550
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 551
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 552
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 553
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 554
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 555
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 558
    const v1, 0x3f333333

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 559
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 563
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 564
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 567
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 568
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 571
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 572
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 575
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 576
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 577
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 578
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 581
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 582
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 583
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 584
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 585
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 586
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto/16 :goto_0
.end method

.method private setRenderModeDirty()V
    .locals 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1204
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    return-void
.end method

.method private setRippleVersion()V
    .locals 4

    .prologue
    .line 1357
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "setRippleVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1361
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    .line 1362
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInkEffectColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    if-eqz v1, :cond_1

    .line 1370
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "Def.MODE = ModeType.RIPPLE_LIGHT_WITH_INK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    .line 1379
    :goto_1
    return-void

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1375
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "ModeType.RIPPLE_LIGHT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    goto :goto_1
.end method

.method private setSound()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1522
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1525
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "show mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1528
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 1529
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 1530
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1533
    :cond_0
    return-void
.end method

.method private transferBitmapToJni(Z)V
    .locals 2
    .parameter "isLoadWaterBitmap"

    .prologue
    .line 1346
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "transferBitmapToJni"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "transferBGBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->transferBGBitmap(Landroid/graphics/Bitmap;)V

    .line 1349
    if-eqz p1, :cond_0

    .line 1350
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "transferWaterBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->transferWaterBitmap(Landroid/graphics/Bitmap;)V

    .line 1353
    :cond_0
    return-void
.end method


# virtual methods
.method public alphaAnimation()V
    .locals 1

    .prologue
    .line 1254
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 1255
    return-void
.end method

.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1559
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1563
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1564
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 1568
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1569
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 1570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1572
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_2

    .line 1574
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    if-nez v0, :cond_2

    .line 1576
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Spen onTouch(ACTION UP) , because touch up wasn\'t maked by uper layer until cleanUp "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v1, v1

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v3, v2}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 1578
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    .line 1583
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1590
    return-void
.end method

.method public clearAllEffect()V
    .locals 2

    .prologue
    .line 1335
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->clearRipple()V

    .line 1337
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_1

    .line 1339
    :cond_0
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "clearInkValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->clearInkValue()V

    .line 1342
    :cond_1
    return-void
.end method

.method public clearRipple()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1313
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "clearRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v0, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    if-lt v0, v1, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1324
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1325
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1328
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1329
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0
.end method

.method public destroyed()V
    .locals 0

    .prologue
    .line 1672
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onFreeBGTextures()V

    .line 1673
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onFreeWaterTextures()V

    .line 1674
    return-void
.end method

.method public getSoundNum()I
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method public getSoundTime()I
    .locals 1

    .prologue
    .line 1022
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method public mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "view"
    .parameter "event"

    .prologue
    .line 767
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event getActionMasked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", src = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v0, :cond_0

    .line 774
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "drawCount == 0 Touch Return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v0, 0x0

    .line 930
    :goto_0
    return v0

    .line 778
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    if-eqz v0, :cond_1

    .line 780
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "isFirstTouched is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 782
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 785
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    .line 786
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    .line 788
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v0, :cond_e

    .line 790
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 791
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 792
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 793
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 803
    :goto_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_5

    .line 805
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v12

    .line 807
    .local v12, pressure:F
    float-to-double v0, v12

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    .line 809
    const/high16 v12, 0x3f80

    .line 812
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 814
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v12}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    .line 824
    .end local v12           #pressure:F
    :cond_5
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_10

    .line 827
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 830
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_6

    .line 833
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "MotionEvent.ACTION_DOWN mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 836
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 837
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 838
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 841
    :cond_6
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 842
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 843
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 844
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 845
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 847
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 848
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->playSound(I)V

    .line 887
    :cond_7
    :goto_3
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_8

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_d

    .line 890
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 892
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "========================= ACTION_HOVER_ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_13

    .line 897
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 899
    .local v10, hoverMoveTime:J
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    sub-long v0, v10, v0

    const-wide/16 v2, 0x640

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    if-nez v0, :cond_a

    .line 901
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setHoverEnable true ======================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 905
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    if-eqz v0, :cond_c

    .line 907
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 908
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 910
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    const v1, 0x3e99999a

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 912
    const v0, 0x3e99999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 915
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    const/high16 v1, 0x4220

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 917
    const/high16 v0, 0x4220

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 922
    :cond_c
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverIntensity:F

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 930
    .end local v10           #hoverMoveTime:J
    :cond_d
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 797
    :cond_e
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 798
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 799
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 800
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    goto/16 :goto_1

    .line 817
    .restart local v12       #pressure:F
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x4002

    const/16 v1, 0x4002

    if-ne v0, v1, :cond_5

    .line 819
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v0, v1, v2, v12}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    goto/16 :goto_2

    .line 850
    .end local v12           #pressure:F
    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 852
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 854
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    sub-float v8, v0, v1

    .line 855
    .local v8, dx:F
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    sub-float v9, v0, v1

    .line 856
    .local v9, dy:F
    float-to-double v0, v8

    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v2, v9

    const-wide/high16 v4, 0x4000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v7, v0

    .line 857
    .local v7, distForwWave:I
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 858
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 859
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 861
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7

    .line 862
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 863
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 865
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 866
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->playDragSound(I)V

    .line 867
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v4, 0x14

    const/high16 v6, 0x4040

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    goto/16 :goto_3

    .line 870
    .end local v7           #distForwWave:I
    .end local v8           #dx:F
    .end local v9           #dy:F
    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 872
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 875
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 877
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 879
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 880
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->playSound(I)V

    goto/16 :goto_3

    .line 882
    :cond_12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 884
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    goto/16 :goto_3

    .line 925
    :cond_13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    .line 927
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "ACTION_HOVER_EXIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 22
    .parameter "gl"

    .prologue
    .line 696
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v1, :cond_2

    .line 698
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ondrawfrmae drawCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->loadBitmapIfBitmapNull()V

    .line 701
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onLoadBGTextures()V

    .line 702
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onLoadWaterTextures()V

    .line 704
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_6

    .line 705
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitSetting(IIZ)V

    .line 706
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitGPU()V

    .line 714
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_2

    .line 716
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->clearInkValue()V

    .line 720
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 722
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "Change opengl BG Texture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onFreeBGTextures()V

    .line 724
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onLoadBGTextures()V

    .line 725
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 728
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-nez v1, :cond_7

    .line 730
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponent:F

    move/from16 v21, v0

    invoke-static/range {v1 .. v21}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onDraw([F[F[SIII[FIIIIFFFFFFFFFF)V

    .line 754
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-lez v1, :cond_4

    .line 755
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->move()V

    .line 757
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    .line 759
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 761
    :cond_5
    return-void

    .line 709
    :cond_6
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_0

    .line 710
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitSetting(IIZ)V

    .line 711
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitGPU()V

    goto/16 :goto_0

    .line 743
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponent:F

    move/from16 v21, v0

    invoke-static/range {v1 .. v21}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onDraw([F[F[SIII[FIIIIFFFFFFFFFF)V

    goto/16 :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 607
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "onSurfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "windowWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", windowHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 612
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    .line 619
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v2, :cond_3

    .line 622
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 623
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 624
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 626
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v2, :cond_0

    .line 629
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    .line 631
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 632
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 657
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 659
    .local v13, ratio:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    const/high16 v4, 0x4234

    const v6, 0x3dcccccd

    const/high16 v7, 0x43fa

    move-object/from16 v2, p0

    move v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->perspectiveM([FFFFF)V

    .line 662
    const/4 v14, 0x0

    .line 663
    .local v14, translateX:F
    const/4 v15, 0x0

    .line 664
    .local v15, translateY:F
    const/16 v16, 0x0

    .line 666
    .local v16, translateZ:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v2, :cond_4

    .line 668
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 669
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    move/from16 v16, v0

    .line 680
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 685
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 686
    return-void

    .line 616
    .end local v13           #ratio:F
    .end local v14           #translateX:F
    .end local v15           #translateY:F
    .end local v16           #translateZ:F
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    goto/16 :goto_0

    .line 636
    :cond_2
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 637
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_1

    .line 644
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 645
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 646
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 648
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v2, :cond_0

    .line 650
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 651
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_1

    .line 674
    .restart local v13       #ratio:F
    .restart local v14       #translateX:F
    .restart local v15       #translateY:F
    .restart local v16       #translateZ:F
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 675
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 676
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    move/from16 v16, v0

    goto/16 :goto_2
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 598
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1593
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->clearAllEffect()V

    .line 1596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1598
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1599
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 1600
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 1551
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    .line 1556
    return-void
.end method

.method public setRippleBackground()V
    .locals 2

    .prologue
    .line 1515
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setRippleBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 1517
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    return-void
.end method

.method public setSoundNum(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1026
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    .line 1027
    return-void
.end method

.method public setSoundRID(II)V
    .locals 0
    .parameter "RDownId"
    .parameter "RUpId"

    .prologue
    .line 1285
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    .line 1286
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    .line 1287
    return-void
.end method

.method public setSoundTime(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1030
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    .line 1031
    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "pBitmap"

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    .line 1265
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    .line 1267
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    .line 1268
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmapBG.width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bitmapBG.height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    return-void
.end method

.method public setWaterTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1279
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1281
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1538
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setSound()V

    .line 1541
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->checkSound()V

    .line 1542
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setRippleVersion()V

    .line 1545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    .line 1546
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 1548
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .parameter "startDelay"
    .parameter "rect"

    .prologue
    .line 1605
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calledIsScreenTurnedOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1609
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    if-eqz v0, :cond_1

    .line 1611
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    .line 1612
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    .line 1614
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1616
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable,  new Runnable()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    .line 1645
    :cond_0
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable, postDelayed()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1648
    :cond_1
    return-void
.end method

.method public startLongPressCheck(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 952
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 953
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 955
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 957
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$1;

    invoke-direct {v0, p0, p6}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 969
    return-void
.end method

.method public startLongPressCheck2(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 973
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 974
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 976
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 978
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$2;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;FJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 993
    return-void
.end method

.method public stopLongPressCheck(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 997
    return-void
.end method

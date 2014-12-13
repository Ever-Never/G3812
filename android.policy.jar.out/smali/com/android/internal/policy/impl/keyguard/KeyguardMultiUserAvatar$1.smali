.class Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;
.super Ljava/lang/Object;
.source "KeyguardMultiUserAvatar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->updateVisualsForActive(ZZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

.field final synthetic val$finalAlpha:F

.field final synthetic val$finalScale:F

.field final synthetic val$finalStrokeWidth:F

.field final synthetic val$finalTextAlpha:I

.field final synthetic val$initAlpha:F

.field final synthetic val$initScale:F

.field final synthetic val$initStrokeWidth:F

.field final synthetic val$initTextAlpha:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;FFFFFFII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$initScale:F

    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$finalScale:F

    iput p4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$initAlpha:F

    iput p5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$finalAlpha:F

    iput p6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$initStrokeWidth:F

    iput p7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$finalStrokeWidth:F

    iput p8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$initTextAlpha:I

    iput p9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$finalTextAlpha:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .parameter "animation"

    .prologue
    const/16 v8, 0xff

    const/high16 v7, 0x3f80

    .line 211
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 212
    .local v1, r:F
    sub-float v5, v7, v1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$initScale:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$finalScale:F

    mul-float/2addr v6, v1

    add-float v2, v5, v6

    .line 213
    .local v2, scale:F
    sub-float v5, v7, v1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$initAlpha:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$finalAlpha:F

    mul-float/2addr v6, v1

    add-float v0, v5, v6

    .line 214
    .local v0, alpha:F
    sub-float v5, v7, v1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$initStrokeWidth:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$finalStrokeWidth:F

    mul-float/2addr v6, v1

    add-float v3, v5, v6

    .line 215
    .local v3, strokeWidth:F
    sub-float v5, v7, v1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$initTextAlpha:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->val$finalTextAlpha:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 216
    .local v4, textAlpha:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardRectangleFramedDrawable;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Lcom/android/internal/policy/impl/keyguard/KeyguardRectangleFramedDrawable;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardRectangleFramedDrawable;->setScale(F)V

    .line 217
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 218
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v4, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 220
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardRectangleFramedDrawable;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Lcom/android/internal/policy/impl/keyguard/KeyguardRectangleFramedDrawable;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardRectangleFramedDrawable;->setStrokeWidth(F)V

    .line 221
    return-void
.end method

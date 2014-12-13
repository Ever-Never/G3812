.class abstract Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "SPassUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AnimationDrawableListener"
.end annotation


# instance fields
.field anim:Landroid/graphics/drawable/AnimationDrawable;

.field mAnimationHandler:Landroid/os/Handler;

.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .parameter
    .parameter "aniDrawable"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 117
    return-void
.end method


# virtual methods
.method public getTotalDuration()I
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, duration:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    .line 157
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1           #i:I
    :cond_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract onAnimationEnd()V
.end method

.method public start()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->getTotalDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 143
    :cond_1
    return-void
.end method

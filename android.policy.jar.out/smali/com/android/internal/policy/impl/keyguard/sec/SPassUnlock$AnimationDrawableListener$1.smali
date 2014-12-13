.class Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener$1;
.super Ljava/lang/Object;
.source "SPassUnlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->onAnimationEnd()V

    .line 129
    return-void
.end method

.class Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->clearAllEffect()V

    .line 1587
    return-void
.end method

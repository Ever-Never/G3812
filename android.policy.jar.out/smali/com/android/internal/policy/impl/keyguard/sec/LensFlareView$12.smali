.class Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$12;
.super Ljava/lang/Object;
.source "LensFlareView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1007
    const-string v0, "LensFlare"

    const-string v1, "mFirstCreatedRunnable,  isBeforeInit is True and called lensFlareinit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lensFlareinit()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$2100(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    .line 1009
    return-void
.end method

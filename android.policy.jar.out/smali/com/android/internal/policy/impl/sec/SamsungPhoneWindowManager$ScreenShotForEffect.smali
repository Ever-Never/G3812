.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenShotForEffect;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenShotForEffect"
.end annotation


# instance fields
.field private mShotEvent:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .locals 1
    .parameter
    .parameter "shotEvent"

    .prologue
    .line 2890
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenShotForEffect;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2888
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenShotForEffect;->mShotEvent:I

    .line 2891
    iput p2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenShotForEffect;->mShotEvent:I

    .line 2892
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenShotForEffect;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2896
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungWindowManager"

    const-string v1, "take screen shot with effect"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenShotForEffect;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenShotForEffect;->mShotEvent:I

    #calls: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->takeScreenshot(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V

    .line 2902
    :cond_1
    :goto_0
    return-void

    .line 2900
    :cond_2
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungWindowManager"

    const-string v1, "not captured (effect)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

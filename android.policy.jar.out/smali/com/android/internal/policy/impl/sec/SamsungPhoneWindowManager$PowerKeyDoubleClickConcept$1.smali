.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;)V
    .locals 0
    .parameter

    .prologue
    .line 3238
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->isSingleClick()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->access$900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3241
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeySingleClickFlag:Z

    .line 3246
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->reset()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->access$1200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;)V

    .line 3247
    return-void

    .line 3242
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->isDoubleClick()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->access$1000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3243
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeySingleClickFlag:Z

    .line 3244
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->doubleClickJob()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->access$1100(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;)V

    goto :goto_0
.end method

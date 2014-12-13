.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpassKeyConcept"
.end annotation


# static fields
.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field private static final TAG_SPASS:Ljava/lang/String; = "SpassKeyAction"


# instance fields
.field private final DEBUG:Z

.field private mFingerDetectedKeyDown:Z

.field private mFingerDetectedKeyTime:J

.field private mHomeKeyDown:Z

.field private mIngnoreFingerKey:Z

.field private mSpassStart:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3400
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3380
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->DEBUG:Z

    .line 3386
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mHomeKeyDown:Z

    .line 3387
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyDown:Z

    .line 3388
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyTime:J

    .line 3389
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mIngnoreFingerKey:Z

    .line 3391
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mSpassStart:Ljava/lang/Runnable;

    .line 3401
    return-void
.end method


# virtual methods
.method public addAction(Landroid/view/KeyEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3404
    monitor-enter p0

    .line 3405
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 3406
    .local v3, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 3408
    .local v2, isDown:Z
    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 3463
    :cond_0
    :goto_1
    monitor-exit p0

    .line 3464
    return-void

    .end local v2           #isDown:Z
    :cond_1
    move v2, v4

    .line 3406
    goto :goto_0

    .line 3410
    .restart local v2       #isDown:Z
    :sswitch_0
    if-eqz v2, :cond_2

    .line 3411
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mHomeKeyDown:Z

    .line 3412
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyDown:Z

    if-eqz v4, :cond_0

    .line 3413
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mIngnoreFingerKey:Z

    goto :goto_1

    .line 3463
    .end local v2           #isDown:Z
    .end local v3           #keyCode:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3419
    .restart local v2       #isDown:Z
    .restart local v3       #keyCode:I
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mHomeKeyDown:Z

    goto :goto_1

    .line 3427
    :sswitch_1
    if-eqz v2, :cond_0

    .line 3428
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyDown:Z

    .line 3429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyTime:J

    .line 3430
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mIngnoreFingerKey:Z

    .line 3431
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mHomeKeyDown:Z

    if-eqz v4, :cond_0

    .line 3432
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mIngnoreFingerKey:Z

    goto :goto_1

    .line 3441
    :sswitch_2
    if-nez v2, :cond_0

    .line 3445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 3446
    .local v0, gap:J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mIngnoreFingerKey:Z

    if-nez v4, :cond_3

    .line 3447
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mSpassStart:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3448
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mSpassStart:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3458
    :cond_3
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyTime:J

    .line 3459
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mFingerDetectedKeyDown:Z

    .line 3460
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->mIngnoreFingerKey:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3408
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x10b -> :sswitch_1
        0x10c -> :sswitch_2
    .end sparse-switch
.end method

.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk$1;->val$result:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;->onSimLockChangedResponse(Z)V

    .line 285
    return-void
.end method

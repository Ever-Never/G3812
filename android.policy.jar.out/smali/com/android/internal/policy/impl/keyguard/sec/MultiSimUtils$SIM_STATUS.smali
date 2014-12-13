.class public final enum Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;
.super Ljava/lang/Enum;
.source "MultiSimUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIM_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

.field public static final enum MULTI_SIM_STATE_ERROR:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

.field public static final enum MULTI_SIM_STATE_NO_SIM:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

.field public static final enum MULTI_SIM_STATE_ONLY_SIM1:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

.field public static final enum MULTI_SIM_STATE_ONLY_SIM2:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

.field public static final enum MULTI_SIM_STATE_TWO_SIMS:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    const-string v1, "MULTI_SIM_STATE_NO_SIM"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_NO_SIM:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    .line 39
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    const-string v1, "MULTI_SIM_STATE_ONLY_SIM1"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_ONLY_SIM1:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    .line 40
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    const-string v1, "MULTI_SIM_STATE_ONLY_SIM2"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_ONLY_SIM2:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    .line 41
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    const-string v1, "MULTI_SIM_STATE_TWO_SIMS"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_TWO_SIMS:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    .line 42
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    const-string v1, "MULTI_SIM_STATE_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_ERROR:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_NO_SIM:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_ONLY_SIM1:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_ONLY_SIM2:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_TWO_SIMS:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->MULTI_SIM_STATE_ERROR:Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils$SIM_STATUS;

    return-object v0
.end method

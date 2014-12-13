.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlipboardItemData"
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public time:J

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public wallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)V
    .locals 2
    .parameter "itemData"

    .prologue
    .line 1411
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    .line 1402
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    .line 1403
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    .line 1404
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->url:Ljava/lang/String;

    .line 1405
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    .line 1412
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->setData(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)V

    .line 1413
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "wallpaperPath"
    .parameter "title"
    .parameter "author"
    .parameter "url"
    .parameter "time"

    .prologue
    .line 1407
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    .line 1402
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    .line 1403
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    .line 1404
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->url:Ljava/lang/String;

    .line 1405
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    .line 1408
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1409
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    .locals 7

    .prologue
    .line 1428
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->url:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public clone(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    .locals 1
    .parameter "itemData"

    .prologue
    .line 1432
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1400
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->clone()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)V
    .locals 7
    .parameter "itemData"

    .prologue
    .line 1424
    iget-object v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->url:Ljava/lang/String;

    iget-wide v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1425
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "wallpaperPath"
    .parameter "title"
    .parameter "author"
    .parameter "url"
    .parameter "time"

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    .line 1417
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    .line 1418
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    .line 1419
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->url:Ljava/lang/String;

    .line 1420
    iput-wide p5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    .line 1421
    return-void
.end method

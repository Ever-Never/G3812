.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;
.super Landroid/os/Handler;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 284
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 286
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    #calls: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->handleMissedEventUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method

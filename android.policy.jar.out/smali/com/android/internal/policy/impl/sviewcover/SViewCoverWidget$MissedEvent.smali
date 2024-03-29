.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissedEvent"
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMissedCallCount:I

.field private mMissedCallMsgView:Landroid/view/View;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedMsgCount:I

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 293
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 258
    const-string v1, "com.android.phone"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->CALL_PKG:Ljava/lang/String;

    .line 259
    const-string v1, "com.android.mms"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MSG_PKG:Ljava/lang/String;

    .line 260
    const-string v1, "com.android.email"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->EMAIL_PKG:Ljava/lang/String;

    .line 266
    const/16 v1, 0x12c2

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MISSED_EVENT_UPDATE:I

    .line 267
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->REQ_INDEX_CALL_EMAIL:I

    .line 268
    const/16 v1, 0x7b

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->REQ_INDEX_MSG:I

    .line 270
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    .line 271
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    .line 281
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;

    .line 295
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    .line 296
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 297
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v1, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 310
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MissedEvent ()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 387
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 389
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v1

    .line 392
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_4

    .line 393
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 400
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_6

    .line 401
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 402
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    .line 394
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_5

    .line 395
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 396
    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_2

    .line 397
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 404
    :cond_6
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-eq p1, v2, :cond_7

    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    .line 405
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 406
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 341
    return-void
.end method

.method private updateMissedEvent()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/16 v5, 0x3e7

    .line 344
    const/4 v2, 0x0

    .line 345
    .local v2, nCallCount:I
    const/4 v3, 0x0

    .line 346
    .local v3, nMsgCount:I
    const/4 v0, 0x0

    .line 347
    .local v0, bUpdatedCallCount:Z
    const/4 v1, 0x0

    .line 349
    .local v1, bUpdatedMsgCount:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    sget-object v4, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;)I

    move-result v2

    .line 353
    if-le v2, v5, :cond_4

    .line 354
    iput v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    .line 358
    :goto_1
    sget-object v4, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;)I

    move-result v3

    .line 359
    if-le v3, v5, :cond_5

    .line 360
    iput v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    .line 364
    :goto_2
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 365
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedCallCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 368
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedMsgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-nez v4, :cond_6

    .line 371
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    :goto_3
    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-nez v4, :cond_7

    .line 377
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getCallMsgTTSMessage()V

    goto/16 :goto_0

    .line 356
    :cond_4
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    goto/16 :goto_1

    .line 362
    :cond_5
    iput v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    goto/16 :goto_2

    .line 373
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 379
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method


# virtual methods
.method public getCallMsgTTSMessage()V
    .locals 9

    .prologue
    const v8, #android:string@clearcover_n_unread_messages#t

    const v7, #android:string@clearcover_n_missed_calls#t

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 413
    const-string v0, ""

    .line 414
    .local v0, TTSMessage:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-lez v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, #android:string@clearcover_calls_and_messages#t

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 433
    :goto_0
    return-void

    .line 418
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-le v1, v5, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 421
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-le v1, v5, :cond_2

    .line 422
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-ne v1, v5, :cond_3

    .line 425
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, #android:string@clearcover_1_missed_call#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 427
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-ne v1, v5, :cond_4

    .line 428
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, #android:string@clearcover_1_unread_message#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 431
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, #android:string@clearcover_no_missed_event#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 324
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 325
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 326
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 333
    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 336
    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 337
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 317
    const v0, #android:id@missed_event_call_cnt#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    .line 318
    const v0, #android:id@missed_event_msg_cnt#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 319
    const v0, #android:id@missed_event_call_msg_cnt#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallMsgView:Landroid/view/View;

    .line 320
    return-void
.end method

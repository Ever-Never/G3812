.class public Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
.super Ljava/lang/Object;
.source "ContextualWidgetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$4;,
        Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;,
        Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x4b455947

.field private static final DBG:Z = true

.field private static final MSG_FM_RADIO_WIDGET_ADDED:I = 0x1310

.field private static final MSG_FM_RADIO_WIDGET_REMOVED:I = 0x131a

.field private static final MSG_MISSED_EVENT_ADDED:I = 0x12c0

.field private static final MSG_MISSED_EVENT_REMOVED:I = 0x12ca

.field private static final MSG_MUSIC_WIDGET_ADDED:I = 0x12d4

.field private static final MSG_MUSIC_WIDGET_REMOVED:I = 0x12de

.field private static final MSG_REMOTE_WIDGET_ADDED:I = 0x12e8

.field private static final MSG_REMOTE_WIDGET_REMOVED:I = 0x12f2

.field private static final MSG_ROAMING_PLAY_STATE_CHANGED:I = 0x1324

.field private static final MSG_SEC_MUSIC_WIDGET_ADDED:I = 0x12fc

.field private static final MSG_SEC_MUSIC_WIDGET_REMOVED:I = 0x1306

.field private static final TAG:Ljava/lang/String; = "ContexualWidgetMonitor"

.field private static final VOICEMAIL_NOTIFICATION:I = 0x5

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;


# instance fields
.field private final CONTEXTUAL_WIDGET_RESET_DELAY:J

.field private final FM_RADIO_WIDGET_HIDE:Ljava/lang/String;

.field private final FM_RADIO_WIDGET_SHOW:Ljava/lang/String;

.field private final MISSED_EVENT_ADDED:Ljava/lang/String;

.field private final MISSED_EVENT_REMOVED:Ljava/lang/String;

.field private final MMS_PACKAGE:Ljava/lang/String;

.field private final MUSIC_WIDGET_HIDE:Ljava/lang/String;

.field private final MUSIC_WIDGET_SHOW:Ljava/lang/String;

.field private final PHONE_PACKAGE:Ljava/lang/String;

.field private final REMOTE_ADDED:Ljava/lang/String;

.field private final REMOTE_REMOVED:Ljava/lang/String;

.field private final SEC_MUSIC_WIDGET_HIDE:Ljava/lang/String;

.field private final SEC_MUSIC_WIDGET_SHOW:Ljava/lang/String;

.field private mAlreadyAddedWidgetId:I

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mDefaultFMRadioWidget:Landroid/content/ComponentName;

.field private mDefaultMissedWidget:Landroid/content/ComponentName;

.field private mDefaultMusicWidget:Landroid/content/ComponentName;

.field private mDefaultRemoteWidget:Landroid/content/ComponentName;

.field private mDefaultSecMusicWidget:Landroid/content/ComponentName;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetContextualWidgetRunnable:Ljava/lang/Runnable;

.field private mShowMissedWidgetBecauseOfRoaming:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 289
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "com.android.phone"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->PHONE_PACKAGE:Ljava/lang/String;

    .line 80
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MMS_PACKAGE:Ljava/lang/String;

    .line 82
    const-string v0, "com.android.server.NotificationManagerService.NotificationArrived"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MISSED_EVENT_ADDED:Ljava/lang/String;

    .line 84
    const-string v0, "com.android.server.NotificationManagerService.NotificationRemoved"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MISSED_EVENT_REMOVED:Ljava/lang/String;

    .line 86
    const-string v0, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MUSIC_WIDGET_SHOW:Ljava/lang/String;

    .line 88
    const-string v0, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MUSIC_WIDGET_HIDE:Ljava/lang/String;

    .line 90
    const-string v0, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->REMOTE_ADDED:Ljava/lang/String;

    .line 92
    const-string v0, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->REMOTE_REMOVED:Ljava/lang/String;

    .line 94
    const-string v0, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->SEC_MUSIC_WIDGET_SHOW:Ljava/lang/String;

    .line 96
    const-string v0, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->SEC_MUSIC_WIDGET_HIDE:Ljava/lang/String;

    .line 98
    const-string v0, "com.sec.android.app.fm.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->FM_RADIO_WIDGET_SHOW:Ljava/lang/String;

    .line 100
    const-string v0, "com.sec.android.app.fm.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->FM_RADIO_WIDGET_HIDE:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 248
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    .line 285
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 287
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    .line 585
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->CONTEXTUAL_WIDGET_RESET_DELAY:J

    .line 587
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    .line 290
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    .line 291
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->wipeContextualWidgets()V

    .line 295
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const v1, 0x4b455947

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 300
    .local v11, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/content/ComponentName;

    const v1, #android:string@default_missed_widget_package_name#t

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, #android:string@default_missed_widget_class_name#t

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    .line 305
    new-instance v0, Landroid/content/ComponentName;

    const v1, #android:string@default_music_widget_package_name#t

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, #android:string@default_music_widget_class_name#t

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    .line 310
    new-instance v0, Landroid/content/ComponentName;

    const v1, #android:string@default_remote_widget_package_name#t

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, #android:string@default_remote_widget_class_name#t

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    .line 315
    new-instance v0, Landroid/content/ComponentName;

    const v1, #android:string@default_sec_music_widget_package_name#t

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, #android:string@default_sec_music_widget_class_name#t

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    .line 320
    new-instance v0, Landroid/content/ComponentName;

    const v1, #android:string@default_fm_radio_widget_package_name#t

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, #android:string@default_fm_radio_widget_class_name#t

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultFMRadioWidget:Landroid/content/ComponentName;

    .line 324
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v0, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v0, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v0, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v0, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v0, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v0, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v0, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v0, "com.sec.android.app.fm.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v0, "com.sec.android.app.fm.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 338
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v8, pkgFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 341
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, p1

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 342
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->isRoamingFeature()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->isIgnoreNationalRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleMusicWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleRemoteWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleSecMusicWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleFMRadioWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    return-object v0
.end method

.method private addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 456
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$4;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$ContextualWidgetMonitor$ContextualWidget:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 475
    :goto_0
    return-void

    .line 458
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 461
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 464
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 467
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 470
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultFMRadioWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private appWidget(Landroid/content/ComponentName;)V
    .locals 8
    .parameter "widgetComponentName"

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getWidgetId(Landroid/content/ComponentName;)I

    move-result v3

    .line 531
    .local v3, widgetId:I
    if-eqz v3, :cond_1

    .line 532
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    if-eqz v4, :cond_0

    .line 533
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    invoke-interface {v4, v3}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;->moveToContextualWidget(I)V

    .line 534
    :cond_0
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 564
    :goto_0
    return-void

    .line 537
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 541
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getContextualWidgetId(Landroid/content/ComponentName;)I

    move-result v0

    .line 543
    .local v0, contextualWidgetId:I
    if-nez v0, :cond_2

    .line 544
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 546
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, p1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 548
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 549
    .local v2, myOptions:Landroid/os/Bundle;
    const-string v4, "appWidgetCategory"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 550
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v2           #myOptions:Landroid/os/Bundle;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->removeContextualWidget(I)Z

    .line 560
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->addContextualWidget(I)Z

    .line 562
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 563
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 551
    :catch_0
    move-exception v1

    .line 552
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "ContexualWidgetMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when trying to bind default AppWidget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0
.end method

.method private getContextualWidgetId(Landroid/content/ComponentName;)I
    .locals 6
    .parameter "widgetComponentName"

    .prologue
    const/4 v3, 0x0

    .line 500
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v0

    .line 501
    .local v0, contextualWidgetIds:[I
    if-nez v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v3

    .line 503
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 504
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 506
    .local v2, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 507
    aget v3, v0, v1

    goto :goto_0

    .line 503
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
    .locals 1
    .parameter "context"

    .prologue
    .line 425
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    .line 428
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    return-object v0
.end method

.method private getWidgetId(Landroid/content/ComponentName;)I
    .locals 6
    .parameter "widgetComponentName"

    .prologue
    const/4 v3, 0x0

    .line 515
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v1

    .line 516
    .local v1, widgetIds:[I
    if-nez v1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v3

    .line 518
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 519
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 520
    .local v2, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 521
    aget v3, v1, v0

    goto :goto_0

    .line 518
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleFMRadioWidgetUpdate(Z)V
    .locals 1
    .parameter "added"

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 410
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->fmRadio:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->fmRadio:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->isMissedEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->missedWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->missedWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private handleMusicWidgetUpdate(Z)V
    .locals 1
    .parameter "isPlaying"

    .prologue
    .line 393
    if-eqz p1, :cond_0

    .line 394
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->musicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->musicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private handleRemoteWidgetUpdate(Z)V
    .locals 1
    .parameter "added"

    .prologue
    .line 386
    if-eqz p1, :cond_0

    .line 387
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->remoteWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->remoteWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private handleSecMusicWidgetUpdate(Z)V
    .locals 1
    .parameter "isPlaying"

    .prologue
    .line 401
    if-eqz p1, :cond_0

    .line 402
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->secMusicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->secMusicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private isIgnoreNationalRoaming()Z
    .locals 3

    .prologue
    .line 353
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "XEO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PRT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->isNationalRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    const-string v1, "ContexualWidgetMonitor"

    const-string v2, "isIgnoreNationalRoaming() = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v1, 0x1

    .line 360
    :goto_0
    return v1

    .line 359
    :cond_1
    const-string v1, "ContexualWidgetMonitor"

    const-string v2, "isIgnoreNationalRoaming() = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNationalRoaming()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 365
    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, simNumeric:Ljava/lang/String;
    const-string v5, "gsm.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, plmnNumeric:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 369
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, simMCC:Ljava/lang/String;
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, plmnMCC:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 373
    const-string v4, "ContexualWidgetMonitor"

    const-string v5, "isNationalRoaming() = true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v4, 0x1

    .line 382
    .end local v0           #plmnMCC:Ljava/lang/String;
    .end local v2           #simMCC:Ljava/lang/String;
    :goto_0
    return v4

    .line 376
    .restart local v0       #plmnMCC:Ljava/lang/String;
    .restart local v2       #simMCC:Ljava/lang/String;
    :cond_0
    const-string v5, "ContexualWidgetMonitor"

    const-string v6, "isNationalRoaming() = false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    .end local v0           #plmnMCC:Ljava/lang/String;
    .end local v2           #simMCC:Ljava/lang/String;
    :cond_1
    const-string v5, "ContexualWidgetMonitor"

    const-string v6, "isNationalRoaming() = false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isRoamingFeature()Z
    .locals 4

    .prologue
    .line 345
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_EnableDataRoamingButtonInQuickPanel"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 347
    .local v0, isFeature:Z
    const-string v1, "ContexualWidgetMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRoamingFeature() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return v0
.end method

.method private removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 478
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$4;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$ContextualWidgetMonitor$ContextualWidget:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 496
    :goto_0
    return-void

    .line 480
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 483
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 486
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 489
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 492
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultFMRadioWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private removeWidget(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "widgetComponentName"

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getWidgetId(Landroid/content/ComponentName;)I

    move-result v0

    .line 569
    .local v0, alreadyAddedWidgetId:I
    if-eqz v0, :cond_0

    .line 570
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 574
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getContextualWidgetId(Landroid/content/ComponentName;)I

    move-result v1

    .line 576
    .local v1, widgetId:I
    if-eqz v1, :cond_1

    .line 577
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 578
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeContextualWidget(I)Z

    .line 580
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 581
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 583
    :cond_1
    return-void
.end method


# virtual methods
.method public getTargetWidgetId()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    return v0
.end method

.method public isMissedEvent()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 441
    const/4 v2, 0x0

    .line 442
    .local v2, mNM:Landroid/app/NotificationManager;
    const/4 v0, 0x0

    .line 443
    .local v0, CallNotiInfo:Landroid/app/NotificationInfo;
    const/4 v1, 0x0

    .line 445
    .local v1, MsgNotiInfo:Landroid/app/NotificationInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 446
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mNM:Landroid/app/NotificationManager;
    check-cast v2, Landroid/app/NotificationManager;

    .line 447
    .restart local v2       #mNM:Landroid/app/NotificationManager;
    const-string v5, "com.android.phone"

    invoke-virtual {v2, v5, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v0

    .line 448
    const-string v5, "com.android.mms"

    const/16 v6, 0x7b

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    .line 452
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3
.end method

.method public registerCallback(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .line 437
    return-void
.end method

.method public removeCallback()V
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .line 433
    return-void
.end method

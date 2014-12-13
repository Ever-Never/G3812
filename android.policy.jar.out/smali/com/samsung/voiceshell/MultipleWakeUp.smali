.class public Lcom/samsung/voiceshell/MultipleWakeUp;
.super Ljava/lang/Object;
.source "MultipleWakeUp.java"


# static fields
.field private static BookmarkShortcut_filePath:Ljava/lang/String; = null

.field private static final CAMERA_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.camera.Camera"

.field private static final CAMERA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.camera"

.field private static DirectDial_filePath:Ljava/lang/String; = null

.field private static DirectMessage_filePath:Ljava/lang/String; = null

.field private static final FM_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.fm.MainActivity"

.field private static final FM_PACKAGE:Ljava/lang/String; = "com.sec.android.app.fm"

.field private static NavigationShortcut_filePath:Ljava/lang/String; = null

.field private static OpenApplication_filePath:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MultipleWakeUp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "/data/data/com.vlingo.midas/files/wakeupdata_DirectDial.txt"

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectDial_filePath:Ljava/lang/String;

    .line 27
    const-string v0, "/data/data/com.vlingo.midas/files/wakeupdata_DirectMessage.txt"

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectMessage_filePath:Ljava/lang/String;

    .line 28
    const-string v0, "/data/data/com.vlingo.midas/files/wakeupdata_BookmarkShortcut.txt"

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->BookmarkShortcut_filePath:Ljava/lang/String;

    .line 29
    const-string v0, "/data/data/com.vlingo.midas/files/wakeupdata_NavigationShortcut.txt"

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->NavigationShortcut_filePath:Ljava/lang/String;

    .line 30
    const-string v0, "/data/data/com.vlingo.midas/files/wakeupdata_OpenApplication.txt"

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->OpenApplication_filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetDataPath(Ljava/lang/String;)V
    .locals 2
    .parameter "strRootPath"

    .prologue
    .line 35
    const-string v0, "MultipleWakeUp"

    const-string v1, "secMM: SetDataPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/wakeupdata_DirectDial.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectDial_filePath:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/wakeupdata_DirectMessage.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectMessage_filePath:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/wakeupdata_BookmarkShortcut.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->BookmarkShortcut_filePath:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/wakeupdata_NavigationShortcut.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->NavigationShortcut_filePath:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/wakeupdata_OpenApplication.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->OpenApplication_filePath:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static getMultipleWakeUpIntent(I)Landroid/content/Intent;
    .locals 10
    .parameter "intentType"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x1020

    const/4 v7, 0x1

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, intent:Landroid/content/Intent;
    const-string v2, ""

    .line 48
    .local v2, results:Ljava/lang/String;
    const/4 v0, 0x0

    .line 50
    .local v0, Uri:Landroid/net/Uri;
    const-string v4, "MultipleWakeUp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "secMM: getMultipleWakeUpIntent, intentType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    packed-switch p0, :pswitch_data_0

    .line 144
    :pswitch_0
    const-string v4, "MultipleWakeUp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "secMM: getMultipleWakeUpIntent, intentType is none : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    :pswitch_1
    if-eqz v1, :cond_0

    .line 151
    const-string v4, "MultipleWakeUp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "secMM: getMultipleWakeUpIntent, intent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_1
    return-object v1

    .line 55
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 60
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 66
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.sec.android.app.camera.Camera"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 74
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "com.android.calendar"

    const-string v5, "com.android.calendar.AllInOneActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 80
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "sec.musicplayer.PLAYBACK_VIEWER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "playMusic"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 86
    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.fm"

    const-string v6, "com.sec.android.app.fm.MainActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    const-string v4, "playback"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const/high16 v4, 0x20

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    const/high16 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 97
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.voicerecorder"

    const-string v6, "com.sec.android.app.voicerecorder.VoiceRecorderMainActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 109
    :pswitch_9
    sget-object v4, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectDial_filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    const-string v4, "tel"

    invoke-static {v4, v2, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.CALL"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 116
    :pswitch_a
    sget-object v4, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectMessage_filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    const-string v4, "sms"

    invoke-static {v4, v2, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 123
    :pswitch_b
    sget-object v4, Lcom/samsung/voiceshell/MultipleWakeUp;->BookmarkShortcut_filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 130
    :pswitch_c
    sget-object v4, Lcom/samsung/voiceshell/MultipleWakeUp;->NavigationShortcut_filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "google.navigation:q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 137
    :pswitch_d
    sget-object v4, Lcom/samsung/voiceshell/MultipleWakeUp;->OpenApplication_filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, str:[Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    aget-object v6, v3, v7

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 155
    .end local v3           #str:[Ljava/lang/String;
    :cond_0
    const-string v4, "MultipleWakeUp"

    const-string v5, "secMM: getMultipleWakeUpIntent, intent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;
    .locals 13
    .parameter "intentType"
    .parameter "context"

    .prologue
    .line 163
    const/4 v3, 0x0

    .line 164
    .local v3, intent:Landroid/content/Intent;
    const-string v6, ""

    .line 165
    .local v6, results:Ljava/lang/String;
    const/4 v0, 0x0

    .line 167
    .local v0, Uri:Landroid/net/Uri;
    const-string v10, "MultipleWakeUp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secMM: getMultipleWakeUpIntent, intentType : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz p1, :cond_0

    .line 171
    const-string v10, "MultipleWakeUp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secMM: getMultipleWakeUpIntent, context : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 310
    const-string v10, "MultipleWakeUp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secMM: getMultipleWakeUpIntent, intentType is none : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_1
    :pswitch_0
    if-eqz v3, :cond_2

    .line 317
    const-string v10, "MultipleWakeUp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secMM: getMultipleWakeUpIntent, intent : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_2
    return-object v3

    .line 175
    :cond_0
    const-string v10, "MultipleWakeUp"

    const-string v11, "secMM: getMultipleWakeUpIntent, context is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v10, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 186
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 192
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.sec.android.app.camera"

    const-string v12, "com.sec.android.app.camera.Camera"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 195
    const/high16 v10, 0x1020

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 200
    :pswitch_4
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "com.android.calendar"

    const-string v11, "com.android.calendar.AllInOneActivity"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 207
    :pswitch_5
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.sec.android.music.intent.action.PLAY"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v3           #intent:Landroid/content/Intent;
    .local v4, intent:Landroid/content/Intent;
    :try_start_1
    const-string v10, "launchMusicPlayer"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const/high16 v10, 0x1000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 211
    const/4 v3, 0x0

    .end local v4           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 212
    :catch_0
    move-exception v2

    .line 213
    .local v2, e:Landroid/content/ActivityNotFoundException;
    :goto_3
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v10, "sec.musicplayer.PLAYBACK_VIEWER"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "playMusic"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    .line 220
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_6
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.sec.android.app.fm"

    const-string v12, "com.sec.android.app.fm.MainActivity"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 223
    const-string v10, "playback"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    const/high16 v10, 0x20

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    const/high16 v10, 0x1000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    const/high16 v10, 0x2

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 231
    :pswitch_7
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const/high16 v10, 0x1020

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 240
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_2
    const-string v10, "com.sec.android.app.voicerecorder"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 242
    const-string v9, "com.sec.android.app.voicerecorder"

    .line 243
    .local v9, strPackageName:Ljava/lang/String;
    const-string v8, "com.sec.android.app.voicerecorder.VoiceRecorderMainActivity"
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 250
    .local v8, strActivityName:Ljava/lang/String;
    :goto_4
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 244
    .end local v8           #strActivityName:Ljava/lang/String;
    .end local v9           #strPackageName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 245
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "MultipleWakeUp"

    const-string v11, "secMM: There is no Voicerecorder. Set intent to VoiceNote"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v9, "com.sec.android.app.voicenote"

    .line 247
    .restart local v9       #strPackageName:Ljava/lang/String;
    const-string v8, "com.sec.android.app.voicenote.main.VNMainActivity"

    .restart local v8       #strActivityName:Ljava/lang/String;
    goto :goto_4

    .line 259
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    .end local v8           #strActivityName:Ljava/lang/String;
    .end local v9           #strPackageName:Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 260
    .local v1, drivingMode:I
    if-nez v1, :cond_1

    .line 261
    const/4 v1, 0x1

    .line 265
    :goto_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_on"

    invoke-static {v10, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v10, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "DrivingMode"

    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    const/4 v3, 0x0

    .line 271
    goto/16 :goto_1

    .line 263
    :cond_1
    const/4 v1, 0x0

    goto :goto_5

    .line 275
    .end local v1           #drivingMode:I
    :pswitch_9
    sget-object v10, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectDial_filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 276
    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 277
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.CALL"

    invoke-direct {v3, v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 278
    .restart local v3       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 282
    :pswitch_a
    sget-object v10, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectMessage_filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 283
    const-string v10, "sms"

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 284
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.SENDTO"

    invoke-direct {v3, v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 285
    .restart local v3       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 289
    :pswitch_b
    sget-object v10, Lcom/samsung/voiceshell/MultipleWakeUp;->BookmarkShortcut_filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 290
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 291
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v3, v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 292
    .restart local v3       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 296
    :pswitch_c
    sget-object v10, Lcom/samsung/voiceshell/MultipleWakeUp;->NavigationShortcut_filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "google.navigation:q="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 298
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v3, v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 299
    .restart local v3       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 303
    :pswitch_d
    sget-object v10, Lcom/samsung/voiceshell/MultipleWakeUp;->OpenApplication_filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 304
    const-string v10, "\\|"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, str:[Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    const/4 v11, 0x0

    aget-object v11, v7, v11

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 321
    .end local v7           #str:[Ljava/lang/String;
    :cond_2
    const-string v10, "MultipleWakeUp"

    const-string v11, "secMM: getMultipleWakeUpIntent, intent is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 212
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v4       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    goto/16 :goto_3

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static readDataFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filepath"

    .prologue
    .line 330
    const/4 v2, 0x0

    .line 331
    .local v2, reader:Ljava/io/BufferedReader;
    const-string v4, ""

    .line 334
    .local v4, results:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 335
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v4

    goto :goto_0

    .line 344
    :cond_0
    if-eqz v3, :cond_1

    .line 345
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v3

    .line 351
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-object v4

    .line 346
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 349
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_1

    .line 338
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #line:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 339
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    if-eqz v2, :cond_2

    .line 345
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 346
    :catch_2
    move-exception v0

    .line 347
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 340
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 341
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 344
    if-eqz v2, :cond_2

    .line 345
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 346
    :catch_4
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 343
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 344
    :goto_4
    if-eqz v2, :cond_3

    .line 345
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 348
    :cond_3
    :goto_5
    throw v5

    .line 346
    :catch_5
    move-exception v0

    .line 347
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 343
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 340
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 338
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

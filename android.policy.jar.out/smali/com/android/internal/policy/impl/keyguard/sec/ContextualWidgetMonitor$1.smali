.class Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "ContextualWidgetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, action:Ljava/lang/String;
    const-string v8, "pkg"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 143
    .local v4, pkg:Ljava/lang/String;
    const/4 v2, 0x0

    .line 145
    .local v2, id:I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 146
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 147
    const-string v8, "id"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 148
    const-string v8, "ContexualWidgetMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    const-string v8, "ContexualWidgetMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "action ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v8, "ContexualWidgetMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pkg ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz v4, :cond_3

    const/4 v8, 0x5

    if-eq v2, v8, :cond_3

    const-string v8, "com.android.phone"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "com.android.mms"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 155
    :cond_1
    const-string v8, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 156
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12c0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 157
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12c0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12c0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    :cond_3
    :goto_0
    const-string v8, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 166
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12d4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 167
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12d4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    :cond_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12d4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    :cond_5
    :goto_1
    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 177
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_b

    .line 245
    .end local v7           #uri:Landroid/net/Uri;
    :cond_6
    :goto_2
    return-void

    .line 159
    :cond_7
    const-string v8, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 160
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12ca

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 161
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12ca

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    :cond_8
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12ca

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 169
    :cond_9
    const-string v8, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 170
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12de

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 171
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12de

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    :cond_a
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12de

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 180
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_b
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, pkgName:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 184
    const-string v8, "com.sec.android.app.music"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 185
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12de

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 186
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12de

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    :cond_c
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12de

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    .end local v5           #pkgName:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_d
    :goto_3
    const-string v8, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 196
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12e8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 197
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12e8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    :cond_e
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12e8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    :cond_f
    :goto_4
    const-string v8, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 206
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12fc

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 207
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12fc

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    :cond_10
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12fc

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    :cond_11
    :goto_5
    const-string v8, "com.sec.android.app.fm.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 216
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x1310

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 217
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x1310

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    :cond_12
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x1310

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    :cond_13
    :goto_6
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "networkType"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_6

    .line 227
    const-string v8, "phone"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 228
    .local v6, tm:Landroid/telephony/TelephonyManager;
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->isRoamingFeature()Z
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Z

    move-result v8

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->isIgnoreNationalRoaming()Z
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Z

    move-result v8

    if-nez v8, :cond_1d

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1d

    const/4 v3, 0x1

    .line 233
    .local v3, new_show_missed:Z
    :goto_7
    const-string v8, "ContexualWidgetMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new_show_missed ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Z

    move-result v8

    if-eq v3, v8, :cond_6

    .line 236
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z
    invoke-static {v8, v3}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$302(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)Z

    .line 237
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x1324

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 238
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x1324

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    :cond_14
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x1324

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    const-string v8, "ContexualWidgetMonitor"

    const-string v9, "sendMessage (MSG_ROAMING_PLAY_STATE_CHANGED)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 188
    .end local v3           #new_show_missed:Z
    .end local v6           #tm:Landroid/telephony/TelephonyManager;
    .restart local v5       #pkgName:Ljava/lang/String;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_15
    const-string v8, "com.sec.android.app.fm"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 189
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x131a

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 190
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x131a

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    :cond_16
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x131a

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 199
    .end local v5           #pkgName:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_17
    const-string v8, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 200
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12f2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 201
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12f2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    :cond_18
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12f2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    .line 209
    :cond_19
    const-string v8, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 210
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x1306

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 211
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x1306

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    :cond_1a
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x1306

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 219
    :cond_1b
    const-string v8, "com.sec.android.app.fm.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 220
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x131a

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 221
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x131a

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    :cond_1c
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x131a

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .line 228
    .restart local v6       #tm:Landroid/telephony/TelephonyManager;
    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_7
.end method

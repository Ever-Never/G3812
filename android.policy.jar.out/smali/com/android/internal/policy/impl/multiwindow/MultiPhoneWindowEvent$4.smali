.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;
.super Landroid/content/BroadcastReceiver;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;-><init>(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 857
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    if-nez v5, :cond_0

    .line 859
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 860
    .local v4, type:Ljava/lang/String;
    const/4 v3, -0x1

    .line 862
    .local v3, requestedPid:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 866
    :goto_0
    const/4 v5, -0x1

    if-le v3, v5, :cond_0

    .line 867
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 868
    .local v0, am:Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 869
    .local v2, pinfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-static {v2}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 870
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v3, :cond_0

    .line 871
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$702(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 872
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, #android:string@ok#t

    new-instance v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 879
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, #android:string@SS_STOP_THE_OTHER_VIDEO_AND_TRY_AGAIN#t

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 880
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 884
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #pinfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #requestedPid:I
    .end local v4           #type:Ljava/lang/String;
    :cond_0
    return-void

    .line 863
    .restart local v3       #requestedPid:I
    .restart local v4       #type:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 864
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "MultiPhoneWindowEvent"

    const-string v6, "attached item in getType() is not an int type"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

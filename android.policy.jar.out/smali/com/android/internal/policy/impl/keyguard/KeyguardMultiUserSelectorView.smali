.class public Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FADE_OUT_ANIMATION_DURATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "KeyguardMultiUserSelectorView"


# instance fields
.field private mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

.field private mOldUserId:I

.field mOrderAddedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUsersGrid:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setAllClickable(Z)V

    return-void
.end method

.method private createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    .locals 3
    .parameter "user"

    .prologue
    .line 142
    const v1, #android:layout@keyguard_multi_user_avatar#t

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->fromXml(ILandroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    move-result-object v0

    .line 144
    .local v0, uv:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    return-object v0
.end method

.method private reArrangeMultiUserSpace()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 110
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 111
    .local v7, res:Landroid/content/res/Resources;
    const v9, #android:dimen@keyguard_avatar_resize_width#t

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v3, v9

    .line 113
    .local v3, keyguardAvatarResizeWidth:I
    const/4 v5, 0x0

    .line 114
    .local v5, keyguardMultiUserAvatarPadding:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 115
    .local v1, childrenCount:I
    const/4 v9, 0x4

    if-gt v1, v9, :cond_1

    .line 116
    const v9, #android:dimen@keyguard_avatar_padding#t

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v5, v9

    .line 121
    add-int/lit8 v0, v1, -0x1

    .local v0, child:I
    :goto_0
    if-ltz v0, :cond_1

    .line 122
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 123
    .local v8, tmpView:Landroid/view/View;
    instance-of v9, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    if-eqz v9, :cond_0

    .line 124
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    .local v6, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const v9, #android:id@keyguard_user_avatar#t

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 129
    .local v2, img:Landroid/widget/ImageView;
    const v9, #android:dimen@keyguard_avatar_image_padding#t

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v4, v9

    .line 131
    .local v4, keyguardMultiUserAvatarImagePadding:I
    invoke-virtual {v2, v4, v10, v4, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 133
    check-cast v8, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .end local v8           #tmpView:Landroid/view/View;
    invoke-virtual {v8, v5, v10, v5, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setPadding(IIII)V

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->requestLayout()V

    .line 121
    .end local v2           #img:Landroid/widget/ImageView;
    .end local v4           #keyguardMultiUserAvatarImagePadding:I
    .end local v6           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 139
    .end local v0           #child:I
    :cond_1
    return-void
.end method

.method private setAllClickable(Z)V
    .locals 3
    .parameter "clickable"

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 161
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v1           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setMobileDataMultiUser()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 210
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 211
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 212
    .local v1, currentUserId:I
    const/4 v2, 0x1

    .line 213
    .local v2, state:Z
    if-nez v1, :cond_2

    .line 214
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data_configure"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 226
    :cond_0
    :goto_0
    const-string v5, "KeyguardMultiUserSelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMobileDataMultiUser userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mOldUserId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mOldUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 228
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    if-eqz v2, :cond_5

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    return-void

    :cond_1
    move v2, v4

    .line 214
    goto :goto_0

    .line 216
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_dependent_mobile_settings"

    invoke-static {v5, v6, v4, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_3

    move v2, v4

    .line 218
    :goto_2
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mOldUserId:I

    if-nez v5, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 220
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data_configure"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v2, v3

    .line 216
    goto :goto_2

    .line 222
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data_configure"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    move v3, v4

    .line 228
    goto :goto_1
.end method


# virtual methods
.method public addUsers(Ljava/util/Collection;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, userList:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/UserInfo;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 82
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    .local v0, activeUser:Landroid/content/pm/UserInfo;
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .local v4, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 90
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 91
    .local v3, user:Landroid/content/pm/UserInfo;
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    move-result-object v5

    .line 92
    .local v5, uv:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v7, :cond_0

    .line 93
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .line 94
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_1

    .line 83
    .end local v0           #activeUser:Landroid/content/pm/UserInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #user:Landroid/content/pm/UserInfo;
    .end local v4           #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v5           #uv:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    :catch_0
    move-exception v2

    .line 84
    .local v2, re:Landroid/os/RemoteException;
    const/4 v0, 0x0

    .restart local v0       #activeUser:Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 96
    .end local v2           #re:Landroid/os/RemoteException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #user:Landroid/content/pm/UserInfo;
    .restart local v4       #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .restart local v5       #uv:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    :cond_0
    invoke-virtual {v5, v8, v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_1

    .line 99
    .end local v3           #user:Landroid/content/pm/UserInfo;
    .end local v5           #uv:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->reArrangeMultiUserSpace()V

    .line 100
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 167
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    if-nez v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 168
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .line 169
    .local v0, avatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    if-ne v1, v0, :cond_2

    .line 172
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;->showUnlockHint()V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;->hideSecurityView(I)V

    .line 177
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setAllClickable(Z)V

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$2;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const v0, #android:id@keyguard_users_grid#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setClipChildren(Z)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setClipToPadding(Z)V

    .line 73
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;->userActivity()V

    .line 153
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    .line 77
    return-void
.end method

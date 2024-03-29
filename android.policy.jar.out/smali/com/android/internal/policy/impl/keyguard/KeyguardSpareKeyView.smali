.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSpareKeyView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final DEBUG:Ljava/lang/Boolean; = null

.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockGeneric"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "KeyguardBackupPIN"


# instance fields
.field imm:Landroid/view/inputmethod/InputMethodManager;

.field private mBackupPin:Landroid/widget/EditText;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field public mEnableFallback:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOk:Landroid/widget/Button;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 95
    return-void
.end method

.method private CheckSecondlock()V
    .locals 5

    .prologue
    .line 203
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x7530

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 204
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, backupPin:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkBackupPin(Ljava/lang/String;)Z

    move-result v0

    .line 206
    .local v0, IsSecondLock:Z
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->onCheckSecondLockResult(Z)V

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method private onCheckSecondLockResult(Z)V
    .locals 6
    .parameter "success"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KeyguardBackupPIN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    if-eqz p1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 214
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 223
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 226
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 232
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v2, #android:string@kg_wrong_backup_pin#t

    invoke-interface {v1, v2, v5}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 229
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 154
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 157
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 191
    :cond_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 192
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 193
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 254
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->CheckSecondlock()V

    .line 200
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 258
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->CheckSecondlock()V

    .line 260
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 101
    const v0, #android:id@backup_pin#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 105
    const v0, #android:id@ok#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mOk:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->reset()V

    .line 138
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 237
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->reset()V

    .line 242
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x7530

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 163
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 180
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 181
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    .line 182
    .local v0, permLocked:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_1

    const v2, #android:string@kg_login_too_many_attempts#t

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v3, v2, v1}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 184
    return-void

    .line 182
    :cond_1
    const v2, #android:string@kg_login_instructions#t

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 142
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 146
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 250
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

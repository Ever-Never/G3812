.class public Lcom/samsung/voiceshell/VoiceEngine;
.super Ljava/lang/Object;
.source "VoiceEngine.java"


# static fields
.field public static final AL_ENROLL:I = 0x0

.field public static final AL_VERIFY:I = 0x1

.field public static ROOT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VoiceEngine"

.field public static final VR_RECOGNITON:I = 0x2

.field public static isEarMic:I

.field private static isRunningAdaptation:Z

.field private static isRunningVoiceEngine:Z

.field public static typeDefine:Ljava/lang/String;


# instance fields
.field private m_UBMpath:Ljava/lang/String;

.field public m_UBMpath_default:Ljava/lang/String;

.field private volatile m_engineMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    sput-boolean v1, Lcom/samsung/voiceshell/VoiceEngine;->isRunningVoiceEngine:Z

    .line 43
    sput-boolean v1, Lcom/samsung/voiceshell/VoiceEngine;->isRunningAdaptation:Z

    .line 48
    const-string v0, "/data/data/com.vlingo.midas/"

    sput-object v0, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    .line 49
    const-string v0, "/data/data/com.vlingo.midas/typeDefine.bin"

    sput-object v0, Lcom/samsung/voiceshell/VoiceEngine;->typeDefine:Ljava/lang/String;

    .line 51
    sput v1, Lcom/samsung/voiceshell/VoiceEngine;->isEarMic:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_engineMode:I

    .line 45
    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    .line 46
    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath_default:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static SetDataPath(Ljava/lang/String;)V
    .locals 3
    .parameter "strRootPath"

    .prologue
    .line 122
    const-string v0, "VoiceEngine"

    const-string v1, "secMM: SetDataPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sput-object p0, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "typeDefine.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/VoiceEngine;->typeDefine:Ljava/lang/String;

    .line 128
    const-string v0, "VoiceEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, ROOT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "VoiceEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, typeDefine : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/VoiceEngine;->typeDefine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 110
    :try_start_0
    const-string v1, "VoiceEngine"

    const-string v2, "Trying to load libSamsungVoiceEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v1, "SamsungVoiceEngine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 112
    const-string v1, "VoiceEngine"

    const-string v2, "Loading libSamsungVoiceEngine.so done"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 114
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 116
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "VoiceEngine"

    const-string v2, "WARNING: Could not load libSamsungVoiceEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public native checkFileExistence(Ljava/lang/String;I[I)I
.end method

.method public native computeEnergyFrame([SII)I
.end method

.method public native consistencyCheckEnroll(Ljava/lang/String;S)I
.end method

.method public native functionAssignment(Ljava/lang/String;[II)I
.end method

.method public getIsRunningAdaptation()Z
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    sget-boolean v0, Lcom/samsung/voiceshell/VoiceEngine;->isRunningAdaptation:Z

    monitor-exit p0

    return v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIsRunningVoiceEngine()Z
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    sget-boolean v0, Lcom/samsung/voiceshell/VoiceEngine;->isRunningVoiceEngine:Z

    monitor-exit p0

    return v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_engineMode:I

    return v0
.end method

.method public native getModelStatus(Ljava/lang/String;S)I
.end method

.method public native getNoiseStats([J)I
.end method

.method public native getSpectrum([S[I)I
.end method

.method public native initializeDRC()I
.end method

.method public native initializeEnroll(Ljava/lang/String;)I
.end method

.method public native initializeNS()I
.end method

.method public native initializeVerify(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native performContinuousAdaptation(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public processBuffer([SILjava/lang/String;[S[S)I
    .locals 8
    .parameter "recordBuffer"
    .parameter "readLength"
    .parameter "ROOT"
    .parameter "frameLeft"
    .parameter "CommandType"

    .prologue
    .line 57
    const/4 v7, 0x0

    .line 59
    .local v7, iResult:I
    iget v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_engineMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    sget v1, Lcom/samsung/voiceshell/VoiceEngine;->isEarMic:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/voiceshell/VoiceEngine;->processVerifyFrame(I[SILjava/lang/String;[S[S)I

    move-result v7

    .line 68
    :goto_0
    return v7

    .line 65
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/voiceshell/VoiceEngine;->store1chPCM([SI)I

    move-result v7

    .line 66
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public native processDRC([SI)I
.end method

.method public native processEPDFrame([SI)I
.end method

.method public native processEnroll(Ljava/lang/String;S[S)I
.end method

.method public native processNSFrame([SI)I
.end method

.method public native processVerify(I)I
.end method

.method public native processVerifyFrame(I[SILjava/lang/String;[S[S)I
.end method

.method public setAdaptationModelPath(Ljava/lang/String;)V
    .locals 3
    .parameter "UBMpath"

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iput-object p1, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    .line 96
    const-string v0, "VoiceEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRunningAdaptation m_UBMpath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    monitor-exit p0

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIsRunningAdaptation(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    sput-boolean p1, Lcom/samsung/voiceshell/VoiceEngine;->isRunningAdaptation:Z

    .line 90
    const-string v0, "VoiceEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRunningAdaptation mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIsRunningVoiceEngine(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    sput-boolean p1, Lcom/samsung/voiceshell/VoiceEngine;->isRunningVoiceEngine:Z

    .line 79
    const-string v0, "VoiceEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRunningVoiceEngine mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 71
    iput p1, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_engineMode:I

    .line 72
    return-void
.end method

.method public native setModelStatus(Ljava/lang/String;IS)I
.end method

.method public native startVerify()I
.end method

.method public native store1chPCM([SI)I
.end method

.method public native terminateEnroll()I
.end method

.method public native terminateVerify()I
.end method

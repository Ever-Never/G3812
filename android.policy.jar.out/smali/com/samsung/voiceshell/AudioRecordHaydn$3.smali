.class Lcom/samsung/voiceshell/AudioRecordHaydn$3;
.super Ljava/lang/Object;
.source "AudioRecordHaydn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/voiceshell/AudioRecordHaydn;->initThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;


# direct methods
.method constructor <init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 271
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$200(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$300(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 274
    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v13

    .line 421
    .local v13, t:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception error in Enroll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v13           #t:Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 278
    :cond_2
    const/4 v10, 0x0

    .line 279
    .local v10, iResult:I
    const/4 v15, 0x0

    .line 280
    .local v15, vResult:I
    const/4 v14, 0x0

    .line 283
    .local v14, uResult:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v2

    #setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$402(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$600(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$700()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 323
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    if-lez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-eqz v1, :cond_9

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    if-eqz v1, :cond_4

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleInitReturn:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, v4, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I
    invoke-static {v7}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$900(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual/range {v1 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotPipe(J[SJJ)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: phrasespotPipe consoleResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I
    invoke-static {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1100(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1102(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I
    invoke-static {v4}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$900(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/voiceshell/VoiceEngine;->computeEnergyFrame([SII)I

    move-result v12

    .line 350
    .local v12, rms:I
    const-wide v1, 0x3ff3333333333333L

    int-to-float v3, v12

    float-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x400dc28f5c28f5c3L

    sub-double/2addr v1, v3

    double-to-int v12, v1

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1200(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    if-le v12, v1, :cond_b

    .line 353
    const-wide v1, 0x3feccccccccccccdL

    int-to-float v3, v12

    float-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x3fb999999999999aL

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1200(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    int-to-float v5, v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v12, v1

    .line 357
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v1, v12}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1202(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/16 v2, 0x5dc

    if-le v1, v2, :cond_5

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1, v12}, Lcom/samsung/voiceshell/AudioRecordHaydn;->rmsSendHandlerMessage(I)V

    .line 365
    :cond_5
    const/4 v11, 0x0

    .local v11, index:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    if-ge v11, v1, :cond_c

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1300()[S

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xa0

    invoke-static {v1, v11, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1300()[S

    move-result-object v2

    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1400()[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/voiceshell/VoiceEngine;->getSpectrum([S[I)I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 373
    :goto_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1400()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->spectrumSendHandlerMessage([I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v11, v1

    goto :goto_4

    .line 292
    .end local v11           #index:I
    .end local v12           #rms:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-eqz v1, :cond_8

    .line 295
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$700()I

    move-result v1

    if-nez v1, :cond_7

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->processEnroll([SI)I

    move-result v14

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: processEnroll uResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v1, 0x2

    if-ne v14, v1, :cond_3

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "secMM: isPipeRecogEnrollSuccess = true"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 307
    :cond_7
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$700()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, v4, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v4, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v5, v5, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->processVerify([SILjava/lang/String;[S)I

    move-result v10

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: processBuffer iResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CommandType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    const/4 v4, 0x0

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 318
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, v4, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v4, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v5, v5, Lcom/samsung/voiceshell/AudioRecordHaydn;->frameLeftNumber:[S

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v6, v6, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/voiceshell/VoiceEngine;->processBuffer([SILjava/lang/String;[S[S)I

    move-result v10

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: processBuffer iResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CommandType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    const/4 v4, 0x0

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 331
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isCustomVoiceTalkEnable:Z
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    if-eqz v1, :cond_a

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleInitReturn:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, v4, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I
    invoke-static {v7}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$900(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual/range {v1 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotPipe(J[SJJ)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: phrasespotPipe consoleResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 340
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->ProcessShortArray([SI)I

    move-result v15

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: processBuffer vResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 355
    .restart local v12       #rms:I
    :cond_b
    const-wide/high16 v1, 0x3fd0

    int-to-float v3, v12

    float-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1200(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    int-to-float v5, v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v12, v1

    goto/16 :goto_3

    .line 370
    .restart local v11       #index:I
    :catch_1
    move-exception v9

    .line 371
    .local v9, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "test_engine"

    const-string v2, "old Binary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 376
    .end local v9           #e:Ljava/lang/NoSuchMethodError;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    iput-short v2, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    goto/16 :goto_0

    .line 383
    :cond_d
    const/4 v1, 0x1

    if-ne v15, v1, :cond_f

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 388
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$302(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z

    goto/16 :goto_0

    .line 390
    :cond_f
    const/4 v1, 0x1

    if-ne v10, v1, :cond_11

    .line 393
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$702(I)I

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1, v10}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setAdaptation(I)I

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-short v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v1, v10, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 400
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$302(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z

    goto/16 :goto_0

    .line 402
    :cond_11
    const/4 v1, -0x3

    if-ne v10, v1, :cond_13

    .line 405
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$702(I)I

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-short v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v1, v10, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 410
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$302(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z

    goto/16 :goto_0

    .line 412
    :cond_13
    const/16 v1, -0xc

    if-ne v10, v1, :cond_0

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-short v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v1, v10, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

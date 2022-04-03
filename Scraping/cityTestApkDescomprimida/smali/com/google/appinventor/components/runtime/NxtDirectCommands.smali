.class public Lcom/google/appinventor/components/runtime/NxtDirectCommands;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "NxtDirectCommands.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a low-level interface to a LEGO MINDSTORMS NXT robot, with functions to send NXT Direct Commands."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.WRITE_EXTERNAL_STORAGE,android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 62
    const-string v0, "NxtDirectCommands"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private closeHandle(Ljava/lang/String;I)V
    .locals 4
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "handle"    # I

    .prologue
    const/4 v3, 0x1

    .line 775
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 776
    .local v0, "command":[B
    const/4 v2, 0x0

    aput-byte v3, v0, v2

    .line 777
    const/16 v2, -0x7c

    aput-byte v2, v0, v3

    .line 778
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 779
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 780
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 781
    return-void
.end method

.method private getOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;)[B
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # Lcom/google/appinventor/components/common/NxtMotorPort;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 278
    .local v0, "command":[B
    aput-byte v3, v0, v3

    .line 279
    const/4 v2, 0x6

    aput-byte v2, v0, v4

    .line 280
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtMotorPort;->toInt()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 281
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 282
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    array-length v2, v1

    const/16 v3, 0x19

    if-ne v2, v3, :cond_0

    .line 290
    .end local v1    # "returnPackage":[B
    :goto_0
    return-object v1

    .line 286
    .restart local v1    # "returnPackage":[B
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 25)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .prologue
    const/4 v4, 0x1

    .line 728
    const/16 v2, 0x1a

    new-array v0, v2, [B

    .line 729
    .local v0, "command":[B
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 730
    const/16 v2, -0x7f

    aput-byte v2, v0, v4

    .line 731
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 732
    const/16 v2, 0x16

    invoke-virtual {p0, p3, p4, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 733
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 734
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 735
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 736
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 742
    :goto_0
    return-object v2

    .line 738
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .prologue
    const/4 v4, 0x1

    .line 860
    const/16 v2, 0x1a

    new-array v0, v2, [B

    .line 861
    .local v0, "command":[B
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 862
    const/16 v2, -0x77

    aput-byte v2, v0, v4

    .line 863
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 864
    const/16 v2, 0x16

    invoke-virtual {p0, p3, p4, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 865
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 866
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 867
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 868
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 874
    :goto_0
    return-object v2

    .line 870
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private writeChunk(Ljava/lang/String;I[BI)I
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "buffer"    # [B
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 747
    const/16 v3, 0x20

    if-le p4, v3, :cond_0

    .line 748
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "length must be <= 32"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 751
    :cond_0
    add-int/lit8 v3, p4, 0x3

    new-array v0, v3, [B

    .line 752
    .local v0, "command":[B
    aput-byte v4, v0, v2

    .line 753
    const/16 v3, -0x7d

    aput-byte v3, v0, v4

    .line 754
    const/4 v3, 0x2

    invoke-virtual {p0, p2, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 755
    const/4 v3, 0x3

    invoke-static {p3, v2, v0, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 756
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 757
    .local v1, "returnPackage":[B
    aget-byte v3, v0, v4

    invoke-virtual {p0, p1, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 758
    array-length v3, v1

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 759
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v2

    .line 760
    .local v2, "writtenLength":I
    if-eq v2, p4, :cond_2

    .line 761
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes were written (expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to write file on robot"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 767
    .end local v2    # "writtenLength":I
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected return package length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (expected 6)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_2
    return v2
.end method


# virtual methods
.method public DeleteFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a file on the robot."
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 785
    const-string v1, "DeleteFile"

    .line 786
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 801
    :goto_0
    return-void

    .line 789
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 790
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x196

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 795
    :cond_1
    const/16 v3, 0x16

    new-array v0, v3, [B

    .line 796
    .local v0, "command":[B
    aput-byte v5, v0, v6

    .line 797
    const/16 v3, -0x7b

    aput-byte v3, v0, v5

    .line 798
    const/4 v3, 0x2

    const/16 v4, 0x13

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 799
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 800
    .local v2, "returnPackage":[B
    aget-byte v3, v0, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    goto :goto_0
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Download a file to the robot."
    .end annotation

    .prologue
    .line 674
    const-string v5, "DownloadFile"

    .line 675
    .local v5, "functionName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 725
    :goto_0
    return-void

    .line 678
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_1

    .line 679
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v15, 0x19e

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v5, v15, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 683
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    .line 684
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v15, 0x19f

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v5, v15, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 690
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 692
    .local v12, "tempFile":Ljava/io/File;
    :try_start_1
    new-instance v9, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v14, v12}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v14

    const/16 v15, 0x400

    invoke-direct {v9, v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 694
    .local v9, "in":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 695
    .local v6, "fileSize":J
    const-string v14, ".rxe"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, ".ric"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 696
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 698
    .local v8, "handle":Ljava/lang/Integer;
    :goto_1
    if-nez v8, :cond_5

    .line 715
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 718
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 720
    .end local v6    # "fileSize":J
    .end local v8    # "handle":Ljava/lang/Integer;
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v12    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 721
    .local v4, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v15, 0x1a0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 722
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 721
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v5, v15, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 697
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "fileSize":J
    .restart local v9    # "in":Ljava/io/InputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v8

    goto :goto_1

    .line 703
    .restart local v8    # "handle":Ljava/lang/Integer;
    :cond_5
    const/16 v14, 0x20

    :try_start_6
    new-array v2, v14, [B

    .line 704
    .local v2, "buffer":[B
    const-wide/16 v10, 0x0

    .line 705
    .local v10, "sentLength":J
    :goto_2
    cmp-long v14, v10, v6

    if-gez v14, :cond_6

    .line 706
    const-wide/16 v14, 0x20

    sub-long v16, v6, v10

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v3, v14

    .line 707
    .local v3, "chunkLength":I
    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14, v3}, Ljava/io/InputStream;->read([BII)I

    .line 708
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->writeChunk(Ljava/lang/String;I[BI)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v13

    .line 709
    .local v13, "writtenLength":I
    int-to-long v14, v13

    add-long/2addr v10, v14

    .line 710
    goto :goto_2

    .line 712
    .end local v3    # "chunkLength":I
    .end local v13    # "writtenLength":I
    :cond_6
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->closeHandle(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 715
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 718
    :try_start_9
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 712
    .end local v2    # "buffer":[B
    .end local v10    # "sentLength":J
    :catchall_0
    move-exception v14

    :try_start_a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->closeHandle(Ljava/lang/String;I)V

    throw v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 715
    .end local v6    # "fileSize":J
    .end local v8    # "handle":Ljava/lang/Integer;
    :catchall_1
    move-exception v14

    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    throw v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 718
    .end local v9    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v14

    :try_start_c
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    throw v14
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
.end method

.method public GetBatteryLevel()I
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery level for the robot. Returns the voltage in millivolts."
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 378
    const-string v1, "GetBatteryLevel"

    .line 379
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v3

    .line 383
    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 384
    .local v0, "command":[B
    aput-byte v3, v0, v3

    .line 385
    const/16 v4, 0xb

    aput-byte v4, v0, v5

    .line 386
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 387
    .local v2, "returnPackage":[B
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    array-length v4, v2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 389
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v3

    goto :goto_0

    .line 391
    :cond_2
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetBatteryLevel: unexpected return package length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (expected 5)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetBrickName()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the brick name of the robot."
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 898
    const-string v1, "GetBrickName"

    .line 899
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 900
    const-string v3, ""

    .line 910
    :goto_0
    return-object v3

    .line 903
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 904
    .local v0, "command":[B
    const/4 v3, 0x0

    aput-byte v4, v0, v3

    .line 905
    const/16 v3, -0x65

    aput-byte v3, v0, v4

    .line 906
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 907
    .local v2, "returnPackage":[B
    aget-byte v3, v0, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 908
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 910
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public GetCurrentProgramName()Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the name of currently running program on the robot."
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 538
    const-string v1, "GetCurrentProgramName"

    .line 539
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 540
    const-string v4, ""

    .line 558
    :goto_0
    return-object v4

    .line 543
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 544
    .local v0, "command":[B
    aput-byte v6, v0, v6

    .line 545
    const/16 v4, 0x11

    aput-byte v4, v0, v5

    .line 546
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 547
    .local v2, "returnPackage":[B
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v3

    .line 548
    .local v3, "status":I
    if-nez v3, :cond_1

    .line 550
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 552
    :cond_1
    const/16 v4, 0xec

    if-ne v3, v4, :cond_2

    .line 554
    const-string v4, ""

    goto :goto_0

    .line 557
    :cond_2
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 558
    const-string v4, ""

    goto :goto_0
.end method

.method public GetFirmwareVersion()Ljava/util/List;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware and protocol version numbers for the robot as a list where the first element is the firmware version number and the second element is the protocol version number."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 841
    const-string v1, "GetFirmwareVersion"

    .line 842
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 843
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 856
    :goto_0
    return-object v3

    .line 846
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 847
    .local v0, "command":[B
    const/4 v4, 0x0

    aput-byte v5, v0, v4

    .line 848
    const/16 v4, -0x78

    aput-byte v4, v0, v5

    .line 849
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 850
    .local v2, "returnPackage":[B
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 851
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v3, "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x6

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x4

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 856
    .end local v3    # "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public GetInputValues(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the values of an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    const-string v0, "GetInputValues"

    .line 297
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    :goto_0
    return-object v1

    .line 302
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v2

    .line 303
    .local v2, "port":Lcom/google/appinventor/components/common/NxtSensorPort;
    if-nez v2, :cond_1

    .line 304
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x198

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, p0, v0, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object v3

    .line 310
    .local v3, "returnPackage":[B
    if-eqz v3, :cond_2

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v1, "inputValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    const/4 v4, 0x6

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    const/16 v4, 0xc

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    const/16 v4, 0xe

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 324
    .end local v1    # "inputValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method public GetOutputState(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "motorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMotorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the output state of a motor on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    const-string v0, "GetOutputState"

    .line 245
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    :goto_0
    return-object v1

    .line 250
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtMotorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;

    move-result-object v2

    .line 251
    .local v2, "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    if-nez v2, :cond_1

    .line 252
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x197

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, p0, v0, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 257
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;)[B

    move-result-object v3

    .line 258
    .local v3, "returnPackage":[B
    if-eqz v3, :cond_2

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v1, "outputState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    const/4 v4, 0x6

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    const/16 v4, 0x9

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const/16 v4, 0xd

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const/16 v4, 0x11

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    const/16 v4, 0x15

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 273
    .end local v1    # "outputState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method public KeepAlive()J
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Keep Alive. Returns the current sleep time limit in milliseconds."
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 414
    const-string v1, "KeepAlive"

    .line 415
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-wide v4

    .line 419
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 420
    .local v0, "command":[B
    aput-byte v6, v0, v6

    .line 421
    const/16 v3, 0xd

    aput-byte v3, v0, v7

    .line 422
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 423
    .local v2, "returnPackage":[B
    aget-byte v3, v0, v7

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    array-length v3, v2

    const/4 v6, 0x7

    if-ne v3, v6, :cond_2

    .line 425
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v4

    goto :goto_0

    .line 427
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeepAlive: unexpected return package length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected 7)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public ListFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "wildcard"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a list containing the names of matching files found on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 806
    const-string v3, "ListFiles"

    .line 807
    .local v3, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 808
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 834
    :cond_0
    return-object v2

    .line 811
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v2, "fileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 814
    const-string p1, "*.*"

    .line 817
    :cond_2
    const/16 v7, 0x16

    new-array v0, v7, [B

    .line 818
    .local v0, "command":[B
    aput-byte v8, v0, v9

    .line 819
    const/16 v7, -0x7a

    aput-byte v7, v0, v8

    .line 820
    const/16 v7, 0x13

    invoke-virtual {p0, p1, v0, v10, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 821
    invoke-virtual {p0, v3, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 822
    .local v5, "returnPackage":[B
    aget-byte v7, v0, v8

    invoke-virtual {p0, v3, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    .line 823
    .local v6, "status":I
    :goto_0
    if-nez v6, :cond_0

    .line 824
    invoke-virtual {p0, v5, v11}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    .line 825
    .local v4, "handle":I
    const/4 v7, 0x4

    invoke-virtual {p0, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v1

    .line 826
    .local v1, "fileName":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    new-array v0, v11, [B

    .line 828
    aput-byte v8, v0, v9

    .line 829
    const/16 v7, -0x79

    aput-byte v7, v0, v8

    .line 830
    invoke-virtual {p0, v4, v0, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 831
    invoke-virtual {p0, v3, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 832
    aget-byte v7, v0, v8

    invoke-virtual {p0, v3, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    .line 833
    goto :goto_0
.end method

.method public LsGetStatus(Ljava/lang/String;)I
    .locals 6
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the count of available bytes to read."
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 436
    const-string v0, "LsGetStatus"

    .line 437
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 449
    :goto_0
    return v2

    .line 442
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v1

    .line 443
    .local v1, "port":Lcom/google/appinventor/components/common/NxtSensorPort;
    if-nez v1, :cond_1

    .line 444
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x198

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v3, p0, v0, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsGetStatus(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)I

    move-result v2

    goto :goto_0
.end method

.method public LsRead(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads unsigned low speed data from an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    const-string v1, "LsRead"

    .line 508
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 509
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 532
    :cond_0
    :goto_0
    return-object v3

    .line 513
    :cond_1
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v5

    .line 514
    .local v5, "port":Lcom/google/appinventor/components/common/NxtSensorPort;
    if-nez v5, :cond_2

    .line 515
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v8, 0x198

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v7, p0, v1, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 517
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {p0, v1, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsRead(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object v6

    .line 521
    .local v6, "returnPackage":[B
    if-eqz v6, :cond_3

    .line 522
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v0

    .line 524
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 525
    add-int/lit8 v7, v2, 0x4

    aget-byte v7, v6, v7

    and-int/lit16 v4, v7, 0xff

    .line 526
    .local v4, "n":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 532
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "n":I
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public LsWrite(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 15
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .param p2, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "rxDataLength"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes low speed data to an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .prologue
    .line 458
    const-string v5, "LsWrite"

    .line 459
    .local v5, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 501
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v8

    .line 465
    .local v8, "port":Lcom/google/appinventor/components/common/NxtSensorPort;
    if-nez v8, :cond_1

    .line 466
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v11, 0x198

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-virtual {v10, p0, v5, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v10

    const/16 v11, 0x10

    if-le v10, v11, :cond_2

    .line 472
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v11, 0x19b

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, p0, v5, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 478
    .local v1, "array":[Ljava/lang/Object;
    array-length v10, v1

    new-array v2, v10, [B

    .line 479
    .local v2, "bytes":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v10, v1

    if-ge v6, v10, :cond_4

    .line 482
    aget-object v4, v1, v6

    .line 483
    .local v4, "element":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 486
    .local v9, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 492
    .local v7, "n":I
    and-int/lit16 v10, v7, 0xff

    int-to-byte v10, v10

    aput-byte v10, v2, v6

    .line 493
    shr-int/lit8 v7, v7, 0x8

    .line 494
    if-eqz v7, :cond_3

    const/4 v10, -0x1

    if-eq v7, v10, :cond_3

    .line 495
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v11, 0x19d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v14, v6, 0x1

    .line 496
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 495
    invoke-virtual {v10, p0, v5, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 487
    .end local v7    # "n":I
    :catch_0
    move-exception v3

    .line 488
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v11, 0x19c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v14, v6, 0x1

    .line 489
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 488
    invoke-virtual {v10, p0, v5, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 479
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "n":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 500
    .end local v4    # "element":Ljava/lang/Object;
    .end local v7    # "n":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_4
    move/from16 v0, p3

    invoke-virtual {p0, v5, v8, v2, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsWrite(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;[BI)V

    goto :goto_0
.end method

.method public MessageRead(I)Ljava/lang/String;
    .locals 7
    .param p1, "mailbox"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMailbox;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Read a message from a mailbox (1-10) on the robot."
    .end annotation

    .prologue
    .line 563
    const-string v1, "MessageRead"

    .line 565
    .local v1, "functionName":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/common/NxtMailbox;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtMailbox;

    move-result-object v0

    .line 566
    .local v0, "box":Lcom/google/appinventor/components/common/NxtMailbox;
    if-nez v0, :cond_0

    .line 567
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x199

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 568
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 567
    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 569
    const-string v2, ""

    .line 571
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->MessageReadAbstract(Lcom/google/appinventor/components/common/NxtMailbox;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public MessageReadAbstract(Lcom/google/appinventor/components/common/NxtMailbox;)Ljava/lang/String;
    .locals 12
    .param p1, "mailbox"    # Lcom/google/appinventor/components/common/NxtMailbox;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 582
    const-string v1, "MessageRead"

    .line 583
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/NxtMailbox;->toInt()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 585
    .local v2, "intMailbox":I
    const-string v6, "MessageRead"

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 586
    const-string v6, ""

    .line 610
    :goto_0
    return-object v6

    .line 589
    :cond_0
    new-array v0, v11, [B

    .line 590
    .local v0, "command":[B
    aput-byte v7, v0, v7

    .line 591
    const/16 v6, 0x13

    aput-byte v6, v0, v8

    .line 592
    const/4 v6, 0x2

    invoke-virtual {p0, v7, v0, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 593
    invoke-virtual {p0, v2, v0, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 594
    invoke-virtual {p0, v8, v0, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 595
    const-string v6, "MessageRead"

    invoke-virtual {p0, v6, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 596
    .local v5, "returnPackage":[B
    const-string v6, "MessageRead"

    aget-byte v7, v0, v8

    invoke-virtual {p0, v6, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 597
    array-length v6, v5

    const/16 v7, 0x40

    if-ne v6, v7, :cond_2

    .line 598
    invoke-virtual {p0, v5, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v3

    .line 599
    .local v3, "mailboxEcho":I
    if-eq v3, v2, :cond_1

    .line 600
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MessageRead: unexpected return mailbox: Box"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_1
    invoke-virtual {p0, v5, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 604
    .local v4, "messageLength":I
    invoke-virtual {p0, v5, v11, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 606
    .end local v3    # "mailboxEcho":I
    .end local v4    # "messageLength":I
    :cond_2
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MessageRead: unexpected return package length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (expected 64)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_3
    const-string v6, ""

    goto/16 :goto_0
.end method

.method public MessageWrite(ILjava/lang/String;)V
    .locals 7
    .param p1, "mailbox"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMailbox;
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Write a message to a mailbox (1-10) on the robot."
    .end annotation

    .prologue
    .line 621
    const-string v1, "MessageWrite"

    .line 623
    .local v1, "functionName":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/common/NxtMailbox;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtMailbox;

    move-result-object v0

    .line 624
    .local v0, "box":Lcom/google/appinventor/components/common/NxtMailbox;
    if-nez v0, :cond_0

    .line 625
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x199

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 626
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 625
    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 630
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->MessageWriteAbstract(Lcom/google/appinventor/components/common/NxtMailbox;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public MessageWriteAbstract(Lcom/google/appinventor/components/common/NxtMailbox;Ljava/lang/String;)V
    .locals 7
    .param p1, "mailbox"    # Lcom/google/appinventor/components/common/NxtMailbox;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 640
    const-string v1, "MessageWrite"

    .line 642
    .local v1, "functionName":Ljava/lang/String;
    const-string v3, "MessageWrite"

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 661
    :goto_0
    return-void

    .line 645
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 646
    .local v2, "messageLength":I
    const/16 v3, 0x3a

    if-le v2, v3, :cond_1

    .line 647
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "MessageWrite"

    const/16 v5, 0x19a

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 652
    :cond_1
    add-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 653
    .local v0, "command":[B
    const/16 v3, -0x80

    aput-byte v3, v0, v6

    .line 654
    const/4 v3, 0x1

    const/16 v4, 0x9

    aput-byte v4, v0, v3

    .line 655
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/NxtMailbox;->toInt()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 657
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 658
    const/4 v3, 0x4

    invoke-virtual {p0, p2, v0, v3, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 660
    const-string v3, "MessageWrite"

    invoke-virtual {p0, v3, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public PlaySoundFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Play a sound file on the robot."
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 109
    const-string v1, "PlaySoundFile"

    .line 110
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x196

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".rso"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    :cond_2
    const/16 v2, 0x17

    new-array v0, v2, [B

    .line 123
    .local v0, "command":[B
    const/16 v2, -0x80

    aput-byte v2, v0, v4

    .line 124
    const/4 v2, 0x1

    aput-byte v5, v0, v2

    .line 125
    invoke-virtual {p0, v4, v0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 126
    const/4 v2, 0x3

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 127
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public PlayTone(II)V
    .locals 5
    .param p1, "frequencyHz"    # I
    .param p2, "durationMs"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the robot play a tone."
    .end annotation

    .prologue
    .line 132
    const-string v1, "PlayTone"

    .line 133
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    :goto_0
    return-void

    .line 137
    :cond_0
    const/16 v2, 0xc8

    if-ge p1, v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequencyHz "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid, using 200."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/16 p1, 0xc8

    .line 141
    :cond_1
    const/16 v2, 0x36b0

    if-le p1, v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequencyHz "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid, using 14000."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/16 p1, 0x36b0

    .line 145
    :cond_2
    const/4 v2, 0x6

    new-array v0, v2, [B

    .line 146
    .local v0, "command":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 147
    const/4 v2, 0x1

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 148
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 149
    const/4 v2, 0x4

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 150
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public ResetInputScaledValue(Ljava/lang/String;)V
    .locals 7
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset the scaled value of an input sensor on the robot."
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 329
    const-string v1, "ResetInputScaledValue"

    .line 330
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 348
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v2

    .line 336
    .local v2, "port":Lcom/google/appinventor/components/common/NxtSensorPort;
    if-nez v2, :cond_1

    .line 337
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x198

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->resetInputScaledValue(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)V

    .line 343
    const/4 v3, 0x3

    new-array v0, v3, [B

    .line 344
    .local v0, "command":[B
    const/16 v3, -0x80

    aput-byte v3, v0, v6

    .line 345
    const/16 v3, 0x8

    aput-byte v3, v0, v5

    .line 346
    invoke-virtual {v2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 347
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public ResetMotorPosition(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "motorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMotorPort;
        .end annotation
    .end param
    .param p2, "relative"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset motor position."
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 354
    const-string v1, "ResetMotorPosition"

    .line 355
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtMotorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;

    move-result-object v2

    .line 361
    .local v2, "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    if-nez v2, :cond_1

    .line 362
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x197

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 367
    :cond_1
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 368
    .local v0, "command":[B
    const/16 v3, -0x80

    aput-byte v3, v0, v6

    .line 369
    const/16 v3, 0xa

    aput-byte v3, v0, v5

    .line 370
    invoke-virtual {v2}, Lcom/google/appinventor/components/common/NxtMotorPort;->toInt()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 371
    const/4 v3, 0x3

    invoke-virtual {p0, p2, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 372
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public SetBrickName(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the brick name of the robot."
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 883
    const-string v1, "SetBrickName"

    .line 884
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 894
    :goto_0
    return-void

    .line 888
    :cond_0
    const/16 v3, 0x12

    new-array v0, v3, [B

    .line 889
    .local v0, "command":[B
    const/4 v3, 0x0

    aput-byte v5, v0, v3

    .line 890
    const/16 v3, -0x68

    aput-byte v3, v0, v5

    .line 891
    const/4 v3, 0x2

    const/16 v4, 0xf

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 892
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 893
    .local v2, "returnPackage":[B
    aget-byte v3, v0, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    goto :goto_0
.end method

.method public SetInputMode(Ljava/lang/String;II)V
    .locals 8
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .param p2, "sensorType"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorType;
        .end annotation
    .end param
    .param p3, "sensorMode"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorMode;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Configure an input sensor on the robot."
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 210
    const-string v0, "SetInputMode"

    .line 211
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 240
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v2

    .line 217
    .local v2, "port":Lcom/google/appinventor/components/common/NxtSensorPort;
    if-nez v2, :cond_1

    .line 218
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x198

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-virtual {v4, p0, v0, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 224
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/common/NxtSensorType;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtSensorType;

    move-result-object v3

    .line 225
    .local v3, "type":Lcom/google/appinventor/components/common/NxtSensorType;
    if-nez v3, :cond_2

    .line 226
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x1a6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, p0, v0, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/common/NxtSensorMode;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtSensorMode;

    move-result-object v1

    .line 233
    .local v1, "mode":Lcom/google/appinventor/components/common/NxtSensorMode;
    if-nez v1, :cond_3

    .line 234
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x1a7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, p0, v0, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 239
    :cond_3
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V

    goto :goto_0
.end method

.method public SetOutputState(Ljava/lang/String;IIIIIJ)V
    .locals 11
    .param p1, "motorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMotorPort;
        .end annotation
    .end param
    .param p2, "power"    # I
    .param p3, "mode"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMotorMode;
        .end annotation
    .end param
    .param p4, "regulationMode"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtRegulationMode;
        .end annotation
    .end param
    .param p5, "turnRatio"    # I
    .param p6, "runState"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtRunState;
        .end annotation
    .end param
    .param p7, "tachoLimit"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the output state of a motor on the robot."
    .end annotation

    .prologue
    .line 162
    const-string v1, "SetOutputState"

    .line 163
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtMotorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;

    move-result-object v2

    .line 169
    .local v2, "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    if-nez v2, :cond_1

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x197

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    invoke-virtual {v0, p0, v1, v3, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/NxtMotorMode;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtMotorMode;

    move-result-object v4

    .line 177
    .local v4, "motorMode":Lcom/google/appinventor/components/common/NxtMotorMode;
    if-nez v4, :cond_2

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x1a4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 179
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    .line 178
    invoke-virtual {v0, p0, v1, v3, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/NxtRegulationMode;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtRegulationMode;

    move-result-object v5

    .line 185
    .local v5, "regMode":Lcom/google/appinventor/components/common/NxtRegulationMode;
    if-nez v5, :cond_3

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x1a5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    invoke-virtual {v0, p0, v1, v3, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_3
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/NxtRunState;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtRunState;

    move-result-object v7

    .local v7, "state":Lcom/google/appinventor/components/common/NxtRunState;
    move-object v0, p0

    move v3, p2

    move/from16 v6, p5

    move-wide/from16 v8, p7

    .line 194
    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    goto :goto_0
.end method

.method public StartProgram(Ljava/lang/String;)V
    .locals 5
    .param p1, "programName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start execution of a previously downloaded program on the robot."
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 73
    const-string v1, "StartProgram"

    .line 74
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x195

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".rxe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    :cond_2
    const/16 v2, 0x16

    new-array v0, v2, [B

    .line 87
    .local v0, "command":[B
    const/16 v2, -0x80

    aput-byte v2, v0, v4

    .line 88
    const/4 v2, 0x1

    aput-byte v4, v0, v2

    .line 89
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 90
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public StopProgram()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop execution of the currently running program on the robot."
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 96
    const-string v1, "StopProgram"

    .line 97
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 102
    .local v0, "command":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 103
    aput-byte v4, v0, v4

    .line 104
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public StopSoundPlayback()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop sound playback."
    .end annotation

    .prologue
    .line 400
    const-string v1, "StopSoundPlayback"

    .line 401
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    :goto_0
    return-void

    .line 405
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 406
    .local v0, "command":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 407
    const/4 v2, 0x1

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    .line 408
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

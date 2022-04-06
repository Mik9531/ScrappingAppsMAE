.class public Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;
.super Ljava/lang/Object;
.source "PhysicaloidFpgaConfigurator.java"


# static fields
.field private static final CONF_CHECK_RETRY:I = 0xa

.field private static final CONF_WRITE_PACKET_SIZE:I = 0x80

.field private static final DEBUG_SHOW:Z = true

.field private static final READ_DELAY_MS:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCanceled:Z

.field private mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/physicaloid/lib/framework/SerialCommunicator;)V
    .locals 1
    .param p1, "comm"    # Lcom/physicaloid/lib/framework/SerialCommunicator;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mCanceled:Z

    .line 26
    return-void
.end method

.method private checkAsMode(B)Z
    .locals 2
    .param p1, "ret"    # B

    .prologue
    const/4 v0, 0x1

    .line 241
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_0

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkConfDone(B)Z
    .locals 2
    .param p1, "ret"    # B

    .prologue
    .line 251
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkNstatus(B)Z
    .locals 2
    .param p1, "ret"    # B

    .prologue
    .line 246
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkTimeout(B)Z
    .locals 2
    .param p1, "ret"    # B

    .prologue
    .line 257
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private commandStartConfig()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 216
    new-array v0, v4, [B

    .line 217
    .local v0, "cbuf":[B
    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    .line 218
    const/16 v1, 0x30

    aput-byte v1, v0, v3

    .line 219
    aget-byte v1, v0, v3

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 221
    iget-object v1, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v1, v0, v4}, Lcom/physicaloid/lib/framework/SerialCommunicator;->write([BI)I

    .line 222
    return-void
.end method

.method private commandStopConfig()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 225
    new-array v0, v4, [B

    .line 226
    .local v0, "cbuf":[B
    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    .line 227
    const/16 v1, 0x30

    aput-byte v1, v0, v3

    .line 228
    aget-byte v1, v0, v3

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 230
    iget-object v1, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v1, v0, v4}, Lcom/physicaloid/lib/framework/SerialCommunicator;->write([BI)I

    .line 231
    return-void
.end method

.method private commandSwitchConfigMode()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 208
    new-array v0, v3, [B

    .line 209
    .local v0, "cbuf":[B
    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    .line 210
    const/4 v1, 0x1

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    .line 212
    iget-object v1, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v1, v0, v3}, Lcom/physicaloid/lib/framework/SerialCommunicator;->write([BI)I

    .line 213
    return-void
.end method

.method private commandSwitchUserMode()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 198
    new-array v0, v4, [B

    .line 199
    .local v0, "cbuf":[B
    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    .line 200
    const/16 v1, 0x30

    aput-byte v1, v0, v3

    .line 201
    aget-byte v1, v0, v3

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 202
    aget-byte v1, v0, v3

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 204
    iget-object v1, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v1, v0, v4}, Lcom/physicaloid/lib/framework/SerialCommunicator;->write([BI)I

    .line 205
    return-void
.end method

.method private drainReadBuf()V
    .locals 5

    .prologue
    .line 263
    const/16 v2, 0x80

    new-array v1, v2, [B

    .line 265
    .local v1, "tmpbuf":[B
    :goto_0
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->readDelay()V

    .line 266
    iget-object v2, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    array-length v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/physicaloid/lib/framework/SerialCommunicator;->read([BI)I

    move-result v0

    .line 267
    .local v0, "retlen":I
    if-nez v0, :cond_0

    .line 276
    return-void

    .line 272
    :cond_0
    sget-object v2, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "return value : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->toHexStr([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readDelay()V
    .locals 2

    .prologue
    .line 280
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private returnUserMode()V
    .locals 3

    .prologue
    .line 234
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 235
    .local v0, "rbuf":[B
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->commandSwitchUserMode()V

    .line 236
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->readDelay()V

    .line 237
    iget-object v1, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->read([BI)I

    .line 238
    return-void
.end method

.method private toHexStr([BI)Ljava/lang/String;
    .locals 7
    .param p1, "b"    # [B
    .param p2, "length"    # I

    .prologue
    .line 286
    const-string v1, ""

    .line 287
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 290
    return-object v1

    .line 288
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%02x "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, p1, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public configuration(Ljava/io/InputStream;)Z
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 29
    if-nez p1, :cond_0

    const/4 v10, 0x0

    .line 193
    :goto_0
    return v10

    .line 30
    :cond_0
    const/4 v10, 0x1

    new-array v4, v10, [B

    .line 31
    .local v4, "rbuf":[B
    const/4 v6, 0x0

    .line 32
    .local v6, "retlen":I
    const/4 v5, 0x1

    .line 37
    .local v5, "readStatus":Z
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Configuration Step.1 : Switch user mode."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v10, 0xa

    if-lt v2, v10, :cond_1

    .line 64
    :goto_2
    if-nez v5, :cond_5

    const/4 v10, 0x0

    goto :goto_0

    .line 40
    :cond_1
    const/4 v5, 0x1

    .line 41
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->commandSwitchUserMode()V

    .line 43
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->readDelay()V

    .line 45
    iget-object v10, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    array-length v11, v4

    invoke-virtual {v10, v4, v11}, Lcom/physicaloid/lib/framework/SerialCommunicator;->read([BI)I

    move-result v6

    .line 47
    if-nez v6, :cond_3

    .line 48
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Configuration Fail : No response on switching user mode."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v5, 0x0

    .line 39
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    :cond_3
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "return value : 0x"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    aget-byte v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v10, 0x0

    aget-byte v10, v4, v10

    invoke-direct {p0, v10}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->checkAsMode(B)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 56
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Configuration Fail : It\'s not PS Mode.Please set the switch AS Mode to PS Mode"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v5, 0x0

    .line 58
    goto :goto_3

    .line 61
    :cond_4
    if-eqz v5, :cond_2

    goto :goto_2

    .line 69
    :cond_5
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Configuration Step.2 : Switch config mode."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v2, 0x0

    :goto_4
    const/16 v10, 0xa

    if-lt v2, v10, :cond_9

    .line 97
    :cond_6
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Configuration Step.3 : Start config."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v2, 0x0

    :goto_5
    const/16 v10, 0xa

    if-lt v2, v10, :cond_d

    .line 126
    :cond_7
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Configuration Step.4 : Send RBF file."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v7, 0x0

    .line 129
    .local v7, "totalBytes":I
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 136
    const/16 v10, 0x80

    new-array v0, v10, [B

    .line 138
    .local v0, "confBuf":[B
    const/4 v3, 0x0

    .line 139
    .local v3, "offset":I
    const/4 v8, 0x0

    .line 140
    .local v8, "writeSize":I
    const/4 v9, 0x0

    .line 141
    .local v9, "writtenSize":I
    :goto_6
    if-lt v3, v7, :cond_10

    .line 158
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "totalBytes : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", writeSize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", writtenSize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", offset : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->drainReadBuf()V

    .line 165
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Configuration Step.5 : Check completion sending RBF file."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v2, 0x0

    :goto_7
    const/16 v10, 0xa

    if-lt v2, v10, :cond_13

    .line 190
    :cond_8
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Configuration Step.6 : Change User mode."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->returnUserMode()V

    .line 193
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 71
    .end local v0    # "confBuf":[B
    .end local v3    # "offset":I
    .end local v7    # "totalBytes":I
    .end local v8    # "writeSize":I
    .end local v9    # "writtenSize":I
    :cond_9
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->commandSwitchConfigMode()V

    .line 73
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->readDelay()V

    .line 75
    iget-object v10, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    array-length v11, v4

    invoke-virtual {v10, v4, v11}, Lcom/physicaloid/lib/framework/SerialCommunicator;->read([BI)I

    move-result v6

    .line 76
    if-nez v6, :cond_b

    .line 77
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Configuration Fail : No response on switching config mode."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 81
    :cond_b
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "return value : 0x"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    aget-byte v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v10, 0x0

    aget-byte v10, v4, v10

    invoke-direct {p0, v10}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->checkNstatus(B)Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v10, 0x0

    aget-byte v10, v4, v10

    invoke-direct {p0, v10}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->checkConfDone(B)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 87
    :cond_c
    const/16 v10, 0x9

    if-ne v2, v10, :cond_a

    .line 88
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Configuration Fail : Check nSTATUS and CONF_DONE.Please retry."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->returnUserMode()V

    .line 90
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 99
    :cond_d
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->commandStartConfig()V

    .line 101
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->readDelay()V

    .line 103
    iget-object v10, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    array-length v11, v4

    invoke-virtual {v10, v4, v11}, Lcom/physicaloid/lib/framework/SerialCommunicator;->read([BI)I

    move-result v6

    .line 105
    if-nez v6, :cond_f

    .line 106
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Configuration Fail : No response on starting config."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 110
    :cond_f
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "return value : 0x"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    aget-byte v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v10, 0x0

    aget-byte v10, v4, v10

    invoke-direct {p0, v10}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->checkNstatus(B)Z

    move-result v10

    if-nez v10, :cond_7

    .line 116
    const/16 v10, 0x9

    if-ne v2, v10, :cond_e

    .line 117
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Configuration Fail : Check nSTATUS. Please retry."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->returnUserMode()V

    .line 119
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 130
    .restart local v7    # "totalBytes":I
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/IOException;
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Cannot get .rbf file\'s byte length."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->returnUserMode()V

    .line 133
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "confBuf":[B
    .restart local v3    # "offset":I
    .restart local v8    # "writeSize":I
    .restart local v9    # "writtenSize":I
    :cond_10
    iget-boolean v10, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mCanceled:Z

    if-eqz v10, :cond_11

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 143
    :cond_11
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "totalBytes : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", writeSize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", writtenSize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", offset : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sub-int v8, v7, v3

    .line 145
    const/16 v10, 0x80

    if-le v8, v10, :cond_12

    .line 146
    const/16 v8, 0x80

    .line 149
    :cond_12
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    new-instance v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;

    invoke-direct {v10}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;-><init>()V

    iget-object v11, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v10, v11, v0, v8}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;->writeWithEscape(Lcom/physicaloid/lib/framework/SerialCommunicator;[BI)I

    move-result v9

    .line 156
    add-int/2addr v3, v9

    goto/16 :goto_6

    .line 150
    :catch_1
    move-exception v1

    .line 151
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Cannot get .rbf data."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->returnUserMode()V

    .line 153
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 167
    .end local v1    # "e":Ljava/io/IOException;
    :cond_13
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->commandStopConfig()V

    .line 169
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->readDelay()V

    .line 171
    iget-object v10, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    array-length v11, v4

    invoke-virtual {v10, v4, v11}, Lcom/physicaloid/lib/framework/SerialCommunicator;->read([BI)I

    move-result v6

    .line 173
    if-nez v6, :cond_14

    .line 174
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    const-string v11, "Configuration Fail : No response on configuration done."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 178
    :cond_14
    const/4 v10, 0x0

    aget-byte v10, v4, v10

    invoke-direct {p0, v10}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->checkNstatus(B)Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v10, 0x0

    aget-byte v10, v4, v10

    invoke-direct {p0, v10}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->checkConfDone(B)Z

    move-result v10

    if-nez v10, :cond_8

    .line 179
    :cond_15
    sget-object v10, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Configuration Fail : Illegal response : 0x"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    aget-byte v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->returnUserMode()V

    .line 181
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

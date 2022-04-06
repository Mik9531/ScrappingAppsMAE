.class public Lcom/physicaloid/lib/programmer/avr/Stk500V2;
.super Lcom/physicaloid/lib/programmer/avr/UploadProtocol;
.source "Stk500V2.java"


# static fields
.field private static final ANSWER_CKSUM_ERROR:I = 0xb0

.field private static final CMD_CHECK_TARGET_CONNECTION:B = 0xdt

.field private static final CMD_CHIP_ERASE_ISP:B = 0x12t

.field private static final CMD_ENTER_PROGMODE_ISP:B = 0x10t

.field private static final CMD_FIRMWARE_UPGRADE:B = 0x7t

.field private static final CMD_GET_PARAMETER:B = 0x3t

.field private static final CMD_LEAVE_PROGMODE_ISP:B = 0x11t

.field private static final CMD_LOAD_ADDRESS:B = 0x6t

.field private static final CMD_LOAD_EC_ID_TABLE:B = 0xft

.field private static final CMD_LOAD_RC_ID_TABLE:B = 0xet

.field private static final CMD_OSCCAL:B = 0x5t

.field private static final CMD_PROGRAM_EEPROM_ISP:B = 0x15t

.field private static final CMD_PROGRAM_FLASH_ISP:B = 0x13t

.field private static final CMD_PROGRAM_FUSE_ISP:B = 0x17t

.field private static final CMD_PROGRAM_LOCK_ISP:B = 0x19t

.field private static final CMD_READ_EEPROM_ISP:B = 0x16t

.field private static final CMD_READ_FLASH_ISP:B = 0x14t

.field private static final CMD_READ_FUSE_ISP:B = 0x18t

.field private static final CMD_READ_LOCK_ISP:B = 0x1at

.field private static final CMD_READ_OSCCAL_ISP:B = 0x1ct

.field private static final CMD_READ_SIGNATURE_ISP:B = 0x1bt

.field private static final CMD_SET_DEVICE_PARAMETERS:B = 0x4t

.field private static final CMD_SET_PARAMETER:B = 0x2t

.field private static final CMD_SIGN_ON:B = 0x1t

.field private static final CMD_SPI_MULTI:B = 0x1dt

.field private static final CMD_XPROG:I = 0x50

.field private static final CMD_XPROG_SETMODE:I = 0x51

.field private static final DEBUG_NOT_SHOW:Z = true

.field private static final DEBUG_SHOW_COMMAND:Z = false

.field private static final DEBUG_SHOW_COMMAND_STATUS:Z = false

.field private static final DEBUG_SHOW_DRAIN:Z = true

.field private static final DEBUG_SHOW_GETSYNC:Z = false

.field private static final DEBUG_SHOW_READ:Z = false

.field private static final DEBUG_SHOW_RECV:Z = false

.field private static final DEBUG_SHOW_WRITE:Z = false

.field private static final MESSAGE_START:B = 0x1bt

.field private static final PGMTYPE_AVRISP:I = 0x2

.field private static final PGMTYPE_AVRISP_MKII:I = 0x3

.field private static final PGMTYPE_JTAGICE_MKII:I = 0x4

.field private static final PGMTYPE_STK500:I = 0x1

.field private static final PGMTYPE_STK600:I = 0x5

.field private static final PGMTYPE_UNKNOWN:I = 0x0

.field private static final PROGRAMMER_NAME:[Ljava/lang/String;

.field private static final RETRIES:I = 0x5

.field private static final SERIAL_TIMEOUT:I = 0x2

.field private static final STATUS_AREF_ERROR:I = 0x0

.field private static final STATUS_CKSUM_ERROR:I = 0xc1

.field private static final STATUS_CMD_FAILED:I = 0xc0

.field private static final STATUS_CMD_ILLEGAL_PARAMETER:I = 0xca

.field private static final STATUS_CMD_OK:I = 0x0

.field private static final STATUS_CMD_TOUT:I = 0x80

.field private static final STATUS_CMD_UNKNOWN:I = 0xc9

.field private static final STATUS_CONN_FAIL_MOSI:I = 0x1

.field private static final STATUS_CONN_FAIL_RST:I = 0x2

.field private static final STATUS_CONN_FAIL_SCK:I = 0x4

.field private static final STATUS_ISP_READY:I = 0x0

.field private static final STATUS_POWER_SURGE:I = 0x7

.field private static final STATUS_PROGMODE:I = 0x6

.field private static final STATUS_RC_CARD_ERROR:I = 0x5

.field private static final STATUS_RDY_BSY_TOUT:I = 0x81

.field private static final STATUS_SET_PARAM_MISSING:I = 0x82

.field private static final STATUS_TGT_NOT_DETECTED:I = 0x10

.field private static final STATUS_TGT_REVERSE_INSERTED:I = 0x20

.field private static final STATUS_VTG_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN:B = 0xet

.field private static final UINT_MAX:I = 0xffff

.field private static final XPRG_ERR_COLLISION:I = 0x2

.field private static final XPRG_ERR_FAILED:I = 0x1

.field private static final XPRG_ERR_OK:I = 0x0

.field private static final XPRG_ERR_TIMEOUT:I = 0x3

.field private static final sCSUM:I = 0x7

.field private static final sDATA:I = 0x6

.field private static final sDONE:I = 0x8

.field private static final sINIT:I = 0x0

.field private static final sSEQNUM:I = 0x2

.field private static final sSIZE1:I = 0x3

.field private static final sSIZE2:I = 0x4

.field private static final sSTART:I = 0x1

.field private static final sTOKEN:I = 0x5


# instance fields
.field private mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

.field private mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

.field private mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

.field private mCommandSeqNum:I

.field private mProgrammerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const-class v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    .line 386
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 387
    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 388
    const-string v2, "STK500"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 389
    const-string v2, "AVRISP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 390
    const-string v2, "AVRISP mkII"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 391
    const-string v2, "JTAG ICE mkII"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 392
    const-string v2, "STK600"

    aput-object v2, v0, v1

    .line 385
    sput-object v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->PROGRAMMER_NAME:[Ljava/lang/String;

    .line 730
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;-><init>()V

    .line 181
    const/4 v0, 0x1

    iput v0, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mCommandSeqNum:I

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mProgrammerType:I

    .line 188
    return-void
.end method

.method private command([BII)I
    .locals 11
    .param p1, "buf"    # [B
    .param p2, "len"    # I
    .param p3, "maxlen"    # I

    .prologue
    const/4 v5, 0x2

    const/16 v10, 0x51

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 253
    const/4 v4, 0x0

    .line 255
    .local v4, "tries":I
    const/4 v0, 0x1

    .line 259
    .local v0, "bRetry":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    move v3, v7

    .line 372
    :cond_1
    :goto_1
    return v3

    .line 260
    :cond_2
    const/4 v0, 0x0

    .line 261
    add-int/lit8 v4, v4, 0x1

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->send([BI)I

    .line 266
    invoke-virtual {p0, p1, p3}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->recv([BI)I

    move-result v3

    .line 273
    .local v3, "status":I
    if-lez v3, :cond_b

    .line 277
    if-ge v3, v5, :cond_3

    .line 278
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    const-string v7, "STK500V2.command(): short reply\n"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 279
    goto :goto_1

    .line 281
    :cond_3
    aget-byte v8, p1, v7

    if-eq v8, v10, :cond_4

    aget-byte v8, p1, v7

    const/16 v9, 0x50

    if-ne v8, v9, :cond_8

    .line 292
    :cond_4
    aget-byte v8, p1, v7

    if-ne v8, v10, :cond_5

    .line 294
    .local v1, "i":I
    :goto_2
    aget-byte v5, p1, v1

    if-eqz v5, :cond_7

    .line 295
    aget-byte v5, p1, v1

    packed-switch v5, :pswitch_data_0

    .line 306
    const-string v2, "Unknown"

    .line 309
    .local v2, "msg":Ljava/lang/String;
    :goto_3
    sget-object v8, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v5, "STK500V2.command(): error in "

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    aget-byte v5, p1, v7

    if-ne v5, v10, :cond_6

    const-string v5, "CMD_XPROG_SETMODE"

    :goto_4
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 311
    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 309
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 312
    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_5
    move v1, v5

    .line 292
    goto :goto_2

    .line 297
    .restart local v1    # "i":I
    :pswitch_0
    const-string v2, "Failed"

    .line 298
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_3

    .line 300
    .end local v2    # "msg":Ljava/lang/String;
    :pswitch_1
    const-string v2, "Collision"

    .line 301
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_3

    .line 303
    .end local v2    # "msg":Ljava/lang/String;
    :pswitch_2
    const-string v2, "Timeout"

    .line 304
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_3

    .line 310
    :cond_6
    const-string v5, "CMD_XPROG"

    goto :goto_4

    .end local v2    # "msg":Ljava/lang/String;
    :cond_7
    move v3, v7

    .line 314
    goto :goto_1

    .line 319
    .end local v1    # "i":I
    :cond_8
    aget-byte v5, p1, v1

    const/16 v7, 0x80

    if-lt v5, v7, :cond_9

    aget-byte v5, p1, v1

    const/16 v7, 0xa0

    if-ge v5, v7, :cond_9

    .line 322
    aget-byte v5, p1, v1

    packed-switch v5, :pswitch_data_1

    .line 336
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "unknown, code "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v7, p1, v1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_6
    move v3, v6

    .line 351
    goto/16 :goto_1

    .line 324
    :pswitch_3
    const-string v2, "Command timed out"

    .line 325
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_6

    .line 328
    .end local v2    # "msg":Ljava/lang/String;
    :pswitch_4
    const-string v2, "Sampling of the RDY/nBSY pin timed out"

    .line 329
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_6

    .line 332
    .end local v2    # "msg":Ljava/lang/String;
    :pswitch_5
    const-string v5, "The `Set Device Parameters\' have not been executed in advance of this command"

    goto :goto_5

    .line 342
    :cond_9
    aget-byte v5, p1, v1

    if-eqz v5, :cond_1

    .line 344
    aget-byte v5, p1, v1

    const/16 v7, -0x40

    if-ne v5, v7, :cond_a

    .line 345
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    const-string v7, "STK500V2.command(): command failed"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 347
    :cond_a
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    .line 348
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "STK500V2.command(): unknown status "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    aget-byte v8, p1, v1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 348
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 347
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 356
    :cond_b
    invoke-virtual {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->getsync()I

    move-result v3

    .line 357
    if-eqz v3, :cond_0

    .line 358
    const/4 v8, 0x5

    if-le v4, v8, :cond_c

    .line 359
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    .line 360
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "STK500V2.command(): failed miserably to execute command "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    aget-byte v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 360
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 359
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 362
    goto/16 :goto_1

    .line 364
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 322
    :pswitch_data_1
    .packed-switch -0x80
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private compareByteArrayWithString([BILjava/lang/String;)Z
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "bufPos"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 378
    .local v0, "tmpbuf":[B
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const/4 v1, 0x1

    .line 382
    :cond_0
    return v1
.end method

.method private drain()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 207
    new-array v0, v10, [B

    .line 208
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 210
    .local v1, "retval":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 212
    .local v4, "startTime":J
    :cond_0
    iget-object v6, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v6, v0, v10}, Lcom/physicaloid/lib/framework/SerialCommunicator;->read([BI)I

    move-result v1

    .line 213
    if-lez v1, :cond_1

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 216
    sget-object v6, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "drain("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-byte v8, v0, v8

    invoke-direct {p0, v8}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->toHexStr(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 220
    .local v2, "endTime":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0xfa

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 222
    return v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mCommandSeqNum:I

    .line 202
    return-void
.end method

.method private read([BI)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    .prologue
    .line 932
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v1, p1, p2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->read([BI)I

    move-result v0

    .line 942
    .local v0, "retval":I
    return v0
.end method

.method private send([BI)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 226
    const/16 v2, 0x119

    new-array v0, v2, [B

    .line 235
    .local v0, "buf":[B
    const/16 v2, 0x1b

    aput-byte v2, v0, v4

    .line 236
    const/4 v2, 0x1

    iget v3, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mCommandSeqNum:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 237
    const/4 v2, 0x2

    div-int/lit16 v3, p2, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 238
    const/4 v2, 0x3

    rem-int/lit16 v3, p2, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 239
    const/4 v2, 0x4

    const/16 v3, 0xe

    aput-byte v3, v0, v2

    .line 240
    const/4 v2, 0x5

    invoke-static {p1, v4, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    add-int/lit8 v2, p2, 0x5

    aput-byte v4, v0, v2

    .line 244
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, p2, 0x5

    if-lt v1, v2, :cond_0

    .line 247
    add-int/lit8 v2, p2, 0x6

    invoke-direct {p0, v0, v2}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->write([BI)I

    move-result v2

    return v2

    .line 245
    :cond_0
    add-int/lit8 v2, p2, 0x5

    aget-byte v3, v0, v2

    aget-byte v4, v0, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setDtrRts(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 957
    if-eqz p1, :cond_0

    .line 958
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, v2, v2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->setDtrRts(ZZ)Z

    .line 962
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, v1, v1}, Lcom/physicaloid/lib/framework/SerialCommunicator;->setDtrRts(ZZ)Z

    goto :goto_0
.end method

.method private toHexStr(B)Ljava/lang/String;
    .locals 4
    .param p1, "b"    # B

    .prologue
    .line 965
    const-string v0, "0x%02x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toHexStr([BI)Ljava/lang/String;
    .locals 7
    .param p1, "b"    # [B
    .param p2, "length"    # I

    .prologue
    .line 969
    const-string v1, ""

    .line 970
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 973
    return-object v1

    .line 971
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "0x%02x "

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

    .line 970
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private write([BI)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    .prologue
    .line 947
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v1, p1, p2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->write([BI)I

    move-result v0

    .line 953
    .local v0, "retval":I
    return v0
.end method


# virtual methods
.method avr_set_bits(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;[B)I
    .locals 7
    .param p1, "op"    # Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;
    .param p2, "cmd"    # [B

    .prologue
    const/4 v6, 0x1

    .line 740
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x20

    if-lt v1, v4, :cond_0

    .line 752
    const/4 v4, 0x0

    return v4

    .line 741
    :cond_0
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->type:I

    if-ne v4, v6, :cond_1

    .line 742
    div-int/lit8 v4, v1, 0x8

    rsub-int/lit8 v2, v4, 0x3

    .line 743
    .local v2, "j":I
    rem-int/lit8 v0, v1, 0x8

    .line 744
    .local v0, "bit":I
    shl-int v4, v6, v0

    int-to-byte v3, v4

    .line 745
    .local v3, "mask":B
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->value:I

    if-eqz v4, :cond_2

    .line 746
    aget-byte v4, p2, v2

    or-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    .line 740
    .end local v0    # "bit":I
    .end local v2    # "j":I
    .end local v3    # "mask":B
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 748
    .restart local v0    # "bit":I
    .restart local v2    # "j":I
    .restart local v3    # "mask":B
    :cond_2
    aget-byte v4, p2, v2

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    goto :goto_1
.end method

.method public check_sig_bytes()I
    .locals 1

    .prologue
    .line 979
    const/4 v0, 0x0

    return v0
.end method

.method public disable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 984
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 986
    .local v0, "buf":[B
    const/4 v2, 0x0

    const/16 v3, 0x11

    aput-byte v3, v0, v2

    .line 987
    aput-byte v4, v0, v4

    .line 988
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 989
    const/4 v2, 0x3

    array-length v3, v0

    invoke-direct {p0, v0, v2, v3}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->command([BII)I

    move-result v1

    .line 990
    .local v1, "result":I
    if-gez v1, :cond_0

    .line 991
    sget-object v2, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    const-string v3, "STK500V2.disable(): failed to leave programming mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method getsync()I
    .locals 15

    .prologue
    const/4 v7, -0x1

    const/4 v14, 0x5

    const/4 v8, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x1

    .line 531
    const/4 v6, 0x0

    .line 532
    .local v6, "tries":I
    new-array v1, v12, [B

    .line 533
    .local v1, "buf":[B
    const/16 v9, 0x20

    new-array v2, v9, [B

    .line 535
    .local v2, "resp":[B
    const/4 v0, 0x1

    .line 541
    .local v0, "bRetry":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    move v7, v8

    .line 619
    :goto_1
    return v7

    .line 542
    :cond_1
    const/4 v0, 0x0

    .line 543
    add-int/lit8 v6, v6, 0x1

    .line 546
    aput-byte v12, v1, v8

    .line 547
    invoke-direct {p0, v1, v12}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->send([BI)I

    .line 550
    array-length v9, v2

    invoke-virtual {p0, v2, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->recv([BI)I

    move-result v4

    .line 553
    .local v4, "status":I
    if-lez v4, :cond_0

    .line 554
    aget-byte v9, v2, v8

    if-ne v9, v12, :cond_7

    aget-byte v9, v2, v12

    if-nez v9, :cond_7

    .line 555
    if-le v4, v13, :cond_7

    .line 557
    const/4 v9, 0x2

    aget-byte v3, v2, v9

    .line 558
    .local v3, "siglen":I
    const-string v9, "STK500_2"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_2

    .line 559
    const-string v9, "STK500_2"

    invoke-direct {p0, v2, v13, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->compareByteArrayWithString([BILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 560
    iput v12, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mProgrammerType:I

    .line 589
    :goto_2
    if-le v6, v14, :cond_6

    .line 590
    sget-object v7, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    .line 591
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "STK500V2.getsync(): can\'t communicate with device: resp="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    aget-byte v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 591
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 590
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v7, -0x6

    goto :goto_1

    .line 561
    :cond_2
    const-string v9, "AVRISP_2"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_3

    .line 562
    const-string v9, "AVRISP_2"

    invoke-direct {p0, v2, v13, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->compareByteArrayWithString([BILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 563
    const/4 v9, 0x2

    iput v9, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mProgrammerType:I

    goto :goto_2

    .line 564
    :cond_3
    const-string v9, "AVRISP_MK2"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_4

    .line 565
    const-string v9, "AVRISP_MK2"

    invoke-direct {p0, v2, v13, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->compareByteArrayWithString([BILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 566
    iput v13, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mProgrammerType:I

    goto :goto_2

    .line 567
    :cond_4
    const-string v9, "STK600"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_5

    .line 568
    const-string v9, "STK600"

    invoke-direct {p0, v2, v13, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->compareByteArrayWithString([BILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 569
    iput v14, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mProgrammerType:I

    goto :goto_2

    .line 571
    :cond_5
    add-int/lit8 v9, v3, 0x3

    aput-byte v8, v2, v9

    .line 572
    new-array v5, v3, [B

    .line 573
    .local v5, "tmpbuf":[B
    invoke-static {v1, v13, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    iput v12, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mProgrammerType:I

    goto :goto_2

    .line 595
    .end local v5    # "tmpbuf":[B
    :cond_6
    const/4 v0, 0x1

    .line 600
    goto/16 :goto_0

    .end local v3    # "siglen":I
    :cond_7
    if-ne v4, v7, :cond_9

    .line 601
    if-le v6, v14, :cond_8

    .line 602
    sget-object v8, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    const-string v9, "STK500V2.getsync(): timeout communicating with programmer"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 605
    :cond_8
    const/4 v0, 0x1

    .line 609
    goto/16 :goto_0

    .line 610
    :cond_9
    if-le v6, v14, :cond_a

    .line 611
    sget-object v9, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "STK500V2.getsync(): error communicating with programmer: ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 611
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 614
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public initialize()I
    .locals 1

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->program_enable()I

    move-result v0

    return v0
.end method

.method is_page_empty(II[B)Z
    .locals 3
    .param p1, "address"    # I
    .param p2, "page_size"    # I
    .param p3, "buf"    # [B

    .prologue
    .line 899
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 906
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 900
    :cond_0
    add-int v1, p1, v0

    aget-byte v1, p3, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    .line 902
    const/4 v1, 0x0

    goto :goto_1

    .line 899
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method loadaddr(I)I
    .locals 5
    .param p1, "addr"    # I

    .prologue
    const/4 v2, 0x0

    .line 910
    const/16 v3, 0x10

    new-array v0, v3, [B

    .line 915
    .local v0, "buf":[B
    const/4 v3, 0x6

    aput-byte v3, v0, v2

    .line 916
    const/4 v3, 0x1

    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 917
    const/4 v3, 0x2

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 918
    const/4 v3, 0x3

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 919
    const/4 v3, 0x4

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 921
    const/4 v3, 0x5

    array-length v4, v0

    invoke-direct {p0, v0, v3, v4}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->command([BII)I

    move-result v1

    .line 923
    .local v1, "result":I
    if-gez v1, :cond_0

    .line 924
    sget-object v2, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    const-string v3, "STK500V2.loadaddr(): failed to set load address"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v2, -0x1

    .line 927
    :cond_0
    return v2
.end method

.method public open()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 623
    invoke-direct {p0, v0}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->setDtrRts(Z)V

    .line 624
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->setDtrRts(Z)V

    .line 626
    const-wide/16 v2, 0x32

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 628
    :goto_1
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->drain()I

    .line 629
    invoke-virtual {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->getsync()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, -0x1

    .line 630
    :cond_0
    return v0

    .line 624
    :catch_0
    move-exception v1

    goto :goto_0

    .line 626
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public paged_write()I
    .locals 17

    .prologue
    .line 762
    const/16 v14, 0xa

    new-array v6, v14, [B

    .line 763
    .local v6, "commandbuf":[B
    const/16 v14, 0x10a

    new-array v4, v14, [B

    .line 764
    .local v4, "buf":[B
    const/4 v14, 0x4

    new-array v5, v14, [B

    .line 768
    .local v5, "cmds":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget v9, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->page_size:I

    .line 769
    .local v9, "page_size":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->buf:[B

    array-length v8, v14

    .line 773
    .local v8, "n_bytes":I
    if-nez v9, :cond_0

    const/16 v9, 0x100

    .line 775
    :cond_0
    const/4 v2, 0x0

    .line 776
    .local v2, "addrshift":I
    const/4 v12, 0x0

    .line 779
    .local v12, "use_ext_addr":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->desc:Ljava/lang/String;

    const-string v15, "flash"

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_2

    .line 780
    const/4 v2, 0x1

    .line 781
    const/4 v14, 0x0

    const/16 v15, 0x13

    aput-byte v15, v6, v14

    .line 788
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/16 v15, 0x8

    aget-object v14, v14, v15

    if-eqz v14, :cond_1

    .line 789
    const/high16 v12, -0x80000000

    .line 794
    :cond_1
    :goto_0
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget v15, v15, Lcom/physicaloid/lib/programmer/avr/AVRMem;->delay:I

    int-to-byte v15, v15

    aput-byte v15, v6, v14

    .line 796
    if-nez v2, :cond_3

    .line 797
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/4 v15, 0x1

    aget-object v13, v14, v15

    .line 798
    .local v13, "wop":Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/4 v15, 0x0

    aget-object v11, v14, v15

    .line 805
    .local v11, "rop":Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->mode:I

    and-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 806
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget v15, v15, Lcom/physicaloid/lib/programmer/avr/AVRMem;->mode:I

    or-int/lit16 v15, v15, 0x80

    int-to-byte v15, v15

    aput-byte v15, v6, v14

    .line 808
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/4 v15, 0x6

    aget-object v14, v14, v15

    if-nez v14, :cond_4

    .line 809
    sget-object v14, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "STK500V2.paged_write: loadpage instruction not defined for part \""

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->desc:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v8, -0x1

    .line 893
    .end local v8    # "n_bytes":I
    :goto_2
    return v8

    .line 791
    .end local v11    # "rop":Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;
    .end local v13    # "wop":Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;
    .restart local v8    # "n_bytes":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->desc:Ljava/lang/String;

    const-string v15, "eeprom"

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_1

    .line 792
    const/4 v14, 0x0

    const/16 v15, 0x15

    aput-byte v15, v6, v14

    goto :goto_0

    .line 800
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/4 v15, 0x4

    aget-object v13, v14, v15

    .line 801
    .restart local v13    # "wop":Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/4 v15, 0x2

    aget-object v11, v14, v15

    .restart local v11    # "rop":Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;
    goto :goto_1

    .line 812
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/4 v15, 0x6

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->avr_set_bits(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;[B)I

    .line 813
    const/4 v14, 0x5

    const/4 v15, 0x0

    aget-byte v15, v5, v15

    aput-byte v15, v6, v14

    .line 815
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/16 v15, 0x9

    aget-object v14, v14, v15

    if-nez v14, :cond_5

    .line 816
    sget-object v14, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "STK500V2.paged_write: write page instruction not defined for part \""

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->desc:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v8, -0x1

    goto :goto_2

    .line 819
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/16 v15, 0x9

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->avr_set_bits(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;[B)I

    .line 820
    const/4 v14, 0x6

    const/4 v15, 0x0

    aget-byte v15, v5, v15

    aput-byte v15, v6, v14

    .line 836
    :goto_3
    if-nez v11, :cond_8

    .line 837
    sget-object v14, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "STK500V2.paged_write: read instruction not defined for part \""

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->desc:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v8, -0x1

    goto/16 :goto_2

    .line 824
    :cond_6
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget v15, v15, Lcom/physicaloid/lib/programmer/avr/AVRMem;->mode:I

    or-int/lit16 v15, v15, 0x80

    int-to-byte v15, v15

    aput-byte v15, v6, v14

    .line 826
    if-nez v13, :cond_7

    .line 827
    sget-object v14, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "STK500V2.paged_write: write instruction not defined for part \""

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->desc:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/4 v8, -0x1

    goto/16 :goto_2

    .line 830
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->avr_set_bits(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;[B)I

    .line 831
    const/4 v14, 0x5

    const/4 v15, 0x0

    aget-byte v15, v5, v15

    aput-byte v15, v6, v14

    .line 832
    const/4 v14, 0x6

    const/4 v15, 0x0

    aput-byte v15, v6, v14

    goto :goto_3

    .line 840
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->avr_set_bits(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;[B)I

    .line 841
    const/4 v14, 0x7

    const/4 v15, 0x0

    aget-byte v15, v5, v15

    aput-byte v15, v6, v14

    .line 843
    const/16 v14, 0x8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v15, v15, Lcom/physicaloid/lib/programmer/avr/AVRMem;->readback:[B

    const/16 v16, 0x0

    aget-byte v15, v15, v16

    aput-byte v15, v6, v14

    .line 844
    const/16 v14, 0x9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v15, v15, Lcom/physicaloid/lib/programmer/avr/AVRMem;->readback:[B

    const/16 v16, 0x1

    aget-byte v15, v15, v16

    aput-byte v15, v6, v14

    .line 846
    const v7, 0xffff

    .line 848
    .local v7, "last_addr":I
    const/4 v1, 0x0

    .local v1, "addr":I
    :goto_4
    if-lt v1, v8, :cond_9

    .line 891
    mul-int/lit8 v14, v1, 0x64

    div-int/2addr v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->report_progress(I)V

    goto/16 :goto_2

    .line 849
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->report_cancel()V

    .line 851
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 854
    :cond_a
    mul-int/lit8 v14, v1, 0x64

    div-int/2addr v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->report_progress(I)V

    .line 856
    sub-int v14, v8, v1

    if-ge v14, v9, :cond_c

    .line 857
    sub-int v3, v8, v1

    .line 865
    .local v3, "block_size":I
    :goto_5
    const/4 v14, 0x0

    aget-byte v14, v6, v14

    const/16 v15, 0x13

    if-ne v14, v15, :cond_d

    .line 866
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->buf:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3, v14}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->is_page_empty(II[B)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 848
    :cond_b
    add-int/2addr v1, v9

    goto :goto_4

    .line 859
    .end local v3    # "block_size":I
    :cond_c
    move v3, v9

    .restart local v3    # "block_size":I
    goto :goto_5

    .line 871
    :cond_d
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v6, v14, v4, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    const/4 v14, 0x1

    shr-int/lit8 v15, v3, 0x8

    int-to-byte v15, v15

    aput-byte v15, v4, v14

    .line 874
    const/4 v14, 0x2

    and-int/lit16 v15, v3, 0xff

    int-to-byte v15, v15

    aput-byte v15, v4, v14

    .line 876
    const v14, 0xffff

    if-eq v7, v14, :cond_e

    add-int v14, v7, v3

    if-eq v14, v1, :cond_f

    .line 877
    :cond_e
    shr-int v14, v1, v2

    or-int/2addr v14, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->loadaddr(I)I

    move-result v14

    if-gez v14, :cond_f

    .line 878
    const/4 v8, -0x1

    goto/16 :goto_2

    .line 880
    :cond_f
    move v7, v1

    .line 882
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v14, v14, Lcom/physicaloid/lib/programmer/avr/AVRMem;->buf:[B

    const/16 v15, 0xa

    invoke-static {v14, v1, v4, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 884
    add-int/lit8 v14, v3, 0xa

    array-length v15, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->command([BII)I

    move-result v10

    .line 885
    .local v10, "result":I
    if-gez v10, :cond_b

    .line 886
    sget-object v14, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    const-string v15, "STK500V2.paged_write: write command failed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/4 v8, -0x1

    goto/16 :goto_2
.end method

.method public program_enable()I
    .locals 5

    .prologue
    const/16 v2, 0x10

    const/4 v4, 0x0

    .line 666
    new-array v0, v2, [B

    .line 684
    .local v0, "buf":[B
    aput-byte v2, v0, v4

    .line 685
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-byte v3, v3, Lcom/physicaloid/lib/programmer/avr/AvrConf;->timeout:B

    aput-byte v3, v0, v2

    .line 686
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-byte v3, v3, Lcom/physicaloid/lib/programmer/avr/AvrConf;->stabdelay:B

    aput-byte v3, v0, v2

    .line 687
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-byte v3, v3, Lcom/physicaloid/lib/programmer/avr/AvrConf;->cmdexedelay:B

    aput-byte v3, v0, v2

    .line 688
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-byte v3, v3, Lcom/physicaloid/lib/programmer/avr/AvrConf;->synchloops:B

    aput-byte v3, v0, v2

    .line 689
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-byte v3, v3, Lcom/physicaloid/lib/programmer/avr/AvrConf;->bytedelay:B

    aput-byte v3, v0, v2

    .line 690
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-byte v3, v3, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pollvalue:B

    aput-byte v3, v0, v2

    .line 691
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-byte v3, v3, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pollindex:B

    aput-byte v3, v0, v2

    .line 696
    const/16 v2, 0x8

    const/16 v3, -0x54

    aput-byte v3, v0, v2

    .line 697
    const/16 v2, 0x9

    const/16 v3, 0x53

    aput-byte v3, v0, v2

    .line 698
    const/16 v2, 0xa

    aput-byte v4, v0, v2

    .line 699
    const/16 v2, 0xb

    aput-byte v4, v0, v2

    .line 701
    const/16 v2, 0xc

    array-length v3, v0

    invoke-direct {p0, v0, v2, v3}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->command([BII)I

    move-result v1

    .line 727
    .local v1, "rv":I
    return v1
.end method

.method recv([BI)I
    .locals 18
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    .prologue
    .line 409
    const/4 v6, 0x1

    .line 410
    .local v6, "state":I
    const/4 v5, 0x0

    .line 411
    .local v5, "msglen":I
    const/4 v4, 0x0

    .line 412
    .local v4, "curlen":I
    const/4 v7, 0x1

    new-array v2, v7, [B

    .line 413
    .local v2, "c":[B
    const/4 v7, 0x0

    const/4 v14, 0x0

    aput-byte v14, v2, v7

    .line 414
    const/4 v3, 0x0

    .line 416
    .local v3, "checksum":B
    const-wide/16 v8, 0x2

    .line 428
    .local v8, "timeoutval":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 430
    .local v12, "tstart":J
    :cond_0
    :goto_0
    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 527
    add-int/lit8 v7, v5, 0x6

    :goto_1
    return v7

    .line 431
    :cond_1
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->read([BI)I

    move-result v7

    if-gtz v7, :cond_2

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 433
    .local v10, "tnow":J
    sub-long v14, v10, v12

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    cmp-long v7, v14, v8

    if-lez v7, :cond_0

    .line 435
    sget-object v7, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    const-string v14, "STK500V2.recv(): timeout"

    invoke-static {v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v7, -0x1

    goto :goto_1

    .line 441
    .end local v10    # "tnow":J
    :cond_2
    const/4 v7, 0x0

    aget-byte v7, v2, v7

    xor-int/2addr v7, v3

    int-to-byte v3, v7

    .line 443
    packed-switch v6, :pswitch_data_0

    .line 522
    sget-object v7, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    const-string v14, "STK500V2.recv(): unknown state"

    invoke-static {v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v7, -0x5

    goto :goto_1

    .line 447
    :pswitch_0
    const/4 v7, 0x0

    aget-byte v7, v2, v7

    const/16 v14, 0x1b

    if-ne v7, v14, :cond_0

    .line 449
    const/16 v3, 0x1b

    .line 450
    const/4 v6, 0x2

    .line 454
    goto :goto_0

    .line 459
    :pswitch_1
    const/4 v7, 0x0

    aget-byte v7, v2, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mCommandSeqNum:I

    if-ne v7, v14, :cond_3

    .line 461
    const/4 v6, 0x3

    .line 462
    move-object/from16 v0, p0

    iget v7, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mCommandSeqNum:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mCommandSeqNum:I

    goto :goto_0

    .line 465
    :cond_3
    const/4 v6, 0x1

    .line 467
    goto :goto_0

    .line 471
    :pswitch_2
    const/4 v7, 0x0

    aget-byte v7, v2, v7

    mul-int/lit16 v5, v7, 0x100

    .line 472
    const/4 v6, 0x4

    .line 473
    goto :goto_0

    .line 477
    :pswitch_3
    const/4 v7, 0x0

    aget-byte v7, v2, v7

    add-int/2addr v5, v7

    .line 479
    const/4 v6, 0x5

    .line 480
    goto :goto_0

    .line 483
    :pswitch_4
    const/4 v7, 0x0

    aget-byte v7, v2, v7

    const/16 v14, 0xe

    if-ne v7, v14, :cond_4

    .line 485
    const/4 v6, 0x6

    .line 486
    goto :goto_0

    .line 488
    :cond_4
    const/4 v6, 0x1

    .line 490
    goto :goto_0

    .line 494
    :pswitch_5
    move/from16 v0, p2

    if-ge v4, v0, :cond_5

    .line 495
    const/4 v7, 0x0

    aget-byte v7, v2, v7

    aput-byte v7, p1, v4

    .line 501
    if-nez v4, :cond_6

    const/4 v7, 0x0

    aget-byte v7, p1, v7

    const/16 v14, 0xb0

    if-ne v7, v14, :cond_6

    .line 502
    sget-object v7, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    const-string v14, "STK500V2.recv(): previous packet sent with wrong checksum"

    invoke-static {v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v7, -0x3

    goto/16 :goto_1

    .line 497
    :cond_5
    sget-object v7, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "STK500V2.recv(): buffer too small, received "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 498
    const-string v15, " byte into "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " byte buffer"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 497
    invoke-static {v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v7, -0x2

    goto/16 :goto_1

    .line 505
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 506
    if-ne v4, v5, :cond_0

    .line 507
    const/4 v6, 0x7

    .line 509
    goto/16 :goto_0

    .line 513
    :pswitch_6
    if-nez v3, :cond_7

    .line 514
    const/16 v6, 0x8

    .line 515
    goto/16 :goto_0

    .line 516
    :cond_7
    const/4 v6, 0x1

    .line 517
    sget-object v7, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->TAG:Ljava/lang/String;

    const-string v14, "STK500V2.recv(): checksum error"

    invoke-static {v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v7, -0x4

    goto/16 :goto_1

    .line 443
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setConfig(Lcom/physicaloid/lib/programmer/avr/AvrConf;Lcom/physicaloid/lib/programmer/avr/AVRMem;)V
    .locals 0
    .param p1, "avrConf"    # Lcom/physicaloid/lib/programmer/avr/AvrConf;
    .param p2, "avrMem"    # Lcom/physicaloid/lib/programmer/avr/AVRMem;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    .line 196
    iput-object p2, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    .line 197
    return-void
.end method

.method public setSerial(Lcom/physicaloid/lib/framework/SerialCommunicator;)V
    .locals 0
    .param p1, "comm"    # Lcom/physicaloid/lib/framework/SerialCommunicator;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/physicaloid/lib/programmer/avr/Stk500V2;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    .line 192
    return-void
.end method

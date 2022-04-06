.class public Lcom/physicaloid/lib/programmer/avr/Stk500;
.super Lcom/physicaloid/lib/programmer/avr/UploadProtocol;
.source "Stk500.java"


# static fields
.field private static final DEBUG_NOT_SHOW:Z = true

.field private static final DEBUG_SHOW_DRAIN:Z

.field private static final DEBUG_SHOW_DUMP_LOGE:Z

.field private static final DEBUG_SHOW_RECV:Z

.field private static final DEBUG_SHOW_SEND:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

.field mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

.field mCanceled:Z

.field mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    const-class v0, Lcom/physicaloid/lib/programmer/avr/Stk500;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;-><init>()V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mCanceled:Z

    .line 223
    return-void
.end method

.method private drain()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 280
    new-array v0, v10, [B

    .line 281
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 283
    .local v1, "retval":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 285
    .local v4, "startTime":J
    :cond_0
    iget-object v6, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v6, v0, v10}, Lcom/physicaloid/lib/framework/SerialCommunicator;->read([BI)I

    move-result v1

    .line 286
    if-lez v1, :cond_1

    .line 292
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 293
    .local v2, "endTime":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 295
    return v1
.end method

.method private dumpLogE([B)V
    .locals 0
    .param p1, "buf"    # [B

    .prologue
    .line 339
    return-void
.end method

.method private getparm(B[I)I
    .locals 11
    .param p1, "parm"    # B
    .param p2, "value"    # [I

    .prologue
    const/4 v5, -0x3

    const/16 v10, 0x14

    const/4 v9, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 587
    const/16 v7, 0x10

    new-array v1, v7, [B

    .line 589
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 590
    .local v2, "tries":I
    const/4 v0, 0x1

    .line 592
    .local v0, "bRetry":Z
    :goto_0
    if-nez v0, :cond_1

    move v4, v6

    .line 639
    :cond_0
    :goto_1
    return v4

    .line 593
    :cond_1
    const/4 v0, 0x0

    .line 594
    add-int/lit8 v2, v2, 0x1

    .line 595
    const/16 v7, 0x41

    aput-byte v7, v1, v6

    .line 596
    aput-byte p1, v1, v9

    .line 597
    const/4 v7, 0x2

    const/16 v8, 0x20

    aput-byte v8, v1, v7

    .line 599
    const/4 v7, 0x3

    invoke-direct {p0, v1, v7}, Lcom/physicaloid/lib/programmer/avr/Stk500;->send([BI)I

    .line 601
    invoke-direct {p0, v1, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v7

    if-ltz v7, :cond_0

    .line 604
    aget-byte v7, v1, v6

    const/16 v8, 0x15

    if-ne v7, v8, :cond_3

    .line 605
    const/16 v7, 0x21

    if-le v2, v7, :cond_2

    .line 606
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    const-string v6, "STK500.getparm(): can\'t get into sync\n"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 609
    :cond_2
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->getsync()I

    move-result v7

    if-ltz v7, :cond_0

    .line 612
    const/4 v0, 0x1

    .line 613
    goto :goto_0

    .line 614
    :cond_3
    aget-byte v7, v1, v6

    if-eq v7, v10, :cond_4

    .line 615
    sget-object v4, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "STK500.getparm(): (a) protocol error, expect="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-direct {p0, v10}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", resp="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v1, v6

    invoke-direct {p0, v6}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 615
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v4, -0x2

    goto :goto_1

    .line 620
    :cond_4
    invoke-direct {p0, v1, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v7

    if-ltz v7, :cond_0

    .line 623
    aget-byte v3, v1, v6

    .line 625
    .local v3, "v":I
    invoke-direct {p0, v1, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v7

    if-ltz v7, :cond_0

    .line 628
    aget-byte v7, v1, v6

    const/16 v8, 0x11

    if-ne v7, v8, :cond_5

    .line 629
    sget-object v4, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "STK500.getparm(): parameter "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-byte v7, v3

    invoke-direct {p0, v7}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 630
    goto/16 :goto_1

    .line 631
    :cond_5
    aget-byte v7, v1, v6

    const/16 v8, 0x10

    if-eq v7, v8, :cond_6

    .line 632
    sget-object v4, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "STK500.getparm(): (a) protocol error, expect="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    invoke-direct {p0, v10}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", resp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v6, v1, v6

    invoke-direct {p0, v6}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 632
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 634
    goto/16 :goto_1

    .line 637
    :cond_6
    aput v3, p2, v6

    goto/16 :goto_0
.end method

.method private getsync()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 299
    new-array v0, v7, [B

    .line 300
    .local v0, "buf":[B
    new-array v1, v7, [B

    .line 303
    .local v1, "resp":[B
    const/16 v4, 0x30

    aput-byte v4, v0, v3

    .line 304
    aput-byte v7, v0, v6

    .line 310
    invoke-direct {p0, v0, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500;->send([BI)I

    .line 311
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->drain()I

    .line 312
    invoke-direct {p0, v0, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500;->send([BI)I

    .line 313
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->drain()I

    .line 315
    invoke-direct {p0, v0, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500;->send([BI)I

    .line 316
    invoke-direct {p0, v1, v6}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v4

    if-gez v4, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v2

    .line 318
    :cond_1
    aget-byte v4, v1, v3

    const/16 v5, 0x14

    if-eq v4, v5, :cond_2

    .line 319
    sget-object v4, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "STK500.getsync(): not in sync: resp="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, v1, v3

    invoke-direct {p0, v3}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->drain()I

    goto :goto_0

    .line 324
    :cond_2
    invoke-direct {p0, v1, v6}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v4

    if-ltz v4, :cond_0

    .line 326
    aget-byte v4, v1, v3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_3

    .line 327
    sget-object v4, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "STK500.getsync(): can\'t communicate with device: resp="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, v1, v3

    invoke-direct {p0, v3}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v3

    .line 331
    goto :goto_0
.end method

.method private is_page_empty(II[B)Z
    .locals 3
    .param p1, "address"    # I
    .param p2, "page_size"    # I
    .param p3, "buf"    # [B

    .prologue
    .line 883
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 892
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 884
    :cond_0
    add-int v1, p1, v0

    aget-byte v1, p3, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    .line 887
    const/4 v1, 0x0

    goto :goto_1

    .line 883
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadaddr(I)I
    .locals 10
    .param p1, "addr"    # I

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x14

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 896
    new-array v1, v9, [B

    .line 898
    .local v1, "buf":[B
    const/4 v0, 0x1

    .line 900
    .local v0, "bRetry":Z
    const/4 v2, 0x0

    .line 901
    .local v2, "tries":I
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 926
    invoke-direct {p0, v1, v7}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v5

    if-gez v5, :cond_5

    .line 933
    :cond_1
    :goto_1
    return v3

    .line 902
    :cond_2
    const/4 v0, 0x0

    .line 903
    add-int/lit8 v2, v2, 0x1

    .line 904
    const/16 v5, 0x55

    aput-byte v5, v1, v4

    .line 905
    and-int/lit16 v5, p1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v7

    .line 906
    const/4 v5, 0x2

    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 907
    const/4 v5, 0x3

    const/16 v6, 0x20

    aput-byte v6, v1, v5

    .line 909
    const/4 v5, 0x4

    invoke-direct {p0, v1, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500;->send([BI)I

    .line 911
    invoke-direct {p0, v1, v7}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v5

    if-ltz v5, :cond_1

    .line 912
    aget-byte v5, v1, v4

    const/16 v6, 0x15

    if-ne v5, v6, :cond_4

    .line 913
    const/16 v5, 0x21

    if-le v2, v5, :cond_3

    .line 914
    sget-object v4, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    const-string v5, "STK500.loadaddr(): can\'t get into sync"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 917
    :cond_3
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->getsync()I

    move-result v5

    if-ltz v5, :cond_1

    .line 918
    const/4 v0, 0x1

    .line 919
    goto :goto_0

    .line 921
    :cond_4
    aget-byte v5, v1, v4

    if-eq v5, v8, :cond_0

    .line 922
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "STK500.loadaddr(): (a) protocol error, expect="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v4, v1, v4

    invoke-direct {p0, v4}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 927
    :cond_5
    aget-byte v5, v1, v4

    if-ne v5, v9, :cond_6

    move v3, v4

    .line 928
    goto :goto_1

    .line 931
    :cond_6
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "STK500.loadaddr(): (b) protocol error, expect="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v4, v1, v4

    invoke-direct {p0, v4}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private program_enable()I
    .locals 11

    .prologue
    const/16 v10, 0x14

    const/16 v9, 0x10

    const/4 v8, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 534
    new-array v1, v9, [B

    .line 535
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 536
    .local v2, "tries":I
    const/4 v0, 0x1

    .line 538
    .local v0, "bRetry":Z
    :goto_0
    if-nez v0, :cond_1

    .line 583
    :cond_0
    :goto_1
    return v3

    .line 539
    :cond_1
    const/4 v0, 0x0

    .line 540
    add-int/lit8 v2, v2, 0x1

    .line 542
    const/16 v5, 0x50

    aput-byte v5, v1, v4

    .line 543
    const/16 v5, 0x20

    aput-byte v5, v1, v8

    .line 545
    const/4 v5, 0x2

    invoke-direct {p0, v1, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500;->send([BI)I

    .line 546
    invoke-direct {p0, v1, v8}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v5

    if-ltz v5, :cond_0

    .line 549
    aget-byte v5, v1, v4

    const/16 v6, 0x15

    if-ne v5, v6, :cond_3

    .line 550
    const/16 v5, 0x21

    if-le v2, v5, :cond_2

    .line 551
    sget-object v4, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    const-string v5, "STK500.program_enable(): can\'t get into sync"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 554
    :cond_2
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->getsync()I

    move-result v5

    if-ltz v5, :cond_0

    .line 557
    const/4 v0, 0x1

    .line 558
    goto :goto_0

    .line 559
    :cond_3
    aget-byte v5, v1, v4

    if-eq v5, v10, :cond_4

    .line 560
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "STK500.program_enable(): protocol error, expect="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-direct {p0, v10}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v4, v1, v4

    invoke-direct {p0, v4}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 560
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 565
    :cond_4
    invoke-direct {p0, v1, v8}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v5

    if-ltz v5, :cond_0

    .line 568
    aget-byte v5, v1, v4

    if-ne v5, v9, :cond_5

    move v3, v4

    .line 569
    goto :goto_1

    .line 570
    :cond_5
    aget-byte v5, v1, v4

    const/16 v6, 0x13

    if-ne v5, v6, :cond_6

    .line 571
    sget-object v4, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    const-string v5, "STK500.program_enable(): no device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 575
    :cond_6
    aget-byte v5, v1, v4

    const/16 v6, 0x11

    if-ne v5, v6, :cond_7

    .line 576
    sget-object v4, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    .line 577
    const-string v5, "STK500.program_enable(): failed to enter programming mode"

    .line 576
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 581
    :cond_7
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "STK500.program_enable(): unknown response="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v7, v1, v4

    invoke-direct {p0, v7}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private recv([BI)I
    .locals 12
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    .prologue
    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, "retval":I
    const/4 v6, 0x0

    .line 253
    .local v6, "totalRetval":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 254
    .local v4, "startTime":J
    new-array v3, p2, [B

    .line 257
    .local v3, "tmpbuf":[B
    :cond_0
    iget-object v7, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v7, v3, p2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->read([BI)I

    move-result v2

    .line 259
    if-lez v2, :cond_1

    .line 260
    const/4 v7, 0x0

    invoke-static {v3, v7, p1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    add-int/2addr v6, v2

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 267
    :cond_1
    if-lt v6, p2, :cond_2

    .line 275
    :goto_0
    return v2

    .line 269
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 270
    .local v0, "endTime":J
    sub-long v8, v0, v4

    const-wide/16 v10, 0xfa

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 271
    sget-object v7, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    const-string v8, "recv timeout."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private send([BI)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    .prologue
    .line 235
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v1, p1, p2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->write([BI)I

    move-result v0

    .line 245
    .local v0, "retval":I
    return v0
.end method

.method private setDtrRts(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 949
    if-eqz p1, :cond_0

    .line 950
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, v2, v2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->setDtrRts(ZZ)Z

    .line 954
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, v1, v1}, Lcom/physicaloid/lib/framework/SerialCommunicator;->setDtrRts(ZZ)Z

    goto :goto_0
.end method

.method private set_extended_parms(I[B)I
    .locals 12
    .param p1, "n"    # I
    .param p2, "cmd"    # [B

    .prologue
    const/16 v11, 0x14

    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 643
    new-array v1, v10, [B

    .line 644
    .local v1, "buf":[B
    const/4 v3, 0x0

    .line 646
    .local v3, "tries":I
    const/4 v0, 0x1

    .line 648
    .local v0, "bRetry":Z
    :goto_0
    if-nez v0, :cond_1

    .line 697
    :cond_0
    :goto_1
    return v4

    .line 649
    :cond_1
    const/4 v0, 0x0

    .line 650
    add-int/lit8 v3, v3, 0x1

    .line 652
    const/16 v6, 0x45

    aput-byte v6, v1, v5

    .line 653
    invoke-static {p2, v5, v1, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    add-int/lit8 v2, p1, 0x1

    .line 655
    .local v2, "i":I
    const/16 v6, 0x20

    aput-byte v6, v1, v2

    .line 657
    add-int/lit8 v6, v2, 0x1

    invoke-direct {p0, v1, v6}, Lcom/physicaloid/lib/programmer/avr/Stk500;->send([BI)I

    .line 658
    invoke-direct {p0, v1, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v6

    if-ltz v6, :cond_0

    .line 661
    aget-byte v6, v1, v5

    const/16 v7, 0x15

    if-ne v6, v7, :cond_3

    .line 662
    const/16 v6, 0x21

    if-le v3, v6, :cond_2

    .line 663
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    const-string v6, "STK500.set_extended_parms(): can\'t get into sync"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 666
    :cond_2
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->getsync()I

    move-result v6

    if-ltz v6, :cond_0

    .line 669
    const/4 v0, 0x1

    .line 670
    goto :goto_0

    .line 671
    :cond_3
    aget-byte v6, v1, v5

    if-eq v6, v11, :cond_4

    .line 672
    sget-object v6, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "STK500.set_extended_parms(): protocol error, expect="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-direct {p0, v11}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", resp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v5, v1, v5

    invoke-direct {p0, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 672
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 677
    :cond_4
    invoke-direct {p0, v1, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v6

    if-ltz v6, :cond_0

    .line 680
    aget-byte v6, v1, v5

    if-ne v6, v10, :cond_5

    move v4, v5

    .line 681
    goto :goto_1

    .line 682
    :cond_5
    aget-byte v6, v1, v5

    const/16 v7, 0x13

    if-ne v6, v7, :cond_6

    .line 683
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    const-string v6, "STK500_set_extended_parms(): no device"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 687
    :cond_6
    aget-byte v6, v1, v5

    const/16 v7, 0x11

    if-ne v6, v7, :cond_7

    .line 688
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    .line 689
    const-string v6, "STK500.set_extended_parms(): failed to set extended device programming parameters"

    .line 688
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 693
    :cond_7
    sget-object v6, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "STK500.set_extended_parms(): unknown response="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v8, v1, v5

    invoke-direct {p0, v8}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private toHexStr(B)Ljava/lang/String;
    .locals 4
    .param p1, "b"    # B

    .prologue
    .line 937
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
    .line 941
    const-string v1, ""

    .line 942
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 945
    return-object v1

    .line 943
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

    .line 942
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public check_sig_bytes()I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v1, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 341
    const/16 v3, 0x20

    new-array v0, v3, [B

    .line 343
    .local v0, "buf":[B
    const/16 v3, 0x75

    aput-byte v3, v0, v2

    .line 344
    const/16 v3, 0x20

    aput-byte v3, v0, v5

    .line 346
    invoke-direct {p0, v0, v6}, Lcom/physicaloid/lib/programmer/avr/Stk500;->send([BI)I

    .line 348
    const/4 v3, 0x5

    invoke-direct {p0, v0, v3}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v3

    if-gez v3, :cond_0

    .line 371
    :goto_0
    return v1

    .line 349
    :cond_0
    aget-byte v3, v0, v2

    const/16 v4, 0x15

    if-ne v3, v4, :cond_1

    .line 350
    sget-object v2, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    const-string v3, "STK500.cmd(): programmer is out of sync"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-direct {p0, v0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->dumpLogE([B)V

    goto :goto_0

    .line 353
    :cond_1
    aget-byte v1, v0, v2

    const/16 v3, 0x14

    if-eq v1, v3, :cond_2

    .line 354
    sget-object v1, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "STK500.read_sig_bytes(): (a) protocol error, expect="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v2, v0, v2

    invoke-direct {p0, v2}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-direct {p0, v0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->dumpLogE([B)V

    .line 357
    const/4 v1, -0x2

    goto :goto_0

    .line 360
    :cond_2
    aget-byte v1, v0, v7

    const/16 v3, 0x10

    if-eq v1, v3, :cond_3

    .line 361
    sget-object v1, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "STK500.read_sig_bytes(): (a) protocol error, expect="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v0, v7

    invoke-direct {p0, v3}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-direct {p0, v0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->dumpLogE([B)V

    .line 364
    const/4 v1, -0x3

    goto :goto_0

    .line 367
    :cond_3
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v1, v1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->signature:[B

    aget-byte v1, v1, v2

    aget-byte v3, v0, v5

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v1, v1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->signature:[B

    aget-byte v1, v1, v5

    aget-byte v3, v0, v6

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v1, v1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->signature:[B

    aget-byte v1, v1, v6

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-ne v1, v3, :cond_4

    move v1, v2

    .line 368
    goto/16 :goto_0

    .line 371
    :cond_4
    const/4 v1, -0x4

    goto/16 :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 878
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    .line 879
    return-void
.end method

.method public disable()V
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/16 v7, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 837
    new-array v1, v7, [B

    .line 838
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 839
    .local v2, "tries":I
    const/4 v0, 0x1

    .line 841
    .local v0, "bRetry":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 865
    invoke-direct {p0, v1, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v3

    if-gez v3, :cond_5

    .line 874
    :cond_1
    :goto_1
    return-void

    .line 842
    :cond_2
    const/4 v0, 0x0

    .line 843
    add-int/lit8 v2, v2, 0x1

    .line 845
    const/16 v3, 0x51

    aput-byte v3, v1, v6

    .line 846
    const/16 v3, 0x20

    aput-byte v3, v1, v5

    .line 848
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/physicaloid/lib/programmer/avr/Stk500;->send([BI)I

    .line 849
    invoke-direct {p0, v1, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v3

    if-ltz v3, :cond_1

    .line 850
    aget-byte v3, v1, v6

    const/16 v4, 0x15

    if-ne v3, v4, :cond_4

    .line 851
    const/16 v3, 0x21

    if-le v2, v3, :cond_3

    .line 852
    sget-object v3, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    const-string v4, "STK500.disable(): can\'t get into sync"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 855
    :cond_3
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->getsync()I

    move-result v3

    if-ltz v3, :cond_1

    .line 856
    const/4 v0, 0x1

    .line 857
    goto :goto_0

    .line 859
    :cond_4
    aget-byte v3, v1, v6

    if-eq v3, v8, :cond_0

    .line 860
    sget-object v3, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    .line 861
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "STK500.disable(): protocol error, expect="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v1, v6

    invoke-direct {p0, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 860
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 866
    :cond_5
    aget-byte v3, v1, v6

    if-ne v3, v7, :cond_6

    sget-object v3, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    const-string v4, "disable OK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 867
    :cond_6
    aget-byte v3, v1, v6

    const/16 v4, 0x13

    if-ne v3, v4, :cond_7

    .line 868
    sget-object v3, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    const-string v4, "STK500.disable(): no device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 872
    :cond_7
    sget-object v3, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "STK500.disable(): unknown response="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v1, v6

    invoke-direct {p0, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public initialize()I
    .locals 12

    .prologue
    .line 391
    const/16 v9, 0x20

    new-array v1, v9, [B

    .line 393
    .local v1, "buf":[B
    const/4 v9, 0x1

    new-array v3, v9, [I

    .line 394
    .local v3, "majArr":[I
    const/4 v9, 0x1

    new-array v5, v9, [I

    .line 395
    .local v5, "minArr":[I
    const/4 v2, 0x0

    .line 396
    .local v2, "maj":I
    const/4 v4, 0x0

    .line 400
    .local v4, "min":I
    const/16 v9, -0x7f

    invoke-direct {p0, v9, v3}, Lcom/physicaloid/lib/programmer/avr/Stk500;->getparm(B[I)I

    .line 401
    const/16 v9, -0x7e

    invoke-direct {p0, v9, v5}, Lcom/physicaloid/lib/programmer/avr/Stk500;->getparm(B[I)I

    .line 403
    const/4 v9, 0x0

    aget v2, v3, v9

    .line 404
    const/4 v9, 0x0

    aget v4, v5, v9

    .line 409
    const/4 v9, 0x1

    if-gt v2, v9, :cond_0

    const/4 v9, 0x1

    if-ne v2, v9, :cond_2

    const/16 v9, 0xa

    if-le v4, v9, :cond_2

    .line 410
    :cond_0
    const/4 v6, 0x4

    .line 415
    .local v6, "n_extparms":I
    :goto_0
    const/4 v8, 0x0

    .line 417
    .local v8, "tries":I
    const/4 v0, 0x1

    .line 418
    .local v0, "bRetry":Z
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 530
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->program_enable()I

    move-result v9

    :goto_2
    return v9

    .line 412
    .end local v0    # "bRetry":Z
    .end local v6    # "n_extparms":I
    .end local v8    # "tries":I
    :cond_2
    const/4 v6, 0x3

    .restart local v6    # "n_extparms":I
    goto :goto_0

    .line 419
    .restart local v0    # "bRetry":Z
    .restart local v8    # "tries":I
    :cond_3
    const/4 v0, 0x0

    .line 420
    add-int/lit8 v8, v8, 0x1

    .line 422
    const/4 v9, 0x0

    invoke-static {v1, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 427
    const/4 v9, 0x0

    const/16 v10, 0x42

    aput-byte v10, v1, v9

    .line 429
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-byte v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->stk500_devcode:B

    aput-byte v10, v1, v9

    .line 430
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v10, v1, v9

    .line 433
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-byte v10, v1, v9

    .line 443
    const/4 v9, 0x4

    const/4 v10, 0x1

    aput-byte v10, v1, v9

    .line 447
    const/4 v9, 0x5

    const/4 v10, 0x1

    aput-byte v10, v1, v9

    .line 448
    const/4 v9, 0x6

    const/4 v10, 0x1

    aput-byte v10, v1, v9

    .line 450
    const/4 v9, 0x7

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->lock:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;->size:I

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 455
    const/16 v9, 0x8

    const/4 v10, 0x0

    aput-byte v10, v1, v9

    .line 456
    const/16 v9, 0x8

    aget-byte v10, v1, v9

    iget-object v11, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v11, v11, Lcom/physicaloid/lib/programmer/avr/AvrConf;->fuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    iget v11, v11, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;->size:I

    int-to-byte v11, v11

    add-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 457
    const/16 v9, 0x8

    aget-byte v10, v1, v9

    iget-object v11, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v11, v11, Lcom/physicaloid/lib/programmer/avr/AvrConf;->lfuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    iget v11, v11, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;->size:I

    int-to-byte v11, v11

    add-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 458
    const/16 v9, 0x8

    aget-byte v10, v1, v9

    iget-object v11, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v11, v11, Lcom/physicaloid/lib/programmer/avr/AvrConf;->hfuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    iget v11, v11, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;->size:I

    int-to-byte v11, v11

    add-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 459
    const/16 v9, 0x8

    aget-byte v10, v1, v9

    iget-object v11, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v11, v11, Lcom/physicaloid/lib/programmer/avr/AvrConf;->efuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    iget v11, v11, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;->size:I

    int-to-byte v11, v11

    add-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 461
    const/16 v9, 0x9

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->readback_p1:I

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 462
    const/16 v9, 0xa

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->readback_p2:I

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 463
    iget-object v9, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v9, v9, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget-boolean v9, v9, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->paged:Z

    if-eqz v9, :cond_4

    .line 464
    const/16 v9, 0xd

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->page_size:I

    shr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 465
    const/16 v9, 0xe

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->page_size:I

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 467
    :cond_4
    const/16 v9, 0x11

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->size:I

    shr-int/lit8 v10, v10, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 468
    const/16 v9, 0x12

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->size:I

    shr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 469
    const/16 v9, 0x13

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->size:I

    shr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 470
    const/16 v9, 0x14

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->size:I

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 472
    const/16 v9, 0xb

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->eeprom:Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->readback_p1:I

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 473
    const/16 v9, 0xc

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->eeprom:Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->readback_p2:I

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 474
    const/16 v9, 0xf

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->eeprom:Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->size:I

    shr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 475
    const/16 v9, 0x10

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->eeprom:Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->size:I

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 477
    const/16 v9, 0x15

    const/16 v10, 0x20

    aput-byte v10, v1, v9

    .line 479
    const/16 v9, 0x16

    invoke-direct {p0, v1, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500;->send([BI)I

    .line 480
    const/4 v9, 0x1

    invoke-direct {p0, v1, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v9

    if-gez v9, :cond_5

    .line 481
    const/4 v9, -0x1

    goto/16 :goto_2

    .line 483
    :cond_5
    const/4 v9, 0x0

    aget-byte v9, v1, v9

    const/16 v10, 0x15

    if-ne v9, v10, :cond_8

    .line 484
    sget-object v9, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "STK500.initialize(): programmer not in sync, resp="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    aget-byte v11, v1, v11

    invoke-direct {p0, v11}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/16 v9, 0x21

    if-le v8, v9, :cond_6

    const/4 v9, -0x1

    goto/16 :goto_2

    .line 486
    :cond_6
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->getsync()I

    move-result v9

    if-gez v9, :cond_7

    const/4 v9, -0x1

    goto/16 :goto_2

    .line 487
    :cond_7
    const/4 v0, 0x1

    .line 488
    goto/16 :goto_1

    .line 489
    :cond_8
    const/4 v9, 0x0

    aget-byte v9, v1, v9

    const/16 v10, 0x14

    if-eq v9, v10, :cond_9

    .line 490
    sget-object v9, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "STK500.initialize(): (a) protocol error, expect="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x14

    invoke-direct {p0, v11}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", resp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v11, v1, v11

    invoke-direct {p0, v11}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v9, -0x1

    goto/16 :goto_2

    .line 494
    :cond_9
    const/4 v9, 0x1

    invoke-direct {p0, v1, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v9

    if-gez v9, :cond_a

    const/4 v9, -0x1

    goto/16 :goto_2

    .line 495
    :cond_a
    const/4 v9, 0x0

    aget-byte v9, v1, v9

    const/16 v10, 0x10

    if-eq v9, v10, :cond_b

    .line 496
    sget-object v9, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "STK500.initialize(): (b) protocol error, expect="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x10

    invoke-direct {p0, v11}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", resp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v11, v1, v11

    invoke-direct {p0, v11}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v9, -0x1

    goto/16 :goto_2

    .line 500
    :cond_b
    if-eqz v6, :cond_1

    .line 501
    iget-object v9, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-byte v9, v9, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pagel:B

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-byte v9, v9, Lcom/physicaloid/lib/programmer/avr/AvrConf;->bs2:B

    if-nez v9, :cond_d

    .line 502
    :cond_c
    sget-object v9, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "please define PAGEL and BS2 signals in the configuration file for part "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v11, v11, Lcom/physicaloid/lib/programmer/avr/AvrConf;->desc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 504
    :cond_d
    const/4 v9, 0x0

    add-int/lit8 v10, v6, 0x1

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 509
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->eeprom:Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;

    iget v10, v10, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->page_size:I

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 511
    const/4 v9, 0x2

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-byte v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pagel:B

    aput-byte v10, v1, v9

    .line 512
    const/4 v9, 0x3

    iget-object v10, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-byte v10, v10, Lcom/physicaloid/lib/programmer/avr/AvrConf;->bs2:B

    aput-byte v10, v1, v9

    .line 514
    const/4 v9, 0x4

    if-ne v6, v9, :cond_e

    .line 516
    const/4 v9, 0x4

    const/4 v10, 0x0

    aput-byte v10, v1, v9

    .line 521
    :cond_e
    add-int/lit8 v9, v6, 0x1

    invoke-direct {p0, v9, v1}, Lcom/physicaloid/lib/programmer/avr/Stk500;->set_extended_parms(I[B)I

    move-result v7

    .line 522
    .local v7, "rc":I
    if-eqz v7, :cond_1

    .line 523
    sget-object v9, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    const-string v10, "STK500.initialize(): failed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v9, -0x1

    goto/16 :goto_2
.end method

.method public open()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 376
    invoke-direct {p0, v0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->setDtrRts(Z)V

    .line 377
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/physicaloid/lib/programmer/avr/Stk500;->setDtrRts(Z)V

    .line 379
    const-wide/16 v2, 0x32

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    :goto_1
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->drain()I

    .line 382
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->getsync()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, -0x1

    .line 383
    :cond_0
    return v0

    .line 377
    :catch_0
    move-exception v1

    goto :goto_0

    .line 379
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public paged_write()I
    .locals 20

    .prologue
    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->page_size:I

    .line 702
    .local v14, "page_size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v11, v0

    .line 704
    .local v11, "n_bytes":I
    add-int/lit8 v17, v14, 0x10

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 708
    .local v6, "buf":[B
    const/4 v5, 0x0

    .line 713
    .local v5, "block_size":I
    const/4 v4, 0x1

    .line 715
    .local v4, "bRetry":Z
    if-nez v14, :cond_0

    .line 721
    const/16 v14, 0x80

    .line 725
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->desc:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "flash"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_1

    .line 726
    const/16 v10, 0x46

    .line 727
    .local v10, "memtype":I
    const/4 v7, 0x1

    .line 736
    .local v7, "flash":Z
    :goto_0
    const/4 v2, 0x2

    .line 741
    .local v2, "a_div":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->size:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v11, v0, :cond_3

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v11, v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->size:I

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->size:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v12, v0

    .line 762
    .local v12, "n":J
    :goto_1
    const/4 v3, 0x0

    .local v3, "addr":I
    :goto_2
    int-to-long v0, v3

    move-wide/from16 v18, v0

    cmp-long v17, v18, v12

    if-ltz v17, :cond_5

    .line 831
    mul-int/lit8 v17, v3, 0x64

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v18, v18, v12

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/physicaloid/lib/programmer/avr/Stk500;->report_progress(I)V

    move/from16 v17, v11

    .line 833
    .end local v2    # "a_div":I
    .end local v3    # "addr":I
    .end local v7    # "flash":Z
    .end local v10    # "memtype":I
    .end local v12    # "n":J
    :goto_3
    return v17

    .line 728
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->desc:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "eeprom"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_2

    .line 729
    const/16 v10, 0x45

    .line 730
    .restart local v10    # "memtype":I
    const/4 v7, 0x0

    .line 731
    .restart local v7    # "flash":Z
    goto :goto_0

    .line 732
    .end local v7    # "flash":Z
    .end local v10    # "memtype":I
    :cond_2
    const/16 v17, -0x2

    goto :goto_3

    .line 745
    .restart local v2    # "a_div":I
    .restart local v7    # "flash":Z
    .restart local v10    # "memtype":I
    :cond_3
    rem-int v17, v11, v14

    if-eqz v17, :cond_4

    .line 746
    add-int v17, v11, v14

    rem-int v18, v11, v14

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v12, v0

    .line 747
    .restart local v12    # "n":J
    goto :goto_1

    .line 748
    .end local v12    # "n":J
    :cond_4
    int-to-long v12, v11

    .restart local v12    # "n":J
    goto :goto_1

    .line 763
    .restart local v3    # "addr":I
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->report_cancel()V

    .line 765
    const/16 v17, 0x0

    goto :goto_3

    .line 768
    :cond_6
    mul-int/lit8 v17, v3, 0x64

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v18, v18, v12

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/physicaloid/lib/programmer/avr/Stk500;->report_progress(I)V

    .line 776
    move v5, v14

    .line 780
    if-eqz v7, :cond_8

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v5, v1}, Lcom/physicaloid/lib/programmer/avr/Stk500;->is_page_empty(II[B)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 762
    :cond_7
    add-int/2addr v3, v14

    goto/16 :goto_2

    .line 785
    :cond_8
    const/16 v16, 0x0

    .line 786
    .local v16, "tries":I
    const/4 v4, 0x1

    .line 787
    :cond_9
    :goto_4
    if-nez v4, :cond_a

    .line 825
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v17

    if-gez v17, :cond_10

    const/16 v17, -0x1

    goto :goto_3

    .line 788
    :cond_a
    const/4 v4, 0x0

    .line 789
    add-int/lit8 v16, v16, 0x1

    .line 790
    div-int v17, v3, v2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/physicaloid/lib/programmer/avr/Stk500;->loadaddr(I)I

    .line 793
    const/4 v8, 0x0

    .line 795
    .local v8, "i":I
    move v15, v5

    .line 796
    .local v15, "send_size":I
    add-int v17, v3, v15

    move/from16 v0, v17

    if-le v0, v11, :cond_b

    .line 797
    add-int v17, v3, v15

    sub-int v17, v17, v11

    sub-int v15, v15, v17

    .line 800
    :cond_b
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    const/16 v17, 0x64

    aput-byte v17, v6, v8

    .line 801
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    shr-int/lit8 v17, v15, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v6, v9

    .line 802
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    and-int/lit16 v0, v15, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v6, v8

    .line 803
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    int-to-byte v0, v10

    move/from16 v17, v0

    aput-byte v17, v6, v9

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v3, v6, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    add-int/lit8 v8, v15, 0x4

    .line 806
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    const/16 v17, 0x20

    aput-byte v17, v6, v8

    .line 807
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9}, Lcom/physicaloid/lib/programmer/avr/Stk500;->send([BI)I

    .line 809
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/physicaloid/lib/programmer/avr/Stk500;->recv([BI)I

    move-result v17

    if-gez v17, :cond_c

    const/16 v17, -0x1

    goto/16 :goto_3

    .line 810
    :cond_c
    const/16 v17, 0x0

    aget-byte v17, v6, v17

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 811
    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_d

    .line 812
    sget-object v17, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    const-string v18, "STK500.paged_write(): can\'t get into sync"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/16 v17, -0x3

    goto/16 :goto_3

    .line 815
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/physicaloid/lib/programmer/avr/Stk500;->getsync()I

    move-result v17

    if-gez v17, :cond_e

    const/16 v17, -0x1

    goto/16 :goto_3

    .line 816
    :cond_e
    const/4 v4, 0x1

    .line 817
    goto/16 :goto_4

    .line 819
    :cond_f
    const/16 v17, 0x0

    aget-byte v17, v6, v17

    const/16 v18, 0x14

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 820
    sget-object v17, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "STK500.paged_write(): (a) protocol error, expect="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", resp="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-byte v19, v6, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/16 v17, -0x4

    goto/16 :goto_3

    .line 826
    .end local v9    # "i":I
    .end local v15    # "send_size":I
    :cond_10
    const/16 v17, 0x0

    aget-byte v17, v6, v17

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 827
    sget-object v17, Lcom/physicaloid/lib/programmer/avr/Stk500;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "STK500.paged_write(): (a) protocol error, expect="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", resp="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-byte v19, v6, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/physicaloid/lib/programmer/avr/Stk500;->toHexStr(B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/16 v17, -0x5

    goto/16 :goto_3
.end method

.method public setConfig(Lcom/physicaloid/lib/programmer/avr/AvrConf;Lcom/physicaloid/lib/programmer/avr/AVRMem;)V
    .locals 0
    .param p1, "avrConf"    # Lcom/physicaloid/lib/programmer/avr/AvrConf;
    .param p2, "avrMem"    # Lcom/physicaloid/lib/programmer/avr/AVRMem;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    .line 231
    iput-object p2, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    .line 232
    return-void
.end method

.method public setSerial(Lcom/physicaloid/lib/framework/SerialCommunicator;)V
    .locals 0
    .param p1, "comm"    # Lcom/physicaloid/lib/framework/SerialCommunicator;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/physicaloid/lib/programmer/avr/Stk500;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    .line 227
    return-void
.end method

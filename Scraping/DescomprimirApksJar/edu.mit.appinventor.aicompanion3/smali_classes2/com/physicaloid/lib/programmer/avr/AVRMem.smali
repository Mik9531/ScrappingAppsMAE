.class Lcom/physicaloid/lib/programmer/avr/AVRMem;
.super Ljava/lang/Object;
.source "AvrConf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;
    }
.end annotation


# static fields
.field public static final AVR_CMDBIT_ADDRESS:I = 0x2

.field public static final AVR_CMDBIT_IGNORE:I = 0x0

.field public static final AVR_CMDBIT_INPUT:I = 0x3

.field public static final AVR_CMDBIT_OUTPUT:I = 0x4

.field public static final AVR_CMDBIT_VALUE:I = 0x1

.field public static final AVR_OP_CHIP_ERASE:I = 0xa

.field public static final AVR_OP_LOADPAGE_HI:I = 0x7

.field public static final AVR_OP_LOADPAGE_LO:I = 0x6

.field public static final AVR_OP_LOAD_EXT_ADDR:I = 0x8

.field public static final AVR_OP_MAX:I = 0xc

.field public static final AVR_OP_PGM_ENABLE:I = 0xb

.field public static final AVR_OP_READ:I = 0x0

.field public static final AVR_OP_READ_HI:I = 0x3

.field public static final AVR_OP_READ_LO:I = 0x2

.field public static final AVR_OP_WRITE:I = 0x1

.field public static final AVR_OP_WRITEPAGE:I = 0x9

.field public static final AVR_OP_WRITE_HI:I = 0x5

.field public static final AVR_OP_WRITE_LO:I = 0x4


# instance fields
.field blocksize:I

.field buf:[B

.field delay:I

.field desc:Ljava/lang/String;

.field max_write_delay:I

.field min_write_delay:I

.field mode:I

.field num_pages:I

.field offset:J

.field op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

.field page_size:I

.field paged:Z

.field pollindex:I

.field pwroff_after_write:I

.field readback:[B

.field readsize:I

.field size:I


# direct methods
.method constructor <init>(Lcom/physicaloid/lib/programmer/avr/AvrConf;)V
    .locals 7
    .param p1, "avrConf"    # Lcom/physicaloid/lib/programmer/avr/AvrConf;

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iget-object v1, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget-object v1, v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->desc:Ljava/lang/String;

    iput-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->desc:Ljava/lang/String;

    .line 313
    iget-object v1, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget-boolean v1, v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->paged:Z

    iput-boolean v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->paged:Z

    .line 314
    iget-object v1, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v1, v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->size:I

    iput v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->size:I

    .line 315
    iget-object v1, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v1, v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->page_size:I

    iput v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->page_size:I

    .line 316
    iget-object v1, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v1, v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->num_pages:I

    iput v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->num_pages:I

    .line 317
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->offset:J

    .line 318
    iget-object v1, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v1, v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->min_write_delay:I

    iput v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->min_write_delay:I

    .line 319
    iget-object v1, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v1, v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->max_write_delay:I

    iput v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->max_write_delay:I

    .line 320
    iput v4, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->pwroff_after_write:I

    .line 321
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->readback:[B

    .line 322
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->readback:[B

    iget-object v2, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v2, v2, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->readback_p1:I

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 323
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->readback:[B

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v3, v3, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->readback_p2:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 324
    iget-object v1, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v1, v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->mode:I

    iput v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->mode:I

    .line 325
    iget-object v1, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v1, v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->delay:I

    iput v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->delay:I

    .line 326
    iget-object v1, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v1, v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->blocksize:I

    iput v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->blocksize:I

    .line 327
    iget-object v1, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget v1, v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->readsize:I

    iput v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->readsize:I

    .line 328
    iput v4, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->pollindex:I

    .line 329
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->buf:[B

    .line 330
    new-array v1, v6, [Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    iput-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 334
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    aget-object v1, v1, v5

    iget-object v2, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget-object v2, v2, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->read_lo:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/physicaloid/lib/programmer/avr/AVRMem;->parseOpcode(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;[Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget-object v2, v2, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->read_hi:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/physicaloid/lib/programmer/avr/AVRMem;->parseOpcode(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;[Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v2, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget-object v2, v2, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->loadpage_lo:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/physicaloid/lib/programmer/avr/AVRMem;->parseOpcode(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;[Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget-object v2, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget-object v2, v2, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->loadpage_hi:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/physicaloid/lib/programmer/avr/AVRMem;->parseOpcode(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;[Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v2, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget-object v2, v2, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->load_ext_addr:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/physicaloid/lib/programmer/avr/AVRMem;->parseOpcode(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;[Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    iget-object v2, p1, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    iget-object v2, v2, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->writepage:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/physicaloid/lib/programmer/avr/AVRMem;->parseOpcode(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;[Ljava/lang/String;)V

    .line 340
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->op:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    new-instance v2, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    invoke-direct {v2, p0}, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;-><init>(Lcom/physicaloid/lib/programmer/avr/AVRMem;)V

    aput-object v2, v1, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method parseOpcode(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;[Ljava/lang/String;)V
    .locals 9
    .param p1, "op"    # Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;
    .param p2, "mem"    # [Ljava/lang/String;

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 348
    const-string v3, ""

    .line 350
    .local v3, "tmpstr":Ljava/lang/String;
    const/16 v1, 0x1f

    .line 352
    .local v1, "no":I
    if-nez p2, :cond_1

    .line 394
    :cond_0
    return-void

    .line 356
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p2

    if-lt v0, v4, :cond_3

    .line 361
    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_4

    .line 364
    const-string v4, "[\\s]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "str":[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_0

    .line 367
    aget-object v4, v2, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_5

    .line 368
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    iput v7, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->type:I

    .line 369
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    rem-int/lit8 v5, v1, 0x8

    iput v5, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->bitno:I

    .line 370
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    iput v6, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->value:I

    .line 392
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 357
    .end local v2    # "str":[Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 371
    .restart local v2    # "str":[Ljava/lang/String;
    :cond_5
    aget-object v4, v2, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_6

    .line 372
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    iput v7, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->type:I

    .line 373
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    rem-int/lit8 v5, v1, 0x8

    iput v5, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->bitno:I

    .line 374
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    iput v7, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->value:I

    goto :goto_3

    .line 375
    :cond_6
    aget-object v4, v2, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x69

    if-ne v4, v5, :cond_7

    .line 376
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    const/4 v5, 0x3

    iput v5, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->type:I

    .line 377
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    rem-int/lit8 v5, v1, 0x8

    iput v5, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->bitno:I

    .line 378
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    iput v6, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->value:I

    goto :goto_3

    .line 379
    :cond_7
    aget-object v4, v2, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x6f

    if-ne v4, v5, :cond_8

    .line 380
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    const/4 v5, 0x4

    iput v5, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->type:I

    .line 381
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    rem-int/lit8 v5, v1, 0x8

    iput v5, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->bitno:I

    .line 382
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    iput v6, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->value:I

    goto/16 :goto_3

    .line 383
    :cond_8
    aget-object v4, v2, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-ne v4, v5, :cond_9

    .line 384
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    const/4 v5, 0x2

    iput v5, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->type:I

    .line 385
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    aget-object v5, v2, v0

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->bitno:I

    .line 386
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    iput v6, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->value:I

    goto/16 :goto_3

    .line 387
    :cond_9
    aget-object v4, v2, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x78

    if-ne v4, v5, :cond_2

    .line 388
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    iput v6, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->type:I

    .line 389
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    rem-int/lit8 v5, v1, 0x8

    iput v5, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->bitno:I

    .line 390
    iget-object v4, p1, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    aget-object v4, v4, v1

    iput v6, v4, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->value:I

    goto/16 :goto_3
.end method

.method setBuf([BI)V
    .locals 2
    .param p1, "inBuf"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 343
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->buf:[B

    .line 344
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem;->buf:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    return-void
.end method

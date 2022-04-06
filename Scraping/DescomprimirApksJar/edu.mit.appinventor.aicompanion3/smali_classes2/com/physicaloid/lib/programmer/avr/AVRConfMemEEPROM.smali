.class Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;
.super Ljava/lang/Object;
.source "AvrConf.java"


# instance fields
.field blocksize:I

.field delay:I

.field desc:Ljava/lang/String;

.field loadpage_lo:[Ljava/lang/String;

.field max_write_delay:I

.field min_write_delay:I

.field mode:I

.field page_size:I

.field paged:Z

.field read:[Ljava/lang/String;

.field readback_p1:I

.field readback_p2:I

.field readsize:I

.field size:I

.field write:[Ljava/lang/String;

.field writepage:[Ljava/lang/String;


# direct methods
.method public constructor <init>(ZIIIIII[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IIII)V
    .locals 2
    .param p1, "memoryPaged"    # Z
    .param p2, "memoryPage_size"    # I
    .param p3, "memorySize"    # I
    .param p4, "memoryMin_write_delay"    # I
    .param p5, "memoryMax_write_delay"    # I
    .param p6, "memoryReadback_p1"    # I
    .param p7, "memoryReadback_p2"    # I
    .param p8, "memoryRead"    # [Ljava/lang/String;
    .param p9, "memoryWrite"    # [Ljava/lang/String;
    .param p10, "memoryLoadpage_lo"    # [Ljava/lang/String;
    .param p11, "memoryWritepage"    # [Ljava/lang/String;
    .param p12, "memoryMode"    # I
    .param p13, "memoryDelay"    # I
    .param p14, "memoryBlocksize"    # I
    .param p15, "memoryReadsize"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v1, "eeprom"

    iput-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->desc:Ljava/lang/String;

    .line 68
    iput-boolean p1, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->paged:Z

    .line 69
    iput p2, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->page_size:I

    .line 70
    iput p3, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->size:I

    .line 71
    iput p4, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->min_write_delay:I

    .line 72
    iput p5, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->max_write_delay:I

    .line 73
    iput p6, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->readback_p1:I

    .line 74
    iput p7, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->readback_p2:I

    .line 75
    iput-object p8, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->read:[Ljava/lang/String;

    .line 76
    iput-object p9, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->write:[Ljava/lang/String;

    .line 77
    iput-object p10, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->loadpage_lo:[Ljava/lang/String;

    .line 78
    iput-object p11, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->writepage:[Ljava/lang/String;

    .line 79
    iput p12, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->mode:I

    .line 80
    iput p13, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->delay:I

    .line 81
    move/from16 v0, p14

    iput v0, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->blocksize:I

    .line 82
    move/from16 v0, p15

    iput v0, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;->readsize:I

    .line 83
    return-void
.end method

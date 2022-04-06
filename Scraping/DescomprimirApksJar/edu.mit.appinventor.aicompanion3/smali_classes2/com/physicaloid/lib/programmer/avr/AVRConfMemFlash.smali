.class Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;
.super Ljava/lang/Object;
.source "AvrConf.java"


# instance fields
.field blocksize:I

.field delay:I

.field desc:Ljava/lang/String;

.field load_ext_addr:[Ljava/lang/String;

.field loadpage_hi:[Ljava/lang/String;

.field loadpage_lo:[Ljava/lang/String;

.field max_write_delay:I

.field min_write_delay:I

.field mode:I

.field num_pages:I

.field page_size:I

.field paged:Z

.field read_hi:[Ljava/lang/String;

.field read_lo:[Ljava/lang/String;

.field readback_p1:I

.field readback_p2:I

.field readsize:I

.field size:I

.field writepage:[Ljava/lang/String;


# direct methods
.method public constructor <init>(ZIIIIIII[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IIII)V
    .locals 2
    .param p1, "memoryPaged"    # Z
    .param p2, "memorySize"    # I
    .param p3, "memoryPage_size"    # I
    .param p4, "memoryNum_pages"    # I
    .param p5, "memoryMin_write_delay"    # I
    .param p6, "memoryMax_write_delay"    # I
    .param p7, "memoryReadback_p1"    # I
    .param p8, "memoryReadback_p2"    # I
    .param p9, "memoryRead_lo"    # [Ljava/lang/String;
    .param p10, "memoryRead_hi"    # [Ljava/lang/String;
    .param p11, "memoryLoadpage_lo"    # [Ljava/lang/String;
    .param p12, "memoryLoadpage_hi"    # [Ljava/lang/String;
    .param p13, "memoryWritepage"    # [Ljava/lang/String;
    .param p14, "memoryLoad_ext_addr"    # [Ljava/lang/String;
    .param p15, "memoryMode"    # I
    .param p16, "memoryDelay"    # I
    .param p17, "memoryBlocksize"    # I
    .param p18, "memoryReadsize"    # I

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const-string v1, "flash"

    iput-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->desc:Ljava/lang/String;

    .line 167
    iput-boolean p1, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->paged:Z

    .line 168
    iput p2, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->size:I

    .line 169
    iput p3, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->page_size:I

    .line 170
    iput p4, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->num_pages:I

    .line 171
    iput p5, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->min_write_delay:I

    .line 172
    iput p6, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->max_write_delay:I

    .line 173
    iput p7, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->readback_p1:I

    .line 174
    iput p8, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->readback_p2:I

    .line 175
    iput-object p9, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->read_lo:[Ljava/lang/String;

    .line 176
    iput-object p10, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->read_hi:[Ljava/lang/String;

    .line 177
    iput-object p11, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->loadpage_lo:[Ljava/lang/String;

    .line 178
    iput-object p12, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->loadpage_hi:[Ljava/lang/String;

    .line 179
    iput-object p13, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->writepage:[Ljava/lang/String;

    .line 181
    move/from16 v0, p15

    iput v0, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->mode:I

    .line 182
    move/from16 v0, p16

    iput v0, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->delay:I

    .line 183
    move/from16 v0, p17

    iput v0, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->blocksize:I

    .line 184
    move/from16 v0, p18

    iput v0, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;->readsize:I

    .line 185
    return-void
.end method

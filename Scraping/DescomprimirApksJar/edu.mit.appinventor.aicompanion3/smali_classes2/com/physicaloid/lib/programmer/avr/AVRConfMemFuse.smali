.class Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;
.super Ljava/lang/Object;
.source "AvrConf.java"


# instance fields
.field max_write_delay:I

.field min_write_delay:I

.field name:Ljava/lang/String;

.field read:[Ljava/lang/String;

.field size:I

.field write:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "memoryName"    # Ljava/lang/String;
    .param p2, "memorySize"    # I
    .param p3, "memoryMinWriteDelay"    # I
    .param p4, "memoryMaxWriteDelay"    # I
    .param p5, "memoryRead"    # [Ljava/lang/String;
    .param p6, "memoryWrite"    # [Ljava/lang/String;

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;->name:Ljava/lang/String;

    .line 246
    iput p2, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;->size:I

    .line 247
    iput p3, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;->min_write_delay:I

    .line 248
    iput p4, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;->max_write_delay:I

    .line 249
    iput-object p5, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;->read:[Ljava/lang/String;

    .line 250
    iput-object p6, p0, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;->write:[Ljava/lang/String;

    .line 251
    return-void
.end method

.class Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;
.super Ljava/lang/Object;
.source "AvrConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/physicaloid/lib/programmer/avr/AVRMem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OPCODE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;
    }
.end annotation


# instance fields
.field bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

.field final synthetic this$0:Lcom/physicaloid/lib/programmer/avr/AVRMem;


# direct methods
.method constructor <init>(Lcom/physicaloid/lib/programmer/avr/AVRMem;)V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 398
    iput-object p1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->this$0:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-array v1, v3, [Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    iput-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    .line 399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 402
    return-void

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;->bit:[Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    new-instance v2, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;

    invoke-direct {v2, p0}, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;-><init>(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;)V

    aput-object v2, v1, v0

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

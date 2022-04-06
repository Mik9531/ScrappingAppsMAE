.class Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;
.super Ljava/lang/Object;
.source "AvrConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CMDBIT"
.end annotation


# instance fields
.field public bitno:I

.field final synthetic this$1:Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

.field public type:I

.field public value:I


# direct methods
.method constructor <init>(Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE$CMDBIT;->this$1:Lcom/physicaloid/lib/programmer/avr/AVRMem$OPCODE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/physicaloid/lib/usb/driver/uart/UartConfig;
.super Ljava/lang/Object;
.source "UartConfig.java"


# static fields
.field public static final DATA_BITS7:I = 0x7

.field public static final DATA_BITS8:I = 0x8

.field public static final FLOW_CONTROL_OFF:I = 0x0

.field public static final FLOW_CONTROL_ON:I = 0x1

.field public static final PARITY_EVEN:I = 0x2

.field public static final PARITY_MARK:I = 0x3

.field public static final PARITY_NONE:I = 0x0

.field public static final PARITY_ODD:I = 0x1

.field public static final PARITY_SPACE:I = 0x4

.field public static final STOP_BITS1:I = 0x0

.field public static final STOP_BITS1_5:I = 0x1

.field public static final STOP_BITS2:I = 0x2


# instance fields
.field public baudrate:I

.field public dataBits:I

.field public dtrOn:Z

.field public parity:I

.field public rtsOn:Z

.field public stopBits:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x2580

    iput v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    .line 45
    const/16 v0, 0x8

    iput v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    .line 46
    iput v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    .line 47
    iput v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    .line 48
    iput-boolean v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    .line 49
    iput-boolean v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    .line 50
    return-void
.end method

.method public constructor <init>(IIIIZZ)V
    .locals 0
    .param p1, "baudrate"    # I
    .param p2, "dataBits"    # I
    .param p3, "stopBits"    # I
    .param p4, "parity"    # I
    .param p5, "dtrOn"    # Z
    .param p6, "rtsOn"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    .line 54
    iput p2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    .line 55
    iput p3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    .line 56
    iput p4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    .line 57
    iput-boolean p5, p0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    .line 58
    iput-boolean p6, p0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    .line 59
    return-void
.end method

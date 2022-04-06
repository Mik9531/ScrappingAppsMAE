.class public Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;
.super Lcom/physicaloid/lib/framework/SerialCommunicator;
.source "UartCp210x.java"


# static fields
.field private static final BAUD_RATE_GEN_FREQ:I = 0x384000

.field private static final BITS_DATA_5:I = 0x500

.field private static final BITS_DATA_6:I = 0x600

.field private static final BITS_DATA_7:I = 0x700

.field private static final BITS_DATA_8:I = 0x800

.field private static final BITS_DATA_9:I = 0x900

.field private static final BITS_DATA_MASK:I = 0xf00

.field private static final BITS_PARITY_EVEN:I = 0x20

.field private static final BITS_PARITY_MARK:I = 0x30

.field private static final BITS_PARITY_MASK:I = 0xf0

.field private static final BITS_PARITY_NONE:I = 0x0

.field private static final BITS_PARITY_ODD:I = 0x10

.field private static final BITS_PARITY_SPACE:I = 0x40

.field private static final BITS_STOP_1:I = 0x0

.field private static final BITS_STOP_1_5:I = 0x1

.field private static final BITS_STOP_2:I = 0x2

.field private static final BITS_STOP_MASK:I = 0xf

.field private static final BREAK_OFF:I = 0x0

.field private static final BREAK_ON:I = 0x1

.field private static final CONTROL_CTS:I = 0x10

.field private static final CONTROL_DCD:I = 0x80

.field private static final CONTROL_DSR:I = 0x20

.field private static final CONTROL_DTR:I = 0x1

.field private static final CONTROL_RING:I = 0x40

.field private static final CONTROL_RTS:I = 0x2

.field private static final CONTROL_WRITE_DTR:I = 0x100

.field private static final CONTROL_WRITE_RTS:I = 0x200

.field private static final CP210X_EMBED_EVENTS:B = 0x15t

.field private static final CP210X_GET_BAUDDIV:B = 0x2t

.field private static final CP210X_GET_BAUDRATE:B = 0x1dt

.field private static final CP210X_GET_CHARS:B = 0xet

.field private static final CP210X_GET_COMM_STATUS:B = 0x10t

.field private static final CP210X_GET_EVENTMASK:B = 0xct

.field private static final CP210X_GET_EVENTSTATE:B = 0x16t

.field private static final CP210X_GET_FLOW:B = 0x14t

.field private static final CP210X_GET_LINE_CTL:B = 0x4t

.field private static final CP210X_GET_MDMSTS:B = 0x8t

.field private static final CP210X_GET_PROPS:B = 0xft

.field private static final CP210X_IFC_ENABLE:B = 0x0t

.field private static final CP210X_IMM_CHAR:B = 0x6t

.field private static final CP210X_PURGE:B = 0x12t

.field private static final CP210X_RESET:B = 0x11t

.field private static final CP210X_SET_BAUDDIV:B = 0x1t

.field private static final CP210X_SET_BAUDRATE:B = 0x1et

.field private static final CP210X_SET_BREAK:B = 0x5t

.field private static final CP210X_SET_CHAR:B = 0xdt

.field private static final CP210X_SET_CHARS:B = 0x19t

.field private static final CP210X_SET_EVENTMASK:B = 0xbt

.field private static final CP210X_SET_FLOW:B = 0x13t

.field private static final CP210X_SET_LINE_CTL:B = 0x3t

.field private static final CP210X_SET_MHS:B = 0x7t

.field private static final CP210X_SET_XOFF:B = 0xat

.field private static final CP210X_SET_XON:B = 0x9t

.field private static final DEBUG_SHOW:Z = false

.field private static final DEFAULT_BAUDRATE:I = 0x2580

.field private static final REQTYPE_DEVICE_TO_HOST:B = -0x40t

.field private static final REQTYPE_HOST_TO_DEVICE:B = 0x40t

.field private static final REQTYPE_HOST_TO_INTERFACE:B = 0x41t

.field private static final REQTYPE_INTERFACE_TO_HOST:B = -0x3ft

.field private static final RING_BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String;

.field private static final UART_DISABLE:I = 0x0

.field private static final UART_ENABLE:I = 0x1

.field private static final USB_READ_BUFFER_SIZE:I = 0x100

.field private static final USB_WRITE_BUFFER_SIZE:I = 0x100


# instance fields
.field private isOpened:Z

.field private mBuffer:Lcom/physicaloid/misc/RingBuffer;

.field private mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private mEndpointIn:Landroid/hardware/usb/UsbEndpoint;

.field private mEndpointOut:Landroid/hardware/usb/UsbEndpoint;

.field private mLoop:Ljava/lang/Runnable;

.field private mReadThreadStop:Z

.field private mStopReadListener:Z

.field private mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

.field private mUsbConnetionManager:Lcom/physicaloid/lib/usb/UsbCdcConnection;

.field private uartReadListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->TAG:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/physicaloid/lib/framework/SerialCommunicator;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mReadThreadStop:Z

    .line 234
    new-instance v0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x$1;

    invoke-direct {v0, p0}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x$1;-><init>(Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;)V

    iput-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mLoop:Ljava/lang/Runnable;

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->uartReadListenerList:Ljava/util/List;

    .line 633
    iput-boolean v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mStopReadListener:Z

    .line 152
    new-instance v0, Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-direct {v0, p1}, Lcom/physicaloid/lib/usb/UsbCdcConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUsbConnetionManager:Lcom/physicaloid/lib/usb/UsbCdcConnection;

    .line 153
    new-instance v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    invoke-direct {v0}, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;-><init>()V

    iput-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    .line 154
    new-instance v0, Lcom/physicaloid/misc/RingBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/physicaloid/misc/RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    .line 155
    iput-boolean v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->isOpened:Z

    .line 156
    return-void
.end method

.method static synthetic access$0(Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-object v0
.end method

.method static synthetic access$1(Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;)Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mEndpointIn:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;)Lcom/physicaloid/misc/RingBuffer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;I)V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->onRead(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mReadThreadStop:Z

    return v0
.end method

.method private cp210xGetConfig(I[BI)I
    .locals 9
    .param p1, "request"    # I
    .param p2, "buf"    # [B
    .param p3, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 355
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    const/4 v8, -0x1

    .line 364
    :goto_0
    return v8

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 357
    const/16 v1, -0x3f

    .line 363
    const/16 v7, 0x64

    move v2, p1

    move v4, v3

    move-object v5, p2

    move v6, p3

    .line 356
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v8

    .line 364
    .local v8, "ret":I
    goto :goto_0
.end method

.method private cp210xSetConfig(I[BI)I
    .locals 9
    .param p1, "request"    # I
    .param p2, "buf"    # [B
    .param p3, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 375
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    const/4 v8, -0x1

    .line 384
    :goto_0
    return v8

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 377
    const/16 v1, 0x41

    .line 383
    const/16 v7, 0x64

    move v2, p1

    move v4, v3

    move-object v5, p2

    move v6, p3

    .line 376
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v8

    .line 384
    .local v8, "ret":I
    goto :goto_0
.end method

.method private cp210xUsbDisable()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 337
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 338
    const/16 v1, 0x41

    .line 342
    const/4 v5, 0x0

    .line 344
    const/16 v7, 0x64

    move v3, v2

    move v4, v2

    move v6, v2

    .line 337
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    goto :goto_0
.end method

.method private cp210xUsbEnable()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 321
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 322
    const/16 v1, 0x41

    .line 324
    const/4 v3, 0x1

    .line 326
    const/4 v5, 0x0

    .line 328
    const/16 v7, 0x64

    move v4, v2

    move v6, v2

    .line 321
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    goto :goto_0
.end method

.method private init()Z
    .locals 2

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->cp210xUsbEnable()I

    move-result v0

    .line 305
    .local v0, "ret":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    .line 306
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private intToLittleEndianBytes(I[B)V
    .locals 3
    .param p1, "in"    # I
    .param p2, "out"    # [B

    .prologue
    .line 670
    if-nez p2, :cond_1

    .line 675
    :cond_0
    return-void

    .line 671
    :cond_1
    array-length v1, p2

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 672
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 673
    mul-int/lit8 v1, v0, 0x8

    shr-int v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private littleEndianBytesToInt([B)I
    .locals 4
    .param p1, "in"    # [B

    .prologue
    const/4 v1, 0x0

    .line 683
    if-nez p1, :cond_1

    .line 689
    :cond_0
    return v1

    .line 684
    :cond_1
    array-length v2, p1

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 685
    const/4 v1, 0x0

    .line 686
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 687
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onRead(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 656
    iget-boolean v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mStopReadListener:Z

    if-eqz v1, :cond_1

    .line 660
    :cond_0
    return-void

    .line 657
    :cond_1
    iget-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->uartReadListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;

    .line 658
    .local v0, "listener":Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;
    invoke-interface {v0, p1}, Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;->onRead(I)V

    goto :goto_0
.end method

.method private startRead()V
    .locals 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mReadThreadStop:Z

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mReadThreadStop:Z

    .line 230
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mLoop:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    :cond_0
    return-void
.end method

.method private stopRead()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mReadThreadStop:Z

    .line 225
    return-void
.end method


# virtual methods
.method public addReadListener(Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;)V
    .locals 1
    .param p1, "listener"    # Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->uartReadListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    return-void
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    invoke-virtual {v0}, Lcom/physicaloid/misc/RingBuffer;->clear()V

    .line 626
    return-void
.end method

.method public clearReadListener()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->uartReadListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 643
    return-void
.end method

.method public close()Z
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->stopRead()V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->isOpened:Z

    .line 187
    invoke-direct {p0}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->cp210xUsbDisable()I

    .line 188
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUsbConnetionManager:Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-virtual {v0}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->close()Z

    move-result v0

    return v0
.end method

.method public getBaudrate()I
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    return v0
.end method

.method public getDataBits()I
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    return v0
.end method

.method public getDtr()Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget-boolean v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    return v0
.end method

.method public getParity()I
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    return v0
.end method

.method public getRts()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget-boolean v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    return v0
.end method

.method public getStopBits()I
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    return v0
.end method

.method public getUartConfig()Lcom/physicaloid/lib/usb/driver/uart/UartConfig;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->isOpened:Z

    return v0
.end method

.method public open()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-static {}, Lcom/physicaloid/lib/UsbVidList;->values()[Lcom/physicaloid/lib/UsbVidList;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 165
    :goto_1
    return v1

    .line 160
    :cond_0
    aget-object v0, v3, v2

    .line 161
    .local v0, "id":Lcom/physicaloid/lib/UsbVidList;
    new-instance v5, Lcom/physicaloid/lib/usb/UsbVidPid;

    invoke-virtual {v0}, Lcom/physicaloid/lib/UsbVidList;->getVid()I

    move-result v6

    invoke-direct {v5, v6, v1}, Lcom/physicaloid/lib/usb/UsbVidPid;-><init>(II)V

    invoke-virtual {p0, v5}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->open(Lcom/physicaloid/lib/usb/UsbVidPid;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    const/4 v1, 0x1

    goto :goto_1

    .line 160
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public open(Lcom/physicaloid/lib/usb/UsbVidPid;)Z
    .locals 3
    .param p1, "ids"    # Lcom/physicaloid/lib/usb/UsbVidPid;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 169
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUsbConnetionManager:Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-virtual {v2, p1}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->open(Lcom/physicaloid/lib/usb/UsbVidPid;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUsbConnetionManager:Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-virtual {v2}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->getConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 171
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUsbConnetionManager:Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-virtual {v2}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->getEndpointIn()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    iput-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mEndpointIn:Landroid/hardware/usb/UsbEndpoint;

    .line 172
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUsbConnetionManager:Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-virtual {v2}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->getEndpointOut()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    iput-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mEndpointOut:Landroid/hardware/usb/UsbEndpoint;

    .line 173
    invoke-direct {p0}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->init()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    const/16 v2, 0x2580

    invoke-virtual {p0, v2}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->setBaudrate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    invoke-virtual {v0}, Lcom/physicaloid/misc/RingBuffer;->clear()V

    .line 176
    invoke-direct {p0}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->startRead()V

    .line 177
    iput-boolean v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->isOpened:Z

    move v0, v1

    .line 178
    goto :goto_0
.end method

.method public read([BI)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "size"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/physicaloid/misc/RingBuffer;->get([BI)I

    move-result v0

    return v0
.end method

.method public setBaudrate(I)Z
    .locals 4
    .param p1, "baudrate"    # I

    .prologue
    const/4 v3, 0x4

    .line 389
    const/16 v2, 0x12c

    if-gt p1, v2, :cond_1

    const/16 p1, 0x12c

    .line 420
    :cond_0
    :goto_0
    new-array v0, v3, [B

    .line 421
    .local v0, "baudBytes":[B
    invoke-direct {p0, p1, v0}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->intToLittleEndianBytes(I[B)V

    .line 422
    const/16 v2, 0x1e

    invoke-direct {p0, v2, v0, v3}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->cp210xSetConfig(I[BI)I

    move-result v1

    .line 423
    .local v1, "ret":I
    if-gez v1, :cond_1e

    .line 425
    const/4 v2, 0x0

    .line 428
    :goto_1
    return v2

    .line 390
    .end local v0    # "baudBytes":[B
    .end local v1    # "ret":I
    :cond_1
    const/16 v2, 0x258

    if-gt p1, v2, :cond_2

    const/16 p1, 0x258

    goto :goto_0

    .line 391
    :cond_2
    const/16 v2, 0x4b0

    if-gt p1, v2, :cond_3

    const/16 p1, 0x4b0

    goto :goto_0

    .line 392
    :cond_3
    const/16 v2, 0x708

    if-gt p1, v2, :cond_4

    const/16 p1, 0x708

    goto :goto_0

    .line 393
    :cond_4
    const/16 v2, 0x960

    if-gt p1, v2, :cond_5

    const/16 p1, 0x960

    goto :goto_0

    .line 394
    :cond_5
    const/16 v2, 0xfa0

    if-gt p1, v2, :cond_6

    const/16 p1, 0xfa0

    goto :goto_0

    .line 395
    :cond_6
    const/16 v2, 0x12c3

    if-gt p1, v2, :cond_7

    const/16 p1, 0x12c0

    goto :goto_0

    .line 396
    :cond_7
    const/16 v2, 0x1c27

    if-gt p1, v2, :cond_8

    const/16 p1, 0x1c20

    goto :goto_0

    .line 397
    :cond_8
    const/16 v2, 0x258c

    if-gt p1, v2, :cond_9

    const/16 p1, 0x2580

    goto :goto_0

    .line 398
    :cond_9
    const/16 v2, 0x385c

    if-gt p1, v2, :cond_a

    const/16 p1, 0x3840

    goto :goto_0

    .line 399
    :cond_a
    const/16 v2, 0x3ebe

    if-gt p1, v2, :cond_b

    const/16 p1, 0x3e80

    goto :goto_0

    .line 400
    :cond_b
    const/16 v2, 0x4b32

    if-gt p1, v2, :cond_c

    const/16 p1, 0x4b00

    goto :goto_0

    .line 401
    :cond_c
    const/16 v2, 0x70f0

    if-gt p1, v2, :cond_d

    const/16 p1, 0x7080

    goto :goto_0

    .line 402
    :cond_d
    const v2, 0x96c9

    if-gt p1, v2, :cond_e

    const p1, 0x9600

    goto :goto_0

    .line 403
    :cond_e
    const v2, 0xc966

    if-gt p1, v2, :cond_f

    const p1, 0xc800

    goto :goto_0

    .line 404
    :cond_f
    const v2, 0xdbd8

    if-gt p1, v2, :cond_10

    const p1, 0xdac0

    goto :goto_0

    .line 405
    :cond_10
    const v2, 0xe2c5

    if-gt p1, v2, :cond_11

    const p1, 0xe100

    goto/16 :goto_0

    .line 406
    :cond_11
    const v2, 0xfa6f

    if-gt p1, v2, :cond_12

    const p1, 0xfa00

    goto/16 :goto_0

    .line 407
    :cond_12
    const v2, 0x12f28

    if-gt p1, v2, :cond_13

    const p1, 0x12c00

    goto/16 :goto_0

    .line 408
    :cond_13
    const v2, 0x1c924

    if-gt p1, v2, :cond_14

    const p1, 0x1c200

    goto/16 :goto_0

    .line 409
    :cond_14
    const v2, 0x1f943

    if-gt p1, v2, :cond_15

    const p1, 0x1f400

    goto/16 :goto_0

    .line 410
    :cond_15
    const v2, 0x264c4

    if-gt p1, v2, :cond_16

    const p1, 0x25800

    goto/16 :goto_0

    .line 411
    :cond_16
    const v2, 0x3a108

    if-gt p1, v2, :cond_17

    const p1, 0x38400

    goto/16 :goto_0

    .line 412
    :cond_17
    const v2, 0x3e11a

    if-gt p1, v2, :cond_18

    const p1, 0x3d090

    goto/16 :goto_0

    .line 413
    :cond_18
    const v2, 0x42aaa

    if-gt p1, v2, :cond_19

    const p1, 0x3e800

    goto/16 :goto_0

    .line 414
    :cond_19
    const v2, 0x78000

    if-gt p1, v2, :cond_1a

    const p1, 0x70800

    goto/16 :goto_0

    .line 415
    :cond_1a
    const v2, 0x8a762

    if-gt p1, v2, :cond_1b

    const p1, 0x7a120

    goto/16 :goto_0

    .line 416
    :cond_1b
    const v2, 0xa3a2e

    if-gt p1, v2, :cond_1c

    const p1, 0x8ca00

    goto/16 :goto_0

    .line 417
    :cond_1c
    const v2, 0xf4240

    if-ge p1, v2, :cond_1d

    const p1, 0xe1000

    goto/16 :goto_0

    .line 418
    :cond_1d
    const v2, 0x1e8480

    if-le p1, v2, :cond_0

    const p1, 0x1e8480

    goto/16 :goto_0

    .line 427
    .restart local v0    # "baudBytes":[B
    .restart local v1    # "ret":I
    :cond_1e
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput p1, v2, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    .line 428
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method public setDataBits(I)Z
    .locals 5
    .param p1, "dataBits"    # I

    .prologue
    const/4 v4, 0x4

    .line 434
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 436
    .local v1, "buf":[B
    array-length v3, v1

    invoke-direct {p0, v4, v1, v3}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->cp210xGetConfig(I[BI)I

    .line 437
    invoke-direct {p0, v1}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->littleEndianBytesToInt([B)I

    move-result v0

    .line 438
    .local v0, "bits":I
    and-int/lit16 v0, v0, -0xf01

    .line 440
    packed-switch p1, :pswitch_data_0

    .line 450
    or-int/lit16 v0, v0, 0x800

    .line 454
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->intToLittleEndianBytes(I[B)V

    .line 455
    array-length v3, v1

    invoke-direct {p0, v4, v1, v3}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->cp210xSetConfig(I[BI)I

    move-result v2

    .line 457
    .local v2, "ret":I
    if-gez v2, :cond_0

    .line 459
    const/4 v3, 0x0

    .line 463
    :goto_1
    return v3

    .line 442
    .end local v2    # "ret":I
    :pswitch_0
    or-int/lit16 v0, v0, 0x700

    .line 443
    goto :goto_0

    .line 446
    :pswitch_1
    or-int/lit16 v0, v0, 0x800

    .line 447
    goto :goto_0

    .line 462
    .restart local v2    # "ret":I
    :cond_0
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput p1, v3, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    .line 463
    const/4 v3, 0x1

    goto :goto_1

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDtrRts(ZZ)Z
    .locals 5
    .param p1, "dtrOn"    # Z
    .param p2, "rtsOn"    # Z

    .prologue
    .line 557
    const/4 v1, 0x0

    .line 558
    .local v1, "ctrlValue":I
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 560
    .local v0, "buf":[B
    if-eqz p1, :cond_0

    .line 561
    or-int/lit8 v1, v1, 0x1

    .line 562
    or-int/lit16 v1, v1, 0x100

    .line 568
    :goto_0
    if-eqz p2, :cond_1

    .line 569
    or-int/lit8 v1, v1, 0x2

    .line 570
    or-int/lit16 v1, v1, 0x200

    .line 576
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->intToLittleEndianBytes(I[B)V

    .line 577
    const/4 v3, 0x7

    array-length v4, v0

    invoke-direct {p0, v3, v0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->cp210xSetConfig(I[BI)I

    move-result v2

    .line 579
    .local v2, "ret":I
    if-gez v2, :cond_2

    .line 581
    const/4 v3, 0x0

    .line 585
    :goto_2
    return v3

    .line 564
    .end local v2    # "ret":I
    :cond_0
    and-int/lit8 v1, v1, -0x2

    .line 565
    or-int/lit16 v1, v1, 0x100

    goto :goto_0

    .line 572
    :cond_1
    and-int/lit8 v1, v1, -0x3

    .line 573
    or-int/lit16 v1, v1, 0x200

    goto :goto_1

    .line 583
    .restart local v2    # "ret":I
    :cond_2
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput-boolean p1, v3, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    .line 584
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput-boolean p2, v3, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    .line 585
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public setParity(I)Z
    .locals 5
    .param p1, "parity"    # I

    .prologue
    const/4 v4, 0x4

    .line 470
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 472
    .local v1, "buf":[B
    array-length v3, v1

    invoke-direct {p0, v4, v1, v3}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->cp210xGetConfig(I[BI)I

    .line 473
    invoke-direct {p0, v1}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->littleEndianBytesToInt([B)I

    move-result v0

    .line 474
    .local v0, "bits":I
    and-int/lit16 v0, v0, -0xf1

    .line 476
    packed-switch p1, :pswitch_data_0

    .line 499
    or-int/lit8 v0, v0, 0x0

    .line 503
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->intToLittleEndianBytes(I[B)V

    .line 504
    array-length v3, v1

    invoke-direct {p0, v4, v1, v3}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->cp210xSetConfig(I[BI)I

    move-result v2

    .line 506
    .local v2, "ret":I
    if-gez v2, :cond_0

    .line 508
    const/4 v3, 0x0

    .line 512
    :goto_1
    return v3

    .line 479
    .end local v2    # "ret":I
    :pswitch_0
    or-int/lit8 v0, v0, 0x0

    .line 480
    goto :goto_0

    .line 483
    :pswitch_1
    or-int/lit8 v0, v0, 0x10

    .line 484
    goto :goto_0

    .line 487
    :pswitch_2
    or-int/lit8 v0, v0, 0x20

    .line 488
    goto :goto_0

    .line 491
    :pswitch_3
    or-int/lit8 v0, v0, 0x30

    .line 492
    goto :goto_0

    .line 495
    :pswitch_4
    or-int/lit8 v0, v0, 0x40

    .line 496
    goto :goto_0

    .line 511
    .restart local v2    # "ret":I
    :cond_0
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput p1, v3, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    .line 512
    const/4 v3, 0x1

    goto :goto_1

    .line 476
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setStopBits(I)Z
    .locals 5
    .param p1, "stopBits"    # I

    .prologue
    const/4 v4, 0x4

    .line 519
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 521
    .local v1, "buf":[B
    array-length v3, v1

    invoke-direct {p0, v4, v1, v3}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->cp210xGetConfig(I[BI)I

    .line 522
    invoke-direct {p0, v1}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->littleEndianBytesToInt([B)I

    move-result v0

    .line 523
    .local v0, "bits":I
    and-int/lit8 v0, v0, -0x10

    .line 525
    packed-switch p1, :pswitch_data_0

    .line 539
    or-int/lit8 v0, v0, 0x0

    .line 543
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->intToLittleEndianBytes(I[B)V

    .line 544
    array-length v3, v1

    invoke-direct {p0, v4, v1, v3}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->cp210xSetConfig(I[BI)I

    move-result v2

    .line 546
    .local v2, "ret":I
    if-gez v2, :cond_0

    .line 548
    const/4 v3, 0x0

    .line 552
    :goto_1
    return v3

    .line 527
    .end local v2    # "ret":I
    :pswitch_0
    or-int/lit8 v0, v0, 0x0

    .line 528
    goto :goto_0

    .line 531
    :pswitch_1
    or-int/lit8 v0, v0, 0x1

    .line 532
    goto :goto_0

    .line 535
    :pswitch_2
    or-int/lit8 v0, v0, 0x2

    .line 536
    goto :goto_0

    .line 551
    .restart local v2    # "ret":I
    :cond_0
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput p1, v3, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    .line 552
    const/4 v3, 0x1

    goto :goto_1

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setUartConfig(Lcom/physicaloid/lib/usb/driver/uart/UartConfig;)Z
    .locals 6
    .param p1, "config"    # Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 268
    const/4 v0, 0x1

    .line 269
    .local v0, "res":Z
    const/4 v1, 0x1

    .line 270
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    iget v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    if-eq v4, v5, :cond_0

    .line 271
    iget v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    invoke-virtual {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->setBaudrate(I)Z

    move-result v0

    .line 272
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    move v1, v2

    .line 275
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    iget v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    if-eq v4, v5, :cond_1

    .line 276
    iget v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    invoke-virtual {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->setDataBits(I)Z

    move-result v0

    .line 277
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    move v1, v2

    .line 280
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    iget v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    if-eq v4, v5, :cond_2

    .line 281
    iget v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    invoke-virtual {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->setParity(I)Z

    move-result v0

    .line 282
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    move v1, v2

    .line 285
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    iget v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    if-eq v4, v5, :cond_3

    .line 286
    iget v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    invoke-virtual {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->setStopBits(I)Z

    move-result v0

    .line 287
    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    move v1, v2

    .line 290
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget-boolean v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    iget-boolean v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    if-ne v4, v5, :cond_4

    .line 291
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget-boolean v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    iget-boolean v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    if-eq v4, v5, :cond_5

    .line 292
    :cond_4
    iget-boolean v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    iget-boolean v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    invoke-virtual {p0, v4, v5}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->setDtrRts(ZZ)Z

    move-result v0

    .line 293
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    move v1, v2

    .line 296
    :cond_5
    :goto_4
    return v1

    :cond_6
    move v1, v3

    .line 272
    goto :goto_0

    :cond_7
    move v1, v3

    .line 277
    goto :goto_1

    :cond_8
    move v1, v3

    .line 282
    goto :goto_2

    :cond_9
    move v1, v3

    .line 287
    goto :goto_3

    :cond_a
    move v1, v3

    .line 293
    goto :goto_4
.end method

.method public startReadListener()V
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mStopReadListener:Z

    .line 648
    return-void
.end method

.method public stopReadListener()V
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mStopReadListener:Z

    .line 653
    return-void
.end method

.method public write([BI)I
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 198
    if-nez p1, :cond_1

    move v0, v4

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    const/4 v0, 0x0

    .line 202
    .local v0, "offset":I
    const/16 v5, 0x100

    new-array v1, v5, [B

    .line 204
    .local v1, "wbuf":[B
    :goto_1
    if-ge v0, p2, :cond_0

    .line 205
    const/16 v2, 0x100

    .line 207
    .local v2, "write_size":I
    add-int v5, v0, v2

    if-le v5, p2, :cond_2

    .line 208
    sub-int v2, p2, v0

    .line 210
    :cond_2
    invoke-static {p1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iget-object v5, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->mEndpointOut:Landroid/hardware/usb/UsbEndpoint;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v1, v2, v7}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v3

    .line 214
    .local v3, "written_size":I
    if-gez v3, :cond_3

    .line 215
    const/4 v0, -0x1

    goto :goto_0

    .line 217
    :cond_3
    add-int/2addr v0, v3

    goto :goto_1
.end method

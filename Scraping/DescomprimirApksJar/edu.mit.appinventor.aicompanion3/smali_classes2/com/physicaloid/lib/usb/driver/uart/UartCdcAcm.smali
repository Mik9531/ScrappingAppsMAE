.class public Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;
.super Lcom/physicaloid/lib/framework/SerialCommunicator;
.source "UartCdcAcm.java"


# static fields
.field private static final DEBUG_SHOW:Z = false

.field private static final DEFAULT_BAUDRATE:I = 0x2580

.field private static final RING_BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String;

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
    .line 35
    const-class v0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/physicaloid/lib/framework/SerialCommunicator;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mReadThreadStop:Z

    .line 139
    new-instance v0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm$1;

    invoke-direct {v0, p0}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm$1;-><init>(Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;)V

    iput-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mLoop:Ljava/lang/Runnable;

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->uartReadListenerList:Ljava/util/List;

    .line 348
    iput-boolean v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mStopReadListener:Z

    .line 58
    new-instance v0, Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-direct {v0, p1}, Lcom/physicaloid/lib/usb/UsbCdcConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUsbConnetionManager:Lcom/physicaloid/lib/usb/UsbCdcConnection;

    .line 59
    new-instance v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    invoke-direct {v0}, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;-><init>()V

    iput-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    .line 60
    new-instance v0, Lcom/physicaloid/misc/RingBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/physicaloid/misc/RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    .line 61
    iput-boolean v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->isOpened:Z

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-object v0
.end method

.method static synthetic access$1(Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;)Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mEndpointIn:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;)Lcom/physicaloid/misc/RingBuffer;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;I)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->onRead(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mReadThreadStop:Z

    return v0
.end method

.method private init()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v3

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x21

    const/16 v2, 0x22

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v8

    .line 216
    .local v8, "ret":I
    if-ltz v8, :cond_0

    .line 217
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private onRead(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 371
    iget-boolean v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mStopReadListener:Z

    if-eqz v1, :cond_1

    .line 375
    :cond_0
    return-void

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->uartReadListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;

    .line 373
    .local v0, "listener":Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;
    invoke-interface {v0, p1}, Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;->onRead(I)V

    goto :goto_0
.end method

.method private startRead()V
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mReadThreadStop:Z

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mReadThreadStop:Z

    .line 135
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mLoop:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 137
    :cond_0
    return-void
.end method

.method private stopRead()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mReadThreadStop:Z

    .line 130
    return-void
.end method


# virtual methods
.method public addReadListener(Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;)V
    .locals 1
    .param p1, "listener"    # Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->uartReadListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    return-void
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    invoke-virtual {v0}, Lcom/physicaloid/misc/RingBuffer;->clear()V

    .line 341
    return-void
.end method

.method public clearReadListener()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->uartReadListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    return-void
.end method

.method public close()Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->stopRead()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->isOpened:Z

    .line 93
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUsbConnetionManager:Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-virtual {v0}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->close()Z

    move-result v0

    return v0
.end method

.method public getBaudrate()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    return v0
.end method

.method public getDataBits()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    return v0
.end method

.method public getDtr()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget-boolean v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    return v0
.end method

.method public getParity()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    return v0
.end method

.method public getRts()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget-boolean v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    return v0
.end method

.method public getStopBits()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    return v0
.end method

.method public getUartConfig()Lcom/physicaloid/lib/usb/driver/uart/UartConfig;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->isOpened:Z

    return v0
.end method

.method public open()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lcom/physicaloid/lib/UsbVidList;->values()[Lcom/physicaloid/lib/UsbVidList;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 71
    :goto_1
    return v1

    .line 66
    :cond_0
    aget-object v0, v3, v2

    .line 67
    .local v0, "id":Lcom/physicaloid/lib/UsbVidList;
    new-instance v5, Lcom/physicaloid/lib/usb/UsbVidPid;

    invoke-virtual {v0}, Lcom/physicaloid/lib/UsbVidList;->getVid()I

    move-result v6

    invoke-direct {v5, v6, v1}, Lcom/physicaloid/lib/usb/UsbVidPid;-><init>(II)V

    invoke-virtual {p0, v5}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->open(Lcom/physicaloid/lib/usb/UsbVidPid;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    const/4 v1, 0x1

    goto :goto_1

    .line 66
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

    .line 75
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUsbConnetionManager:Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-virtual {v2, p1, v1}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->open(Lcom/physicaloid/lib/usb/UsbVidPid;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUsbConnetionManager:Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-virtual {v2}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->getConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 77
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUsbConnetionManager:Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-virtual {v2}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->getEndpointIn()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    iput-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mEndpointIn:Landroid/hardware/usb/UsbEndpoint;

    .line 78
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUsbConnetionManager:Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-virtual {v2}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->getEndpointOut()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    iput-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mEndpointOut:Landroid/hardware/usb/UsbEndpoint;

    .line 79
    invoke-direct {p0}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->init()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    const/16 v2, 0x2580

    invoke-virtual {p0, v2}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->setBaudrate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    invoke-virtual {v0}, Lcom/physicaloid/misc/RingBuffer;->clear()V

    .line 82
    invoke-direct {p0}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->startRead()V

    .line 83
    iput-boolean v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->isOpened:Z

    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public read([BI)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "size"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/physicaloid/misc/RingBuffer;->get([BI)I

    move-result v0

    return v0
.end method

.method public setBaudrate(I)Z
    .locals 12
    .param p1, "baudrate"    # I

    .prologue
    const/4 v6, 0x7

    const/4 v11, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 231
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 233
    .local v8, "baudByte":[B
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, v8, v3

    .line 234
    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v8, v10

    .line 235
    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, v8, v7

    .line 236
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, v8, v11

    .line 237
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x21

    const/16 v2, 0x20

    new-array v5, v6, [B

    .line 238
    aget-byte v4, v8, v3

    aput-byte v4, v5, v3

    aget-byte v4, v8, v10

    aput-byte v4, v5, v10

    aget-byte v4, v8, v7

    aput-byte v4, v5, v7

    aget-byte v4, v8, v11

    aput-byte v4, v5, v11

    const/4 v4, 0x6

    .line 239
    const/16 v7, 0x8

    aput-byte v7, v5, v4

    const/16 v7, 0x64

    move v4, v3

    .line 237
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v9

    .line 240
    .local v9, "ret":I
    if-gez v9, :cond_0

    .line 245
    :goto_0
    return v3

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput p1, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    move v3, v10

    .line 245
    goto :goto_0
.end method

.method public setDataBits(I)Z
    .locals 1
    .param p1, "dataBits"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput p1, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public setDtrRts(ZZ)Z
    .locals 9
    .param p1, "dtrOn"    # Z
    .param p2, "rtsOn"    # Z

    .prologue
    const/4 v4, 0x0

    .line 286
    const/4 v3, 0x0

    .line 287
    .local v3, "ctrlValue":I
    if-eqz p1, :cond_0

    .line 288
    or-int/lit8 v3, v3, 0x1

    .line 290
    :cond_0
    if-eqz p2, :cond_1

    .line 291
    or-int/lit8 v3, v3, 0x2

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x21

    const/16 v2, 0x22

    const/4 v5, 0x0

    const/16 v7, 0x64

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v8

    .line 294
    .local v8, "ret":I
    if-gez v8, :cond_2

    .line 300
    :goto_0
    return v4

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput-boolean p1, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    .line 299
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput-boolean p2, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    .line 300
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setParity(I)Z
    .locals 1
    .param p1, "parity"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput p1, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public setStopBits(I)Z
    .locals 1
    .param p1, "stopBits"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput p1, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public setUartConfig(Lcom/physicaloid/lib/usb/driver/uart/UartConfig;)Z
    .locals 6
    .param p1, "config"    # Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    const/4 v0, 0x1

    .line 179
    .local v0, "res":Z
    const/4 v1, 0x1

    .line 180
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    iget v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    if-eq v4, v5, :cond_0

    .line 181
    iget v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    invoke-virtual {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->setBaudrate(I)Z

    move-result v0

    .line 182
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    move v1, v2

    .line 185
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    iget v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    if-eq v4, v5, :cond_1

    .line 186
    iget v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    invoke-virtual {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->setDataBits(I)Z

    move-result v0

    .line 187
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    move v1, v2

    .line 190
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    iget v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    if-eq v4, v5, :cond_2

    .line 191
    iget v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    invoke-virtual {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->setParity(I)Z

    move-result v0

    .line 192
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    move v1, v2

    .line 195
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    iget v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    if-eq v4, v5, :cond_3

    .line 196
    iget v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    invoke-virtual {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->setStopBits(I)Z

    move-result v0

    .line 197
    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    move v1, v2

    .line 200
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget-boolean v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    iget-boolean v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    if-ne v4, v5, :cond_4

    .line 201
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget-boolean v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    iget-boolean v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    if-eq v4, v5, :cond_5

    .line 202
    :cond_4
    iget-boolean v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    iget-boolean v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    invoke-virtual {p0, v4, v5}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->setDtrRts(ZZ)Z

    move-result v0

    .line 203
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    move v1, v2

    .line 206
    :cond_5
    :goto_4
    return v1

    :cond_6
    move v1, v3

    .line 182
    goto :goto_0

    :cond_7
    move v1, v3

    .line 187
    goto :goto_1

    :cond_8
    move v1, v3

    .line 192
    goto :goto_2

    :cond_9
    move v1, v3

    .line 197
    goto :goto_3

    :cond_a
    move v1, v3

    .line 203
    goto :goto_4
.end method

.method public startReadListener()V
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mStopReadListener:Z

    .line 363
    return-void
.end method

.method public stopReadListener()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mStopReadListener:Z

    .line 368
    return-void
.end method

.method public write([BI)I
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 103
    if-nez p1, :cond_1

    move v0, v4

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    const/4 v0, 0x0

    .line 107
    .local v0, "offset":I
    const/16 v5, 0x100

    new-array v1, v5, [B

    .line 109
    .local v1, "wbuf":[B
    :goto_1
    if-ge v0, p2, :cond_0

    .line 110
    const/16 v2, 0x100

    .line 112
    .local v2, "write_size":I
    add-int v5, v0, v2

    if-le v5, p2, :cond_2

    .line 113
    sub-int v2, p2, v0

    .line 115
    :cond_2
    invoke-static {p1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v5, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->mEndpointOut:Landroid/hardware/usb/UsbEndpoint;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v1, v2, v7}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v3

    .line 119
    .local v3, "written_size":I
    if-gez v3, :cond_3

    .line 120
    const/4 v0, -0x1

    goto :goto_0

    .line 122
    :cond_3
    add-int/2addr v0, v3

    goto :goto_1
.end method

.class public Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;
.super Lcom/physicaloid/lib/framework/SerialCommunicator;
.source "UartFtdi.java"


# static fields
.field private static final DEBUG_SHOW:Z = true

.field private static final MAX_READBUF_SIZE:I = 0x100

.field private static final READ_WAIT_MS:I = 0xa

.field private static final RING_BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String;

.field private static final USB_OPEN_INDEX:I = 0x0

.field private static final USB_READ_BUFFER_SIZE:I = 0x100

.field private static final USB_WRITE_BUFFER_SIZE:I = 0x100


# instance fields
.field private ftD2xx:Lcom/ftdi/j2xx/D2xxManager;

.field private ftDev:Lcom/ftdi/j2xx/FT_Device;

.field private mBuffer:Lcom/physicaloid/misc/RingBuffer;

.field private mContext:Landroid/content/Context;

.field private mLoop:Ljava/lang/Runnable;

.field private mReadThreadStop:Z

.field private mStopReadListener:Z

.field private mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

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
    .line 33
    const-class v0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/physicaloid/lib/framework/SerialCommunicator;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftD2xx:Lcom/ftdi/j2xx/D2xxManager;

    .line 38
    iput-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    .line 176
    new-instance v1, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi$1;

    invoke-direct {v1, p0}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi$1;-><init>(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;)V

    iput-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mLoop:Ljava/lang/Runnable;

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->uartReadListenerList:Ljava/util/List;

    .line 412
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mStopReadListener:Z

    .line 54
    iput-object p1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mContext:Landroid/content/Context;

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mReadThreadStop:Z

    .line 56
    new-instance v1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    invoke-direct {v1}, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;-><init>()V

    iput-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    .line 57
    new-instance v1, Lcom/physicaloid/misc/RingBuffer;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Lcom/physicaloid/misc/RingBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ftdi/j2xx/D2xxManager;->getInstance(Landroid/content/Context;)Lcom/ftdi/j2xx/D2xxManager;

    move-result-object v1

    iput-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftD2xx:Lcom/ftdi/j2xx/D2xxManager;
    :try_end_0
    .catch Lcom/ftdi/j2xx/D2xxManager$D2xxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Lcom/ftdi/j2xx/D2xxManager$D2xxException;
    sget-object v1, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ftdi/j2xx/D2xxManager$D2xxException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;)Lcom/ftdi/j2xx/FT_Device;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;[BI)Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0, p1, p2}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->toHexStr([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;)Lcom/physicaloid/misc/RingBuffer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;I)V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->onRead(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mReadThreadStop:Z

    return v0
.end method

.method private convertFtdiDataBits(I)B
    .locals 1
    .param p1, "dataBits"    # I

    .prologue
    const/16 v0, 0x8

    .line 444
    packed-switch p1, :pswitch_data_0

    .line 450
    :goto_0
    :pswitch_0
    return v0

    .line 446
    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertFtdiParity(I)B
    .locals 1
    .param p1, "parity"    # I

    .prologue
    const/4 v0, 0x0

    .line 468
    packed-switch p1, :pswitch_data_0

    .line 480
    :goto_0
    :pswitch_0
    return v0

    .line 472
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 474
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 476
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 478
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private convertFtdiStopBits(I)B
    .locals 1
    .param p1, "stopBits"    # I

    .prologue
    const/4 v0, 0x0

    .line 456
    packed-switch p1, :pswitch_data_0

    .line 462
    :goto_0
    :pswitch_0
    return v0

    .line 460
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onRead(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 435
    iget-boolean v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mStopReadListener:Z

    if-eqz v1, :cond_1

    .line 439
    :cond_0
    return-void

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->uartReadListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;

    .line 437
    .local v0, "listener":Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;
    invoke-interface {v0, p1}, Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;->onRead(I)V

    goto :goto_0
.end method

.method private startRead()V
    .locals 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mReadThreadStop:Z

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mReadThreadStop:Z

    .line 171
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mLoop:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    :cond_0
    return-void
.end method

.method private stopRead()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mReadThreadStop:Z

    .line 165
    return-void
.end method

.method private toHexStr([BI)Ljava/lang/String;
    .locals 7
    .param p1, "b"    # [B
    .param p2, "length"    # I

    .prologue
    .line 485
    const-string v1, ""

    .line 486
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 489
    return-object v1

    .line 487
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%02x "

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

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addReadListener(Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;)V
    .locals 1
    .param p1, "listener"    # Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->uartReadListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method public clearBuffer()V
    .locals 3

    .prologue
    .line 400
    iget-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/ftdi/j2xx/FT_Device;->purge(B)Z

    .line 400
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    invoke-virtual {v0}, Lcom/physicaloid/misc/RingBuffer;->clear()V

    .line 404
    return-void

    .line 400
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearReadListener()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->uartReadListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 422
    return-void
.end method

.method public close()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->stopRead()V

    .line 118
    iget-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    invoke-virtual {v0}, Lcom/ftdi/j2xx/FT_Device;->close()V

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    sget-object v0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->TAG:Ljava/lang/String;

    const-string v1, "An FTDI device is closed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBaudrate()I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    return v0
.end method

.method public getDataBits()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    return v0
.end method

.method public getDtr()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget-boolean v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    return v0
.end method

.method public getParity()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    return v0
.end method

.method public getRts()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget-boolean v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    return v0
.end method

.method public getStopBits()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v0, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    return v0
.end method

.method public getUartConfig()Lcom/physicaloid/lib/usb/driver/uart/UartConfig;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    return-object v0
.end method

.method public isOpened()Z
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    invoke-virtual {v0}, Lcom/ftdi/j2xx/FT_Device;->isOpen()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public open()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftD2xx:Lcom/ftdi/j2xx/D2xxManager;

    if-nez v4, :cond_0

    .line 70
    :try_start_0
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/ftdi/j2xx/D2xxManager;->getInstance(Landroid/content/Context;)Lcom/ftdi/j2xx/D2xxManager;

    move-result-object v4

    iput-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftD2xx:Lcom/ftdi/j2xx/D2xxManager;
    :try_end_0
    .catch Lcom/ftdi/j2xx/D2xxManager$D2xxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    if-nez v4, :cond_3

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "devCount":I
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftD2xx:Lcom/ftdi/j2xx/D2xxManager;

    iget-object v5, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/ftdi/j2xx/D2xxManager;->createDeviceInfoList(Landroid/content/Context;)I

    move-result v0

    .line 81
    sget-object v4, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Device number : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-array v1, v0, [Lcom/ftdi/j2xx/D2xxManager$FtDeviceInfoListNode;

    .line 84
    .local v1, "deviceList":[Lcom/ftdi/j2xx/D2xxManager$FtDeviceInfoListNode;
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftD2xx:Lcom/ftdi/j2xx/D2xxManager;

    invoke-virtual {v4, v0, v1}, Lcom/ftdi/j2xx/D2xxManager;->getDeviceInfoList(I[Lcom/ftdi/j2xx/D2xxManager$FtDeviceInfoListNode;)I

    .line 86
    if-gtz v0, :cond_1

    .line 110
    .end local v0    # "devCount":I
    .end local v1    # "deviceList":[Lcom/ftdi/j2xx/D2xxManager$FtDeviceInfoListNode;
    :goto_0
    return v3

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "ex":Lcom/ftdi/j2xx/D2xxManager$D2xxException;
    sget-object v4, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/ftdi/j2xx/D2xxManager$D2xxException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    .end local v2    # "ex":Lcom/ftdi/j2xx/D2xxManager$D2xxException;
    .restart local v0    # "devCount":I
    .restart local v1    # "deviceList":[Lcom/ftdi/j2xx/D2xxManager$FtDeviceInfoListNode;
    :cond_1
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftD2xx:Lcom/ftdi/j2xx/D2xxManager;

    iget-object v5, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/ftdi/j2xx/D2xxManager;->openByIndex(Landroid/content/Context;I)Lcom/ftdi/j2xx/FT_Device;

    move-result-object v4

    iput-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    .line 99
    .end local v0    # "devCount":I
    .end local v1    # "deviceList":[Lcom/ftdi/j2xx/D2xxManager$FtDeviceInfoListNode;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    invoke-virtual {v4}, Lcom/ftdi/j2xx/FT_Device;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 100
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v4

    .line 101
    :try_start_1
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    invoke-virtual {v3}, Lcom/ftdi/j2xx/FT_Device;->resetDevice()Z

    .line 100
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v3, v3, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    invoke-virtual {p0, v3}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->setBaudrate(I)Z

    .line 104
    sget-object v3, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->TAG:Ljava/lang/String;

    const-string v4, "An FTDI device is opened."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->startRead()V

    .line 106
    const/4 v3, 0x1

    goto :goto_0

    .line 92
    :cond_3
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftD2xx:Lcom/ftdi/j2xx/D2xxManager;

    iget-object v5, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/ftdi/j2xx/D2xxManager;->createDeviceInfoList(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_2

    .line 93
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v4

    .line 94
    :try_start_2
    iget-object v5, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftD2xx:Lcom/ftdi/j2xx/D2xxManager;

    iget-object v6, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/ftdi/j2xx/D2xxManager;->openByIndex(Landroid/content/Context;I)Lcom/ftdi/j2xx/FT_Device;

    move-result-object v5

    iput-object v5, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    .line 93
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 100
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 108
    :cond_4
    sget-object v4, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->TAG:Ljava/lang/String;

    const-string v5, "Cannot open an FTDI device."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public read([BI)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "size"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mBuffer:Lcom/physicaloid/misc/RingBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/physicaloid/misc/RingBuffer;->get([BI)I

    move-result v0

    return v0
.end method

.method public setBaudrate(I)Z
    .locals 3
    .param p1, "baudrate"    # I

    .prologue
    .line 258
    iget-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    const/4 v0, 0x0

    .line 260
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v2

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    invoke-virtual {v1, p1}, Lcom/ftdi/j2xx/FT_Device;->setBaudRate(I)Z

    move-result v0

    .line 260
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput p1, v1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setDataBits(I)Z
    .locals 6
    .param p1, "dataBits"    # I

    .prologue
    .line 272
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 283
    :cond_0
    :goto_0
    return v3

    .line 273
    :cond_1
    const/4 v3, 0x0

    .line 274
    .local v3, "ret":Z
    invoke-direct {p0, p1}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->convertFtdiDataBits(I)B

    move-result v0

    .line 275
    .local v0, "ftdiDataBits":B
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    invoke-direct {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->convertFtdiStopBits(I)B

    move-result v2

    .line 276
    .local v2, "ftdiStopBits":B
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    invoke-direct {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->convertFtdiParity(I)B

    move-result v1

    .line 277
    .local v1, "ftdiParity":B
    iget-object v5, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v5

    .line 278
    :try_start_0
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    invoke-virtual {v4, v0, v2, v1}, Lcom/ftdi/j2xx/FT_Device;->setDataCharacteristics(BBB)Z

    move-result v3

    .line 277
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-eqz v3, :cond_0

    .line 281
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput p1, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setDtrRts(ZZ)Z
    .locals 5
    .param p1, "dtrOn"    # Z
    .param p2, "rtsOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    if-nez v3, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v2

    .line 324
    :cond_1
    const/4 v0, 0x0

    .line 325
    .local v0, "retDtr":Z
    const/4 v1, 0x0

    .line 326
    .local v1, "retRts":Z
    if-eqz p1, :cond_4

    .line 327
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v3

    .line 328
    :try_start_0
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    invoke-virtual {v4}, Lcom/ftdi/j2xx/FT_Device;->setDtr()Z

    move-result v0

    .line 327
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :goto_1
    if-eqz v0, :cond_2

    .line 336
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput-boolean p1, v3, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    .line 339
    :cond_2
    if-eqz p2, :cond_5

    .line 340
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v3

    .line 341
    :try_start_1
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    invoke-virtual {v4}, Lcom/ftdi/j2xx/FT_Device;->setRts()Z

    move-result v1

    .line 340
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 348
    :goto_2
    if-eqz v1, :cond_3

    .line 349
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput-boolean p2, v3, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    .line 351
    :cond_3
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 331
    :cond_4
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v3

    .line 332
    :try_start_3
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    invoke-virtual {v4}, Lcom/ftdi/j2xx/FT_Device;->clrDtr()Z

    move-result v0

    .line 331
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 340
    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 344
    :cond_5
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v3

    .line 345
    :try_start_5
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    invoke-virtual {v4}, Lcom/ftdi/j2xx/FT_Device;->clrRts()Z

    move-result v1

    .line 344
    monitor-exit v3

    goto :goto_2

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2
.end method

.method public setParity(I)Z
    .locals 6
    .param p1, "parity"    # I

    .prologue
    .line 289
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 300
    :cond_0
    :goto_0
    return v3

    .line 290
    :cond_1
    const/4 v3, 0x0

    .line 291
    .local v3, "ret":Z
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    invoke-direct {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->convertFtdiDataBits(I)B

    move-result v0

    .line 292
    .local v0, "ftdiDataBits":B
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    invoke-direct {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->convertFtdiStopBits(I)B

    move-result v2

    .line 293
    .local v2, "ftdiStopBits":B
    invoke-direct {p0, p1}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->convertFtdiParity(I)B

    move-result v1

    .line 294
    .local v1, "ftdiParity":B
    iget-object v5, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v5

    .line 295
    :try_start_0
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    invoke-virtual {v4, v0, v2, v1}, Lcom/ftdi/j2xx/FT_Device;->setDataCharacteristics(BBB)Z

    move-result v3

    .line 294
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    if-eqz v3, :cond_0

    .line 298
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput p1, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setStopBits(I)Z
    .locals 6
    .param p1, "stopBits"    # I

    .prologue
    .line 306
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 317
    :cond_0
    :goto_0
    return v3

    .line 307
    :cond_1
    const/4 v3, 0x0

    .line 308
    .local v3, "ret":Z
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    invoke-direct {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->convertFtdiDataBits(I)B

    move-result v0

    .line 309
    .local v0, "ftdiDataBits":B
    invoke-direct {p0, p1}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->convertFtdiStopBits(I)B

    move-result v2

    .line 310
    .local v2, "ftdiStopBits":B
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    invoke-direct {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->convertFtdiParity(I)B

    move-result v1

    .line 311
    .local v1, "ftdiParity":B
    iget-object v5, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v5

    .line 312
    :try_start_0
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    invoke-virtual {v4, v0, v2, v1}, Lcom/ftdi/j2xx/FT_Device;->setDataCharacteristics(BBB)Z

    move-result v3

    .line 311
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    if-eqz v3, :cond_0

    .line 315
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iput p1, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setUartConfig(Lcom/physicaloid/lib/usb/driver/uart/UartConfig;)Z
    .locals 6
    .param p1, "config"    # Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 215
    const/4 v0, 0x1

    .line 216
    .local v0, "res":Z
    const/4 v1, 0x1

    .line 217
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    iget v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    if-eq v4, v5, :cond_0

    .line 218
    iget v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    invoke-virtual {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->setBaudrate(I)Z

    move-result v0

    .line 219
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    move v1, v2

    .line 222
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    iget v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    if-eq v4, v5, :cond_1

    .line 223
    iget v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    invoke-virtual {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->setDataBits(I)Z

    move-result v0

    .line 224
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    move v1, v2

    .line 227
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    iget v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    if-eq v4, v5, :cond_2

    .line 228
    iget v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    invoke-virtual {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->setParity(I)Z

    move-result v0

    .line 229
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    move v1, v2

    .line 232
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    iget v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    if-eq v4, v5, :cond_3

    .line 233
    iget v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    invoke-virtual {p0, v4}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->setStopBits(I)Z

    move-result v0

    .line 234
    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    move v1, v2

    .line 237
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget-boolean v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    iget-boolean v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    if-ne v4, v5, :cond_4

    .line 238
    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mUartConfig:Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget-boolean v4, v4, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    iget-boolean v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    if-eq v4, v5, :cond_5

    .line 239
    :cond_4
    iget-boolean v4, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    iget-boolean v5, p1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    invoke-virtual {p0, v4, v5}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->setDtrRts(ZZ)Z

    move-result v0

    .line 240
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    move v1, v2

    .line 243
    :cond_5
    :goto_4
    return v1

    :cond_6
    move v1, v3

    .line 219
    goto :goto_0

    :cond_7
    move v1, v3

    .line 224
    goto :goto_1

    :cond_8
    move v1, v3

    .line 229
    goto :goto_2

    :cond_9
    move v1, v3

    .line 234
    goto :goto_3

    :cond_a
    move v1, v3

    .line 240
    goto :goto_4
.end method

.method public startReadListener()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mStopReadListener:Z

    .line 427
    return-void
.end method

.method public stopReadListener()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->mStopReadListener:Z

    .line 432
    return-void
.end method

.method public write([BI)I
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 135
    if-nez p1, :cond_1

    move v0, v4

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    const/4 v0, 0x0

    .line 139
    .local v0, "offset":I
    const/16 v5, 0x100

    new-array v1, v5, [B

    .line 141
    .local v1, "wbuf":[B
    :goto_1
    if-ge v0, p2, :cond_0

    .line 142
    const/16 v2, 0x100

    .line 144
    .local v2, "write_size":I
    add-int v5, v0, v2

    if-le v5, p2, :cond_2

    .line 145
    sub-int v2, p2, v0

    .line 147
    :cond_2
    invoke-static {p1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v5, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    monitor-enter v5

    .line 150
    :try_start_0
    iget-object v6, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->ftDev:Lcom/ftdi/j2xx/FT_Device;

    invoke-virtual {v6, v1, v2}, Lcom/ftdi/j2xx/FT_Device;->write([BI)I

    move-result v3

    .line 149
    .local v3, "written_size":I
    monitor-exit v5

    .line 153
    if-gez v3, :cond_3

    .line 154
    const/4 v0, -0x1

    goto :goto_0

    .line 149
    .end local v3    # "written_size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 156
    .restart local v3    # "written_size":I
    :cond_3
    add-int/2addr v0, v3

    goto :goto_1
.end method

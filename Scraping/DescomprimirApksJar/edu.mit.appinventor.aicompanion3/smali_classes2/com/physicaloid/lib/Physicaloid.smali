.class public Lcom/physicaloid/lib/Physicaloid;
.super Ljava/lang/Object;
.source "Physicaloid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/physicaloid/lib/Physicaloid$UploadCallBack;
    }
.end annotation


# static fields
.field private static final DEBUG_SHOW:Z = true

.field private static final LOCK:Ljava/lang/Object;

.field protected static final LOCK_READ:Ljava/lang/Object;

.field protected static final LOCK_WRITE:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBoard:Lcom/physicaloid/lib/Boards;

.field private mCallBack:Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

.field private mContext:Landroid/content/Context;

.field private mFileStream:Ljava/io/InputStream;

.field protected mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

.field private mUploadThread:Ljava/lang/Thread;

.field private mUploader:Lcom/physicaloid/lib/framework/Uploader;

.field serialIsNull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/Physicaloid;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/physicaloid/lib/Physicaloid;->LOCK:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/physicaloid/lib/Physicaloid;->LOCK_WRITE:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/physicaloid/lib/Physicaloid;->LOCK_READ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/physicaloid/lib/Physicaloid;->serialIsNull:Z

    .line 53
    iput-object p1, p0, Lcom/physicaloid/lib/Physicaloid;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$0()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/physicaloid/lib/Physicaloid;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/physicaloid/lib/Physicaloid;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/physicaloid/lib/Physicaloid;)Lcom/physicaloid/lib/Physicaloid$UploadCallBack;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mCallBack:Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    return-object v0
.end method

.method static synthetic access$3(Lcom/physicaloid/lib/Physicaloid;Lcom/physicaloid/lib/Boards;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/physicaloid/lib/Physicaloid;->mBoard:Lcom/physicaloid/lib/Boards;

    return-void
.end method

.method static synthetic access$4(Lcom/physicaloid/lib/Physicaloid;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/physicaloid/lib/Physicaloid;->mFileStream:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$5(Lcom/physicaloid/lib/Physicaloid;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/physicaloid/lib/Physicaloid;->mCallBack:Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    return-void
.end method

.method static synthetic access$6(Lcom/physicaloid/lib/Physicaloid;Lcom/physicaloid/lib/framework/Uploader;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/physicaloid/lib/Physicaloid;->mUploader:Lcom/physicaloid/lib/framework/Uploader;

    return-void
.end method

.method static synthetic access$7(Lcom/physicaloid/lib/Physicaloid;)Lcom/physicaloid/lib/framework/Uploader;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mUploader:Lcom/physicaloid/lib/framework/Uploader;

    return-object v0
.end method

.method static synthetic access$8(Lcom/physicaloid/lib/Physicaloid;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mFileStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$9(Lcom/physicaloid/lib/Physicaloid;)Lcom/physicaloid/lib/Boards;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mBoard:Lcom/physicaloid/lib/Boards;

    return-object v0
.end method


# virtual methods
.method public addReadListener(Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;)Z
    .locals 3
    .param p1, "listener"    # Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 135
    sget-object v1, Lcom/physicaloid/lib/Physicaloid;->LOCK_READ:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v2, :cond_0

    monitor-exit v1

    .line 139
    :goto_0
    return v0

    .line 137
    :cond_0
    if-nez p1, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 138
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/framework/SerialCommunicator;->addReadListener(Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;)V

    .line 139
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cancelUpload()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mUploadThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mUploadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public clearReadListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 148
    sget-object v1, Lcom/physicaloid/lib/Physicaloid;->LOCK_READ:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v0, :cond_0

    monitor-exit v1

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0}, Lcom/physicaloid/lib/framework/SerialCommunicator;->clearReadListener()V

    .line 148
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 92
    sget-object v1, Lcom/physicaloid/lib/Physicaloid;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v2, :cond_0

    monitor-exit v1

    .line 98
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->close()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    .line 96
    monitor-exit v1

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 98
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 353
    sget-object v1, Lcom/physicaloid/lib/Physicaloid;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    .line 355
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0}, Lcom/physicaloid/lib/framework/SerialCommunicator;->isOpened()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public open()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    invoke-direct {v0}, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;-><init>()V

    invoke-virtual {p0, v0}, Lcom/physicaloid/lib/Physicaloid;->open(Lcom/physicaloid/lib/usb/driver/uart/UartConfig;)Z

    move-result v0

    return v0
.end method

.method public open(Lcom/physicaloid/lib/usb/driver/uart/UartConfig;)Z
    .locals 4
    .param p1, "uart"    # Lcom/physicaloid/lib/usb/driver/uart/UartConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    sget-object v1, Lcom/physicaloid/lib/Physicaloid;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Lcom/physicaloid/lib/framework/AutoCommunicator;

    invoke-direct {v2}, Lcom/physicaloid/lib/framework/AutoCommunicator;-><init>()V

    iget-object v3, p0, Lcom/physicaloid/lib/Physicaloid;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/physicaloid/lib/framework/AutoCommunicator;->getSerialCommunicator(Landroid/content/Context;)Lcom/physicaloid/lib/framework/SerialCommunicator;

    move-result-object v2

    iput-object v2, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    .line 75
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v2, :cond_0

    monitor-exit v1

    .line 81
    :goto_0
    return v0

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->open()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/framework/SerialCommunicator;->setUartConfig(Lcom/physicaloid/lib/usb/driver/uart/UartConfig;)Z

    .line 79
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/physicaloid/lib/Physicaloid;->read([BI)I

    move-result v0

    goto :goto_0
.end method

.method public read([BI)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 122
    sget-object v1, Lcom/physicaloid/lib/Physicaloid;->LOCK_READ:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, p1, p2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->read([BI)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBaudrate(I)Z
    .locals 2
    .param p1, "baudrate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 376
    sget-object v1, Lcom/physicaloid/lib/Physicaloid;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    .line 378
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/framework/SerialCommunicator;->setBaudrate(I)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setConfig(Lcom/physicaloid/lib/usb/driver/uart/UartConfig;)V
    .locals 2
    .param p1, "settings"    # Lcom/physicaloid/lib/usb/driver/uart/UartConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 364
    sget-object v1, Lcom/physicaloid/lib/Physicaloid;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v0, :cond_0

    monitor-exit v1

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/framework/SerialCommunicator;->setUartConfig(Lcom/physicaloid/lib/usb/driver/uart/UartConfig;)Z

    .line 364
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDataBits(I)Z
    .locals 2
    .param p1, "dataBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 388
    sget-object v1, Lcom/physicaloid/lib/Physicaloid;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/framework/SerialCommunicator;->setDataBits(I)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDtrRts(ZZ)Z
    .locals 2
    .param p1, "dtrOn"    # Z
    .param p2, "rtsOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 425
    sget-object v1, Lcom/physicaloid/lib/Physicaloid;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    .line 427
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, p1, p2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->setDtrRts(ZZ)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setParity(I)Z
    .locals 2
    .param p1, "parity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 400
    sget-object v1, Lcom/physicaloid/lib/Physicaloid;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    .line 402
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/framework/SerialCommunicator;->setParity(I)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStopBits(I)Z
    .locals 2
    .param p1, "stopBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 412
    sget-object v1, Lcom/physicaloid/lib/Physicaloid;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/framework/SerialCommunicator;->setStopBits(I)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public upload(Lcom/physicaloid/lib/Boards;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "board"    # Lcom/physicaloid/lib/Boards;
    .param p2, "fileStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/physicaloid/lib/Physicaloid;->upload(Lcom/physicaloid/lib/Boards;Ljava/io/InputStream;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)V

    .line 226
    return-void
.end method

.method public upload(Lcom/physicaloid/lib/Boards;Ljava/io/InputStream;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)V
    .locals 2
    .param p1, "board"    # Lcom/physicaloid/lib/Boards;
    .param p2, "fileStream"    # Ljava/io/InputStream;
    .param p3, "callback"    # Lcom/physicaloid/lib/Physicaloid$UploadCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/physicaloid/lib/framework/Uploader;

    invoke-direct {v0}, Lcom/physicaloid/lib/framework/Uploader;-><init>()V

    iput-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mUploader:Lcom/physicaloid/lib/framework/Uploader;

    .line 238
    iput-object p3, p0, Lcom/physicaloid/lib/Physicaloid;->mCallBack:Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    .line 239
    iput-object p2, p0, Lcom/physicaloid/lib/Physicaloid;->mFileStream:Ljava/io/InputStream;

    .line 240
    iput-object p1, p0, Lcom/physicaloid/lib/Physicaloid;->mBoard:Lcom/physicaloid/lib/Boards;

    .line 242
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v0, :cond_0

    .line 243
    sget-object v0, Lcom/physicaloid/lib/Physicaloid;->TAG:Ljava/lang/String;

    const-string v1, "upload : mSerial is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Lcom/physicaloid/lib/framework/AutoCommunicator;

    invoke-direct {v0}, Lcom/physicaloid/lib/framework/AutoCommunicator;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/physicaloid/lib/Physicaloid;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/physicaloid/lib/framework/AutoCommunicator;->getSerialCommunicator(Landroid/content/Context;)Lcom/physicaloid/lib/framework/SerialCommunicator;

    move-result-object v0

    .line 244
    iput-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/physicaloid/lib/Physicaloid;->serialIsNull:Z

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/physicaloid/lib/Physicaloid$1;

    invoke-direct {v1, p0}, Lcom/physicaloid/lib/Physicaloid$1;-><init>(Lcom/physicaloid/lib/Physicaloid;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mUploadThread:Ljava/lang/Thread;

    .line 315
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mUploadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 316
    return-void
.end method

.method public upload(Lcom/physicaloid/lib/Boards;Ljava/lang/String;)V
    .locals 1
    .param p1, "board"    # Lcom/physicaloid/lib/Boards;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/physicaloid/lib/Physicaloid;->upload(Lcom/physicaloid/lib/Boards;Ljava/lang/String;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)V

    .line 187
    return-void
.end method

.method public upload(Lcom/physicaloid/lib/Boards;Ljava/lang/String;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)V
    .locals 4
    .param p1, "board"    # Lcom/physicaloid/lib/Boards;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/physicaloid/lib/Physicaloid$UploadCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 197
    if-nez p2, :cond_1

    .line 198
    if-eqz p3, :cond_0

    sget-object v3, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->FILE_OPEN:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p3, v3}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_3

    .line 204
    :cond_2
    if-eqz p3, :cond_0

    sget-object v3, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->FILE_OPEN:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p3, v3}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    goto :goto_0

    .line 210
    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {p0, p1, v2, p3}, Lcom/physicaloid/lib/Physicaloid;->upload(Lcom/physicaloid/lib/Boards;Ljava/io/InputStream;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)V

    goto :goto_0

    .line 211
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p3, :cond_0

    sget-object v3, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->FILE_OPEN:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p3, v3}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    goto :goto_0
.end method

.method public write([B)I
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/physicaloid/lib/Physicaloid;->write([BI)I

    move-result v0

    goto :goto_0
.end method

.method public write([BI)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 173
    sget-object v1, Lcom/physicaloid/lib/Physicaloid;->LOCK_WRITE:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, p1, p2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->write([BI)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class Lcom/physicaloid/lib/Physicaloid$1;
.super Ljava/lang/Object;
.source "Physicaloid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/physicaloid/lib/Physicaloid;->upload(Lcom/physicaloid/lib/Boards;Ljava/io/InputStream;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/physicaloid/lib/Physicaloid;


# direct methods
.method constructor <init>(Lcom/physicaloid/lib/Physicaloid;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 252
    invoke-static {}, Lcom/physicaloid/lib/Physicaloid;->access$0()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 253
    :try_start_0
    sget-object v4, Lcom/physicaloid/lib/Physicaloid;->LOCK_WRITE:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :try_start_1
    sget-object v5, Lcom/physicaloid/lib/Physicaloid;->LOCK_READ:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 255
    :try_start_2
    new-instance v1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    invoke-direct {v1}, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;-><init>()V

    .line 258
    .local v1, "tmpUartConfig":Lcom/physicaloid/lib/usb/driver/uart/UartConfig;
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    iget-object v2, v2, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v2, :cond_1

    .line 259
    invoke-static {}, Lcom/physicaloid/lib/Physicaloid;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v6, "upload : mSerial is null"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    invoke-static {v2}, Lcom/physicaloid/lib/Physicaloid;->access$2(Lcom/physicaloid/lib/Physicaloid;)Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    invoke-static {v2}, Lcom/physicaloid/lib/Physicaloid;->access$2(Lcom/physicaloid/lib/Physicaloid;)Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    move-result-object v2

    sget-object v6, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->OPEN_DEVICE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {v2, v6}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/physicaloid/lib/Physicaloid;->access$3(Lcom/physicaloid/lib/Physicaloid;Lcom/physicaloid/lib/Boards;)V

    .line 264
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/physicaloid/lib/Physicaloid;->access$4(Lcom/physicaloid/lib/Physicaloid;Ljava/io/InputStream;)V

    .line 265
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/physicaloid/lib/Physicaloid;->access$5(Lcom/physicaloid/lib/Physicaloid;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)V

    .line 266
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/physicaloid/lib/Physicaloid;->access$6(Lcom/physicaloid/lib/Physicaloid;Lcom/physicaloid/lib/framework/Uploader;)V

    .line 267
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    .line 268
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 312
    :goto_0
    return-void

    .line 271
    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    iget-object v2, v2, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->isOpened()Z

    move-result v2

    if-nez v2, :cond_5

    .line 272
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    iget-object v2, v2, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->open()Z

    move-result v2

    if-nez v2, :cond_3

    .line 273
    invoke-static {}, Lcom/physicaloid/lib/Physicaloid;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v6, "upload : cannot mSerial.open"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    invoke-static {v2}, Lcom/physicaloid/lib/Physicaloid;->access$2(Lcom/physicaloid/lib/Physicaloid;)Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    invoke-static {v2}, Lcom/physicaloid/lib/Physicaloid;->access$2(Lcom/physicaloid/lib/Physicaloid;)Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    move-result-object v2

    sget-object v6, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->OPEN_DEVICE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {v2, v6}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/physicaloid/lib/Physicaloid;->access$3(Lcom/physicaloid/lib/Physicaloid;Lcom/physicaloid/lib/Boards;)V

    .line 276
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/physicaloid/lib/Physicaloid;->access$4(Lcom/physicaloid/lib/Physicaloid;Ljava/io/InputStream;)V

    .line 277
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/physicaloid/lib/Physicaloid;->access$5(Lcom/physicaloid/lib/Physicaloid;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)V

    .line 278
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/physicaloid/lib/Physicaloid;->access$6(Lcom/physicaloid/lib/Physicaloid;Lcom/physicaloid/lib/framework/Uploader;)V

    .line 279
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    .line 280
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v3

    goto :goto_0

    .line 252
    .end local v1    # "tmpUartConfig":Lcom/physicaloid/lib/usb/driver/uart/UartConfig;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2

    .line 282
    .restart local v1    # "tmpUartConfig":Lcom/physicaloid/lib/usb/driver/uart/UartConfig;
    :cond_3
    :try_start_8
    invoke-static {}, Lcom/physicaloid/lib/Physicaloid;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v6, "upload : open successful"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_1
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    iget-object v2, v2, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->stopReadListener()V

    .line 295
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    iget-object v2, v2, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->clearBuffer()V

    .line 297
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    invoke-static {v2}, Lcom/physicaloid/lib/Physicaloid;->access$7(Lcom/physicaloid/lib/Physicaloid;)Lcom/physicaloid/lib/framework/Uploader;

    move-result-object v2

    iget-object v6, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    invoke-static {v6}, Lcom/physicaloid/lib/Physicaloid;->access$8(Lcom/physicaloid/lib/Physicaloid;)Ljava/io/InputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    invoke-static {v7}, Lcom/physicaloid/lib/Physicaloid;->access$9(Lcom/physicaloid/lib/Physicaloid;)Lcom/physicaloid/lib/Boards;

    move-result-object v7

    iget-object v8, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    iget-object v8, v8, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    iget-object v9, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    invoke-static {v9}, Lcom/physicaloid/lib/Physicaloid;->access$2(Lcom/physicaloid/lib/Physicaloid;)Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    move-result-object v9

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/physicaloid/lib/framework/Uploader;->upload(Ljava/io/InputStream;Lcom/physicaloid/lib/Boards;Lcom/physicaloid/lib/framework/SerialCommunicator;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)Z

    .line 299
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    iget-object v2, v2, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v2, v1}, Lcom/physicaloid/lib/framework/SerialCommunicator;->setUartConfig(Lcom/physicaloid/lib/usb/driver/uart/UartConfig;)Z

    .line 301
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    iget-object v2, v2, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->clearBuffer()V

    .line 302
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    iget-object v2, v2, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->startReadListener()V

    .line 303
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    iget-boolean v2, v2, Lcom/physicaloid/lib/Physicaloid;->serialIsNull:Z

    if-eqz v2, :cond_4

    .line 304
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    iget-object v2, v2, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->close()Z

    .line 307
    :cond_4
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/physicaloid/lib/Physicaloid;->access$3(Lcom/physicaloid/lib/Physicaloid;Lcom/physicaloid/lib/Boards;)V

    .line 308
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/physicaloid/lib/Physicaloid;->access$4(Lcom/physicaloid/lib/Physicaloid;Ljava/io/InputStream;)V

    .line 309
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/physicaloid/lib/Physicaloid;->access$5(Lcom/physicaloid/lib/Physicaloid;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)V

    .line 310
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/physicaloid/lib/Physicaloid;->access$6(Lcom/physicaloid/lib/Physicaloid;Lcom/physicaloid/lib/framework/Uploader;)V

    .line 254
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 253
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 252
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 284
    :cond_5
    :try_start_b
    iget-object v2, p0, Lcom/physicaloid/lib/Physicaloid$1;->this$0:Lcom/physicaloid/lib/Physicaloid;

    iget-object v2, v2, Lcom/physicaloid/lib/Physicaloid;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v2}, Lcom/physicaloid/lib/framework/SerialCommunicator;->getUartConfig()Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    move-result-object v0

    .line 285
    .local v0, "origUartConfig":Lcom/physicaloid/lib/usb/driver/uart/UartConfig;
    iget v2, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    iput v2, v1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->baudrate:I

    .line 286
    iget v2, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    iput v2, v1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dataBits:I

    .line 287
    iget v2, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    iput v2, v1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->stopBits:I

    .line 288
    iget v2, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    iput v2, v1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->parity:I

    .line 289
    iget-boolean v2, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    iput-boolean v2, v1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->dtrOn:Z

    .line 290
    iget-boolean v2, v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    iput-boolean v2, v1, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;->rtsOn:Z

    .line 291
    invoke-static {}, Lcom/physicaloid/lib/Physicaloid;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v6, "upload : already open"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 254
    .end local v0    # "origUartConfig":Lcom/physicaloid/lib/usb/driver/uart/UartConfig;
    .end local v1    # "tmpUartConfig":Lcom/physicaloid/lib/usb/driver/uart/UartConfig;
    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v2

    .line 253
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
.end method

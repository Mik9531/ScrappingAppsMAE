.class public Lcom/physicaloid/lib/framework/Uploader;
.super Ljava/lang/Object;
.source "Uploader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public upload(Ljava/io/InputStream;Lcom/physicaloid/lib/Boards;Lcom/physicaloid/lib/framework/SerialCommunicator;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)Z
    .locals 9
    .param p1, "fileStream"    # Ljava/io/InputStream;
    .param p2, "board"    # Lcom/physicaloid/lib/Boards;
    .param p3, "comm"    # Lcom/physicaloid/lib/framework/SerialCommunicator;
    .param p4, "callback"    # Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    .prologue
    const/4 v3, 0x0

    .line 31
    const/4 v8, 0x0

    .line 33
    .local v8, "ret":Z
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onPreUpload()V

    .line 35
    :cond_0
    if-nez p2, :cond_2

    .line 36
    if-eqz p4, :cond_1

    .line 37
    sget-object v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->AVR_CHIPTYPE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p4, v0}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    .line 57
    :cond_1
    :goto_0
    return v3

    .line 42
    :cond_2
    iget v0, p2, Lcom/physicaloid/lib/Boards;->uploadProtocol:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 43
    iget v0, p2, Lcom/physicaloid/lib/Boards;->uploadProtocol:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 45
    :cond_3
    new-instance v7, Lcom/physicaloid/lib/programmer/avr/AvrUploader;

    invoke-direct {v7, p3}, Lcom/physicaloid/lib/programmer/avr/AvrUploader;-><init>(Lcom/physicaloid/lib/framework/SerialCommunicator;)V

    .line 47
    .local v7, "avrUploader":Lcom/physicaloid/lib/programmer/avr/AvrUploader;
    new-instance v0, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;

    iget v1, p2, Lcom/physicaloid/lib/Boards;->uploadBaudrate:I

    const/16 v2, 0x8

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/physicaloid/lib/usb/driver/uart/UartConfig;-><init>(IIIIZZ)V

    invoke-virtual {p3, v0}, Lcom/physicaloid/lib/framework/SerialCommunicator;->setUartConfig(Lcom/physicaloid/lib/usb/driver/uart/UartConfig;)Z

    .line 49
    invoke-virtual {v7, p1, p2, p4}, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->run(Ljava/io/InputStream;Lcom/physicaloid/lib/Boards;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)Z

    move-result v8

    .line 55
    .end local v7    # "avrUploader":Lcom/physicaloid/lib/programmer/avr/AvrUploader;
    :cond_4
    :goto_1
    if-eqz p4, :cond_5

    invoke-interface {p4, v8}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onPostUpload(Z)V

    :cond_5
    move v3, v8

    .line 57
    goto :goto_0

    .line 51
    :cond_6
    iget v0, p2, Lcom/physicaloid/lib/Boards;->uploadProtocol:I

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_4

    .line 52
    new-instance v0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;

    invoke-direct {v0, p3}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;-><init>(Lcom/physicaloid/lib/framework/SerialCommunicator;)V

    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConfigurator;->configuration(Ljava/io/InputStream;)Z

    move-result v8

    goto :goto_1
.end method

.class public Lcom/physicaloid/lib/programmer/avr/AvrUploader;
.super Ljava/lang/Object;
.source "AvrUploader.java"


# static fields
.field private static final DEBUG_SHOW_HEXDUMP:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

.field private mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

.field private mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

.field private mIntelHex:Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;

.field private mProg:Lcom/physicaloid/lib/programmer/avr/UploadProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/physicaloid/lib/framework/SerialCommunicator;)V
    .locals 0
    .param p1, "serial"    # Lcom/physicaloid/lib/framework/SerialCommunicator;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    .line 56
    return-void
.end method

.method private getFileToBuf(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "hexFile"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v2, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;

    invoke-direct {v2}, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;-><init>()V

    iput-object v2, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mIntelHex:Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;

    .line 174
    iget-object v2, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mIntelHex:Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;

    invoke-virtual {v2, p1}, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->parse(Ljava/io/InputStream;)V

    .line 175
    iget-object v2, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mIntelHex:Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;

    invoke-virtual {v2}, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->getByteLength()J

    move-result-wide v0

    .line 176
    .local v0, "byteLength":J
    iget-object v2, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    long-to-int v3, v0

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/physicaloid/lib/programmer/avr/AVRMem;->buf:[B

    .line 177
    iget-object v2, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mIntelHex:Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;

    iget-object v3, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v3, v3, Lcom/physicaloid/lib/programmer/avr/AVRMem;->buf:[B

    invoke-virtual {v2, v3}, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->getHexData([B)V

    .line 178
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mIntelHex:Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;

    .line 193
    return-void
.end method

.method private setConfig(Lcom/physicaloid/lib/Boards;)V
    .locals 2
    .param p1, "board"    # Lcom/physicaloid/lib/Boards;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;

    invoke-direct {v0, p1}, Lcom/physicaloid/lib/programmer/avr/AvrConf;-><init>(Lcom/physicaloid/lib/Boards;)V

    iput-object v0, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    .line 162
    new-instance v0, Lcom/physicaloid/lib/programmer/avr/AVRMem;

    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    invoke-direct {v0, v1}, Lcom/physicaloid/lib/programmer/avr/AVRMem;-><init>(Lcom/physicaloid/lib/programmer/avr/AvrConf;)V

    iput-object v0, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    .line 163
    return-void
.end method


# virtual methods
.method public run(Ljava/io/InputStream;Lcom/physicaloid/lib/Boards;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)Z
    .locals 9
    .param p1, "hexFile"    # Ljava/io/InputStream;
    .param p2, "board"    # Lcom/physicaloid/lib/Boards;
    .param p3, "callback"    # Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    if-nez p2, :cond_1

    .line 86
    if-eqz p3, :cond_0

    sget-object v5, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->AVR_CHIPTYPE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p3, v5}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    .line 152
    :cond_0
    :goto_0
    return v4

    .line 90
    :cond_1
    iget v6, p2, Lcom/physicaloid/lib/Boards;->uploadProtocol:I

    if-ne v6, v5, :cond_2

    .line 91
    new-instance v6, Lcom/physicaloid/lib/programmer/avr/Stk500;

    invoke-direct {v6}, Lcom/physicaloid/lib/programmer/avr/Stk500;-><init>()V

    iput-object v6, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mProg:Lcom/physicaloid/lib/programmer/avr/UploadProtocol;

    .line 99
    :goto_1
    iget-object v6, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mProg:Lcom/physicaloid/lib/programmer/avr/UploadProtocol;

    iget-object v7, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v6, v7}, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->setSerial(Lcom/physicaloid/lib/framework/SerialCommunicator;)V

    .line 100
    iget-object v6, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mProg:Lcom/physicaloid/lib/programmer/avr/UploadProtocol;

    invoke-virtual {v6, p3}, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->setCallback(Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)V

    .line 106
    :try_start_0
    invoke-direct {p0, p2}, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->setConfig(Lcom/physicaloid/lib/Boards;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :try_start_1
    invoke-direct {p0, p1}, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->getFileToBuf(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    iget-object v6, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mProg:Lcom/physicaloid/lib/programmer/avr/UploadProtocol;

    iget-object v7, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mAVRConf:Lcom/physicaloid/lib/programmer/avr/AvrConf;

    iget-object v8, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mAVRMem:Lcom/physicaloid/lib/programmer/avr/AVRMem;

    invoke-virtual {v6, v7, v8}, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->setConfig(Lcom/physicaloid/lib/programmer/avr/AvrConf;Lcom/physicaloid/lib/programmer/avr/AVRMem;)V

    .line 127
    iget-object v6, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mProg:Lcom/physicaloid/lib/programmer/avr/UploadProtocol;

    invoke-virtual {v6}, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->open()I

    .line 128
    iget-object v6, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mProg:Lcom/physicaloid/lib/programmer/avr/UploadProtocol;

    invoke-virtual {v6}, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->enable()V

    .line 129
    iget-object v6, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mProg:Lcom/physicaloid/lib/programmer/avr/UploadProtocol;

    invoke-virtual {v6}, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->initialize()I

    move-result v1

    .line 130
    .local v1, "initOK":I
    if-gez v1, :cond_4

    .line 131
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initialization failed ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz p3, :cond_0

    sget-object v5, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->CHIP_INIT:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p3, v5}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    goto :goto_0

    .line 92
    .end local v1    # "initOK":I
    :cond_2
    iget v6, p2, Lcom/physicaloid/lib/Boards;->uploadProtocol:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 93
    new-instance v6, Lcom/physicaloid/lib/programmer/avr/Stk500V2;

    invoke-direct {v6}, Lcom/physicaloid/lib/programmer/avr/Stk500V2;-><init>()V

    iput-object v6, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mProg:Lcom/physicaloid/lib/programmer/avr/UploadProtocol;

    goto :goto_1

    .line 95
    :cond_3
    if-eqz p3, :cond_0

    sget-object v5, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->AVR_CHIPTYPE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p3, v5}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p3, :cond_0

    sget-object v5, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->AVR_CHIPTYPE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p3, v5}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mIntelHex:Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;

    .line 119
    if-eqz p3, :cond_0

    sget-object v5, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->HEX_FILE_OPEN:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p3, v5}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    goto/16 :goto_0

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "initOK":I
    :cond_4
    iget-object v6, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mProg:Lcom/physicaloid/lib/programmer/avr/UploadProtocol;

    invoke-virtual {v6}, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->check_sig_bytes()I

    move-result v2

    .line 138
    .local v2, "sigOK":I
    if-eqz v2, :cond_5

    .line 139
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "check signature failed ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eqz p3, :cond_0

    sget-object v5, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->SIGNATURE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p3, v5}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    goto/16 :goto_0

    .line 144
    :cond_5
    iget-object v6, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mProg:Lcom/physicaloid/lib/programmer/avr/UploadProtocol;

    invoke-virtual {v6}, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->paged_write()I

    move-result v3

    .line 145
    .local v3, "writeOK":I
    if-eqz v3, :cond_0

    .line 146
    if-gez v3, :cond_6

    .line 147
    sget-object v5, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "paged write failed ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eqz p3, :cond_0

    sget-object v5, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->PAGE_WRITE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p3, v5}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    goto/16 :goto_0

    .line 151
    :cond_6
    iget-object v4, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mProg:Lcom/physicaloid/lib/programmer/avr/UploadProtocol;

    invoke-virtual {v4}, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->disable()V

    move v4, v5

    .line 152
    goto/16 :goto_0
.end method

.method public run(Ljava/lang/String;Lcom/physicaloid/lib/Boards;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)Z
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "board"    # Lcom/physicaloid/lib/Boards;
    .param p3, "callback"    # Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    .prologue
    const/4 v3, 0x0

    .line 63
    if-nez p1, :cond_1

    .line 64
    if-eqz p3, :cond_0

    sget-object v4, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->FILE_OPEN:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p3, v4}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    .line 81
    :cond_0
    :goto_0
    return v3

    .line 68
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_3

    .line 70
    :cond_2
    if-eqz p3, :cond_0

    sget-object v4, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->FILE_OPEN:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p3, v4}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    goto :goto_0

    .line 76
    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v2, p2, p3}, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->run(Ljava/io/InputStream;Lcom/physicaloid/lib/Boards;Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)Z

    move-result v3

    goto :goto_0

    .line 77
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p3, :cond_0

    sget-object v4, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->FILE_OPEN:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-interface {p3, v4}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V

    goto :goto_0
.end method

.method public setSerial(Lcom/physicaloid/lib/framework/SerialCommunicator;)V
    .locals 0
    .param p1, "serial"    # Lcom/physicaloid/lib/framework/SerialCommunicator;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/physicaloid/lib/programmer/avr/AvrUploader;->mComm:Lcom/physicaloid/lib/framework/SerialCommunicator;

    .line 60
    return-void
.end method

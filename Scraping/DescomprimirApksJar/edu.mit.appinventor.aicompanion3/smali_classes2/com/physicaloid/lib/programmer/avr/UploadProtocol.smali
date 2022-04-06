.class public abstract Lcom/physicaloid/lib/programmer/avr/UploadProtocol;
.super Ljava/lang/Object;
.source "UploadProtocol.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field callback:Lcom/physicaloid/lib/Physicaloid$UploadCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract check_sig_bytes()I
.end method

.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract initialize()I
.end method

.method public abstract open()I
.end method

.method public abstract paged_write()I
.end method

.method protected report_cancel()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->callback:Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->callback:Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    invoke-interface {v0}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onCancel()V

    goto :goto_0
.end method

.method protected report_progress(I)V
    .locals 1
    .param p1, "prog"    # I

    .prologue
    .line 54
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/16 p1, 0x64

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->callback:Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    if-nez v0, :cond_1

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->callback:Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    invoke-interface {v0, p1}, Lcom/physicaloid/lib/Physicaloid$UploadCallBack;->onUploading(I)V

    goto :goto_0
.end method

.method public setCallback(Lcom/physicaloid/lib/Physicaloid$UploadCallBack;)V
    .locals 0
    .param p1, "callback"    # Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/physicaloid/lib/programmer/avr/UploadProtocol;->callback:Lcom/physicaloid/lib/Physicaloid$UploadCallBack;

    .line 51
    return-void
.end method

.method public abstract setConfig(Lcom/physicaloid/lib/programmer/avr/AvrConf;Lcom/physicaloid/lib/programmer/avr/AVRMem;)V
.end method

.method public abstract setSerial(Lcom/physicaloid/lib/framework/SerialCommunicator;)V
.end method

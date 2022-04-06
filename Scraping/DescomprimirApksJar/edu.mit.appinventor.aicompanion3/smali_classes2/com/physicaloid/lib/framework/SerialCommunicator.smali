.class public abstract Lcom/physicaloid/lib/framework/SerialCommunicator;
.super Ljava/lang/Object;
.source "SerialCommunicator.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public abstract addReadListener(Lcom/physicaloid/lib/usb/driver/uart/ReadLisener;)V
.end method

.method public abstract clearBuffer()V
.end method

.method public abstract clearReadListener()V
.end method

.method public abstract close()Z
.end method

.method public abstract getBaudrate()I
.end method

.method public abstract getDataBits()I
.end method

.method public abstract getDtr()Z
.end method

.method public abstract getParity()I
.end method

.method public abstract getRts()Z
.end method

.method public abstract getStopBits()I
.end method

.method public abstract getUartConfig()Lcom/physicaloid/lib/usb/driver/uart/UartConfig;
.end method

.method public abstract isOpened()Z
.end method

.method public abstract open()Z
.end method

.method public abstract read([BI)I
.end method

.method public abstract setBaudrate(I)Z
.end method

.method public abstract setDataBits(I)Z
.end method

.method public abstract setDtrRts(ZZ)Z
.end method

.method public abstract setParity(I)Z
.end method

.method public abstract setStopBits(I)Z
.end method

.method public abstract setUartConfig(Lcom/physicaloid/lib/usb/driver/uart/UartConfig;)Z
.end method

.method public abstract startReadListener()V
.end method

.method public abstract stopReadListener()V
.end method

.method public abstract write([BI)I
.end method

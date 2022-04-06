.class public Lcom/physicaloid/lib/framework/AutoCommunicator;
.super Ljava/lang/Object;
.source "AutoCommunicator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/physicaloid/lib/framework/AutoCommunicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/framework/AutoCommunicator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getSerialCommunicator(Landroid/content/Context;)Lcom/physicaloid/lib/framework/SerialCommunicator;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v1, Lcom/physicaloid/lib/usb/UsbAccessor;->INSTANCE:Lcom/physicaloid/lib/usb/UsbAccessor;

    .line 37
    .local v1, "usbAccess":Lcom/physicaloid/lib/usb/UsbAccessor;
    invoke-virtual {v1, p1}, Lcom/physicaloid/lib/usb/UsbAccessor;->init(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v1}, Lcom/physicaloid/lib/usb/UsbAccessor;->manager()Landroid/hardware/usb/UsbManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 54
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 39
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 40
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    .line 41
    .local v3, "vid":I
    invoke-static {}, Lcom/physicaloid/lib/UsbVidList;->values()[Lcom/physicaloid/lib/UsbVidList;

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v2, v6, v4

    .line 42
    .local v2, "usbVid":Lcom/physicaloid/lib/UsbVidList;
    invoke-virtual {v2}, Lcom/physicaloid/lib/UsbVidList;->getVid()I

    move-result v8

    if-ne v3, v8, :cond_4

    .line 43
    sget-object v4, Lcom/physicaloid/lib/UsbVidList;->FTDI:Lcom/physicaloid/lib/UsbVidList;

    invoke-virtual {v4}, Lcom/physicaloid/lib/UsbVidList;->getVid()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 44
    new-instance v4, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;

    invoke-direct {v4, p1}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 45
    :cond_2
    sget-object v4, Lcom/physicaloid/lib/UsbVidList;->CP210X:Lcom/physicaloid/lib/UsbVidList;

    invoke-virtual {v4}, Lcom/physicaloid/lib/UsbVidList;->getVid()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 46
    new-instance v4, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;

    invoke-direct {v4, p1}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 48
    :cond_3
    new-instance v4, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;

    invoke-direct {v4, p1}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 41
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

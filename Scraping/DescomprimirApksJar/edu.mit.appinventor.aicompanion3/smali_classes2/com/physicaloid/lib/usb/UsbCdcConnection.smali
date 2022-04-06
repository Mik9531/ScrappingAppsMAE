.class public Lcom/physicaloid/lib/usb/UsbCdcConnection;
.super Ljava/lang/Object;
.source "UsbCdcConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;
    }
.end annotation


# static fields
.field private static final DEBUG_SHOW:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mUsbAccess:Lcom/physicaloid/lib/usb/UsbAccessor;

.field mUsbConnectionEp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/physicaloid/lib/usb/UsbAccessor;->INSTANCE:Lcom/physicaloid/lib/usb/UsbAccessor;

    iput-object v0, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbAccess:Lcom/physicaloid/lib/usb/UsbAccessor;

    .line 41
    iget-object v0, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbAccess:Lcom/physicaloid/lib/usb/UsbAccessor;

    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/usb/UsbAccessor;->init(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbConnectionEp:Landroid/util/SparseArray;

    .line 43
    return-void
.end method

.method private getEndpoint(III)Landroid/hardware/usb/UsbEndpoint;
    .locals 5
    .param p1, "devNum"    # I
    .param p2, "intfNum"    # I
    .param p3, "usbDir"    # I

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v4, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbAccess:Lcom/physicaloid/lib/usb/UsbAccessor;

    invoke-virtual {v4, p1, p2}, Lcom/physicaloid/lib/usb/UsbAccessor;->intface(II)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 104
    .local v2, "intf":Landroid/hardware/usb/UsbInterface;
    if-nez v2, :cond_1

    move-object v0, v3

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v4

    if-lt v1, v4, :cond_2

    move-object v0, v3

    .line 113
    goto :goto_0

    .line 107
    :cond_2
    iget-object v4, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbAccess:Lcom/physicaloid/lib/usb/UsbAccessor;

    invoke-virtual {v4, p1, p2, v1}, Lcom/physicaloid/lib/usb/UsbAccessor;->endpoint(III)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    .line 108
    .local v0, "ep":Landroid/hardware/usb/UsbEndpoint;
    if-nez v0, :cond_3

    move-object v0, v3

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    if-eq v4, p3, :cond_0

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public close()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbConnectionEp:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 121
    iget-object v0, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbAccess:Lcom/physicaloid/lib/usb/UsbAccessor;

    invoke-virtual {v0}, Lcom/physicaloid/lib/usb/UsbAccessor;->closeAll()Z

    move-result v0

    return v0
.end method

.method public getConnection()Landroid/hardware/usb/UsbDeviceConnection;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->getConnection(I)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    return-object v0
.end method

.method public getConnection(I)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 2
    .param p1, "ch"    # I

    .prologue
    .line 138
    iget-object v1, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbConnectionEp:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;

    .line 139
    .local v0, "con":Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 140
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    goto :goto_0
.end method

.method public getEndpointIn()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->getEndpointIn(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public getEndpointIn(I)Landroid/hardware/usb/UsbEndpoint;
    .locals 2
    .param p1, "ch"    # I

    .prologue
    .line 156
    iget-object v1, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbConnectionEp:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;

    .line 157
    .local v0, "con":Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 158
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;->endpointIn:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_0
.end method

.method public getEndpointOut()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->getEndpointOut(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public getEndpointOut(I)Landroid/hardware/usb/UsbEndpoint;
    .locals 2
    .param p1, "ch"    # I

    .prologue
    .line 174
    iget-object v1, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbConnectionEp:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;

    .line 175
    .local v0, "con":Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 176
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;->endpointOut:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_0
.end method

.method public open(Lcom/physicaloid/lib/usb/UsbVidPid;)Z
    .locals 1
    .param p1, "ids"    # Lcom/physicaloid/lib/usb/UsbVidPid;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, v0, v0}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->open(Lcom/physicaloid/lib/usb/UsbVidPid;ZI)Z

    move-result v0

    return v0
.end method

.method public open(Lcom/physicaloid/lib/usb/UsbVidPid;Z)Z
    .locals 1
    .param p1, "ids"    # Lcom/physicaloid/lib/usb/UsbVidPid;
    .param p2, "isCdcAcm"    # Z

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->open(Lcom/physicaloid/lib/usb/UsbVidPid;ZI)Z

    move-result v0

    return v0
.end method

.method public open(Lcom/physicaloid/lib/usb/UsbVidPid;ZI)Z
    .locals 9
    .param p1, "ids"    # Lcom/physicaloid/lib/usb/UsbVidPid;
    .param p2, "isCdcAcm"    # Z
    .param p3, "ch"    # I

    .prologue
    const/4 v4, 0x0

    .line 71
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return v4

    .line 73
    :cond_0
    const/4 v1, 0x0

    .line 74
    .local v1, "devNum":I
    const/4 v0, 0x0

    .line 75
    .local v0, "chNum":I
    iget-object v5, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbAccess:Lcom/physicaloid/lib/usb/UsbAccessor;

    invoke-virtual {v5}, Lcom/physicaloid/lib/usb/UsbAccessor;->manager()Landroid/hardware/usb/UsbManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 98
    sget-object v5, Lcom/physicaloid/lib/usb/UsbCdcConnection;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot find VID:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/physicaloid/lib/usb/UsbVidPid;->getVid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/physicaloid/lib/usb/UsbVidPid;->getPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 76
    .local v3, "usbdev":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v6

    invoke-virtual {p1}, Lcom/physicaloid/lib/usb/UsbVidPid;->getVid()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 77
    invoke-virtual {p1}, Lcom/physicaloid/lib/usb/UsbVidPid;->getPid()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/physicaloid/lib/usb/UsbVidPid;->getPid()I

    move-result v6

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 78
    :cond_2
    const/4 v2, 0x0

    .local v2, "intfNum":I
    :goto_2
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v6

    if-lt v2, v6, :cond_4

    .line 96
    .end local v2    # "intfNum":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    .restart local v2    # "intfNum":I
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_6

    .line 81
    :cond_5
    if-nez p2, :cond_8

    .line 82
    :cond_6
    if-ne p3, v0, :cond_8

    .line 83
    iget-object v6, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbAccess:Lcom/physicaloid/lib/usb/UsbAccessor;

    invoke-virtual {v6, v1}, Lcom/physicaloid/lib/usb/UsbAccessor;->deviceIsConnected(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 84
    iget-object v6, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbAccess:Lcom/physicaloid/lib/usb/UsbAccessor;

    invoke-virtual {v6, v1, v2, p3}, Lcom/physicaloid/lib/usb/UsbAccessor;->openDevice(III)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 85
    sget-object v5, Lcom/physicaloid/lib/usb/UsbCdcConnection;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Find VID:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", DevNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IntfNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v5, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbConnectionEp:Landroid/util/SparseArray;

    new-instance v6, Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;

    iget-object v7, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection;->mUsbAccess:Lcom/physicaloid/lib/usb/UsbAccessor;

    invoke-virtual {v7, p3}, Lcom/physicaloid/lib/usb/UsbAccessor;->connection(I)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v7

    const/16 v8, 0x80

    invoke-direct {p0, v1, v2, v8}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->getEndpoint(III)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v8

    invoke-direct {p0, v1, v2, v4}, Lcom/physicaloid/lib/usb/UsbCdcConnection;->getEndpoint(III)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    invoke-direct {v6, p0, v7, v8, v4}, Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;-><init>(Lcom/physicaloid/lib/usb/UsbCdcConnection;Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    invoke-virtual {v5, p3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 90
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 78
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.class public final enum Lcom/physicaloid/lib/usb/UsbAccessor;
.super Ljava/lang/Enum;
.source "UsbAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/physicaloid/lib/usb/UsbAccessor;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG_SHOW:Z = true

.field private static final synthetic ENUM$VALUES:[Lcom/physicaloid/lib/usb/UsbAccessor;

.field public static final enum INSTANCE:Lcom/physicaloid/lib/usb/UsbAccessor;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnection:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/usb/UsbDeviceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mManager:Landroid/hardware/usb/UsbManager;

.field private mPermissionIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/physicaloid/lib/usb/UsbAccessor;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/physicaloid/lib/usb/UsbAccessor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/physicaloid/lib/usb/UsbAccessor;->INSTANCE:Lcom/physicaloid/lib/usb/UsbAccessor;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/physicaloid/lib/usb/UsbAccessor;

    sget-object v1, Lcom/physicaloid/lib/usb/UsbAccessor;->INSTANCE:Lcom/physicaloid/lib/usb/UsbAccessor;

    aput-object v1, v0, v2

    sput-object v0, Lcom/physicaloid/lib/usb/UsbAccessor;->ENUM$VALUES:[Lcom/physicaloid/lib/usb/UsbAccessor;

    .line 41
    const-class v0, Lcom/physicaloid/lib/usb/UsbAccessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/usb/UsbAccessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mManager:Landroid/hardware/usb/UsbManager;

    .line 44
    iput-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mPermissionIntent:Landroid/app/PendingIntent;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mConnection:Landroid/util/SparseArray;

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/physicaloid/lib/usb/UsbAccessor;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/physicaloid/lib/usb/UsbAccessor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/physicaloid/lib/usb/UsbAccessor;

    return-object v0
.end method

.method public static values()[Lcom/physicaloid/lib/usb/UsbAccessor;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/physicaloid/lib/usb/UsbAccessor;->ENUM$VALUES:[Lcom/physicaloid/lib/usb/UsbAccessor;

    array-length v1, v0

    new-array v2, v1, [Lcom/physicaloid/lib/usb/UsbAccessor;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public close(I)Z
    .locals 4
    .param p1, "devNum"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/physicaloid/lib/usb/UsbAccessor;->connection(I)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    .line 203
    .local v0, "con":Landroid/hardware/usb/UsbDeviceConnection;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 207
    :goto_0
    return v1

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mConnection:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 205
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 206
    sget-object v1, Lcom/physicaloid/lib/usb/UsbAccessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Close("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public closeAll()Z
    .locals 6

    .prologue
    .line 211
    const/4 v2, 0x0

    .line 213
    .local v2, "ret":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mConnection:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mConnection:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 221
    return v2

    .line 214
    :cond_0
    iget-object v3, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mConnection:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDeviceConnection;

    .line 215
    .local v0, "con":Landroid/hardware/usb/UsbDeviceConnection;
    if-nez v0, :cond_1

    .line 213
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_1
    sget-object v3, Lcom/physicaloid/lib/usb/UsbAccessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Close("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mConnection:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 218
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public connection(I)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mConnection:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mConnection:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDeviceConnection;

    goto :goto_0
.end method

.method public device(I)Landroid/hardware/usb/UsbDevice;
    .locals 7
    .param p1, "devNum"    # I

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v3, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mManager:Landroid/hardware/usb/UsbManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mPermissionIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 96
    :cond_1
    :goto_0
    return-object v1

    .line 78
    :cond_2
    iget-object v3, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gt v3, p1, :cond_3

    move-object v1, v2

    goto :goto_0

    .line 80
    :cond_3
    const/4 v0, 0x0

    .line 81
    .local v0, "count":I
    iget-object v3, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 95
    sget-object v3, Lcom/physicaloid/lib/usb/UsbAccessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot find device("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 96
    goto :goto_0

    .line 81
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 82
    .local v1, "device":Landroid/hardware/usb/UsbDevice;
    sget-object v4, Lcom/physicaloid/lib/usb/UsbAccessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Device("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-ne v0, p1, :cond_5

    .line 85
    invoke-virtual {p0, v1}, Lcom/physicaloid/lib/usb/UsbAccessor;->getPermission(Landroid/hardware/usb/UsbDevice;)V

    .line 86
    iget-object v3, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    sget-object v3, Lcom/physicaloid/lib/usb/UsbAccessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Doesn\'t have permission device("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 88
    goto/16 :goto_0

    .line 93
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public deviceIsConnected(I)Z
    .locals 1
    .param p1, "devNum"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/physicaloid/lib/usb/UsbAccessor;->connection(I)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public endpoint(III)Landroid/hardware/usb/UsbEndpoint;
    .locals 7
    .param p1, "devNum"    # I
    .param p2, "intfNum"    # I
    .param p3, "epNum"    # I

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/physicaloid/lib/usb/UsbAccessor;->intface(II)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 129
    .local v2, "intf":Landroid/hardware/usb/UsbInterface;
    if-nez v2, :cond_0

    .line 139
    :goto_0
    return-object v3

    .line 131
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    .line 132
    .local v0, "epCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 138
    sget-object v4, Lcom/physicaloid/lib/usb/UsbAccessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot find endpoint("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_1
    if-ne v1, p3, :cond_2

    .line 134
    sget-object v3, Lcom/physicaloid/lib/usb/UsbAccessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Endpoint("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    goto :goto_0

    .line 132
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getPermission(Landroid/hardware/usb/UsbDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mManager:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mPermissionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    sget-object v0, Lcom/physicaloid/lib/usb/UsbAccessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request permission : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mPermissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public getPid(I)I
    .locals 2
    .param p1, "devNum"    # I

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/physicaloid/lib/usb/UsbAccessor;->device(I)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    .line 242
    .local v0, "dev":Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 243
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    goto :goto_0
.end method

.method public getSerial(I)Ljava/lang/String;
    .locals 1
    .param p1, "devNum"    # I

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/physicaloid/lib/usb/UsbAccessor;->connection(I)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 253
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/physicaloid/lib/usb/UsbAccessor;->connection(I)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getSerial()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVid(I)I
    .locals 2
    .param p1, "devNum"    # I

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/physicaloid/lib/usb/UsbAccessor;->device(I)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    .line 231
    .local v0, "dev":Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 232
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mManager:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mManager:Landroid/hardware/usb/UsbManager;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mPermissionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "USB_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mPermissionIntent:Landroid/app/PendingIntent;

    .line 65
    :cond_1
    return-void
.end method

.method public intface(II)Landroid/hardware/usb/UsbInterface;
    .locals 7
    .param p1, "devNum"    # I
    .param p2, "intfNum"    # I

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0, p1}, Lcom/physicaloid/lib/usb/UsbAccessor;->device(I)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    .line 107
    .local v0, "dev":Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-object v3

    .line 109
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    .line 110
    .local v1, "devCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_1

    .line 116
    sget-object v4, Lcom/physicaloid/lib/usb/UsbAccessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot find interface("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_1
    if-ne v2, p2, :cond_2

    .line 112
    sget-object v3, Lcom/physicaloid/lib/usb/UsbAccessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Interface("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    goto :goto_0

    .line 110
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public manager()Landroid/hardware/usb/UsbManager;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method public openDevice()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0, v0, v0}, Lcom/physicaloid/lib/usb/UsbAccessor;->openDevice(III)Z

    move-result v0

    return v0
.end method

.method public openDevice(I)Z
    .locals 1
    .param p1, "devNum"    # I

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, p1, v0, v0}, Lcom/physicaloid/lib/usb/UsbAccessor;->openDevice(III)Z

    move-result v0

    return v0
.end method

.method public openDevice(III)Z
    .locals 6
    .param p1, "devNum"    # I
    .param p2, "intfNum"    # I
    .param p3, "ch"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    invoke-virtual {p0, p1}, Lcom/physicaloid/lib/usb/UsbAccessor;->device(I)Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    .line 188
    .local v1, "dev":Landroid/hardware/usb/UsbDevice;
    if-nez v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v2

    .line 189
    :cond_1
    iget-object v4, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v4, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    .line 190
    .local v0, "con":Landroid/hardware/usb/UsbDeviceConnection;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/physicaloid/lib/usb/UsbAccessor;->intface(II)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    iget-object v2, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mConnection:Landroid/util/SparseArray;

    invoke-virtual {v2, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v2, v3

    .line 193
    goto :goto_0

    .line 195
    :cond_2
    sget-object v3, Lcom/physicaloid/lib/usb/UsbAccessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot get claim interface("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lcom/physicaloid/lib/usb/UsbAccessor;->mConnection:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.class public Lcom/physicaloid/lib/fpga/PhysicaloidFpga;
.super Lcom/physicaloid/lib/Physicaloid;
.source "PhysicaloidFpga.java"


# static fields
.field private static final DEBUG_SHOW:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mFilter:Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/physicaloid/lib/fpga/PhysicaloidFpga;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/fpga/PhysicaloidFpga;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/physicaloid/lib/Physicaloid;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;

    invoke-direct {v0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;-><init>()V

    iput-object v0, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpga;->mFilter:Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;

    .line 19
    return-void
.end method


# virtual methods
.method public write([B)I
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 23
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/physicaloid/lib/fpga/PhysicaloidFpga;->write([BI)I

    move-result v0

    return v0
.end method

.method public write([BI)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/physicaloid/lib/fpga/PhysicaloidFpga;->write([BII)I

    move-result v0

    return v0
.end method

.method public write([BII)I
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 32
    sget-object v1, Lcom/physicaloid/lib/fpga/PhysicaloidFpga;->LOCK_WRITE:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpga;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    if-nez v2, :cond_0

    monitor-exit v1

    .line 35
    :goto_0
    return v0

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpga;->mFilter:Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;

    if-nez v2, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 35
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpga;->mFilter:Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;

    iget-object v2, p0, Lcom/physicaloid/lib/fpga/PhysicaloidFpga;->mSerial:Lcom/physicaloid/lib/framework/SerialCommunicator;

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;->writeWithEscape(Lcom/physicaloid/lib/framework/SerialCommunicator;[BII)I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public writeWithoutEscape([BI)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/physicaloid/lib/Physicaloid;->write([BI)I

    move-result v0

    return v0
.end method

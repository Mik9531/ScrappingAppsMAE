.class public Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;
.super Ljava/lang/Object;
.source "PhysicaloidFpgaPacketFilter.java"


# static fields
.field private static final DEBUG_SHOW:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toHexStr([BI)Ljava/lang/String;
    .locals 7
    .param p1, "b"    # [B
    .param p2, "length"    # I

    .prologue
    .line 63
    const-string v1, ""

    .line 64
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 67
    return-object v1

    .line 65
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%02x "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, p1, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createEscapedPacket([BII)[B
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .prologue
    const/16 v8, 0x3d

    const/4 v7, 0x0

    .line 39
    if-nez p1, :cond_0

    const/4 v4, 0x0

    .line 58
    :goto_0
    return-object v4

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    .local v0, "bufPointer":I
    const/4 v1, 0x0

    .line 42
    .local v1, "escapedBufPointer":I
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    new-array v2, v5, [B

    .line 44
    .local v2, "escapedPacket":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, p3, :cond_1

    .line 56
    new-array v4, v1, [B

    .line 57
    .local v4, "packet":[B
    invoke-static {v2, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 45
    .end local v4    # "packet":[B
    :cond_1
    add-int v0, v3, p2

    .line 46
    aget-byte v5, p1, v0

    aput-byte v5, v2, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    aget-byte v5, p1, v0

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_2

    aget-byte v5, p1, v0

    if-ne v5, v8, :cond_3

    .line 49
    :cond_2
    add-int/lit8 v5, v1, -0x1

    aput-byte v8, v2, v5

    .line 50
    aget-byte v5, p1, v0

    xor-int/lit8 v5, v5, 0x20

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 44
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public writeWithEscape(Lcom/physicaloid/lib/framework/SerialCommunicator;[BI)I
    .locals 1
    .param p1, "comm"    # Lcom/physicaloid/lib/framework/SerialCommunicator;
    .param p2, "buf"    # [B
    .param p3, "size"    # I

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;->writeWithEscape(Lcom/physicaloid/lib/framework/SerialCommunicator;[BII)I

    move-result v0

    return v0
.end method

.method public writeWithEscape(Lcom/physicaloid/lib/framework/SerialCommunicator;[BII)I
    .locals 6
    .param p1, "comm"    # Lcom/physicaloid/lib/framework/SerialCommunicator;
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 18
    if-nez p1, :cond_1

    move p4, v4

    .line 35
    .end local p4    # "size":I
    :cond_0
    :goto_0
    return p4

    .line 19
    .restart local p4    # "size":I
    :cond_1
    if-nez p2, :cond_2

    move p4, v4

    goto :goto_0

    .line 21
    :cond_2
    const/4 v3, 0x0

    .line 23
    .local v3, "totalWrittenSize":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/physicaloid/lib/fpga/PhysicaloidFpgaPacketFilter;->createEscapedPacket([BII)[B

    move-result-object v0

    .line 26
    .local v0, "packet":[B
    array-length v5, v0

    invoke-virtual {p1, v0, v5}, Lcom/physicaloid/lib/framework/SerialCommunicator;->write([BI)I

    move-result v3

    .line 28
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 29
    array-length v5, v0

    sub-int v1, v5, v3

    .line 30
    .local v1, "remainingSize":I
    new-array v2, v1, [B

    .line 31
    .local v2, "tmpBuf":[B
    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    array-length v5, v2

    invoke-virtual {p1, v2, v5}, Lcom/physicaloid/lib/framework/SerialCommunicator;->write([BI)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1
.end method

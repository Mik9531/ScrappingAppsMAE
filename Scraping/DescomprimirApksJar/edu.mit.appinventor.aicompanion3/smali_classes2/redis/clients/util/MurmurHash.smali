.class public Lredis/clients/util/MurmurHash;
.super Ljava/lang/Object;
.source "MurmurHash.java"

# interfaces
.implements Lredis/clients/util/Hashing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hash(Ljava/nio/ByteBuffer;I)I
    .locals 8
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "seed"    # I

    .prologue
    const/4 v7, 0x4

    .line 56
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 57
    .local v0, "byteOrder":Ljava/nio/ByteOrder;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 59
    const v4, 0x5bd1e995

    .line 60
    .local v4, "m":I
    const/16 v5, 0x18

    .line 62
    .local v5, "r":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    xor-int v2, p1, v6

    .line 65
    .local v2, "h":I
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v6, v7, :cond_1

    .line 76
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lez v6, :cond_0

    .line 77
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 80
    .local v1, "finish":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 81
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    xor-int/2addr v2, v6

    .line 82
    mul-int/2addr v2, v4

    .line 85
    .end local v1    # "finish":Ljava/nio/ByteBuffer;
    :cond_0
    ushr-int/lit8 v6, v2, 0xd

    xor-int/2addr v2, v6

    .line 86
    mul-int/2addr v2, v4

    .line 87
    ushr-int/lit8 v6, v2, 0xf

    xor-int/2addr v2, v6

    .line 89
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    return v2

    .line 66
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 68
    .local v3, "k":I
    mul-int/2addr v3, v4

    .line 69
    ushr-int v6, v3, v5

    xor-int/2addr v3, v6

    .line 70
    mul-int/2addr v3, v4

    .line 72
    mul-int/2addr v2, v4

    .line 73
    xor-int/2addr v2, v3

    goto :goto_0
.end method

.method public static hash([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "seed"    # I

    .prologue
    .line 33
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lredis/clients/util/MurmurHash;->hash(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public static hash([BIII)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "seed"    # I

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p3}, Lredis/clients/util/MurmurHash;->hash(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public static hash64A(Ljava/nio/ByteBuffer;I)J
    .locals 14
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "seed"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 103
    .local v0, "byteOrder":Ljava/nio/ByteOrder;
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 105
    const-wide v6, -0x395b586ca42e166bL    # -2.0946245025644615E32

    .line 106
    .local v6, "m":J
    const/16 v8, 0x2f

    .line 108
    .local v8, "r":I
    int-to-long v10, p1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    int-to-long v12, v9

    mul-long/2addr v12, v6

    xor-long v2, v10, v12

    .line 111
    .local v2, "h":J
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/16 v10, 0x8

    if-ge v9, v10, :cond_1

    .line 122
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-lez v9, :cond_0

    .line 123
    const/16 v9, 0x8

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 126
    .local v1, "finish":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 127
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    xor-long/2addr v2, v10

    .line 128
    mul-long/2addr v2, v6

    .line 131
    .end local v1    # "finish":Ljava/nio/ByteBuffer;
    :cond_0
    ushr-long v10, v2, v8

    xor-long/2addr v2, v10

    .line 132
    mul-long/2addr v2, v6

    .line 133
    ushr-long v10, v2, v8

    xor-long/2addr v2, v10

    .line 135
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 136
    return-wide v2

    .line 112
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 114
    .local v4, "k":J
    mul-long/2addr v4, v6

    .line 115
    ushr-long v10, v4, v8

    xor-long/2addr v4, v10

    .line 116
    mul-long/2addr v4, v6

    .line 118
    xor-long/2addr v2, v4

    .line 119
    mul-long/2addr v2, v6

    goto :goto_0
.end method

.method public static hash64A([BI)J
    .locals 2
    .param p0, "data"    # [B
    .param p1, "seed"    # I

    .prologue
    .line 94
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lredis/clients/util/MurmurHash;->hash64A(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64A([BIII)J
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "seed"    # I

    .prologue
    .line 98
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p3}, Lredis/clients/util/MurmurHash;->hash64A(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public hash(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/util/MurmurHash;->hash([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public hash([B)J
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 140
    const v0, 0x1234abcd

    invoke-static {p1, v0}, Lredis/clients/util/MurmurHash;->hash64A([BI)J

    move-result-wide v0

    return-wide v0
.end method

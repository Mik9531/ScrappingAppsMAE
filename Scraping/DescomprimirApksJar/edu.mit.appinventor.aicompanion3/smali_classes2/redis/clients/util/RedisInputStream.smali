.class public Lredis/clients/util/RedisInputStream;
.super Ljava/io/FilterInputStream;
.source "RedisInputStream.java"


# instance fields
.field protected final buf:[B

.field protected count:I

.field protected limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 36
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lredis/clients/util/RedisInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    if-gtz p2, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Lredis/clients/util/RedisInputStream;->buf:[B

    .line 33
    return-void
.end method

.method private ensureFill()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lredis/clients/jedis/exceptions/JedisConnectionException;
        }
    .end annotation

    .prologue
    .line 194
    iget v1, p0, Lredis/clients/util/RedisInputStream;->count:I

    iget v2, p0, Lredis/clients/util/RedisInputStream;->limit:I

    if-lt v1, v2, :cond_0

    .line 196
    :try_start_0
    iget-object v1, p0, Lredis/clients/util/RedisInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lredis/clients/util/RedisInputStream;->buf:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iput v1, p0, Lredis/clients/util/RedisInputStream;->limit:I

    .line 197
    const/4 v1, 0x0

    iput v1, p0, Lredis/clients/util/RedisInputStream;->count:I

    .line 198
    iget v1, p0, Lredis/clients/util/RedisInputStream;->limit:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 199
    new-instance v1, Lredis/clients/jedis/exceptions/JedisConnectionException;

    const-string v2, "Unexpected end of stream."

    invoke-direct {v1, v2}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lredis/clients/jedis/exceptions/JedisConnectionException;

    invoke-direct {v1, v0}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private readLineBytesSlowly()[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-direct {p0}, Lredis/clients/util/RedisInputStream;->ensureFill()V

    .line 117
    iget-object v3, p0, Lredis/clients/util/RedisInputStream;->buf:[B

    iget v4, p0, Lredis/clients/util/RedisInputStream;->count:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lredis/clients/util/RedisInputStream;->count:I

    aget-byte v0, v3, v4

    .line 118
    .local v0, "b":B
    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    .line 119
    invoke-direct {p0}, Lredis/clients/util/RedisInputStream;->ensureFill()V

    .line 121
    iget-object v3, p0, Lredis/clients/util/RedisInputStream;->buf:[B

    iget v4, p0, Lredis/clients/util/RedisInputStream;->count:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lredis/clients/util/RedisInputStream;->count:I

    aget-byte v2, v3, v4

    .line 122
    .local v2, "c":B
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 141
    if-nez v1, :cond_4

    const/4 v3, 0x0

    new-array v3, v3, [B

    :goto_1
    return-object v3

    .line 126
    :cond_0
    if-nez v1, :cond_1

    .line 127
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 130
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 131
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 133
    .end local v2    # "c":B
    :cond_2
    if-nez v1, :cond_3

    .line 134
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 137
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 141
    .restart local v2    # "c":B
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lredis/clients/jedis/exceptions/JedisConnectionException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0}, Lredis/clients/util/RedisInputStream;->ensureFill()V

    .line 183
    iget v1, p0, Lredis/clients/util/RedisInputStream;->limit:I

    iget v2, p0, Lredis/clients/util/RedisInputStream;->count:I

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 184
    .local v0, "length":I
    iget-object v1, p0, Lredis/clients/util/RedisInputStream;->buf:[B

    iget v2, p0, Lredis/clients/util/RedisInputStream;->count:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget v1, p0, Lredis/clients/util/RedisInputStream;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Lredis/clients/util/RedisInputStream;->count:I

    .line 186
    return v0
.end method

.method public readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lredis/clients/jedis/exceptions/JedisConnectionException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lredis/clients/util/RedisInputStream;->ensureFill()V

    .line 41
    iget-object v0, p0, Lredis/clients/util/RedisInputStream;->buf:[B

    iget v1, p0, Lredis/clients/util/RedisInputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lredis/clients/util/RedisInputStream;->count:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readIntCrLf()I
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lredis/clients/util/RedisInputStream;->readLongCrLf()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 7

    .prologue
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-direct {p0}, Lredis/clients/util/RedisInputStream;->ensureFill()V

    .line 49
    iget-object v4, p0, Lredis/clients/util/RedisInputStream;->buf:[B

    iget v5, p0, Lredis/clients/util/RedisInputStream;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lredis/clients/util/RedisInputStream;->count:I

    aget-byte v0, v4, v5

    .line 50
    .local v0, "b":B
    const/16 v4, 0xd

    if-ne v0, v4, :cond_1

    .line 51
    invoke-direct {p0}, Lredis/clients/util/RedisInputStream;->ensureFill()V

    .line 53
    iget-object v4, p0, Lredis/clients/util/RedisInputStream;->buf:[B

    iget v5, p0, Lredis/clients/util/RedisInputStream;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lredis/clients/util/RedisInputStream;->count:I

    aget-byte v1, v4, v5

    .line 54
    .local v1, "c":B
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "reply":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 66
    new-instance v4, Lredis/clients/jedis/exceptions/JedisConnectionException;

    const-string v5, "It seems like server has closed the connection."

    invoke-direct {v4, v5}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    .end local v2    # "reply":Ljava/lang/String;
    :cond_0
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    int-to-char v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    .end local v1    # "c":B
    :cond_1
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 69
    .restart local v1    # "c":B
    .restart local v2    # "reply":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public readLineBytes()[B
    .locals 7

    .prologue
    .line 80
    invoke-direct {p0}, Lredis/clients/util/RedisInputStream;->ensureFill()V

    .line 82
    iget v3, p0, Lredis/clients/util/RedisInputStream;->count:I

    .line 83
    .local v3, "pos":I
    iget-object v1, p0, Lredis/clients/util/RedisInputStream;->buf:[B

    .line 85
    .local v1, "buf":[B
    :cond_0
    :goto_0
    iget v5, p0, Lredis/clients/util/RedisInputStream;->limit:I

    if-ne v3, v5, :cond_1

    .line 86
    invoke-direct {p0}, Lredis/clients/util/RedisInputStream;->readLineBytesSlowly()[B

    move-result-object v2

    .line 104
    :goto_1
    return-object v2

    .line 89
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    aget-byte v5, v1, v3

    const/16 v6, 0xd

    if-ne v5, v6, :cond_3

    .line 90
    iget v5, p0, Lredis/clients/util/RedisInputStream;->limit:I

    if-ne v4, v5, :cond_2

    .line 91
    invoke-direct {p0}, Lredis/clients/util/RedisInputStream;->readLineBytesSlowly()[B

    move-result-object v2

    move v3, v4

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_1

    .line 94
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v5, v1, v4

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 100
    iget v5, p0, Lredis/clients/util/RedisInputStream;->count:I

    sub-int v5, v3, v5

    add-int/lit8 v0, v5, -0x2

    .line 101
    .local v0, "N":I
    new-array v2, v0, [B

    .line 102
    .local v2, "line":[B
    iget v5, p0, Lredis/clients/util/RedisInputStream;->count:I

    const/4 v6, 0x0

    invoke-static {v1, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iput v3, p0, Lredis/clients/util/RedisInputStream;->count:I

    goto :goto_1

    .end local v0    # "N":I
    .end local v2    # "line":[B
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    :cond_3
    move v3, v4

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_0
.end method

.method public readLongCrLf()J
    .locals 10

    .prologue
    .line 149
    iget-object v1, p0, Lredis/clients/util/RedisInputStream;->buf:[B

    .line 151
    .local v1, "buf":[B
    invoke-direct {p0}, Lredis/clients/util/RedisInputStream;->ensureFill()V

    .line 153
    iget v3, p0, Lredis/clients/util/RedisInputStream;->count:I

    aget-byte v3, v1, v3

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_1

    const/4 v2, 0x1

    .line 154
    .local v2, "isNeg":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 155
    iget v3, p0, Lredis/clients/util/RedisInputStream;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lredis/clients/util/RedisInputStream;->count:I

    .line 158
    :cond_0
    const-wide/16 v4, 0x0

    .line 160
    .local v4, "value":J
    :goto_1
    invoke-direct {p0}, Lredis/clients/util/RedisInputStream;->ensureFill()V

    .line 162
    iget v3, p0, Lredis/clients/util/RedisInputStream;->count:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lredis/clients/util/RedisInputStream;->count:I

    aget-byte v0, v1, v3

    .line 163
    .local v0, "b":I
    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    .line 164
    invoke-direct {p0}, Lredis/clients/util/RedisInputStream;->ensureFill()V

    .line 166
    iget v3, p0, Lredis/clients/util/RedisInputStream;->count:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lredis/clients/util/RedisInputStream;->count:I

    aget-byte v3, v1, v3

    const/16 v6, 0xa

    if-eq v3, v6, :cond_3

    .line 167
    new-instance v3, Lredis/clients/jedis/exceptions/JedisConnectionException;

    const-string v6, "Unexpected character!"

    invoke-direct {v3, v6}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    .end local v0    # "b":I
    .end local v2    # "isNeg":Z
    .end local v4    # "value":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 172
    .restart local v0    # "b":I
    .restart local v2    # "isNeg":Z
    .restart local v4    # "value":J
    :cond_2
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    int-to-long v8, v0

    add-long/2addr v6, v8

    const-wide/16 v8, 0x30

    sub-long v4, v6, v8

    .line 159
    goto :goto_1

    .line 176
    :cond_3
    if-eqz v2, :cond_4

    neg-long v4, v4

    .end local v4    # "value":J
    :cond_4
    return-wide v4
.end method

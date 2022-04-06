.class public final Lredis/clients/util/RedisOutputStream;
.super Ljava/io/FilterOutputStream;
.source "RedisOutputStream.java"


# static fields
.field private static final DigitOnes:[B

.field private static final DigitTens:[B

.field private static final digits:[B

.field private static final sizeTable:[I


# instance fields
.field protected final buf:[B

.field protected count:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 17
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lredis/clients/util/RedisOutputStream;->sizeTable:[I

    .line 20
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lredis/clients/util/RedisOutputStream;->DigitTens:[B

    .line 27
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lredis/clients/util/RedisOutputStream;->DigitOnes:[B

    .line 34
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lredis/clients/util/RedisOutputStream;->digits:[B

    .line 36
    return-void

    .line 17
    nop

    :array_0
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data

    .line 20
    :array_1
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x31t
        0x31t
        0x31t
        0x31t
        0x31t
        0x31t
        0x31t
        0x31t
        0x31t
        0x31t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x34t
        0x34t
        0x34t
        0x34t
        0x34t
        0x34t
        0x34t
        0x34t
        0x34t
        0x34t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x37t
        0x37t
        0x37t
        0x37t
        0x37t
        0x37t
        0x37t
        0x37t
        0x37t
        0x37t
        0x38t
        0x38t
        0x38t
        0x38t
        0x38t
        0x38t
        0x38t
        0x38t
        0x38t
        0x38t
        0x39t
        0x39t
        0x39t
        0x39t
        0x39t
        0x39t
        0x39t
        0x39t
        0x39t
        0x39t
    .end array-data

    .line 27
    :array_2
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
    .end array-data

    .line 34
    :array_3
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 39
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lredis/clients/util/RedisOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    if-gtz p2, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    .line 48
    return-void
.end method

.method private flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 51
    iget v0, p0, Lredis/clients/util/RedisOutputStream;->count:I

    if-lez v0, :cond_0

    .line 52
    iget-object v0, p0, Lredis/clients/util/RedisOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v2, p0, Lredis/clients/util/RedisOutputStream;->count:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 53
    iput v3, p0, Lredis/clients/util/RedisOutputStream;->count:I

    .line 55
    :cond_0
    return-void
.end method

.method public static isSurrogate(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 98
    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static utf8Length(Ljava/lang/String;)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "strLen":I
    const/4 v3, 0x0

    .line 103
    .local v3, "utfLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ne v1, v2, :cond_0

    .line 116
    return v3

    .line 104
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 105
    .local v0, "c":C
    const/16 v4, 0x80

    if-ge v0, v4, :cond_1

    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 103
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/16 v4, 0x800

    if-ge v0, v4, :cond_2

    .line 108
    add-int/lit8 v3, v3, 0x2

    .line 109
    goto :goto_1

    :cond_2
    invoke-static {v0}, Lredis/clients/util/RedisOutputStream;->isSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 111
    add-int/lit8 v3, v3, 0x4

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    add-int/lit8 v3, v3, 0x3

    goto :goto_1
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Lredis/clients/util/RedisOutputStream;->flushBuffer()V

    .line 217
    iget-object v0, p0, Lredis/clients/util/RedisOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 218
    return-void
.end method

.method public write(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget v0, p0, Lredis/clients/util/RedisOutputStream;->count:I

    iget-object v1, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 59
    invoke-direct {p0}, Lredis/clients/util/RedisOutputStream;->flushBuffer()V

    .line 61
    :cond_0
    iget-object v0, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v1, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lredis/clients/util/RedisOutputStream;->count:I

    aput-byte p1, v0, v1

    .line 62
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/util/RedisOutputStream;->write([BII)V

    .line 67
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    array-length v0, v0

    if-lt p3, v0, :cond_0

    .line 72
    invoke-direct {p0}, Lredis/clients/util/RedisOutputStream;->flushBuffer()V

    .line 73
    iget-object v0, p0, Lredis/clients/util/RedisOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lredis/clients/util/RedisOutputStream;->count:I

    sub-int/2addr v0, v1

    if-lt p3, v0, :cond_1

    .line 76
    invoke-direct {p0}, Lredis/clients/util/RedisOutputStream;->flushBuffer()V

    .line 79
    :cond_1
    iget-object v0, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v1, p0, Lredis/clients/util/RedisOutputStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget v0, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lredis/clients/util/RedisOutputStream;->count:I

    goto :goto_0
.end method

.method public writeAsciiCrLf(Ljava/lang/String;)V
    .locals 5
    .param p1, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 87
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lredis/clients/util/RedisOutputStream;->writeCrLf()V

    .line 95
    return-void

    .line 88
    :cond_0
    iget v2, p0, Lredis/clients/util/RedisOutputStream;->count:I

    iget-object v3, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 89
    invoke-direct {p0}, Lredis/clients/util/RedisOutputStream;->flushBuffer()V

    .line 91
    :cond_1
    iget-object v2, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v3, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lredis/clients/util/RedisOutputStream;->count:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeCrLf()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x2

    iget-object v1, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    array-length v1, v1

    iget v2, p0, Lredis/clients/util/RedisOutputStream;->count:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 121
    invoke-direct {p0}, Lredis/clients/util/RedisOutputStream;->flushBuffer()V

    .line 124
    :cond_0
    iget-object v0, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v1, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lredis/clients/util/RedisOutputStream;->count:I

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 125
    iget-object v0, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v1, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lredis/clients/util/RedisOutputStream;->count:I

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 126
    return-void
.end method

.method public writeIntCrLf(I)V
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    if-gez p1, :cond_0

    .line 178
    const/16 v4, 0x2d

    invoke-virtual {p0, v4}, Lredis/clients/util/RedisOutputStream;->write(B)V

    .line 179
    neg-int p1, p1

    .line 182
    :cond_0
    const/4 v3, 0x0

    .line 183
    .local v3, "size":I
    :goto_0
    sget-object v4, Lredis/clients/util/RedisOutputStream;->sizeTable:[I

    aget v4, v4, v3

    if-gt p1, v4, :cond_3

    .line 186
    add-int/lit8 v3, v3, 0x1

    .line 187
    iget-object v4, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    array-length v4, v4

    iget v5, p0, Lredis/clients/util/RedisOutputStream;->count:I

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_1

    .line 188
    invoke-direct {p0}, Lredis/clients/util/RedisOutputStream;->flushBuffer()V

    .line 192
    :cond_1
    iget v4, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int v0, v4, v3

    .line 194
    .local v0, "charPos":I
    :goto_1
    const/high16 v4, 0x10000

    if-ge p1, v4, :cond_4

    .line 203
    :cond_2
    const v4, 0xcccd

    mul-int/2addr v4, p1

    ushr-int/lit8 v1, v4, 0x13

    .line 204
    .local v1, "q":I
    shl-int/lit8 v4, v1, 0x3

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    sub-int v2, p1, v4

    .line 205
    .local v2, "r":I
    iget-object v4, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lredis/clients/util/RedisOutputStream;->digits:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v0

    .line 206
    move p1, v1

    .line 207
    if-nez p1, :cond_2

    .line 209
    iget v4, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/2addr v4, v3

    iput v4, p0, Lredis/clients/util/RedisOutputStream;->count:I

    .line 211
    invoke-virtual {p0}, Lredis/clients/util/RedisOutputStream;->writeCrLf()V

    .line 212
    return-void

    .line 184
    .end local v0    # "charPos":I
    .end local v1    # "q":I
    .end local v2    # "r":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    .restart local v0    # "charPos":I
    :cond_4
    div-int/lit8 v1, p1, 0x64

    .line 196
    .restart local v1    # "q":I
    shl-int/lit8 v4, v1, 0x6

    shl-int/lit8 v5, v1, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    sub-int v2, p1, v4

    .line 197
    .restart local v2    # "r":I
    move p1, v1

    .line 198
    iget-object v4, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lredis/clients/util/RedisOutputStream;->DigitOnes:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v0

    .line 199
    iget-object v4, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lredis/clients/util/RedisOutputStream;->DigitTens:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v0

    goto :goto_1
.end method

.method public writeUtf8CrLf(Ljava/lang/String;)V
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x80

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 132
    .local v3, "strLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    move v2, v1

    .line 141
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_3

    .line 173
    invoke-virtual {p0}, Lredis/clients/util/RedisOutputStream;->writeCrLf()V

    .line 174
    return-void

    .line 133
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 134
    .local v0, "c":C
    if-lt v0, v8, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 135
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    iget v5, p0, Lredis/clients/util/RedisOutputStream;->count:I

    iget-object v6, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    array-length v6, v6

    if-ne v5, v6, :cond_2

    .line 136
    invoke-direct {p0}, Lredis/clients/util/RedisOutputStream;->flushBuffer()V

    .line 138
    :cond_2
    iget-object v5, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v6, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    int-to-byte v7, v0

    aput-byte v7, v5, v6

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "c":C
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 143
    .restart local v0    # "c":C
    if-ge v0, v8, :cond_5

    .line 144
    iget v5, p0, Lredis/clients/util/RedisOutputStream;->count:I

    iget-object v6, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    array-length v6, v6

    if-ne v5, v6, :cond_4

    .line 145
    invoke-direct {p0}, Lredis/clients/util/RedisOutputStream;->flushBuffer()V

    .line 147
    :cond_4
    iget-object v5, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v6, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    int-to-byte v7, v0

    aput-byte v7, v5, v6

    move v1, v2

    .line 141
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 148
    :cond_5
    const/16 v5, 0x800

    if-ge v0, v5, :cond_7

    .line 149
    const/4 v5, 0x2

    iget-object v6, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    array-length v6, v6

    iget v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_6

    .line 150
    invoke-direct {p0}, Lredis/clients/util/RedisOutputStream;->flushBuffer()V

    .line 152
    :cond_6
    iget-object v5, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v6, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    shr-int/lit8 v7, v0, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 153
    iget-object v5, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v6, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    and-int/lit8 v7, v0, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    move v1, v2

    .line 154
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_7
    invoke-static {v0}, Lredis/clients/util/RedisOutputStream;->isSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 155
    const/4 v5, 0x4

    iget-object v6, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    array-length v6, v6

    iget v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_8

    .line 156
    invoke-direct {p0}, Lredis/clients/util/RedisOutputStream;->flushBuffer()V

    .line 158
    :cond_8
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    .line 159
    .local v4, "uc":I
    iget-object v5, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v6, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    shr-int/lit8 v7, v4, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 160
    iget-object v5, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v6, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    shr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 161
    iget-object v5, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v6, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    shr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 162
    iget-object v5, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v6, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    and-int/lit8 v7, v4, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto/16 :goto_2

    .line 164
    .end local v1    # "i":I
    .end local v4    # "uc":I
    .restart local v2    # "i":I
    :cond_9
    const/4 v5, 0x3

    iget-object v6, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    array-length v6, v6

    iget v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_a

    .line 165
    invoke-direct {p0}, Lredis/clients/util/RedisOutputStream;->flushBuffer()V

    .line 167
    :cond_a
    iget-object v5, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v6, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    shr-int/lit8 v7, v0, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 168
    iget-object v5, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v6, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    shr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 169
    iget-object v5, p0, Lredis/clients/util/RedisOutputStream;->buf:[B

    iget v6, p0, Lredis/clients/util/RedisOutputStream;->count:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lredis/clients/util/RedisOutputStream;->count:I

    and-int/lit8 v7, v0, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_2
.end method

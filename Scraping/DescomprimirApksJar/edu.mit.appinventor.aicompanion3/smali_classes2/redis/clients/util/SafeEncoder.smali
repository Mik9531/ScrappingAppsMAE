.class public final Lredis/clients/util/SafeEncoder;
.super Ljava/lang/Object;
.source "SafeEncoder.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/InstantiationError;

    const-string v1, "Must not instantiate this class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 38
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lredis/clients/jedis/exceptions/JedisException;

    invoke-direct {v1, v0}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    :try_start_0
    new-instance v1, Lredis/clients/jedis/exceptions/JedisDataException;

    const-string v2, "value sent to redis cannot be null"

    invoke-direct {v1, v2}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lredis/clients/jedis/exceptions/JedisException;

    invoke-direct {v1, v0}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 30
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    return-object v1
.end method

.method public static varargs encodeMany([Ljava/lang/String;)[[B
    .locals 3
    .param p0, "strs"    # [Ljava/lang/String;

    .prologue
    .line 18
    array-length v2, p0

    new-array v1, v2, [[B

    .line 19
    .local v1, "many":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 22
    return-object v1

    .line 20
    :cond_0
    aget-object v2, p0, v0

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

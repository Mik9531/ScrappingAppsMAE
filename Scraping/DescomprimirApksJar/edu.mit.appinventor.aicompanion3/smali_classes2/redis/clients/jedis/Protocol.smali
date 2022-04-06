.class public final Lredis/clients/jedis/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lredis/clients/jedis/Protocol$Command;,
        Lredis/clients/jedis/Protocol$Keyword;
    }
.end annotation


# static fields
.field private static final ASK_RESPONSE:Ljava/lang/String; = "ASK"

.field public static final ASTERISK_BYTE:B = 0x2at

.field private static final BUSY_RESPONSE:Ljava/lang/String; = "BUSY"

.field public static final BYTES_FALSE:[B

.field public static final BYTES_TRUE:[B

.field public static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final CLUSTERDOWN_RESPONSE:Ljava/lang/String; = "CLUSTERDOWN"

.field public static final CLUSTER_ADDSLOTS:Ljava/lang/String; = "addslots"

.field public static final CLUSTER_COUNTKEYINSLOT:Ljava/lang/String; = "countkeysinslot"

.field public static final CLUSTER_DELSLOTS:Ljava/lang/String; = "delslots"

.field public static final CLUSTER_FAILOVER:Ljava/lang/String; = "failover"

.field public static final CLUSTER_FLUSHSLOT:Ljava/lang/String; = "flushslots"

.field public static final CLUSTER_FORGET:Ljava/lang/String; = "forget"

.field public static final CLUSTER_GETKEYSINSLOT:Ljava/lang/String; = "getkeysinslot"

.field public static final CLUSTER_INFO:Ljava/lang/String; = "info"

.field public static final CLUSTER_KEYSLOT:Ljava/lang/String; = "keyslot"

.field public static final CLUSTER_MEET:Ljava/lang/String; = "meet"

.field public static final CLUSTER_NODES:Ljava/lang/String; = "nodes"

.field public static final CLUSTER_REPLICATE:Ljava/lang/String; = "replicate"

.field public static final CLUSTER_RESET:Ljava/lang/String; = "reset"

.field public static final CLUSTER_SAVECONFIG:Ljava/lang/String; = "saveconfig"

.field public static final CLUSTER_SETSLOT:Ljava/lang/String; = "setslot"

.field public static final CLUSTER_SETSLOT_IMPORTING:Ljava/lang/String; = "importing"

.field public static final CLUSTER_SETSLOT_MIGRATING:Ljava/lang/String; = "migrating"

.field public static final CLUSTER_SETSLOT_NODE:Ljava/lang/String; = "node"

.field public static final CLUSTER_SETSLOT_STABLE:Ljava/lang/String; = "stable"

.field public static final CLUSTER_SLAVES:Ljava/lang/String; = "slaves"

.field public static final CLUSTER_SLOTS:Ljava/lang/String; = "slots"

.field public static final COLON_BYTE:B = 0x3at

.field public static final DEFAULT_DATABASE:I = 0x0

.field public static final DEFAULT_HOST:Ljava/lang/String; = "localhost"

.field public static final DEFAULT_PORT:I = 0x18eb

.field public static final DEFAULT_SENTINEL_PORT:I = 0x670b

.field public static final DEFAULT_TIMEOUT:I = 0x7d0

.field public static final DOLLAR_BYTE:B = 0x24t

.field public static final MINUS_BYTE:B = 0x2dt

.field private static final MOVED_RESPONSE:Ljava/lang/String; = "MOVED"

.field private static final NOSCRIPT_RESPONSE:Ljava/lang/String; = "NOSCRIPT"

.field public static final PLUS_BYTE:B = 0x2bt

.field public static final PUBSUB_CHANNELS:Ljava/lang/String; = "channels"

.field public static final PUBSUB_NUMSUB:Ljava/lang/String; = "numsub"

.field public static final PUBSUB_NUM_PAT:Ljava/lang/String; = "numpat"

.field public static final SENTINEL_FAILOVER:Ljava/lang/String; = "failover"

.field public static final SENTINEL_GET_MASTER_ADDR_BY_NAME:Ljava/lang/String; = "get-master-addr-by-name"

.field public static final SENTINEL_MASTERS:Ljava/lang/String; = "masters"

.field public static final SENTINEL_MONITOR:Ljava/lang/String; = "monitor"

.field public static final SENTINEL_REMOVE:Ljava/lang/String; = "remove"

.field public static final SENTINEL_RESET:Ljava/lang/String; = "reset"

.field public static final SENTINEL_SET:Ljava/lang/String; = "set"

.field public static final SENTINEL_SLAVES:Ljava/lang/String; = "slaves"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v0

    sput-object v0, Lredis/clients/jedis/Protocol;->BYTES_TRUE:[B

    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v0

    sput-object v0, Lredis/clients/jedis/Protocol;->BYTES_FALSE:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method private static parseTargetHostAndSlot(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "clusterRedirectResponse"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 141
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    .line 142
    .local v1, "response":[Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "messageInfo":[Ljava/lang/String;
    aget-object v3, v0, v6

    invoke-static {v3}, Lredis/clients/jedis/HostAndPort;->extractParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "targetHostAndPort":[Ljava/lang/String;
    aget-object v3, v0, v4

    aput-object v3, v1, v5

    .line 145
    aget-object v3, v2, v5

    aput-object v3, v1, v4

    .line 146
    aget-object v3, v2, v4

    aput-object v3, v1, v6

    .line 147
    return-object v1
.end method

.method private static process(Lredis/clients/util/RedisInputStream;)Ljava/lang/Object;
    .locals 4
    .param p0, "is"    # Lredis/clients/util/RedisInputStream;

    .prologue
    .line 152
    invoke-virtual {p0}, Lredis/clients/util/RedisInputStream;->readByte()B

    move-result v0

    .line 153
    .local v0, "b":B
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 154
    invoke-static {p0}, Lredis/clients/jedis/Protocol;->processStatusCodeReply(Lredis/clients/util/RedisInputStream;)[B

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    .line 155
    :cond_0
    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    .line 156
    invoke-static {p0}, Lredis/clients/jedis/Protocol;->processBulkReply(Lredis/clients/util/RedisInputStream;)[B

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_1
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_2

    .line 158
    invoke-static {p0}, Lredis/clients/jedis/Protocol;->processMultiBulkReply(Lredis/clients/util/RedisInputStream;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 159
    :cond_2
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_3

    .line 160
    invoke-static {p0}, Lredis/clients/jedis/Protocol;->processInteger(Lredis/clients/util/RedisInputStream;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_3
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_4

    .line 162
    invoke-static {p0}, Lredis/clients/jedis/Protocol;->processError(Lredis/clients/util/RedisInputStream;)V

    .line 163
    const/4 v1, 0x0

    goto :goto_0

    .line 165
    :cond_4
    new-instance v1, Lredis/clients/jedis/exceptions/JedisConnectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static processBulkReply(Lredis/clients/util/RedisInputStream;)[B
    .locals 6
    .param p0, "is"    # Lredis/clients/util/RedisInputStream;

    .prologue
    const/4 v5, -0x1

    .line 174
    invoke-virtual {p0}, Lredis/clients/util/RedisInputStream;->readIntCrLf()I

    move-result v0

    .line 175
    .local v0, "len":I
    if-ne v0, v5, :cond_0

    .line 176
    const/4 v2, 0x0

    .line 192
    :goto_0
    return-object v2

    .line 179
    :cond_0
    new-array v2, v0, [B

    .line 180
    .local v2, "read":[B
    const/4 v1, 0x0

    .line 181
    .local v1, "offset":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lredis/clients/util/RedisInputStream;->readByte()B

    .line 190
    invoke-virtual {p0}, Lredis/clients/util/RedisInputStream;->readByte()B

    goto :goto_0

    .line 182
    :cond_1
    sub-int v4, v0, v1

    invoke-virtual {p0, v2, v1, v4}, Lredis/clients/util/RedisInputStream;->read([BII)I

    move-result v3

    .line 183
    .local v3, "size":I
    if-ne v3, v5, :cond_2

    new-instance v4, Lredis/clients/jedis/exceptions/JedisConnectionException;

    .line 184
    const-string v5, "It seems like server has closed the connection."

    invoke-direct {v4, v5}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_2
    add-int/2addr v1, v3

    goto :goto_1
.end method

.method private static processError(Lredis/clients/util/RedisInputStream;)V
    .locals 8
    .param p0, "is"    # Lredis/clients/util/RedisInputStream;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 110
    invoke-virtual {p0}, Lredis/clients/util/RedisInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "message":Ljava/lang/String;
    const-string v3, "MOVED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-static {v1}, Lredis/clients/jedis/Protocol;->parseTargetHostAndSlot(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "movedInfo":[Ljava/lang/String;
    new-instance v3, Lredis/clients/jedis/exceptions/JedisMovedDataException;

    new-instance v4, Lredis/clients/jedis/HostAndPort;

    aget-object v5, v2, v5

    .line 116
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lredis/clients/jedis/HostAndPort;-><init>(Ljava/lang/String;I)V

    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 115
    invoke-direct {v3, v1, v4, v5}, Lredis/clients/jedis/exceptions/JedisMovedDataException;-><init>(Ljava/lang/String;Lredis/clients/jedis/HostAndPort;I)V

    throw v3

    .line 117
    .end local v2    # "movedInfo":[Ljava/lang/String;
    :cond_0
    const-string v3, "ASK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-static {v1}, Lredis/clients/jedis/Protocol;->parseTargetHostAndSlot(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "askInfo":[Ljava/lang/String;
    new-instance v3, Lredis/clients/jedis/exceptions/JedisAskDataException;

    new-instance v4, Lredis/clients/jedis/HostAndPort;

    aget-object v5, v0, v5

    .line 120
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lredis/clients/jedis/HostAndPort;-><init>(Ljava/lang/String;I)V

    aget-object v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 119
    invoke-direct {v3, v1, v4, v5}, Lredis/clients/jedis/exceptions/JedisAskDataException;-><init>(Ljava/lang/String;Lredis/clients/jedis/HostAndPort;I)V

    throw v3

    .line 121
    .end local v0    # "askInfo":[Ljava/lang/String;
    :cond_1
    const-string v3, "CLUSTERDOWN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    new-instance v3, Lredis/clients/jedis/exceptions/JedisClusterException;

    invoke-direct {v3, v1}, Lredis/clients/jedis/exceptions/JedisClusterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_2
    const-string v3, "BUSY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    new-instance v3, Lredis/clients/jedis/exceptions/JedisBusyException;

    invoke-direct {v3, v1}, Lredis/clients/jedis/exceptions/JedisBusyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    :cond_3
    const-string v3, "NOSCRIPT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 126
    new-instance v3, Lredis/clients/jedis/exceptions/JedisNoScriptException;

    invoke-direct {v3, v1}, Lredis/clients/jedis/exceptions/JedisNoScriptException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_4
    new-instance v3, Lredis/clients/jedis/exceptions/JedisDataException;

    invoke-direct {v3, v1}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static processInteger(Lredis/clients/util/RedisInputStream;)Ljava/lang/Long;
    .locals 2
    .param p0, "is"    # Lredis/clients/util/RedisInputStream;

    .prologue
    .line 196
    invoke-virtual {p0}, Lredis/clients/util/RedisInputStream;->readLongCrLf()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static processMultiBulkReply(Lredis/clients/util/RedisInputStream;)Ljava/util/List;
    .locals 5
    .param p0, "is"    # Lredis/clients/util/RedisInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/util/RedisInputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lredis/clients/util/RedisInputStream;->readIntCrLf()I

    move-result v2

    .line 201
    .local v2, "num":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 202
    const/4 v3, 0x0

    .line 212
    :cond_0
    return-object v3

    .line 204
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 207
    :try_start_0
    invoke-static {p0}, Lredis/clients/jedis/Protocol;->process(Lredis/clients/util/RedisInputStream;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Lredis/clients/jedis/exceptions/JedisDataException;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static processStatusCodeReply(Lredis/clients/util/RedisInputStream;)[B
    .locals 1
    .param p0, "is"    # Lredis/clients/util/RedisInputStream;

    .prologue
    .line 170
    invoke-virtual {p0}, Lredis/clients/util/RedisInputStream;->readLineBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static read(Lredis/clients/util/RedisInputStream;)Ljava/lang/Object;
    .locals 1
    .param p0, "is"    # Lredis/clients/util/RedisInputStream;

    .prologue
    .line 216
    invoke-static {p0}, Lredis/clients/jedis/Protocol;->process(Lredis/clients/util/RedisInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readErrorLineIfPossible(Lredis/clients/util/RedisInputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "is"    # Lredis/clients/util/RedisInputStream;

    .prologue
    .line 132
    invoke-virtual {p0}, Lredis/clients/util/RedisInputStream;->readByte()B

    move-result v0

    .line 134
    .local v0, "b":B
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 137
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lredis/clients/util/RedisInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static varargs sendCommand(Lredis/clients/util/RedisOutputStream;Lredis/clients/jedis/commands/ProtocolCommand;[[B)V
    .locals 1
    .param p0, "os"    # Lredis/clients/util/RedisOutputStream;
    .param p1, "command"    # Lredis/clients/jedis/commands/ProtocolCommand;
    .param p2, "args"    # [[B

    .prologue
    .line 85
    invoke-interface {p1}, Lredis/clients/jedis/commands/ProtocolCommand;->getRaw()[B

    move-result-object v0

    invoke-static {p0, v0, p2}, Lredis/clients/jedis/Protocol;->sendCommand(Lredis/clients/util/RedisOutputStream;[B[[B)V

    .line 86
    return-void
.end method

.method private static varargs sendCommand(Lredis/clients/util/RedisOutputStream;[B[[B)V
    .locals 5
    .param p0, "os"    # Lredis/clients/util/RedisOutputStream;
    .param p1, "command"    # [B
    .param p2, "args"    # [[B

    .prologue
    .line 91
    const/16 v2, 0x2a

    :try_start_0
    invoke-virtual {p0, v2}, Lredis/clients/util/RedisOutputStream;->write(B)V

    .line 92
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lredis/clients/util/RedisOutputStream;->writeIntCrLf(I)V

    .line 93
    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lredis/clients/util/RedisOutputStream;->write(B)V

    .line 94
    array-length v2, p1

    invoke-virtual {p0, v2}, Lredis/clients/util/RedisOutputStream;->writeIntCrLf(I)V

    .line 95
    invoke-virtual {p0, p1}, Lredis/clients/util/RedisOutputStream;->write([B)V

    .line 96
    invoke-virtual {p0}, Lredis/clients/util/RedisOutputStream;->writeCrLf()V

    .line 98
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 107
    return-void

    .line 98
    :cond_0
    aget-object v0, p2, v2

    .line 99
    .local v0, "arg":[B
    const/16 v4, 0x24

    invoke-virtual {p0, v4}, Lredis/clients/util/RedisOutputStream;->write(B)V

    .line 100
    array-length v4, v0

    invoke-virtual {p0, v4}, Lredis/clients/util/RedisOutputStream;->writeIntCrLf(I)V

    .line 101
    invoke-virtual {p0, v0}, Lredis/clients/util/RedisOutputStream;->write([B)V

    .line 102
    invoke-virtual {p0}, Lredis/clients/util/RedisOutputStream;->writeCrLf()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "arg":[B
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lredis/clients/jedis/exceptions/JedisConnectionException;

    invoke-direct {v2, v1}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final toByteArray(D)[B
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 232
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "+inf"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 233
    :cond_0
    const-string v0, "-inf"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static final toByteArray(I)[B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 224
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final toByteArray(J)[B
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 228
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final toByteArray(Z)[B
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 220
    if-eqz p0, :cond_0

    sget-object v0, Lredis/clients/jedis/Protocol;->BYTES_TRUE:[B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lredis/clients/jedis/Protocol;->BYTES_FALSE:[B

    goto :goto_0
.end method

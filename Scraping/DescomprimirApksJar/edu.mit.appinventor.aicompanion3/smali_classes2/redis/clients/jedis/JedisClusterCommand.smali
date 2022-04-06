.class public abstract Lredis/clients/jedis/JedisClusterCommand;
.super Ljava/lang/Object;
.source "JedisClusterCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NO_DISPATCH_MESSAGE:Ljava/lang/String; = "No way to dispatch this command to Redis Cluster."


# instance fields
.field private askConnection:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lredis/clients/jedis/Jedis;",
            ">;"
        }
    .end annotation
.end field

.field private connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

.field private maxAttempts:I


# direct methods
.method public constructor <init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V
    .locals 1
    .param p1, "connectionHandler"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p2, "maxAttempts"    # I

    .prologue
    .line 21
    .local p0, "this":Lredis/clients/jedis/JedisClusterCommand;, "Lredis/clients/jedis/JedisClusterCommand<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/JedisClusterCommand;->askConnection:Ljava/lang/ThreadLocal;

    .line 22
    iput-object p1, p0, Lredis/clients/jedis/JedisClusterCommand;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    .line 23
    iput p2, p0, Lredis/clients/jedis/JedisClusterCommand;->maxAttempts:I

    .line 24
    return-void
.end method

.method private releaseConnection(Lredis/clients/jedis/Jedis;)V
    .locals 0
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 171
    .local p0, "this":Lredis/clients/jedis/JedisClusterCommand;, "Lredis/clients/jedis/JedisClusterCommand<TT;>;"
    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1}, Lredis/clients/jedis/Jedis;->close()V

    .line 174
    :cond_0
    return-void
.end method

.method private runWithRetries([BIZZ)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "attempts"    # I
    .param p3, "tryRandomNode"    # Z
    .param p4, "asking"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIZZ)TT;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lredis/clients/jedis/JedisClusterCommand;, "Lredis/clients/jedis/JedisClusterCommand<TT;>;"
    if-gtz p2, :cond_0

    .line 100
    new-instance v5, Lredis/clients/jedis/exceptions/JedisClusterMaxRedirectionsException;

    const-string v6, "Too many Cluster redirections?"

    invoke-direct {v5, v6}, Lredis/clients/jedis/exceptions/JedisClusterMaxRedirectionsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 103
    :cond_0
    const/4 v1, 0x0

    .line 106
    .local v1, "connection":Lredis/clients/jedis/Jedis;
    if-eqz p4, :cond_1

    .line 109
    :try_start_0
    iget-object v5, p0, Lredis/clients/jedis/JedisClusterCommand;->askConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lredis/clients/jedis/Jedis;

    move-object v1, v0

    .line 110
    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->asking()Ljava/lang/String;

    .line 113
    const/4 p4, 0x0

    .line 122
    :goto_0
    invoke-virtual {p0, v1}, Lredis/clients/jedis/JedisClusterCommand;->execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisNoReachableClusterNodeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lredis/clients/jedis/exceptions/JedisRedirectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 166
    invoke-direct {p0, v1}, Lredis/clients/jedis/JedisClusterCommand;->releaseConnection(Lredis/clients/jedis/Jedis;)V

    .line 164
    :goto_1
    return-object v5

    .line 115
    :cond_1
    if-eqz p3, :cond_2

    .line 116
    :try_start_1
    iget-object v5, p0, Lredis/clients/jedis/JedisClusterCommand;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    invoke-virtual {v5}, Lredis/clients/jedis/JedisClusterConnectionHandler;->getConnection()Lredis/clients/jedis/Jedis;

    move-result-object v1

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-object v5, p0, Lredis/clients/jedis/JedisClusterCommand;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    invoke-static {p1}, Lredis/clients/util/JedisClusterCRC16;->getSlot([B)I

    move-result v6

    invoke-virtual {v5, v6}, Lredis/clients/jedis/JedisClusterConnectionHandler;->getConnectionFromSlot(I)Lredis/clients/jedis/Jedis;
    :try_end_1
    .catch Lredis/clients/jedis/exceptions/JedisNoReachableClusterNodeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lredis/clients/jedis/exceptions/JedisRedirectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v3

    .line 125
    .local v3, "jnrcne":Lredis/clients/jedis/exceptions/JedisNoReachableClusterNodeException;
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    .end local v3    # "jnrcne":Lredis/clients/jedis/exceptions/JedisNoReachableClusterNodeException;
    :catchall_0
    move-exception v5

    .line 166
    invoke-direct {p0, v1}, Lredis/clients/jedis/JedisClusterCommand;->releaseConnection(Lredis/clients/jedis/Jedis;)V

    .line 167
    throw v5

    .line 126
    :catch_1
    move-exception v2

    .line 128
    .local v2, "jce":Lredis/clients/jedis/exceptions/JedisConnectionException;
    :try_start_3
    invoke-direct {p0, v1}, Lredis/clients/jedis/JedisClusterCommand;->releaseConnection(Lredis/clients/jedis/Jedis;)V

    .line 129
    const/4 v1, 0x0

    .line 131
    const/4 v5, 0x1

    if-gt p2, v5, :cond_3

    .line 137
    iget-object v5, p0, Lredis/clients/jedis/JedisClusterCommand;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    invoke-virtual {v5}, Lredis/clients/jedis/JedisClusterConnectionHandler;->renewSlotCache()V

    .line 140
    throw v2

    .line 143
    :cond_3
    add-int/lit8 v5, p2, -0x1

    invoke-direct {p0, p1, v5, p3, p4}, Lredis/clients/jedis/JedisClusterCommand;->runWithRetries([BIZZ)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 166
    invoke-direct {p0, v1}, Lredis/clients/jedis/JedisClusterCommand;->releaseConnection(Lredis/clients/jedis/Jedis;)V

    goto :goto_1

    .line 144
    .end local v2    # "jce":Lredis/clients/jedis/exceptions/JedisConnectionException;
    :catch_2
    move-exception v4

    .line 146
    .local v4, "jre":Lredis/clients/jedis/exceptions/JedisRedirectionException;
    :try_start_4
    instance-of v5, v4, Lredis/clients/jedis/exceptions/JedisMovedDataException;

    if-eqz v5, :cond_4

    .line 149
    iget-object v5, p0, Lredis/clients/jedis/JedisClusterCommand;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    invoke-virtual {v5, v1}, Lredis/clients/jedis/JedisClusterConnectionHandler;->renewSlotCache(Lredis/clients/jedis/Jedis;)V

    .line 153
    :cond_4
    invoke-direct {p0, v1}, Lredis/clients/jedis/JedisClusterCommand;->releaseConnection(Lredis/clients/jedis/Jedis;)V

    .line 154
    const/4 v1, 0x0

    .line 156
    instance-of v5, v4, Lredis/clients/jedis/exceptions/JedisAskDataException;

    if-eqz v5, :cond_6

    .line 157
    const/4 p4, 0x1

    .line 158
    iget-object v5, p0, Lredis/clients/jedis/JedisClusterCommand;->askConnection:Ljava/lang/ThreadLocal;

    iget-object v6, p0, Lredis/clients/jedis/JedisClusterCommand;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    invoke-virtual {v4}, Lredis/clients/jedis/exceptions/JedisRedirectionException;->getTargetNode()Lredis/clients/jedis/HostAndPort;

    move-result-object v7

    invoke-virtual {v6, v7}, Lredis/clients/jedis/JedisClusterConnectionHandler;->getConnectionFromNode(Lredis/clients/jedis/HostAndPort;)Lredis/clients/jedis/Jedis;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 164
    :cond_5
    add-int/lit8 v5, p2, -0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, v5, v6, p4}, Lredis/clients/jedis/JedisClusterCommand;->runWithRetries([BIZZ)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 166
    invoke-direct {p0, v1}, Lredis/clients/jedis/JedisClusterCommand;->releaseConnection(Lredis/clients/jedis/Jedis;)V

    goto :goto_1

    .line 159
    :cond_6
    :try_start_5
    instance-of v5, v4, Lredis/clients/jedis/exceptions/JedisMovedDataException;

    if-nez v5, :cond_5

    .line 161
    new-instance v5, Lredis/clients/jedis/exceptions/JedisClusterException;

    invoke-direct {v5, v4}, Lredis/clients/jedis/exceptions/JedisClusterException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public abstract execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/Jedis;",
            ")TT;"
        }
    .end annotation
.end method

.method public varargs run(I[Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "keyCount"    # I
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lredis/clients/jedis/JedisClusterCommand;, "Lredis/clients/jedis/JedisClusterCommand<TT;>;"
    const/4 v5, 0x0

    .line 37
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 38
    :cond_0
    new-instance v3, Lredis/clients/jedis/exceptions/JedisClusterException;

    const-string v4, "No way to dispatch this command to Redis Cluster."

    invoke-direct {v3, v4}, Lredis/clients/jedis/exceptions/JedisClusterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_1
    array-length v3, p2

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 44
    aget-object v3, p2, v5

    invoke-static {v3}, Lredis/clients/util/JedisClusterCRC16;->getSlot(Ljava/lang/String;)I

    move-result v2

    .line 45
    .local v2, "slot":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_3

    .line 54
    .end local v0    # "i":I
    .end local v2    # "slot":I
    :cond_2
    aget-object v3, p2, v5

    invoke-static {v3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v3

    iget v4, p0, Lredis/clients/jedis/JedisClusterCommand;->maxAttempts:I

    invoke-direct {p0, v3, v4, v5, v5}, Lredis/clients/jedis/JedisClusterCommand;->runWithRetries([BIZZ)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 46
    .restart local v0    # "i":I
    .restart local v2    # "slot":I
    :cond_3
    aget-object v3, p2, v0

    invoke-static {v3}, Lredis/clients/util/JedisClusterCRC16;->getSlot(Ljava/lang/String;)I

    move-result v1

    .line 47
    .local v1, "nextSlot":I
    if-eq v2, v1, :cond_4

    .line 48
    new-instance v3, Lredis/clients/jedis/exceptions/JedisClusterException;

    const-string v4, "No way to dispatch this command to Redis Cluster because keys have different slots."

    invoke-direct {v3, v4}, Lredis/clients/jedis/exceptions/JedisClusterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public run(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lredis/clients/jedis/JedisClusterCommand;, "Lredis/clients/jedis/JedisClusterCommand<TT;>;"
    const/4 v2, 0x0

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Lredis/clients/jedis/exceptions/JedisClusterException;

    const-string v1, "No way to dispatch this command to Redis Cluster."

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/JedisClusterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    iget v1, p0, Lredis/clients/jedis/JedisClusterCommand;->maxAttempts:I

    invoke-direct {p0, v0, v1, v2, v2}, Lredis/clients/jedis/JedisClusterCommand;->runWithRetries([BIZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs runBinary(I[[B)Ljava/lang/Object;
    .locals 6
    .param p1, "keyCount"    # I
    .param p2, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[B)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lredis/clients/jedis/JedisClusterCommand;, "Lredis/clients/jedis/JedisClusterCommand<TT;>;"
    const/4 v5, 0x0

    .line 66
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 67
    :cond_0
    new-instance v3, Lredis/clients/jedis/exceptions/JedisClusterException;

    const-string v4, "No way to dispatch this command to Redis Cluster."

    invoke-direct {v3, v4}, Lredis/clients/jedis/exceptions/JedisClusterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_1
    array-length v3, p2

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 73
    aget-object v3, p2, v5

    invoke-static {v3}, Lredis/clients/util/JedisClusterCRC16;->getSlot([B)I

    move-result v2

    .line 74
    .local v2, "slot":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_3

    .line 83
    .end local v0    # "i":I
    .end local v2    # "slot":I
    :cond_2
    aget-object v3, p2, v5

    iget v4, p0, Lredis/clients/jedis/JedisClusterCommand;->maxAttempts:I

    invoke-direct {p0, v3, v4, v5, v5}, Lredis/clients/jedis/JedisClusterCommand;->runWithRetries([BIZZ)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 75
    .restart local v0    # "i":I
    .restart local v2    # "slot":I
    :cond_3
    aget-object v3, p2, v0

    invoke-static {v3}, Lredis/clients/util/JedisClusterCRC16;->getSlot([B)I

    move-result v1

    .line 76
    .local v1, "nextSlot":I
    if-eq v2, v1, :cond_4

    .line 77
    new-instance v3, Lredis/clients/jedis/exceptions/JedisClusterException;

    const-string v4, "No way to dispatch this command to Redis Cluster because keys have different slots."

    invoke-direct {v3, v4}, Lredis/clients/jedis/exceptions/JedisClusterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public runBinary([B)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lredis/clients/jedis/JedisClusterCommand;, "Lredis/clients/jedis/JedisClusterCommand<TT;>;"
    const/4 v1, 0x0

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Lredis/clients/jedis/exceptions/JedisClusterException;

    const-string v1, "No way to dispatch this command to Redis Cluster."

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/JedisClusterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget v0, p0, Lredis/clients/jedis/JedisClusterCommand;->maxAttempts:I

    invoke-direct {p0, p1, v0, v1, v1}, Lredis/clients/jedis/JedisClusterCommand;->runWithRetries([BIZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public runWithAnyNode()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lredis/clients/jedis/JedisClusterCommand;, "Lredis/clients/jedis/JedisClusterCommand<TT;>;"
    const/4 v0, 0x0

    .line 89
    .local v0, "connection":Lredis/clients/jedis/Jedis;
    :try_start_0
    iget-object v2, p0, Lredis/clients/jedis/JedisClusterCommand;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    invoke-virtual {v2}, Lredis/clients/jedis/JedisClusterConnectionHandler;->getConnection()Lredis/clients/jedis/Jedis;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lredis/clients/jedis/JedisClusterCommand;->execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 94
    invoke-direct {p0, v0}, Lredis/clients/jedis/JedisClusterCommand;->releaseConnection(Lredis/clients/jedis/Jedis;)V

    .line 90
    return-object v2

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Lredis/clients/jedis/exceptions/JedisConnectionException;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .end local v1    # "e":Lredis/clients/jedis/exceptions/JedisConnectionException;
    :catchall_0
    move-exception v2

    .line 94
    invoke-direct {p0, v0}, Lredis/clients/jedis/JedisClusterCommand;->releaseConnection(Lredis/clients/jedis/Jedis;)V

    .line 95
    throw v2
.end method

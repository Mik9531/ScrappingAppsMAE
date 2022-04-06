.class public Lredis/clients/jedis/BinaryJedisCluster;
.super Ljava/lang/Object;
.source "BinaryJedisCluster.java"

# interfaces
.implements Lredis/clients/jedis/commands/BinaryJedisClusterCommands;
.implements Lredis/clients/jedis/commands/MultiKeyBinaryJedisClusterCommands;
.implements Lredis/clients/jedis/commands/JedisClusterBinaryScriptingCommands;
.implements Ljava/io/Closeable;


# static fields
.field protected static final DEFAULT_MAX_REDIRECTIONS:I = 0x5

.field protected static final DEFAULT_TIMEOUT:I = 0x7d0

.field public static final HASHSLOTS:S = 0x4000s


# instance fields
.field protected connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

.field protected maxAttempts:I


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lredis/clients/jedis/BinaryJedisCluster;-><init>(Ljava/util/Set;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;I)V
    .locals 2
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    const/4 v0, 0x5

    new-instance v1, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lredis/clients/jedis/BinaryJedisCluster;-><init>(Ljava/util/Set;IILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;IIILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 7
    .param p2, "connectionTimeout"    # I
    .param p3, "soTimeout"    # I
    .param p4, "maxAttempts"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "clientName"    # Ljava/lang/String;
    .param p7, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "jedisClusterNode":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;

    move-object v1, p1

    move-object v2, p7

    move v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 63
    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;-><init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    .line 64
    iput p4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;IIILjava/lang/String;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 6
    .param p2, "connectionTimeout"    # I
    .param p3, "soTimeout"    # I
    .param p4, "maxAttempts"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;III",
            "Ljava/lang/String;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "jedisClusterNode":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;

    move-object v1, p1

    move-object v2, p6

    move v3, p2

    move v4, p3

    move-object v5, p5

    .line 57
    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;-><init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;)V

    .line 56
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    .line 58
    iput p4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;IIILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 1
    .param p2, "connectionTimeout"    # I
    .param p3, "soTimeout"    # I
    .param p4, "maxAttempts"    # I
    .param p5, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;III",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "jedisClusterNode":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;

    .line 51
    invoke-direct {v0, p1, p5, p2, p3}, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;-><init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;II)V

    .line 50
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    .line 52
    iput p4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;IILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 1
    .param p2, "timeout"    # I
    .param p3, "maxAttempts"    # I
    .param p4, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;II",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "jedisClusterNode":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;

    .line 44
    invoke-direct {v0, p1, p4, p2}, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;-><init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;I)V

    .line 43
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    .line 45
    iput p3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    .line 46
    return-void
.end method


# virtual methods
.method public append([B[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 330
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$26;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$26;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 335
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$26;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 330
    return-object v0
.end method

.method public bitcount([B)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 1112
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$103;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$103;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 1117
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$103;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1112
    return-object v0
.end method

.method public bitcount([BJJ)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 1122
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$104;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$104;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJJ)V

    .line 1127
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$104;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1122
    return-object v0
.end method

.method public varargs bitfield([B[[B)Ljava/util/List;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "arguments"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1848
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$171;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$171;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 1853
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$171;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1848
    return-object v0
.end method

.method public varargs bitop(Lredis/clients/jedis/BitOP;[B[[B)Ljava/lang/Long;
    .locals 8
    .param p1, "op"    # Lredis/clients/jedis/BitOP;
    .param p2, "destKey"    # [B
    .param p3, "srcKeys"    # [[B

    .prologue
    .line 1622
    invoke-static {p2, p3}, Lredis/clients/util/KeyMergeUtil;->merge([B[[B)[[B

    move-result-object v7

    .line 1624
    .local v7, "wholeKeys":[[B
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$151;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$151;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILredis/clients/jedis/BitOP;[B[[B)V

    .line 1629
    array-length v1, v7

    invoke-virtual {v0, v1, v7}, Lredis/clients/jedis/BinaryJedisCluster$151;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1624
    return-object v0
.end method

.method public varargs blpop(I[[B)Ljava/util/List;
    .locals 6
    .param p1, "timeout"    # I
    .param p2, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1344
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$126;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$126;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;II[[B)V

    .line 1349
    array-length v1, p2

    invoke-virtual {v0, v1, p2}, Lredis/clients/jedis/BinaryJedisCluster$126;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1344
    return-object v0
.end method

.method public varargs brpop(I[[B)Ljava/util/List;
    .locals 6
    .param p1, "timeout"    # I
    .param p2, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1354
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$127;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$127;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;II[[B)V

    .line 1359
    array-length v1, p2

    invoke-virtual {v0, v1, p2}, Lredis/clients/jedis/BinaryJedisCluster$127;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1354
    return-object v0
.end method

.method public brpoplpush([B[BI)[B
    .locals 8
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "timeout"    # I

    .prologue
    const/4 v7, 0x2

    .line 1580
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$147;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$147;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[BI)V

    .line 1585
    new-array v1, v7, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v7, v1}, Lredis/clients/jedis/BinaryJedisCluster$147;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1580
    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    invoke-virtual {v0}, Lredis/clients/jedis/JedisClusterConnectionHandler;->close()V

    .line 72
    :cond_0
    return-void
.end method

.method public decr([B)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 290
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$22;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$22;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 295
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$22;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 290
    return-object v0
.end method

.method public decrBy([BJ)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "integer"    # J

    .prologue
    .line 280
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$21;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/BinaryJedisCluster$21;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJ)V

    .line 285
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$21;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 280
    return-object v0
.end method

.method public del([B)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 1091
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$101;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$101;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 1096
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$101;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1091
    return-object v0
.end method

.method public varargs del([[B)Ljava/lang/Long;
    .locals 3
    .param p1, "keys"    # [[B

    .prologue
    .line 1334
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$125;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$125;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[[B)V

    .line 1339
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$125;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1334
    return-object v0
.end method

.method public echo([B)[B
    .locals 3
    .param p1, "arg"    # [B

    .prologue
    .line 1102
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$102;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$102;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 1107
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$102;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1102
    return-object v0
.end method

.method public varargs eval([BI[[B)Ljava/lang/Object;
    .locals 7
    .param p1, "script"    # [B
    .param p2, "keyCount"    # I
    .param p3, "params"    # [[B

    .prologue
    .line 1234
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$115;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$115;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BI[[B)V

    .line 1239
    invoke-virtual {v0, p2, p3}, Lredis/clients/jedis/BinaryJedisCluster$115;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    .line 1234
    return-object v0
.end method

.method public eval([BLjava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .locals 7
    .param p1, "script"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1244
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$116;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$116;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLjava/util/List;Ljava/util/List;)V

    .line 1249
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    invoke-virtual {v0, v2, v1}, Lredis/clients/jedis/BinaryJedisCluster$116;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    .line 1244
    return-object v0
.end method

.method public eval([B[B)Ljava/lang/Object;
    .locals 3
    .param p1, "script"    # [B
    .param p2, "key"    # [B

    .prologue
    .line 1254
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$117;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$117;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 1259
    invoke-virtual {v0, p2}, Lredis/clients/jedis/BinaryJedisCluster$117;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    .line 1254
    return-object v0
.end method

.method public varargs eval([B[B[[B)Ljava/lang/Object;
    .locals 7
    .param p1, "script"    # [B
    .param p2, "keyCount"    # [B
    .param p3, "params"    # [[B

    .prologue
    .line 1224
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$114;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$114;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[[B)V

    .line 1229
    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lredis/clients/jedis/BinaryJedisCluster$114;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    .line 1224
    return-object v0
.end method

.method public varargs evalsha([BI[[B)Ljava/lang/Object;
    .locals 7
    .param p1, "sha1"    # [B
    .param p2, "keyCount"    # I
    .param p3, "params"    # [[B

    .prologue
    .line 1284
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$120;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$120;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BI[[B)V

    .line 1289
    invoke-virtual {v0, p2, p3}, Lredis/clients/jedis/BinaryJedisCluster$120;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    .line 1284
    return-object v0
.end method

.method public evalsha([BLjava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .locals 7
    .param p1, "sha1"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1274
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$119;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$119;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLjava/util/List;Ljava/util/List;)V

    .line 1279
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    invoke-virtual {v0, v2, v1}, Lredis/clients/jedis/BinaryJedisCluster$119;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    .line 1274
    return-object v0
.end method

.method public evalsha([B[B)Ljava/lang/Object;
    .locals 3
    .param p1, "script"    # [B
    .param p2, "key"    # [B

    .prologue
    .line 1264
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$118;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$118;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 1269
    invoke-virtual {v0, p2}, Lredis/clients/jedis/BinaryJedisCluster$118;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    .line 1264
    return-object v0
.end method

.method public exists([B)Ljava/lang/Boolean;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 120
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$5;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$5;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 125
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$5;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 120
    return-object v0
.end method

.method public varargs exists([[B)Ljava/lang/Long;
    .locals 3
    .param p1, "keys"    # [[B

    .prologue
    .line 110
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$4;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$4;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[[B)V

    .line 115
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$4;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 110
    return-object v0
.end method

.method public expire([BI)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "seconds"    # I

    .prologue
    .line 150
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$8;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$8;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BI)V

    .line 155
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$8;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 150
    return-object v0
.end method

.method public expireAt([BJ)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "unixTime"    # J

    .prologue
    .line 170
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$10;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/BinaryJedisCluster$10;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJ)V

    .line 175
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$10;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 170
    return-object v0
.end method

.method public geoadd([BDD[B)Ljava/lang/Long;
    .locals 12
    .param p1, "key"    # [B
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "member"    # [B

    .prologue
    .line 1657
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$154;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lredis/clients/jedis/BinaryJedisCluster$154;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDD[B)V

    .line 1662
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$154;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1657
    return-object v0
.end method

.method public geoadd([BLjava/util/Map;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 1667
    .local p2, "memberCoordinateMap":Ljava/util/Map;, "Ljava/util/Map<[BLredis/clients/jedis/GeoCoordinate;>;"
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$155;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$155;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLjava/util/Map;)V

    .line 1672
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$155;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1667
    return-object v0
.end method

.method public geodist([B[B[B)Ljava/lang/Double;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "member1"    # [B
    .param p3, "member2"    # [B

    .prologue
    .line 1677
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$156;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$156;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 1682
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$156;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 1677
    return-object v0
.end method

.method public geodist([B[B[BLredis/clients/jedis/GeoUnit;)Ljava/lang/Double;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "member1"    # [B
    .param p3, "member2"    # [B
    .param p4, "unit"    # Lredis/clients/jedis/GeoUnit;

    .prologue
    .line 1688
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$157;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/BinaryJedisCluster$157;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[BLredis/clients/jedis/GeoUnit;)V

    .line 1693
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$157;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 1688
    return-object v0
.end method

.method public varargs geohash([B[[B)Ljava/util/List;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "members"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1698
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$158;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$158;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 1703
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$158;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1698
    return-object v0
.end method

.method public varargs geopos([B[[B)Ljava/util/List;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "members"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1708
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$159;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$159;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 1713
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$159;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1708
    return-object v0
.end method

.method public georadius([BDDDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
    .locals 14
    .param p1, "key"    # [B
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDD",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1719
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$160;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lredis/clients/jedis/BinaryJedisCluster$160;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDDDLredis/clients/jedis/GeoUnit;)V

    .line 1724
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$160;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1719
    return-object v0
.end method

.method public georadius([BDDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
    .locals 14
    .param p1, "key"    # [B
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p9, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDD",
            "Lredis/clients/jedis/GeoUnit;",
            "Lredis/clients/jedis/params/geo/GeoRadiusParam;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1730
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$161;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v1 .. v13}, Lredis/clients/jedis/BinaryJedisCluster$161;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 1735
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$161;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1730
    return-object v0
.end method

.method public georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
    .locals 9
    .param p1, "key"    # [B
    .param p2, "member"    # [B
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BD",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1741
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$162;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$162;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[BDLredis/clients/jedis/GeoUnit;)V

    .line 1746
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$162;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1741
    return-object v0
.end method

.method public georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
    .locals 11
    .param p1, "key"    # [B
    .param p2, "member"    # [B
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p6, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BD",
            "Lredis/clients/jedis/GeoUnit;",
            "Lredis/clients/jedis/params/geo/GeoRadiusParam;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1752
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$163;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$163;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[BDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 1757
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$163;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1752
    return-object v0
.end method

.method public get([B)[B
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 100
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$3;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$3;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 105
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$3;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 100
    return-object v0
.end method

.method public getClusterNodes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/JedisPool;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    invoke-virtual {v0}, Lredis/clients/jedis/JedisClusterConnectionHandler;->getNodes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSet([B[B)[B
    .locals 6
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 250
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$18;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$18;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 255
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$18;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 250
    return-object v0
.end method

.method public getbit([BJ)Ljava/lang/Boolean;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "offset"    # J

    .prologue
    .line 220
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$15;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/BinaryJedisCluster$15;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJ)V

    .line 225
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$15;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 220
    return-object v0
.end method

.method public getrange([BJJ)[B
    .locals 10
    .param p1, "key"    # [B
    .param p2, "startOffset"    # J
    .param p4, "endOffset"    # J

    .prologue
    .line 240
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$17;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$17;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJJ)V

    .line 245
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$17;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 240
    return-object v0
.end method

.method public varargs hdel([B[[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "field"    # [[B

    .prologue
    .line 430
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$36;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$36;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 435
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$36;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 430
    return-object v0
.end method

.method public hexists([B[B)Ljava/lang/Boolean;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "field"    # [B

    .prologue
    .line 420
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$35;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$35;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 425
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$35;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 420
    return-object v0
.end method

.method public hget([B[B)[B
    .locals 6
    .param p1, "key"    # [B
    .param p2, "field"    # [B

    .prologue
    .line 360
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$29;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$29;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 365
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$29;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 360
    return-object v0
.end method

.method public hgetAll([B)Ljava/util/Map;
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$40;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$40;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 475
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$40;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 470
    return-object v0
.end method

.method public hincrBy([B[BJ)Ljava/lang/Long;
    .locals 9
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # J

    .prologue
    .line 400
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$33;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/BinaryJedisCluster$33;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[BJ)V

    .line 405
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$33;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 400
    return-object v0
.end method

.method public hincrByFloat([B[BD)Ljava/lang/Double;
    .locals 9
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # D

    .prologue
    .line 410
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$34;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/BinaryJedisCluster$34;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[BD)V

    .line 415
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$34;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 410
    return-object v0
.end method

.method public hkeys([B)Ljava/util/Set;
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$38;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$38;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 455
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$38;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 450
    return-object v0
.end method

.method public hlen([B)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 440
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$37;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$37;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 445
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$37;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 440
    return-object v0
.end method

.method public varargs hmget([B[[B)Ljava/util/List;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "fields"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$32;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$32;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 395
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$32;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 390
    return-object v0
.end method

.method public hmset([BLjava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 380
    .local p2, "hash":Ljava/util/Map;, "Ljava/util/Map<[B[B>;"
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$31;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$31;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLjava/util/Map;)V

    .line 385
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$31;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    return-object v0
.end method

.method public hscan([B[B)Lredis/clients/jedis/ScanResult;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 1785
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$165;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    .line 1786
    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 1785
    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$165;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 1791
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$165;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ScanResult;

    .line 1785
    return-object v0
.end method

.method public hscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 1797
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$166;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    .line 1798
    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1797
    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$166;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[BLredis/clients/jedis/ScanParams;)V

    .line 1803
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$166;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ScanResult;

    .line 1797
    return-object v0
.end method

.method public hset([B[B[B)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # [B

    .prologue
    .line 350
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$28;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$28;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 355
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$28;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 350
    return-object v0
.end method

.method public hsetnx([B[B[B)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # [B

    .prologue
    .line 370
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$30;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$30;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 375
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$30;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 370
    return-object v0
.end method

.method public hstrlen([B[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "field"    # [B

    .prologue
    .line 1858
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$172;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$172;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 1863
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$172;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1858
    return-object v0
.end method

.method public hvals([B)Ljava/util/Collection;
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 460
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$39;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$39;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 465
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$39;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 460
    return-object v0
.end method

.method public incr([B)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 320
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$25;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$25;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 325
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$25;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 320
    return-object v0
.end method

.method public incrBy([BJ)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "integer"    # J

    .prologue
    .line 300
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$23;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/BinaryJedisCluster$23;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJ)V

    .line 305
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$23;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 300
    return-object v0
.end method

.method public incrByFloat([BD)Ljava/lang/Double;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "value"    # D

    .prologue
    .line 310
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$24;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/BinaryJedisCluster$24;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BD)V

    .line 315
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$24;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 310
    return-object v0
.end method

.method public lindex([BJ)[B
    .locals 8
    .param p1, "key"    # [B
    .param p2, "index"    # J

    .prologue
    .line 530
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$46;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/BinaryJedisCluster$46;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJ)V

    .line 535
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$46;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 530
    return-object v0
.end method

.method public linsert([BLredis/clients/jedis/BinaryClient$LIST_POSITION;[B[B)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "where"    # Lredis/clients/jedis/BinaryClient$LIST_POSITION;
    .param p3, "pivot"    # [B
    .param p4, "value"    # [B

    .prologue
    .line 1061
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$98;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/BinaryJedisCluster$98;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLredis/clients/jedis/BinaryClient$LIST_POSITION;[B[B)V

    .line 1066
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$98;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1061
    return-object v0
.end method

.method public llen([B)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 500
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$43;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$43;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 505
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$43;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 500
    return-object v0
.end method

.method public lpop([B)[B
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 560
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$49;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$49;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 565
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$49;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 560
    return-object v0
.end method

.method public varargs lpush([B[[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "args"    # [[B

    .prologue
    .line 490
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$42;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$42;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 495
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$42;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 490
    return-object v0
.end method

.method public varargs lpushx([B[[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "arg"    # [[B

    .prologue
    .line 1071
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$99;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$99;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 1076
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$99;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1071
    return-object v0
.end method

.method public lrange([BJJ)Ljava/util/List;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 510
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$44;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$44;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJJ)V

    .line 515
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$44;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 510
    return-object v0
.end method

.method public lrem([BJ[B)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "count"    # J
    .param p4, "value"    # [B

    .prologue
    .line 550
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$48;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$48;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJ[B)V

    .line 555
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$48;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 550
    return-object v0
.end method

.method public lset([BJ[B)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "index"    # J
    .param p4, "value"    # [B

    .prologue
    .line 540
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$47;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$47;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJ[B)V

    .line 545
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$47;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 540
    return-object v0
.end method

.method public ltrim([BJJ)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 520
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$45;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$45;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJJ)V

    .line 525
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$45;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 520
    return-object v0
.end method

.method public varargs mget([[B)Ljava/util/List;
    .locals 3
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1364
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$128;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$128;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[[B)V

    .line 1369
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$128;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1364
    return-object v0
.end method

.method public varargs mset([[B)Ljava/lang/String;
    .locals 5
    .param p1, "keysvalues"    # [[B

    .prologue
    .line 1374
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [[B

    .line 1376
    .local v1, "keys":[[B
    const/4 v0, 0x0

    .local v0, "keyIdx":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1380
    new-instance v2, Lredis/clients/jedis/BinaryJedisCluster$129;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v2, p0, v3, v4, p1}, Lredis/clients/jedis/BinaryJedisCluster$129;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[[B)V

    .line 1385
    array-length v3, v1

    invoke-virtual {v2, v3, v1}, Lredis/clients/jedis/BinaryJedisCluster$129;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1380
    return-object v2

    .line 1377
    :cond_0
    mul-int/lit8 v2, v0, 0x2

    aget-object v2, p1, v2

    aput-object v2, v1, v0

    .line 1376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs msetnx([[B)Ljava/lang/Long;
    .locals 5
    .param p1, "keysvalues"    # [[B

    .prologue
    .line 1390
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [[B

    .line 1392
    .local v1, "keys":[[B
    const/4 v0, 0x0

    .local v0, "keyIdx":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1396
    new-instance v2, Lredis/clients/jedis/BinaryJedisCluster$130;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v2, p0, v3, v4, p1}, Lredis/clients/jedis/BinaryJedisCluster$130;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[[B)V

    .line 1401
    array-length v3, v1

    invoke-virtual {v2, v3, v1}, Lredis/clients/jedis/BinaryJedisCluster$130;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1396
    return-object v2

    .line 1393
    :cond_0
    mul-int/lit8 v2, v0, 0x2

    aget-object v2, p1, v2

    aput-object v2, v1, v0

    .line 1392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public persist([B)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 130
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$6;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$6;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 135
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$6;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 130
    return-object v0
.end method

.method public pexpire([BJ)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "milliseconds"    # J

    .prologue
    .line 160
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$9;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/BinaryJedisCluster$9;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJ)V

    .line 165
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$9;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 160
    return-object v0
.end method

.method public pexpireAt([BJ)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "millisecondsTimestamp"    # J

    .prologue
    .line 180
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$11;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/BinaryJedisCluster$11;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJ)V

    .line 185
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$11;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 180
    return-object v0
.end method

.method public varargs pfadd([B[[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "elements"    # [[B

    .prologue
    .line 1132
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$105;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$105;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 1137
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$105;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1132
    return-object v0
.end method

.method public pfcount([B)J
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 1142
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$106;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$106;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 1147
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$106;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1142
    return-wide v0
.end method

.method public varargs pfcount([[B)Ljava/lang/Long;
    .locals 3
    .param p1, "keys"    # [[B

    .prologue
    .line 1646
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$153;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$153;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[[B)V

    .line 1651
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$153;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1646
    return-object v0
.end method

.method public varargs pfmerge([B[[B)Ljava/lang/String;
    .locals 7
    .param p1, "destkey"    # [B
    .param p2, "sourcekeys"    # [[B

    .prologue
    .line 1634
    invoke-static {p1, p2}, Lredis/clients/util/KeyMergeUtil;->merge([B[[B)[[B

    move-result-object v6

    .line 1636
    .local v6, "wholeKeys":[[B
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$152;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$152;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 1641
    array-length v1, v6

    invoke-virtual {v0, v1, v6}, Lredis/clients/jedis/BinaryJedisCluster$152;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1636
    return-object v0
.end method

.method public varargs psubscribe(Lredis/clients/jedis/BinaryJedisPubSub;[[B)V
    .locals 6
    .param p1, "jedisPubSub"    # Lredis/clients/jedis/BinaryJedisPubSub;
    .param p2, "patterns"    # [[B

    .prologue
    .line 1611
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$150;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$150;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILredis/clients/jedis/BinaryJedisPubSub;[[B)V

    .line 1617
    invoke-virtual {v0}, Lredis/clients/jedis/BinaryJedisCluster$150;->runWithAnyNode()Ljava/lang/Object;

    .line 1618
    return-void
.end method

.method public publish([B[B)Ljava/lang/Long;
    .locals 6
    .param p1, "channel"    # [B
    .param p2, "message"    # [B

    .prologue
    .line 1590
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$148;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$148;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 1595
    invoke-virtual {v0}, Lredis/clients/jedis/BinaryJedisCluster$148;->runWithAnyNode()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1590
    return-object v0
.end method

.method public rename([B[B)Ljava/lang/String;
    .locals 7
    .param p1, "oldkey"    # [B
    .param p2, "newkey"    # [B

    .prologue
    const/4 v6, 0x2

    .line 1406
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$131;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$131;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 1411
    new-array v1, v6, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v6, v1}, Lredis/clients/jedis/BinaryJedisCluster$131;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1406
    return-object v0
.end method

.method public renamenx([B[B)Ljava/lang/Long;
    .locals 7
    .param p1, "oldkey"    # [B
    .param p2, "newkey"    # [B

    .prologue
    const/4 v6, 0x2

    .line 1416
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$132;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$132;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 1421
    new-array v1, v6, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v6, v1}, Lredis/clients/jedis/BinaryJedisCluster$132;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1416
    return-object v0
.end method

.method public rpop([B)[B
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 570
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$50;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$50;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 575
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$50;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 570
    return-object v0
.end method

.method public rpoplpush([B[B)[B
    .locals 7
    .param p1, "srckey"    # [B
    .param p2, "dstkey"    # [B

    .prologue
    const/4 v6, 0x2

    .line 1426
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$133;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$133;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 1431
    new-array v1, v6, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v6, v1}, Lredis/clients/jedis/BinaryJedisCluster$133;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1426
    return-object v0
.end method

.method public varargs rpush([B[[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "args"    # [[B

    .prologue
    .line 480
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$41;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$41;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 485
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$41;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 480
    return-object v0
.end method

.method public varargs rpushx([B[[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "arg"    # [[B

    .prologue
    .line 1081
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$100;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$100;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 1086
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$100;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1081
    return-object v0
.end method

.method public varargs sadd([B[[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "member"    # [[B

    .prologue
    .line 580
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$51;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$51;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 585
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$51;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 580
    return-object v0
.end method

.method public scan([BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 7
    .param p1, "cursor"    # [B
    .param p2, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1763
    const/4 v6, 0x0

    .line 1765
    .local v6, "matchPattern":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lredis/clients/jedis/ScanParams;->match()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1766
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lredis/clients/jedis/BinaryJedisCluster;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " only supports SCAN commands with non-empty MATCH patterns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1769
    :cond_1
    invoke-static {v6}, Lredis/clients/util/JedisClusterHashTagUtil;->isClusterCompliantMatchPattern(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1771
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$164;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    .line 1772
    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 1771
    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$164;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLredis/clients/jedis/ScanParams;)V

    .line 1777
    invoke-static {v6}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/BinaryJedisCluster$164;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ScanResult;

    .line 1771
    return-object v0

    .line 1779
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lredis/clients/jedis/BinaryJedisCluster;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " only supports SCAN commands with MATCH patterns containing hash-tags ( curly-brackets enclosed strings )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scard([B)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 630
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$56;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$56;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 635
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$56;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 630
    return-object v0
.end method

.method public scriptExists([B[[B)Ljava/util/List;
    .locals 3
    .param p1, "key"    # [B
    .param p2, "sha1"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1294
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$121;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p2}, Lredis/clients/jedis/BinaryJedisCluster$121;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[[B)V

    .line 1299
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$121;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1294
    return-object v0
.end method

.method public scriptFlush([B)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 1314
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$123;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2}, Lredis/clients/jedis/BinaryJedisCluster$123;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    .line 1319
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$123;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1314
    return-object v0
.end method

.method public scriptKill([B)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 1324
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$124;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2}, Lredis/clients/jedis/BinaryJedisCluster$124;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    .line 1329
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$124;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1324
    return-object v0
.end method

.method public scriptLoad([B[B)[B
    .locals 3
    .param p1, "script"    # [B
    .param p2, "key"    # [B

    .prologue
    .line 1304
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$122;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$122;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 1309
    invoke-virtual {v0, p2}, Lredis/clients/jedis/BinaryJedisCluster$122;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1304
    return-object v0
.end method

.method public varargs sdiff([[B)Ljava/util/Set;
    .locals 3
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1436
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$134;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$134;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[[B)V

    .line 1441
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$134;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1436
    return-object v0
.end method

.method public varargs sdiffstore([B[[B)Ljava/lang/Long;
    .locals 7
    .param p1, "dstkey"    # [B
    .param p2, "keys"    # [[B

    .prologue
    .line 1446
    invoke-static {p1, p2}, Lredis/clients/util/KeyMergeUtil;->merge([B[[B)[[B

    move-result-object v6

    .line 1448
    .local v6, "wholeKeys":[[B
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$135;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$135;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 1453
    array-length v1, v6

    invoke-virtual {v0, v1, v6}, Lredis/clients/jedis/BinaryJedisCluster$135;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1448
    return-object v0
.end method

.method public set([B[B)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 80
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$1;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$1;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 85
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$1;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    return-object v0
.end method

.method public set([B[BLredis/clients/jedis/params/set/SetParams;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "value"    # [B
    .param p3, "params"    # Lredis/clients/jedis/params/set/SetParams;

    .prologue
    .line 90
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$2;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$2;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[BLredis/clients/jedis/params/set/SetParams;)V

    .line 95
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$2;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    return-object v0
.end method

.method public setbit([BJZ)Ljava/lang/Boolean;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .prologue
    .line 200
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$13;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$13;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJZ)V

    .line 205
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$13;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 200
    return-object v0
.end method

.method public setbit([BJ[B)Ljava/lang/Boolean;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # [B

    .prologue
    .line 210
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$14;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$14;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJ[B)V

    .line 215
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$14;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 210
    return-object v0
.end method

.method public setex([BI[B)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "seconds"    # I
    .param p3, "value"    # [B

    .prologue
    .line 270
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$20;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$20;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BI[B)V

    .line 275
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$20;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    return-object v0
.end method

.method public setnx([B[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 260
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$19;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$19;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 265
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$19;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 260
    return-object v0
.end method

.method public setrange([BJ[B)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # [B

    .prologue
    .line 230
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$16;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$16;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJ[B)V

    .line 235
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$16;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 230
    return-object v0
.end method

.method public varargs sinter([[B)Ljava/util/Set;
    .locals 3
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1458
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$136;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$136;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[[B)V

    .line 1463
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$136;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1458
    return-object v0
.end method

.method public varargs sinterstore([B[[B)Ljava/lang/Long;
    .locals 7
    .param p1, "dstkey"    # [B
    .param p2, "keys"    # [[B

    .prologue
    .line 1468
    invoke-static {p1, p2}, Lredis/clients/util/KeyMergeUtil;->merge([B[[B)[[B

    move-result-object v6

    .line 1470
    .local v6, "wholeKeys":[[B
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$137;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$137;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 1475
    array-length v1, v6

    invoke-virtual {v0, v1, v6}, Lredis/clients/jedis/BinaryJedisCluster$137;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1470
    return-object v0
.end method

.method public sismember([B[B)Ljava/lang/Boolean;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 640
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$57;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$57;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 645
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$57;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 640
    return-object v0
.end method

.method public smembers([B)Ljava/util/Set;
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$52;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$52;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 595
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$52;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 590
    return-object v0
.end method

.method public smove([B[B[B)Ljava/lang/Long;
    .locals 8
    .param p1, "srckey"    # [B
    .param p2, "dstkey"    # [B
    .param p3, "member"    # [B

    .prologue
    const/4 v7, 0x2

    .line 1480
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$138;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$138;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 1485
    new-array v1, v7, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v7, v1}, Lredis/clients/jedis/BinaryJedisCluster$138;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1480
    return-object v0
.end method

.method public sort([BLredis/clients/jedis/SortingParams;[B)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .param p3, "dstkey"    # [B

    .prologue
    const/4 v7, 0x2

    .line 1490
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$139;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$139;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLredis/clients/jedis/SortingParams;[B)V

    .line 1495
    new-array v1, v7, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, v7, v1}, Lredis/clients/jedis/BinaryJedisCluster$139;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1490
    return-object v0
.end method

.method public sort([B[B)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "dstkey"    # [B

    .prologue
    const/4 v6, 0x2

    .line 1500
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$140;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$140;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 1505
    new-array v1, v6, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v6, v1}, Lredis/clients/jedis/BinaryJedisCluster$140;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1500
    return-object v0
.end method

.method public sort([B)Ljava/util/List;
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 822
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$75;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$75;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 827
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$75;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 822
    return-object v0
.end method

.method public sort([BLredis/clients/jedis/SortingParams;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/SortingParams;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 832
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$76;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$76;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLredis/clients/jedis/SortingParams;)V

    .line 837
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$76;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 832
    return-object v0
.end method

.method public spop([BJ)Ljava/util/Set;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 620
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$55;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/BinaryJedisCluster$55;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJ)V

    .line 625
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$55;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 620
    return-object v0
.end method

.method public spop([B)[B
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 610
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$54;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$54;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 615
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$54;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 610
    return-object v0
.end method

.method public srandmember([BI)Ljava/util/List;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1152
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$107;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$107;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BI)V

    .line 1157
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$107;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1152
    return-object v0
.end method

.method public srandmember([B)[B
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 650
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$58;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$58;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 655
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$58;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 650
    return-object v0
.end method

.method public varargs srem([B[[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "member"    # [[B

    .prologue
    .line 600
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$53;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$53;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 605
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$53;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 600
    return-object v0
.end method

.method public sscan([B[B)Lredis/clients/jedis/ScanResult;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/ScanResult",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1808
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$167;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$167;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 1813
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$167;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ScanResult;

    .line 1808
    return-object v0
.end method

.method public sscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1818
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$168;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$168;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[BLredis/clients/jedis/ScanParams;)V

    .line 1823
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$168;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ScanResult;

    .line 1818
    return-object v0
.end method

.method public strlen([B)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 660
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$59;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$59;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 665
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$59;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 660
    return-object v0
.end method

.method public varargs subscribe(Lredis/clients/jedis/BinaryJedisPubSub;[[B)V
    .locals 6
    .param p1, "jedisPubSub"    # Lredis/clients/jedis/BinaryJedisPubSub;
    .param p2, "channels"    # [[B

    .prologue
    .line 1600
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$149;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$149;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILredis/clients/jedis/BinaryJedisPubSub;[[B)V

    .line 1606
    invoke-virtual {v0}, Lredis/clients/jedis/BinaryJedisCluster$149;->runWithAnyNode()Ljava/lang/Object;

    .line 1607
    return-void
.end method

.method public substr([BII)[B
    .locals 7
    .param p1, "key"    # [B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 340
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$27;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$27;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BII)V

    .line 345
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$27;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 340
    return-object v0
.end method

.method public varargs sunion([[B)Ljava/util/Set;
    .locals 3
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1510
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$141;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$141;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[[B)V

    .line 1515
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$141;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1510
    return-object v0
.end method

.method public varargs sunionstore([B[[B)Ljava/lang/Long;
    .locals 7
    .param p1, "dstkey"    # [B
    .param p2, "keys"    # [[B

    .prologue
    .line 1520
    invoke-static {p1, p2}, Lredis/clients/util/KeyMergeUtil;->merge([B[[B)[[B

    move-result-object v6

    .line 1522
    .local v6, "wholeKeys":[[B
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$142;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$142;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 1527
    array-length v1, v6

    invoke-virtual {v0, v1, v6}, Lredis/clients/jedis/BinaryJedisCluster$142;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1522
    return-object v0
.end method

.method public ttl([B)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 190
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$12;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$12;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 195
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$12;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 190
    return-object v0
.end method

.method public type([B)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 140
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$7;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$7;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 145
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$7;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    return-object v0
.end method

.method public zadd([BD[B)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B

    .prologue
    .line 670
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$60;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$60;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BD[B)V

    .line 675
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$60;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 670
    return-object v0
.end method

.method public zadd([BD[BLredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;

    .prologue
    .line 681
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$61;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$61;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BD[BLredis/clients/jedis/params/sortedset/ZAddParams;)V

    .line 686
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$61;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 681
    return-object v0
.end method

.method public zadd([BLjava/util/Map;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 691
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<[BLjava/lang/Double;>;"
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$62;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$62;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLjava/util/Map;)V

    .line 696
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$62;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 691
    return-object v0
.end method

.method public zadd([BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # [B
    .param p3, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
            "Ljava/lang/Double;",
            ">;",
            "Lredis/clients/jedis/params/sortedset/ZAddParams;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 701
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<[BLjava/lang/Double;>;"
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$63;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$63;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)V

    .line 706
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$63;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 701
    return-object v0
.end method

.method public zcard([B)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 802
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$73;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/BinaryJedisCluster$73;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B)V

    .line 807
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$73;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 802
    return-object v0
.end method

.method public zcount([BDD)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 842
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$77;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$77;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDD)V

    .line 847
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$77;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 842
    return-object v0
.end method

.method public zcount([B[B[B)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 852
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$78;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$78;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 857
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$78;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 852
    return-object v0
.end method

.method public zincrby([BD[B)Ljava/lang/Double;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B

    .prologue
    .line 731
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$66;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$66;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BD[B)V

    .line 736
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$66;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 731
    return-object v0
.end method

.method public zincrby([BD[BLredis/clients/jedis/params/sortedset/ZIncrByParams;)Ljava/lang/Double;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZIncrByParams;

    .prologue
    .line 742
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$67;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$67;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BD[BLredis/clients/jedis/params/sortedset/ZIncrByParams;)V

    .line 747
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$67;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 742
    return-object v0
.end method

.method public varargs zinterstore([BLredis/clients/jedis/ZParams;[[B)Ljava/lang/Long;
    .locals 8
    .param p1, "dstkey"    # [B
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [[B

    .prologue
    .line 1544
    invoke-static {p1, p3}, Lredis/clients/util/KeyMergeUtil;->merge([B[[B)[[B

    move-result-object v7

    .line 1546
    .local v7, "wholeKeys":[[B
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$144;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$144;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLredis/clients/jedis/ZParams;[[B)V

    .line 1551
    array-length v1, v7

    invoke-virtual {v0, v1, v7}, Lredis/clients/jedis/BinaryJedisCluster$144;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1546
    return-object v0
.end method

.method public varargs zinterstore([B[[B)Ljava/lang/Long;
    .locals 7
    .param p1, "dstkey"    # [B
    .param p2, "sets"    # [[B

    .prologue
    .line 1532
    invoke-static {p1, p2}, Lredis/clients/util/KeyMergeUtil;->merge([B[[B)[[B

    move-result-object v6

    .line 1534
    .local v6, "wholeKeys":[[B
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$143;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$143;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 1539
    array-length v1, v6

    invoke-virtual {v0, v1, v6}, Lredis/clients/jedis/BinaryJedisCluster$143;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1534
    return-object v0
.end method

.method public zlexcount([B[B[B)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 1162
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$108;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$108;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 1167
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$108;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1162
    return-object v0
.end method

.method public zrange([BJJ)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 711
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$64;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$64;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJJ)V

    .line 716
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$64;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 711
    return-object v0
.end method

.method public zrangeByLex([B[B[B)Ljava/util/Set;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1172
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$109;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$109;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 1177
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$109;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1172
    return-object v0
.end method

.method public zrangeByLex([B[B[BII)Ljava/util/Set;
    .locals 9
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1183
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$110;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$110;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[BII)V

    .line 1188
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$110;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1183
    return-object v0
.end method

.method public zrangeByScore([BDD)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 862
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$79;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$79;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDD)V

    .line 867
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$79;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 862
    return-object v0
.end method

.method public zrangeByScore([BDDII)Ljava/util/Set;
    .locals 12
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 893
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$82;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lredis/clients/jedis/BinaryJedisCluster$82;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDDII)V

    .line 898
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$82;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 893
    return-object v0
.end method

.method public zrangeByScore([B[B[B)Ljava/util/Set;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 872
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$80;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$80;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 877
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$80;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 872
    return-object v0
.end method

.method public zrangeByScore([B[B[BII)Ljava/util/Set;
    .locals 9
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 914
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$84;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$84;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[BII)V

    .line 919
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$84;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 914
    return-object v0
.end method

.method public zrangeByScoreWithScores([BDD)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 935
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$86;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$86;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDD)V

    .line 940
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$86;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 935
    return-object v0
.end method

.method public zrangeByScoreWithScores([BDDII)Ljava/util/Set;
    .locals 12
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 956
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$88;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lredis/clients/jedis/BinaryJedisCluster$88;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDDII)V

    .line 961
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$88;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 956
    return-object v0
.end method

.method public zrangeByScoreWithScores([B[B[B)Ljava/util/Set;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 977
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$90;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$90;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 982
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$90;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 977
    return-object v0
.end method

.method public zrangeByScoreWithScores([B[B[BII)Ljava/util/Set;
    .locals 9
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$92;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$92;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[BII)V

    .line 1003
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$92;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 998
    return-object v0
.end method

.method public zrangeWithScores([BJJ)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 782
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$71;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$71;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJJ)V

    .line 787
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$71;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 782
    return-object v0
.end method

.method public zrank([B[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 752
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$68;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$68;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 757
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$68;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 752
    return-object v0
.end method

.method public varargs zrem([B[[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "member"    # [[B

    .prologue
    .line 721
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$65;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$65;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 726
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$65;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 721
    return-object v0
.end method

.method public zremrangeByLex([B[B[B)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 1214
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$113;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$113;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 1219
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$113;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1214
    return-object v0
.end method

.method public zremrangeByRank([BJJ)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 1030
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$95;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$95;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJJ)V

    .line 1035
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$95;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1030
    return-object v0
.end method

.method public zremrangeByScore([BDD)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "start"    # D
    .param p4, "end"    # D

    .prologue
    .line 1040
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$96;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$96;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDD)V

    .line 1045
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$96;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1040
    return-object v0
.end method

.method public zremrangeByScore([B[B[B)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "start"    # [B
    .param p3, "end"    # [B

    .prologue
    .line 1050
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$97;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$97;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 1055
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$97;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1050
    return-object v0
.end method

.method public zrevrange([BJJ)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 772
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$70;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$70;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJJ)V

    .line 777
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$70;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 772
    return-object v0
.end method

.method public zrevrangeByLex([B[B[B)Ljava/util/Set;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1193
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$111;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$111;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 1198
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$111;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1193
    return-object v0
.end method

.method public zrevrangeByLex([B[B[BII)Ljava/util/Set;
    .locals 9
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1204
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$112;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$112;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[BII)V

    .line 1209
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$112;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1204
    return-object v0
.end method

.method public zrevrangeByScore([BDD)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 882
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$81;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$81;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDD)V

    .line 887
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$81;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 882
    return-object v0
.end method

.method public zrevrangeByScore([BDDII)Ljava/util/Set;
    .locals 12
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 925
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$85;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lredis/clients/jedis/BinaryJedisCluster$85;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDDII)V

    .line 930
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$85;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 925
    return-object v0
.end method

.method public zrevrangeByScore([B[B[B)Ljava/util/Set;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 903
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$83;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$83;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 908
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$83;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 903
    return-object v0
.end method

.method public zrevrangeByScore([B[B[BII)Ljava/util/Set;
    .locals 9
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 967
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$89;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$89;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[BII)V

    .line 972
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$89;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 967
    return-object v0
.end method

.method public zrevrangeByScoreWithScores([BDD)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 945
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$87;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$87;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDD)V

    .line 950
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$87;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 945
    return-object v0
.end method

.method public zrevrangeByScoreWithScores([BDDII)Ljava/util/Set;
    .locals 12
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1009
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$93;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lredis/clients/jedis/BinaryJedisCluster$93;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDDII)V

    .line 1014
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$93;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1009
    return-object v0
.end method

.method public zrevrangeByScoreWithScores([B[B[B)Ljava/util/Set;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 987
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$91;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$91;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V

    .line 992
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$91;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 987
    return-object v0
.end method

.method public zrevrangeByScoreWithScores([B[B[BII)Ljava/util/Set;
    .locals 9
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1020
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$94;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/BinaryJedisCluster$94;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[BII)V

    .line 1025
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$94;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1020
    return-object v0
.end method

.method public zrevrangeWithScores([BJJ)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 792
    new-instance v1, Lredis/clients/jedis/BinaryJedisCluster$72;

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/BinaryJedisCluster$72;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJJ)V

    .line 797
    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryJedisCluster$72;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 792
    return-object v0
.end method

.method public zrevrank([B[B)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 762
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$69;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$69;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 767
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$69;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 762
    return-object v0
.end method

.method public zscan([B[B)Lredis/clients/jedis/ScanResult;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1828
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$169;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$169;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 1833
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$169;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ScanResult;

    .line 1828
    return-object v0
.end method

.method public zscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1838
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$170;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$170;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[BLredis/clients/jedis/ScanParams;)V

    .line 1843
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$170;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ScanResult;

    .line 1838
    return-object v0
.end method

.method public zscore([B[B)Ljava/lang/Double;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 812
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$74;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$74;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B)V

    .line 817
    invoke-virtual {v0, p1}, Lredis/clients/jedis/BinaryJedisCluster$74;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 812
    return-object v0
.end method

.method public varargs zunionstore([BLredis/clients/jedis/ZParams;[[B)Ljava/lang/Long;
    .locals 8
    .param p1, "dstkey"    # [B
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [[B

    .prologue
    .line 1568
    invoke-static {p1, p3}, Lredis/clients/util/KeyMergeUtil;->merge([B[[B)[[B

    move-result-object v7

    .line 1570
    .local v7, "wholeKeys":[[B
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$146;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster$146;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLredis/clients/jedis/ZParams;[[B)V

    .line 1575
    array-length v1, v7

    invoke-virtual {v0, v1, v7}, Lredis/clients/jedis/BinaryJedisCluster$146;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1570
    return-object v0
.end method

.method public varargs zunionstore([B[[B)Ljava/lang/Long;
    .locals 7
    .param p1, "dstkey"    # [B
    .param p2, "sets"    # [[B

    .prologue
    .line 1556
    invoke-static {p1, p2}, Lredis/clients/util/KeyMergeUtil;->merge([B[[B)[[B

    move-result-object v6

    .line 1558
    .local v6, "wholeKeys":[[B
    new-instance v0, Lredis/clients/jedis/BinaryJedisCluster$145;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/BinaryJedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster$145;-><init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[[B)V

    .line 1563
    array-length v1, v6

    invoke-virtual {v0, v1, v6}, Lredis/clients/jedis/BinaryJedisCluster$145;->runBinary(I[[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1558
    return-object v0
.end method

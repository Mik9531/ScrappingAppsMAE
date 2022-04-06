.class public Lredis/clients/jedis/JedisCluster;
.super Lredis/clients/jedis/BinaryJedisCluster;
.source "JedisCluster.java"

# interfaces
.implements Lredis/clients/jedis/commands/JedisClusterCommands;
.implements Lredis/clients/jedis/commands/MultiKeyJedisClusterCommands;
.implements Lredis/clients/jedis/commands/JedisClusterScriptingCommands;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lredis/clients/jedis/JedisCluster$Reset;
    }
.end annotation


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
    .line 71
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lredis/clients/jedis/JedisCluster;-><init>(Ljava/util/Set;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;I)V
    .locals 1
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
    .line 75
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lredis/clients/jedis/JedisCluster;-><init>(Ljava/util/Set;II)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;II)V
    .locals 1
    .param p2, "timeout"    # I
    .param p3, "maxAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    new-instance v0, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v0}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lredis/clients/jedis/JedisCluster;-><init>(Ljava/util/Set;IILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;IIILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 0
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
    .line 107
    .local p1, "jedisClusterNode":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    invoke-direct/range {p0 .. p7}, Lredis/clients/jedis/BinaryJedisCluster;-><init>(Ljava/util/Set;IIILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;IIILjava/lang/String;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 0
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
    .line 102
    .local p1, "jedisClusterNode":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    invoke-direct/range {p0 .. p6}, Lredis/clients/jedis/BinaryJedisCluster;-><init>(Ljava/util/Set;IIILjava/lang/String;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;IIILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 0
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
    .line 97
    .local p1, "jedisClusterNode":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    invoke-direct/range {p0 .. p5}, Lredis/clients/jedis/BinaryJedisCluster;-><init>(Ljava/util/Set;IIILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;IILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 0
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
    .line 92
    .local p1, "jedisClusterNode":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lredis/clients/jedis/BinaryJedisCluster;-><init>(Ljava/util/Set;IILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;ILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 1
    .param p2, "timeout"    # I
    .param p3, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;I",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0, p3}, Lredis/clients/jedis/JedisCluster;-><init>(Ljava/util/Set;IILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 2
    .param p2, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    const/16 v0, 0x7d0

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1, p2}, Lredis/clients/jedis/JedisCluster;-><init>(Ljava/util/Set;IILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/HostAndPort;)V
    .locals 2
    .param p1, "node"    # Lredis/clients/jedis/HostAndPort;

    .prologue
    .line 31
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lredis/clients/jedis/JedisCluster;-><init>(Ljava/util/Set;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/HostAndPort;I)V
    .locals 2
    .param p1, "node"    # Lredis/clients/jedis/HostAndPort;
    .param p2, "timeout"    # I

    .prologue
    .line 35
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v0, p2, v1}, Lredis/clients/jedis/JedisCluster;-><init>(Ljava/util/Set;II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/HostAndPort;II)V
    .locals 2
    .param p1, "node"    # Lredis/clients/jedis/HostAndPort;
    .param p2, "timeout"    # I
    .param p3, "maxAttempts"    # I

    .prologue
    .line 39
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    invoke-direct {p0, v0, p2, p3, v1}, Lredis/clients/jedis/JedisCluster;-><init>(Ljava/util/Set;IILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/HostAndPort;IIILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 8
    .param p1, "node"    # Lredis/clients/jedis/HostAndPort;
    .param p2, "connectionTimeout"    # I
    .param p3, "soTimeout"    # I
    .param p4, "maxAttempts"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "clientName"    # Ljava/lang/String;
    .param p7, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    .prologue
    .line 67
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/BinaryJedisCluster;-><init>(Ljava/util/Set;IIILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/HostAndPort;IIILjava/lang/String;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 7
    .param p1, "node"    # Lredis/clients/jedis/HostAndPort;
    .param p2, "connectionTimeout"    # I
    .param p3, "soTimeout"    # I
    .param p4, "maxAttempts"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    .prologue
    .line 62
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/BinaryJedisCluster;-><init>(Ljava/util/Set;IIILjava/lang/String;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/HostAndPort;IIILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 6
    .param p1, "node"    # Lredis/clients/jedis/HostAndPort;
    .param p2, "connectionTimeout"    # I
    .param p3, "soTimeout"    # I
    .param p4, "maxAttempts"    # I
    .param p5, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    .prologue
    .line 57
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedisCluster;-><init>(Ljava/util/Set;IIILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/HostAndPort;IILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 1
    .param p1, "node"    # Lredis/clients/jedis/HostAndPort;
    .param p2, "timeout"    # I
    .param p3, "maxAttempts"    # I
    .param p4, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    .prologue
    .line 52
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lredis/clients/jedis/JedisCluster;-><init>(Ljava/util/Set;IILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/HostAndPort;ILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 2
    .param p1, "node"    # Lredis/clients/jedis/HostAndPort;
    .param p2, "timeout"    # I
    .param p3, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    .prologue
    .line 47
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v0, p2, v1, p3}, Lredis/clients/jedis/JedisCluster;-><init>(Ljava/util/Set;IILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/HostAndPort;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 3
    .param p1, "node"    # Lredis/clients/jedis/HostAndPort;
    .param p2, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    .prologue
    .line 43
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0x7d0

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2, p2}, Lredis/clients/jedis/JedisCluster;-><init>(Ljava/util/Set;IILorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 44
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 362
    new-instance v0, Lredis/clients/jedis/JedisCluster$26;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$26;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$26;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 362
    return-object v0
.end method

.method public bitcount(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1206
    new-instance v0, Lredis/clients/jedis/JedisCluster$109;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$109;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 1211
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$109;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1206
    return-object v0
.end method

.method public bitcount(Ljava/lang/String;JJ)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 1216
    new-instance v1, Lredis/clients/jedis/JedisCluster$110;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$110;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JJ)V

    .line 1221
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$110;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1216
    return-object v0
.end method

.method public varargs bitfield(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1839
    new-instance v0, Lredis/clients/jedis/JedisCluster$167;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$167;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1844
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$167;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1839
    return-object v0
.end method

.method public varargs bitop(Lredis/clients/jedis/BitOP;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 8
    .param p1, "op"    # Lredis/clients/jedis/BitOP;
    .param p2, "destKey"    # Ljava/lang/String;
    .param p3, "srcKeys"    # [Ljava/lang/String;

    .prologue
    .line 1609
    invoke-static {p2, p3}, Lredis/clients/util/KeyMergeUtil;->merge(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1611
    .local v7, "mergedKeys":[Ljava/lang/String;
    new-instance v0, Lredis/clients/jedis/JedisCluster$145;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$145;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILredis/clients/jedis/BitOP;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1616
    array-length v1, v7

    invoke-virtual {v0, v1, v7}, Lredis/clients/jedis/JedisCluster$145;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1611
    return-object v0
.end method

.method public blpop(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "timeout"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1300
    new-instance v0, Lredis/clients/jedis/JedisCluster$117;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$117;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;IILjava/lang/String;)V

    .line 1305
    invoke-virtual {v0, p2}, Lredis/clients/jedis/JedisCluster$117;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1300
    return-object v0
.end method

.method public varargs blpop(I[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "timeout"    # I
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1330
    new-instance v0, Lredis/clients/jedis/JedisCluster$120;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$120;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;II[Ljava/lang/String;)V

    .line 1335
    array-length v1, p2

    invoke-virtual {v0, v1, p2}, Lredis/clients/jedis/JedisCluster$120;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1330
    return-object v0
.end method

.method public brpop(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "timeout"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1310
    new-instance v0, Lredis/clients/jedis/JedisCluster$118;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$118;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;IILjava/lang/String;)V

    .line 1315
    invoke-virtual {v0, p2}, Lredis/clients/jedis/JedisCluster$118;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1310
    return-object v0
.end method

.method public varargs brpop(I[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "timeout"    # I
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1341
    new-instance v0, Lredis/clients/jedis/JedisCluster$121;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$121;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;II[Ljava/lang/String;)V

    .line 1346
    array-length v1, p2

    invoke-virtual {v0, v1, p2}, Lredis/clients/jedis/JedisCluster$121;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1341
    return-object v0
.end method

.method public brpoplpush(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    const/4 v7, 0x2

    .line 1567
    new-instance v0, Lredis/clients/jedis/JedisCluster$141;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$141;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1572
    new-array v1, v7, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v7, v1}, Lredis/clients/jedis/JedisCluster$141;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1567
    return-object v0
.end method

.method public decr(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 322
    new-instance v0, Lredis/clients/jedis/JedisCluster$22;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$22;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 327
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$22;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 322
    return-object v0
.end method

.method public decrBy(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "integer"    # J

    .prologue
    .line 312
    new-instance v1, Lredis/clients/jedis/JedisCluster$21;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/JedisCluster$21;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;J)V

    .line 317
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$21;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 312
    return-object v0
.end method

.method public del(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1185
    new-instance v0, Lredis/clients/jedis/JedisCluster$107;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$107;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 1190
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$107;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1185
    return-object v0
.end method

.method public varargs del([Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1320
    new-instance v0, Lredis/clients/jedis/JedisCluster$119;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$119;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[Ljava/lang/String;)V

    .line 1325
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/JedisCluster$119;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1320
    return-object v0
.end method

.method public echo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1196
    new-instance v0, Lredis/clients/jedis/JedisCluster$108;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$108;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 1201
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$108;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1196
    return-object v0
.end method

.method public varargs eval(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "keyCount"    # I
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 1643
    new-instance v0, Lredis/clients/jedis/JedisCluster$148;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$148;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;I[Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v0, p2, p3}, Lredis/clients/jedis/JedisCluster$148;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1643
    return-object v0
.end method

.method public eval(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1653
    new-instance v0, Lredis/clients/jedis/JedisCluster$149;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$149;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 1658
    invoke-virtual {v0, p2}, Lredis/clients/jedis/JedisCluster$149;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1653
    return-object v0
.end method

.method public eval(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .locals 7
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1663
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lredis/clients/jedis/JedisCluster$150;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$150;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1668
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lredis/clients/jedis/JedisCluster$150;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1663
    return-object v0
.end method

.method public varargs evalsha(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "keyCount"    # I
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 1673
    new-instance v0, Lredis/clients/jedis/JedisCluster$151;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$151;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;I[Ljava/lang/String;)V

    .line 1678
    invoke-virtual {v0, p2, p3}, Lredis/clients/jedis/JedisCluster$151;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1673
    return-object v0
.end method

.method public evalsha(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1693
    new-instance v0, Lredis/clients/jedis/JedisCluster$153;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$153;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 1698
    invoke-virtual {v0, p2}, Lredis/clients/jedis/JedisCluster$153;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1693
    return-object v0
.end method

.method public evalsha(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .locals 7
    .param p1, "sha1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1683
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lredis/clients/jedis/JedisCluster$152;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$152;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1688
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lredis/clients/jedis/JedisCluster$152;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1683
    return-object v0
.end method

.method public exists(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Lredis/clients/jedis/JedisCluster$4;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$4;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 147
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$4;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 142
    return-object v0
.end method

.method public varargs exists([Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Lredis/clients/jedis/JedisCluster$5;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$5;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[Ljava/lang/String;)V

    .line 157
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/JedisCluster$5;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 152
    return-object v0
.end method

.method public expire(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "seconds"    # I

    .prologue
    .line 182
    new-instance v0, Lredis/clients/jedis/JedisCluster$8;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$8;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;I)V

    .line 187
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$8;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 182
    return-object v0
.end method

.method public expireAt(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "unixTime"    # J

    .prologue
    .line 202
    new-instance v1, Lredis/clients/jedis/JedisCluster$10;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/JedisCluster$10;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;J)V

    .line 207
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$10;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 202
    return-object v0
.end method

.method public geoadd(Ljava/lang/String;DDLjava/lang/String;)Ljava/lang/Long;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "member"    # Ljava/lang/String;

    .prologue
    .line 1734
    new-instance v1, Lredis/clients/jedis/JedisCluster$157;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lredis/clients/jedis/JedisCluster$157;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DDLjava/lang/String;)V

    .line 1739
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$157;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1734
    return-object v0
.end method

.method public geoadd(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 1744
    .local p2, "memberCoordinateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lredis/clients/jedis/GeoCoordinate;>;"
    new-instance v0, Lredis/clients/jedis/JedisCluster$158;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$158;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/util/Map;)V

    .line 1749
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$158;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1744
    return-object v0
.end method

.method public geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member1"    # Ljava/lang/String;
    .param p3, "member2"    # Ljava/lang/String;

    .prologue
    .line 1754
    new-instance v0, Lredis/clients/jedis/JedisCluster$159;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$159;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$159;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 1754
    return-object v0
.end method

.method public geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/GeoUnit;)Ljava/lang/Double;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member1"    # Ljava/lang/String;
    .param p3, "member2"    # Ljava/lang/String;
    .param p4, "unit"    # Lredis/clients/jedis/GeoUnit;

    .prologue
    .line 1765
    new-instance v0, Lredis/clients/jedis/JedisCluster$160;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/JedisCluster$160;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/GeoUnit;)V

    .line 1770
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$160;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 1765
    return-object v0
.end method

.method public varargs geohash(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1775
    new-instance v0, Lredis/clients/jedis/JedisCluster$161;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$161;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1780
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$161;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1775
    return-object v0
.end method

.method public varargs geopos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1785
    new-instance v0, Lredis/clients/jedis/JedisCluster$162;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$162;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1790
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$162;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1785
    return-object v0
.end method

.method public georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
    .locals 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDD",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1796
    new-instance v1, Lredis/clients/jedis/JedisCluster$163;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lredis/clients/jedis/JedisCluster$163;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DDDLredis/clients/jedis/GeoUnit;)V

    .line 1801
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$163;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1796
    return-object v0
.end method

.method public georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
    .locals 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p9, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDD",
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
    .line 1807
    new-instance v1, Lredis/clients/jedis/JedisCluster$164;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v1 .. v13}, Lredis/clients/jedis/JedisCluster$164;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 1812
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$164;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1807
    return-object v0
.end method

.method public georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;)Ljava/util/List;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1818
    new-instance v0, Lredis/clients/jedis/JedisCluster$165;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisCluster$165;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;)V

    .line 1823
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$165;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1818
    return-object v0
.end method

.method public georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p6, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
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
    .line 1829
    new-instance v0, Lredis/clients/jedis/JedisCluster$166;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lredis/clients/jedis/JedisCluster$166;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 1834
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$166;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1829
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Lredis/clients/jedis/JedisCluster$3;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$3;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 137
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$3;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    return-object v0
.end method

.method public getSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 282
    new-instance v0, Lredis/clients/jedis/JedisCluster$18;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$18;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$18;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    return-object v0
.end method

.method public getbit(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J

    .prologue
    .line 252
    new-instance v1, Lredis/clients/jedis/JedisCluster$15;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/JedisCluster$15;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;J)V

    .line 257
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$15;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 252
    return-object v0
.end method

.method public getrange(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "startOffset"    # J
    .param p4, "endOffset"    # J

    .prologue
    .line 272
    new-instance v1, Lredis/clients/jedis/JedisCluster$17;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$17;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JJ)V

    .line 277
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$17;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 272
    return-object v0
.end method

.method public varargs hdel(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # [Ljava/lang/String;

    .prologue
    .line 452
    new-instance v0, Lredis/clients/jedis/JedisCluster$35;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$35;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$35;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 452
    return-object v0
.end method

.method public hexists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 442
    new-instance v0, Lredis/clients/jedis/JedisCluster$34;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$34;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$34;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 442
    return-object v0
.end method

.method public hget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 392
    new-instance v0, Lredis/clients/jedis/JedisCluster$29;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$29;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$29;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    return-object v0
.end method

.method public hgetAll(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Lredis/clients/jedis/JedisCluster$39;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$39;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 497
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$39;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 492
    return-object v0
.end method

.method public hincrBy(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Long;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 432
    new-instance v0, Lredis/clients/jedis/JedisCluster$33;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/JedisCluster$33;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;J)V

    .line 437
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$33;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 432
    return-object v0
.end method

.method public hkeys(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Lredis/clients/jedis/JedisCluster$37;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$37;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 477
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$37;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 472
    return-object v0
.end method

.method public hlen(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 462
    new-instance v0, Lredis/clients/jedis/JedisCluster$36;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$36;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 467
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$36;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 462
    return-object v0
.end method

.method public varargs hmget(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v0, Lredis/clients/jedis/JedisCluster$32;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$32;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$32;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 422
    return-object v0
.end method

.method public hmset(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 412
    .local p2, "hash":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lredis/clients/jedis/JedisCluster$31;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$31;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/util/Map;)V

    .line 417
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$31;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 412
    return-object v0
.end method

.method public hscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1249
    new-instance v0, Lredis/clients/jedis/JedisCluster$112;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    .line 1250
    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 1249
    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$112;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 1255
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$112;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ScanResult;

    .line 1249
    return-object v0
.end method

.method public hset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v0, Lredis/clients/jedis/JedisCluster$28;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$28;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$28;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 382
    return-object v0
.end method

.method public hsetnx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 402
    new-instance v0, Lredis/clients/jedis/JedisCluster$30;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$30;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$30;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 402
    return-object v0
.end method

.method public hstrlen(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 1849
    new-instance v0, Lredis/clients/jedis/JedisCluster$168;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$168;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 1854
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$168;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1849
    return-object v0
.end method

.method public hvals(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    new-instance v0, Lredis/clients/jedis/JedisCluster$38;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$38;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 487
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$38;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 482
    return-object v0
.end method

.method public incr(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 352
    new-instance v0, Lredis/clients/jedis/JedisCluster$25;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$25;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 357
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$25;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 352
    return-object v0
.end method

.method public incrBy(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "integer"    # J

    .prologue
    .line 332
    new-instance v1, Lredis/clients/jedis/JedisCluster$23;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/JedisCluster$23;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;J)V

    .line 337
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$23;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 332
    return-object v0
.end method

.method public incrByFloat(Ljava/lang/String;D)Ljava/lang/Double;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 342
    new-instance v1, Lredis/clients/jedis/JedisCluster$24;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/JedisCluster$24;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;D)V

    .line 347
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$24;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 342
    return-object v0
.end method

.method public lindex(Ljava/lang/String;J)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # J

    .prologue
    .line 552
    new-instance v1, Lredis/clients/jedis/JedisCluster$45;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/JedisCluster$45;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;J)V

    .line 557
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$45;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    return-object v0
.end method

.method public linsert(Ljava/lang/String;Lredis/clients/jedis/BinaryClient$LIST_POSITION;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "where"    # Lredis/clients/jedis/BinaryClient$LIST_POSITION;
    .param p3, "pivot"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 1155
    new-instance v0, Lredis/clients/jedis/JedisCluster$104;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/JedisCluster$104;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Lredis/clients/jedis/BinaryClient$LIST_POSITION;Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$104;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1155
    return-object v0
.end method

.method public llen(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 522
    new-instance v0, Lredis/clients/jedis/JedisCluster$42;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$42;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 527
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$42;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 522
    return-object v0
.end method

.method public lpop(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 582
    new-instance v0, Lredis/clients/jedis/JedisCluster$48;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$48;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 587
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$48;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 582
    return-object v0
.end method

.method public varargs lpush(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;

    .prologue
    .line 512
    new-instance v0, Lredis/clients/jedis/JedisCluster$41;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$41;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$41;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 512
    return-object v0
.end method

.method public varargs lpushx(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;

    .prologue
    .line 1165
    new-instance v0, Lredis/clients/jedis/JedisCluster$105;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$105;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$105;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1165
    return-object v0
.end method

.method public lrange(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v1, Lredis/clients/jedis/JedisCluster$43;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$43;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JJ)V

    .line 537
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$43;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 532
    return-object v0
.end method

.method public lrem(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 572
    new-instance v1, Lredis/clients/jedis/JedisCluster$47;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/JedisCluster$47;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JLjava/lang/String;)V

    .line 577
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$47;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 572
    return-object v0
.end method

.method public lset(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 562
    new-instance v1, Lredis/clients/jedis/JedisCluster$46;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/JedisCluster$46;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JLjava/lang/String;)V

    .line 567
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$46;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 562
    return-object v0
.end method

.method public ltrim(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 542
    new-instance v1, Lredis/clients/jedis/JedisCluster$44;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$44;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JJ)V

    .line 547
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$44;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 542
    return-object v0
.end method

.method public varargs mget([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1351
    new-instance v0, Lredis/clients/jedis/JedisCluster$122;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$122;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[Ljava/lang/String;)V

    .line 1356
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/JedisCluster$122;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1351
    return-object v0
.end method

.method public varargs mset([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "keysvalues"    # [Ljava/lang/String;

    .prologue
    .line 1361
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 1363
    .local v1, "keys":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "keyIdx":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1367
    new-instance v2, Lredis/clients/jedis/JedisCluster$123;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v2, p0, v3, v4, p1}, Lredis/clients/jedis/JedisCluster$123;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[Ljava/lang/String;)V

    .line 1372
    array-length v3, v1

    invoke-virtual {v2, v3, v1}, Lredis/clients/jedis/JedisCluster$123;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1367
    return-object v2

    .line 1364
    :cond_0
    mul-int/lit8 v2, v0, 0x2

    aget-object v2, p1, v2

    aput-object v2, v1, v0

    .line 1363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs msetnx([Ljava/lang/String;)Ljava/lang/Long;
    .locals 5
    .param p1, "keysvalues"    # [Ljava/lang/String;

    .prologue
    .line 1377
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 1379
    .local v1, "keys":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "keyIdx":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1383
    new-instance v2, Lredis/clients/jedis/JedisCluster$124;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v2, p0, v3, v4, p1}, Lredis/clients/jedis/JedisCluster$124;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[Ljava/lang/String;)V

    .line 1388
    array-length v3, v1

    invoke-virtual {v2, v3, v1}, Lredis/clients/jedis/JedisCluster$124;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1383
    return-object v2

    .line 1380
    :cond_0
    mul-int/lit8 v2, v0, 0x2

    aget-object v2, p1, v2

    aput-object v2, v1, v0

    .line 1379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public persist(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Lredis/clients/jedis/JedisCluster$6;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$6;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 167
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$6;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 162
    return-object v0
.end method

.method public pexpire(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "milliseconds"    # J

    .prologue
    .line 192
    new-instance v1, Lredis/clients/jedis/JedisCluster$9;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/JedisCluster$9;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;J)V

    .line 197
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$9;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 192
    return-object v0
.end method

.method public pexpireAt(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "millisecondsTimestamp"    # J

    .prologue
    .line 212
    new-instance v1, Lredis/clients/jedis/JedisCluster$11;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/JedisCluster$11;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;J)V

    .line 217
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$11;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 212
    return-object v0
.end method

.method public varargs pfadd(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "elements"    # [Ljava/lang/String;

    .prologue
    .line 1280
    new-instance v0, Lredis/clients/jedis/JedisCluster$115;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$115;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1285
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$115;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1280
    return-object v0
.end method

.method public pfcount(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1290
    new-instance v0, Lredis/clients/jedis/JedisCluster$116;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$116;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 1295
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$116;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1290
    return-wide v0
.end method

.method public varargs pfcount([Ljava/lang/String;)J
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1633
    new-instance v0, Lredis/clients/jedis/JedisCluster$147;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$147;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[Ljava/lang/String;)V

    .line 1638
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/JedisCluster$147;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1633
    return-wide v0
.end method

.method public varargs pfmerge(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "destkey"    # Ljava/lang/String;
    .param p2, "sourcekeys"    # [Ljava/lang/String;

    .prologue
    .line 1621
    invoke-static {p1, p2}, Lredis/clients/util/KeyMergeUtil;->merge(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1623
    .local v6, "mergedKeys":[Ljava/lang/String;
    new-instance v0, Lredis/clients/jedis/JedisCluster$146;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$146;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1628
    array-length v1, v6

    invoke-virtual {v0, v1, v6}, Lredis/clients/jedis/JedisCluster$146;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1623
    return-object v0
.end method

.method public varargs psubscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
    .locals 6
    .param p1, "jedisPubSub"    # Lredis/clients/jedis/JedisPubSub;
    .param p2, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 1598
    new-instance v0, Lredis/clients/jedis/JedisCluster$144;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$144;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V

    .line 1604
    invoke-virtual {v0}, Lredis/clients/jedis/JedisCluster$144;->runWithAnyNode()Ljava/lang/Object;

    .line 1605
    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1577
    new-instance v0, Lredis/clients/jedis/JedisCluster$142;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$142;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v0}, Lredis/clients/jedis/JedisCluster$142;->runWithAnyNode()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1577
    return-object v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "oldkey"    # Ljava/lang/String;
    .param p2, "newkey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 1393
    new-instance v0, Lredis/clients/jedis/JedisCluster$125;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$125;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 1398
    new-array v1, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v6, v1}, Lredis/clients/jedis/JedisCluster$125;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1393
    return-object v0
.end method

.method public renamenx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "oldkey"    # Ljava/lang/String;
    .param p2, "newkey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 1403
    new-instance v0, Lredis/clients/jedis/JedisCluster$126;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$126;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 1408
    new-array v1, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v6, v1}, Lredis/clients/jedis/JedisCluster$126;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1403
    return-object v0
.end method

.method public rpop(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 592
    new-instance v0, Lredis/clients/jedis/JedisCluster$49;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$49;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 597
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$49;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 592
    return-object v0
.end method

.method public rpoplpush(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "srckey"    # Ljava/lang/String;
    .param p2, "dstkey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 1413
    new-instance v0, Lredis/clients/jedis/JedisCluster$127;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$127;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 1418
    new-array v1, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v6, v1}, Lredis/clients/jedis/JedisCluster$127;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1413
    return-object v0
.end method

.method public varargs rpush(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;

    .prologue
    .line 502
    new-instance v0, Lredis/clients/jedis/JedisCluster$40;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$40;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$40;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 502
    return-object v0
.end method

.method public varargs rpushx(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;

    .prologue
    .line 1175
    new-instance v0, Lredis/clients/jedis/JedisCluster$106;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$106;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$106;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1175
    return-object v0
.end method

.method public varargs sadd(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # [Ljava/lang/String;

    .prologue
    .line 602
    new-instance v0, Lredis/clients/jedis/JedisCluster$50;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$50;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$50;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 602
    return-object v0
.end method

.method public scan(Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 7
    .param p1, "cursor"    # Ljava/lang/String;
    .param p2, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1227
    const/4 v6, 0x0

    .line 1229
    .local v6, "matchPattern":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lredis/clients/jedis/ScanParams;->match()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lredis/clients/jedis/JedisCluster;

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

    .line 1233
    :cond_1
    invoke-static {v6}, Lredis/clients/util/JedisClusterHashTagUtil;->isClusterCompliantMatchPattern(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1235
    new-instance v0, Lredis/clients/jedis/JedisCluster$111;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    .line 1236
    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 1235
    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$111;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Lredis/clients/jedis/ScanParams;)V

    .line 1241
    invoke-static {v6}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/JedisCluster$111;->runBinary([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ScanResult;

    .line 1235
    return-object v0

    .line 1243
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lredis/clients/jedis/JedisCluster;

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

.method public scard(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 652
    new-instance v0, Lredis/clients/jedis/JedisCluster$55;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$55;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 657
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$55;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 652
    return-object v0
.end method

.method public scriptExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1703
    new-instance v0, Lredis/clients/jedis/JedisCluster$154;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$154;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 1708
    invoke-virtual {v0, p2}, Lredis/clients/jedis/JedisCluster$154;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1703
    return-object v0
.end method

.method public varargs scriptExists(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sha1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1713
    new-instance v0, Lredis/clients/jedis/JedisCluster$155;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p2}, Lredis/clients/jedis/JedisCluster$155;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[Ljava/lang/String;)V

    .line 1718
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$155;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1713
    return-object v0
.end method

.method public scriptLoad(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1723
    new-instance v0, Lredis/clients/jedis/JedisCluster$156;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$156;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 1728
    invoke-virtual {v0, p2}, Lredis/clients/jedis/JedisCluster$156;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1723
    return-object v0
.end method

.method public varargs sdiff([Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1423
    new-instance v0, Lredis/clients/jedis/JedisCluster$128;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$128;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[Ljava/lang/String;)V

    .line 1428
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/JedisCluster$128;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1423
    return-object v0
.end method

.method public varargs sdiffstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1433
    invoke-static {p1, p2}, Lredis/clients/util/KeyMergeUtil;->merge(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1435
    .local v6, "mergedKeys":[Ljava/lang/String;
    new-instance v0, Lredis/clients/jedis/JedisCluster$129;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$129;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1440
    array-length v1, v6

    invoke-virtual {v0, v1, v6}, Lredis/clients/jedis/JedisCluster$129;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1435
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Lredis/clients/jedis/JedisCluster$1;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$1;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$1;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/params/set/SetParams;

    .prologue
    .line 122
    new-instance v0, Lredis/clients/jedis/JedisCluster$2;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$2;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)V

    .line 127
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$2;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    return-object v0
.end method

.method public setbit(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 242
    new-instance v1, Lredis/clients/jedis/JedisCluster$14;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/JedisCluster$14;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JLjava/lang/String;)V

    .line 247
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$14;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 242
    return-object v0
.end method

.method public setbit(Ljava/lang/String;JZ)Ljava/lang/Boolean;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .prologue
    .line 232
    new-instance v1, Lredis/clients/jedis/JedisCluster$13;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/JedisCluster$13;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JZ)V

    .line 237
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$13;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 232
    return-object v0
.end method

.method public setex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "seconds"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 302
    new-instance v0, Lredis/clients/jedis/JedisCluster$20;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$20;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;ILjava/lang/String;)V

    .line 307
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$20;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    return-object v0
.end method

.method public setnx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 292
    new-instance v0, Lredis/clients/jedis/JedisCluster$19;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$19;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$19;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 292
    return-object v0
.end method

.method public setrange(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 262
    new-instance v1, Lredis/clients/jedis/JedisCluster$16;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/JedisCluster$16;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JLjava/lang/String;)V

    .line 267
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$16;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 262
    return-object v0
.end method

.method public varargs sinter([Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1445
    new-instance v0, Lredis/clients/jedis/JedisCluster$130;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$130;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[Ljava/lang/String;)V

    .line 1450
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/JedisCluster$130;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1445
    return-object v0
.end method

.method public varargs sinterstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1455
    invoke-static {p1, p2}, Lredis/clients/util/KeyMergeUtil;->merge(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1457
    .local v6, "mergedKeys":[Ljava/lang/String;
    new-instance v0, Lredis/clients/jedis/JedisCluster$131;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$131;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1462
    array-length v1, v6

    invoke-virtual {v0, v1, v6}, Lredis/clients/jedis/JedisCluster$131;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1457
    return-object v0
.end method

.method public sismember(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 662
    new-instance v0, Lredis/clients/jedis/JedisCluster$56;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$56;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$56;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 662
    return-object v0
.end method

.method public smembers(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    new-instance v0, Lredis/clients/jedis/JedisCluster$51;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$51;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 617
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$51;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 612
    return-object v0
.end method

.method public smove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 8
    .param p1, "srckey"    # Ljava/lang/String;
    .param p2, "dstkey"    # Ljava/lang/String;
    .param p3, "member"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    .line 1467
    new-instance v0, Lredis/clients/jedis/JedisCluster$132;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$132;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    new-array v1, v7, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v7, v1}, Lredis/clients/jedis/JedisCluster$132;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1467
    return-object v0
.end method

.method public sort(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dstkey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 1487
    new-instance v0, Lredis/clients/jedis/JedisCluster$134;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$134;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 1492
    new-array v1, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v6, v1}, Lredis/clients/jedis/JedisCluster$134;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1487
    return-object v0
.end method

.method public sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;Ljava/lang/String;)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .param p3, "dstkey"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    .line 1477
    new-instance v0, Lredis/clients/jedis/JedisCluster$133;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$133;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Lredis/clients/jedis/SortingParams;Ljava/lang/String;)V

    .line 1482
    new-array v1, v7, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, v7, v1}, Lredis/clients/jedis/JedisCluster$133;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1477
    return-object v0
.end method

.method public sort(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 854
    new-instance v0, Lredis/clients/jedis/JedisCluster$75;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$75;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 859
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$75;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 854
    return-object v0
.end method

.method public sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/SortingParams;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    new-instance v0, Lredis/clients/jedis/JedisCluster$76;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$76;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Lredis/clients/jedis/SortingParams;)V

    .line 869
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$76;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 864
    return-object v0
.end method

.method public spop(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 632
    new-instance v0, Lredis/clients/jedis/JedisCluster$53;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$53;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 637
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$53;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 632
    return-object v0
.end method

.method public spop(Ljava/lang/String;J)Ljava/util/Set;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    new-instance v1, Lredis/clients/jedis/JedisCluster$54;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lredis/clients/jedis/JedisCluster$54;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;J)V

    .line 647
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$54;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 642
    return-object v0
.end method

.method public srandmember(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 672
    new-instance v0, Lredis/clients/jedis/JedisCluster$57;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$57;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 677
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$57;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 672
    return-object v0
.end method

.method public srandmember(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    new-instance v0, Lredis/clients/jedis/JedisCluster$58;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$58;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;I)V

    .line 687
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$58;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 682
    return-object v0
.end method

.method public varargs srem(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # [Ljava/lang/String;

    .prologue
    .line 622
    new-instance v0, Lredis/clients/jedis/JedisCluster$52;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$52;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 627
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$52;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 622
    return-object v0
.end method

.method public sscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1260
    new-instance v0, Lredis/clients/jedis/JedisCluster$113;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$113;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$113;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ScanResult;

    .line 1260
    return-object v0
.end method

.method public strlen(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 692
    new-instance v0, Lredis/clients/jedis/JedisCluster$59;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$59;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 697
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$59;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 692
    return-object v0
.end method

.method public varargs subscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
    .locals 6
    .param p1, "jedisPubSub"    # Lredis/clients/jedis/JedisPubSub;
    .param p2, "channels"    # [Ljava/lang/String;

    .prologue
    .line 1587
    new-instance v0, Lredis/clients/jedis/JedisCluster$143;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$143;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v0}, Lredis/clients/jedis/JedisCluster$143;->runWithAnyNode()Ljava/lang/Object;

    .line 1594
    return-void
.end method

.method public substr(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 372
    new-instance v0, Lredis/clients/jedis/JedisCluster$27;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$27;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;II)V

    .line 377
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$27;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    return-object v0
.end method

.method public varargs sunion([Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1497
    new-instance v0, Lredis/clients/jedis/JedisCluster$135;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$135;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[Ljava/lang/String;)V

    .line 1502
    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lredis/clients/jedis/JedisCluster$135;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1497
    return-object v0
.end method

.method public varargs sunionstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1507
    invoke-static {p1, p2}, Lredis/clients/util/KeyMergeUtil;->merge(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1509
    .local v6, "wholeKeys":[Ljava/lang/String;
    new-instance v0, Lredis/clients/jedis/JedisCluster$136;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$136;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1514
    array-length v1, v6

    invoke-virtual {v0, v1, v6}, Lredis/clients/jedis/JedisCluster$136;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1509
    return-object v0
.end method

.method public ttl(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Lredis/clients/jedis/JedisCluster$12;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$12;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 227
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$12;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 222
    return-object v0
.end method

.method public type(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Lredis/clients/jedis/JedisCluster$7;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$7;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$7;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    return-object v0
.end method

.method public zadd(Ljava/lang/String;DLjava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;

    .prologue
    .line 702
    new-instance v1, Lredis/clients/jedis/JedisCluster$60;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/JedisCluster$60;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DLjava/lang/String;)V

    .line 707
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$60;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 702
    return-object v0
.end method

.method public zadd(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;

    .prologue
    .line 713
    new-instance v1, Lredis/clients/jedis/JedisCluster$61;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$61;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZAddParams;)V

    .line 718
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$61;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 713
    return-object v0
.end method

.method public zadd(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 723
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    new-instance v0, Lredis/clients/jedis/JedisCluster$62;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$62;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/util/Map;)V

    .line 728
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$62;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 723
    return-object v0
.end method

.method public zadd(Ljava/lang/String;Ljava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Lredis/clients/jedis/params/sortedset/ZAddParams;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 733
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    new-instance v0, Lredis/clients/jedis/JedisCluster$63;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$63;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)V

    .line 738
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$63;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 733
    return-object v0
.end method

.method public zcard(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 834
    new-instance v0, Lredis/clients/jedis/JedisCluster$73;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v2, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    invoke-direct {v0, p0, v1, v2, p1}, Lredis/clients/jedis/JedisCluster$73;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V

    .line 839
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$73;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 834
    return-object v0
.end method

.method public zcount(Ljava/lang/String;DD)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 874
    new-instance v1, Lredis/clients/jedis/JedisCluster$77;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$77;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DD)V

    .line 879
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$77;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 874
    return-object v0
.end method

.method public zcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 884
    new-instance v0, Lredis/clients/jedis/JedisCluster$78;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$78;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$78;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 884
    return-object v0
.end method

.method public zincrby(Ljava/lang/String;DLjava/lang/String;)Ljava/lang/Double;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;

    .prologue
    .line 763
    new-instance v1, Lredis/clients/jedis/JedisCluster$66;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lredis/clients/jedis/JedisCluster$66;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DLjava/lang/String;)V

    .line 768
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$66;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 763
    return-object v0
.end method

.method public zincrby(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZIncrByParams;)Ljava/lang/Double;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZIncrByParams;

    .prologue
    .line 774
    new-instance v1, Lredis/clients/jedis/JedisCluster$67;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$67;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZIncrByParams;)V

    .line 779
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$67;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 774
    return-object v0
.end method

.method public varargs zinterstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 8
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [Ljava/lang/String;

    .prologue
    .line 1531
    invoke-static {p1, p3}, Lredis/clients/util/KeyMergeUtil;->merge(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1533
    .local v7, "mergedKeys":[Ljava/lang/String;
    new-instance v0, Lredis/clients/jedis/JedisCluster$138;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$138;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)V

    .line 1538
    array-length v1, v7

    invoke-virtual {v0, v1, v7}, Lredis/clients/jedis/JedisCluster$138;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1533
    return-object v0
.end method

.method public varargs zinterstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "sets"    # [Ljava/lang/String;

    .prologue
    .line 1519
    invoke-static {p1, p2}, Lredis/clients/util/KeyMergeUtil;->merge(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1521
    .local v6, "wholeKeys":[Ljava/lang/String;
    new-instance v0, Lredis/clients/jedis/JedisCluster$137;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$137;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1526
    array-length v1, v6

    invoke-virtual {v0, v1, v6}, Lredis/clients/jedis/JedisCluster$137;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1521
    return-object v0
.end method

.method public zlexcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 1092
    new-instance v0, Lredis/clients/jedis/JedisCluster$98;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$98;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$98;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1092
    return-object v0
.end method

.method public zrange(Ljava/lang/String;JJ)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 743
    new-instance v1, Lredis/clients/jedis/JedisCluster$64;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$64;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JJ)V

    .line 748
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$64;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 743
    return-object v0
.end method

.method public zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1102
    new-instance v0, Lredis/clients/jedis/JedisCluster$99;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$99;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$99;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1102
    return-object v0
.end method

.method public zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1113
    new-instance v0, Lredis/clients/jedis/JedisCluster$100;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisCluster$100;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1118
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$100;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1113
    return-object v0
.end method

.method public zrangeByScore(Ljava/lang/String;DD)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 894
    new-instance v1, Lredis/clients/jedis/JedisCluster$79;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$79;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DD)V

    .line 899
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$79;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 894
    return-object v0
.end method

.method public zrangeByScore(Ljava/lang/String;DDII)Ljava/util/Set;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 925
    new-instance v1, Lredis/clients/jedis/JedisCluster$82;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lredis/clients/jedis/JedisCluster$82;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DDII)V

    .line 930
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$82;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 925
    return-object v0
.end method

.method public zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    new-instance v0, Lredis/clients/jedis/JedisCluster$80;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$80;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$80;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 904
    return-object v0
.end method

.method public zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 946
    new-instance v0, Lredis/clients/jedis/JedisCluster$84;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisCluster$84;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 951
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$84;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 946
    return-object v0
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;DD)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 967
    new-instance v1, Lredis/clients/jedis/JedisCluster$86;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$86;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DD)V

    .line 972
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$86;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 967
    return-object v0
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;DDII)Ljava/util/Set;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 988
    new-instance v1, Lredis/clients/jedis/JedisCluster$88;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lredis/clients/jedis/JedisCluster$88;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DDII)V

    .line 993
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$88;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 988
    return-object v0
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1009
    new-instance v0, Lredis/clients/jedis/JedisCluster$90;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$90;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$90;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1009
    return-object v0
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1030
    new-instance v0, Lredis/clients/jedis/JedisCluster$92;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisCluster$92;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1035
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$92;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1030
    return-object v0
.end method

.method public zrangeWithScores(Ljava/lang/String;JJ)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    new-instance v1, Lredis/clients/jedis/JedisCluster$71;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$71;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JJ)V

    .line 819
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$71;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 814
    return-object v0
.end method

.method public zrank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 784
    new-instance v0, Lredis/clients/jedis/JedisCluster$68;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$68;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$68;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 784
    return-object v0
.end method

.method public varargs zrem(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # [Ljava/lang/String;

    .prologue
    .line 753
    new-instance v0, Lredis/clients/jedis/JedisCluster$65;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$65;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$65;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 753
    return-object v0
.end method

.method public zremrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 1144
    new-instance v0, Lredis/clients/jedis/JedisCluster$103;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$103;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$103;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1144
    return-object v0
.end method

.method public zremrangeByRank(Ljava/lang/String;JJ)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 1062
    new-instance v1, Lredis/clients/jedis/JedisCluster$95;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$95;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JJ)V

    .line 1067
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$95;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1062
    return-object v0
.end method

.method public zremrangeByScore(Ljava/lang/String;DD)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # D
    .param p4, "end"    # D

    .prologue
    .line 1072
    new-instance v1, Lredis/clients/jedis/JedisCluster$96;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$96;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DD)V

    .line 1077
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$96;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1072
    return-object v0
.end method

.method public zremrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;

    .prologue
    .line 1082
    new-instance v0, Lredis/clients/jedis/JedisCluster$97;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$97;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$97;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1082
    return-object v0
.end method

.method public zrevrange(Ljava/lang/String;JJ)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    new-instance v1, Lredis/clients/jedis/JedisCluster$70;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$70;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JJ)V

    .line 809
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$70;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 804
    return-object v0
.end method

.method public zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1123
    new-instance v0, Lredis/clients/jedis/JedisCluster$101;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$101;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$101;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1123
    return-object v0
.end method

.method public zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1134
    new-instance v0, Lredis/clients/jedis/JedisCluster$102;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisCluster$102;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1139
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$102;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1134
    return-object v0
.end method

.method public zrevrangeByScore(Ljava/lang/String;DD)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 914
    new-instance v1, Lredis/clients/jedis/JedisCluster$81;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$81;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DD)V

    .line 919
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$81;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 914
    return-object v0
.end method

.method public zrevrangeByScore(Ljava/lang/String;DDII)Ljava/util/Set;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 957
    new-instance v1, Lredis/clients/jedis/JedisCluster$85;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lredis/clients/jedis/JedisCluster$85;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DDII)V

    .line 962
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$85;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 957
    return-object v0
.end method

.method public zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 935
    new-instance v0, Lredis/clients/jedis/JedisCluster$83;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$83;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$83;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 935
    return-object v0
.end method

.method public zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 999
    new-instance v0, Lredis/clients/jedis/JedisCluster$89;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisCluster$89;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1004
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$89;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 999
    return-object v0
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;DD)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 977
    new-instance v1, Lredis/clients/jedis/JedisCluster$87;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$87;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DD)V

    .line 982
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$87;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 977
    return-object v0
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;DDII)Ljava/util/Set;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1041
    new-instance v1, Lredis/clients/jedis/JedisCluster$93;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lredis/clients/jedis/JedisCluster$93;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DDII)V

    .line 1046
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$93;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1041
    return-object v0
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1019
    new-instance v0, Lredis/clients/jedis/JedisCluster$91;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$91;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$91;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1019
    return-object v0
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1052
    new-instance v0, Lredis/clients/jedis/JedisCluster$94;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisCluster$94;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1057
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$94;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1052
    return-object v0
.end method

.method public zrevrangeWithScores(Ljava/lang/String;JJ)Ljava/util/Set;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 824
    new-instance v1, Lredis/clients/jedis/JedisCluster$72;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v4, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lredis/clients/jedis/JedisCluster$72;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;JJ)V

    .line 829
    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisCluster$72;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 824
    return-object v0
.end method

.method public zrevrank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 794
    new-instance v0, Lredis/clients/jedis/JedisCluster$69;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$69;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$69;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 794
    return-object v0
.end method

.method public zscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1270
    new-instance v0, Lredis/clients/jedis/JedisCluster$114;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$114;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$114;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ScanResult;

    .line 1270
    return-object v0
.end method

.method public zscore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 844
    new-instance v0, Lredis/clients/jedis/JedisCluster$74;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$74;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisCluster$74;->run(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 844
    return-object v0
.end method

.method public varargs zunionstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 8
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [Ljava/lang/String;

    .prologue
    .line 1555
    invoke-static {p1, p3}, Lredis/clients/util/KeyMergeUtil;->merge(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1557
    .local v7, "mergedKeys":[Ljava/lang/String;
    new-instance v0, Lredis/clients/jedis/JedisCluster$140;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisCluster$140;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)V

    .line 1562
    array-length v1, v7

    invoke-virtual {v0, v1, v7}, Lredis/clients/jedis/JedisCluster$140;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1557
    return-object v0
.end method

.method public varargs zunionstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "sets"    # [Ljava/lang/String;

    .prologue
    .line 1543
    invoke-static {p1, p2}, Lredis/clients/util/KeyMergeUtil;->merge(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1545
    .local v6, "mergedKeys":[Ljava/lang/String;
    new-instance v0, Lredis/clients/jedis/JedisCluster$139;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster;->connectionHandler:Lredis/clients/jedis/JedisClusterConnectionHandler;

    iget v3, p0, Lredis/clients/jedis/JedisCluster;->maxAttempts:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisCluster$139;-><init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1550
    array-length v1, v6

    invoke-virtual {v0, v1, v6}, Lredis/clients/jedis/JedisCluster$139;->run(I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1545
    return-object v0
.end method

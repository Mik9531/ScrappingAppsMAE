.class public Lredis/clients/jedis/Jedis;
.super Lredis/clients/jedis/BinaryJedis;
.source "Jedis.java"

# interfaces
.implements Lredis/clients/jedis/commands/JedisCommands;
.implements Lredis/clients/jedis/commands/MultiKeyCommands;
.implements Lredis/clients/jedis/commands/AdvancedJedisCommands;
.implements Lredis/clients/jedis/commands/ScriptingCommands;
.implements Lredis/clients/jedis/commands/BasicCommands;
.implements Lredis/clients/jedis/commands/ClusterCommands;
.implements Lredis/clients/jedis/commands/SentinelCommands;
.implements Lredis/clients/jedis/commands/ModuleCommands;


# instance fields
.field protected dataSource:Lredis/clients/jedis/JedisPoolAbstract;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lredis/clients/jedis/BinaryJedis;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/lang/String;I)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/lang/String;II)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/lang/String;III)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I
    .param p5, "ssl"    # Z

    .prologue
    .line 82
    invoke-direct/range {p0 .. p5}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/lang/String;IIIZ)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I
    .param p5, "ssl"    # Z
    .param p6, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p7, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p8, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 88
    .line 89
    invoke-direct/range {p0 .. p8}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/lang/String;IIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "ssl"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/lang/String;IIZ)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "ssl"    # Z
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p6, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p7, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 73
    invoke-direct/range {p0 .. p7}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/lang/String;IIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "ssl"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/lang/String;IZ)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "ssl"    # Z
    .param p4, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p5, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 59
    invoke-direct/range {p0 .. p6}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/net/URI;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;I)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "timeout"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/net/URI;I)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;II)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "connectionTimeout"    # I
    .param p3, "soTimeout"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/net/URI;II)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;IILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "connectionTimeout"    # I
    .param p3, "soTimeout"    # I
    .param p4, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p5, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 121
    invoke-direct/range {p0 .. p6}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/net/URI;IILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "timeout"    # I
    .param p3, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p4, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p5, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 111
    invoke-direct/range {p0 .. p5}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/net/URI;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p3, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p4, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lredis/clients/jedis/BinaryJedis;-><init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 103
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/JedisShardInfo;)V
    .locals 1
    .param p1, "shardInfo"    # Lredis/clients/jedis/JedisShardInfo;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lredis/clients/jedis/BinaryJedis;-><init>(Lredis/clients/jedis/JedisShardInfo;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 94
    return-void
.end method

.method private evalResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 2866
    instance-of v3, p1, [B

    if-eqz v3, :cond_1

    check-cast p1, [B

    .end local p1    # "result":Ljava/lang/Object;
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 2878
    :cond_0
    :goto_0
    return-object v2

    .line 2868
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 2869
    check-cast v1, Ljava/util/List;

    .line 2870
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2871
    .local v2, "listResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2872
    .local v0, "bin":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lredis/clients/jedis/Jedis;->evalResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "bin":Ljava/lang/Object;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "listResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    move-object v2, p1

    .line 2878
    goto :goto_0
.end method

.method private getArgsAddTimeout(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "timeout"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1836
    array-length v2, p2

    .line 1837
    .local v2, "keyCount":I
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 1838
    .local v0, "args":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "at":I
    :goto_0
    if-ne v1, v2, :cond_0

    .line 1842
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1843
    return-object v0

    .line 1839
    :cond_0
    aget-object v3, p2, v1

    aput-object v3, v0, v1

    .line 1838
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getEvalResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2862
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getOne()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lredis/clients/jedis/Jedis;->evalResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected static getParams(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2832
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 2833
    .local v2, "keyCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2835
    .local v0, "argCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    new-array v3, v4, [Ljava/lang/String;

    .line 2837
    .local v3, "params":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 2840
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_1

    .line 2843
    return-object v3

    .line 2838
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v1

    .line 2837
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2841
    :cond_1
    add-int v5, v2, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v5

    .line 2840
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getTupledSet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2254
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2255
    iget-object v3, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v1

    .line 2256
    .local v1, "membersWithScores":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 2257
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 2267
    :cond_0
    :goto_0
    return-object v2

    .line 2259
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2260
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    .line 2262
    :cond_2
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Ljava/util/LinkedHashSet;-><init>(IF)V

    .line 2263
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/Tuple;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2264
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2265
    new-instance v5, Lredis/clients/jedis/Tuple;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Lredis/clients/jedis/Tuple;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 654
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 655
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public asking()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3420
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3421
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->asking()V

    .line 3422
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bitcount(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2950
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->bitcount(Ljava/lang/String;)V

    .line 2951
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bitcount(Ljava/lang/String;JJ)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 2956
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->bitcount(Ljava/lang/String;JJ)V

    .line 2957
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs bitfield(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 3594
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3595
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->bitfield(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3596
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs bitop(Lredis/clients/jedis/BitOP;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "op"    # Lredis/clients/jedis/BitOP;
    .param p2, "destKey"    # Ljava/lang/String;
    .param p3, "srcKeys"    # [Ljava/lang/String;

    .prologue
    .line 2962
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->bitop(Lredis/clients/jedis/BitOP;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2963
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bitpos(Ljava/lang/String;Z)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 2707
    new-instance v0, Lredis/clients/jedis/BitPosParams;

    invoke-direct {v0}, Lredis/clients/jedis/BitPosParams;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lredis/clients/jedis/Jedis;->bitpos(Ljava/lang/String;ZLredis/clients/jedis/BitPosParams;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bitpos(Ljava/lang/String;ZLredis/clients/jedis/BitPosParams;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "params"    # Lredis/clients/jedis/BitPosParams;

    .prologue
    .line 2712
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->bitpos(Ljava/lang/String;ZLredis/clients/jedis/BitPosParams;)V

    .line 2713
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public blpop(ILjava/lang/String;)Ljava/util/List;
    .locals 3
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
    .line 3490
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Jedis;->blpop([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs blpop(I[Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 1832
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/Jedis;->getArgsAddTimeout(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Jedis;->blpop([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs blpop([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "args"    # [Ljava/lang/String;
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
    .line 1848
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1849
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->blpop([Ljava/lang/String;)V

    .line 1850
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 1852
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1854
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 1852
    return-object v0

    .line 1853
    :catchall_0
    move-exception v0

    .line 1854
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 1855
    throw v0
.end method

.method public brpop(ILjava/lang/String;)Ljava/util/List;
    .locals 3
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
    .line 3495
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Jedis;->brpop([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs brpop(I[Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 1971
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/Jedis;->getArgsAddTimeout(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Jedis;->brpop([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs brpop([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "args"    # [Ljava/lang/String;
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
    .line 1860
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1861
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->brpop([Ljava/lang/String;)V

    .line 1862
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 1864
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1866
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 1864
    return-object v0

    .line 1865
    :catchall_0
    move-exception v0

    .line 1866
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 1867
    throw v0
.end method

.method public brpoplpush(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 2653
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->brpoplpush(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2654
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 2656
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2658
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 2656
    return-object v0

    .line 2657
    :catchall_0
    move-exception v0

    .line 2658
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 2659
    throw v0
.end method

.method public clientKill(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "client"    # Ljava/lang/String;

    .prologue
    .line 3174
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3175
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clientKill(Ljava/lang/String;)V

    .line 3176
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clientSetname(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3180
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3181
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clientSetname(Ljava/lang/String;)V

    .line 3182
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 3445
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    if-eqz v0, :cond_1

    .line 3446
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->isBroken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3447
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    invoke-virtual {v0, p0}, Lredis/clients/jedis/JedisPoolAbstract;->returnBrokenResource(Lredis/clients/jedis/Jedis;)V

    .line 3454
    :goto_0
    return-void

    .line 3449
    :cond_0
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    invoke-virtual {v0, p0}, Lredis/clients/jedis/JedisPoolAbstract;->returnResource(Lredis/clients/jedis/Jedis;)V

    goto :goto_0

    .line 3452
    :cond_1
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->close()V

    goto :goto_0
.end method

.method public varargs clusterAddSlots([I)Ljava/lang/String;
    .locals 1
    .param p1, "slots"    # [I

    .prologue
    .line 3302
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3303
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clusterAddSlots([I)V

    .line 3304
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterCountKeysInSlot(I)Ljava/lang/Long;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 3379
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3380
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clusterCountKeysInSlot(I)V

    .line 3381
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs clusterDelSlots([I)Ljava/lang/String;
    .locals 1
    .param p1, "slots"    # [I

    .prologue
    .line 3309
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3310
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clusterDelSlots([I)V

    .line 3311
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterFailover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3407
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3408
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->clusterFailover()V

    .line 3409
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterFlushSlots()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3365
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3366
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->clusterFlushSlots()V

    .line 3367
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterForget(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 3358
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3359
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clusterForget(Ljava/lang/String;)V

    .line 3360
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterGetKeysInSlot(II)Ljava/util/List;
    .locals 1
    .param p1, "slot"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3323
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3324
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->clusterGetKeysInSlot(II)V

    .line 3325
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clusterInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3316
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3317
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->clusterInfo()V

    .line 3318
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterKeySlot(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3372
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3373
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clusterKeySlot(Ljava/lang/String;)V

    .line 3374
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public clusterMeet(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 3288
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3289
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->clusterMeet(Ljava/lang/String;I)V

    .line 3290
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterNodes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3275
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3276
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->clusterNodes()V

    .line 3277
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterReplicate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 3393
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3394
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clusterReplicate(Ljava/lang/String;)V

    .line 3395
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterReset(Lredis/clients/jedis/JedisCluster$Reset;)Ljava/lang/String;
    .locals 1
    .param p1, "resetType"    # Lredis/clients/jedis/JedisCluster$Reset;

    .prologue
    .line 3295
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3296
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clusterReset(Lredis/clients/jedis/JedisCluster$Reset;)V

    .line 3297
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterSaveConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3386
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3387
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->clusterSaveConfig()V

    .line 3388
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterSetSlotImporting(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I
    .param p2, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 3344
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3345
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->clusterSetSlotImporting(ILjava/lang/String;)V

    .line 3346
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterSetSlotMigrating(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I
    .param p2, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 3337
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3338
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->clusterSetSlotMigrating(ILjava/lang/String;)V

    .line 3339
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterSetSlotNode(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I
    .param p2, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 3330
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3331
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->clusterSetSlotNode(ILjava/lang/String;)V

    .line 3332
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterSetSlotStable(I)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 3351
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3352
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clusterSetSlotStable(I)V

    .line 3353
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clusterSlaves(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "nodeId"    # Ljava/lang/String;
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
    .line 3400
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3401
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clusterSlaves(Ljava/lang/String;)V

    .line 3402
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clusterSlots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3414
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3415
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->clusterSlots()V

    .line 3416
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public configGet(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
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
    .line 2752
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->configGet(Ljava/lang/String;)V

    .line 2753
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public configSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2787
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->configSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decr(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 563
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 564
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->decr(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public decrBy(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "integer"    # J

    .prologue
    .line 539
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 540
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->decrBy(Ljava/lang/String;J)V

    .line 541
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public del(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Client;->del([Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs del([Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 206
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 207
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->del([Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3125
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3126
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->dump(Ljava/lang/String;)V

    .line 3127
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public echo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2633
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->echo(Ljava/lang/String;)V

    .line 2634
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2853
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lredis/clients/jedis/Jedis;->eval(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs eval(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "keyCount"    # I
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 2793
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 2795
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->eval(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 2796
    invoke-direct {p0}, Lredis/clients/jedis/Jedis;->getEvalResult()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2798
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 2796
    return-object v0

    .line 2797
    :catchall_0
    move-exception v0

    .line 2798
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 2799
    throw v0
.end method

.method public eval(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
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
    .line 2848
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Jedis;->getParams(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/Jedis;->eval(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalsha(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2858
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lredis/clients/jedis/Jedis;->evalsha(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs evalsha(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "keyCount"    # I
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 2888
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2889
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->evalsha(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 2890
    invoke-direct {p0}, Lredis/clients/jedis/Jedis;->getEvalResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalsha(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
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
    .line 2883
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Jedis;->getParams(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/Jedis;->evalsha(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public exists(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 193
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->exists(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs exists([Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 179
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->exists([Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public expire(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "seconds"    # I

    .prologue
    .line 336
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 337
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->expire(Ljava/lang/String;I)V

    .line 338
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public expireAt(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "unixTime"    # J

    .prologue
    .line 366
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 367
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->expireAt(Ljava/lang/String;J)V

    .line 368
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public geoadd(Ljava/lang/String;DDLjava/lang/String;)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "member"    # Ljava/lang/String;

    .prologue
    .line 3500
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3501
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lredis/clients/jedis/Client;->geoadd(Ljava/lang/String;DDLjava/lang/String;)V

    .line 3502
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public geoadd(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;
    .locals 1
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
    .line 3507
    .local p2, "memberCoordinateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lredis/clients/jedis/GeoCoordinate;>;"
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3508
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->geoadd(Ljava/lang/String;Ljava/util/Map;)V

    .line 3509
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member1"    # Ljava/lang/String;
    .param p3, "member2"    # Ljava/lang/String;

    .prologue
    .line 3514
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3515
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3}, Lredis/clients/jedis/Client;->geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    .line 3517
    .local v0, "dval":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/GeoUnit;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member1"    # Ljava/lang/String;
    .param p3, "member2"    # Ljava/lang/String;
    .param p4, "unit"    # Lredis/clients/jedis/GeoUnit;

    .prologue
    .line 3522
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3523
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/GeoUnit;)V

    .line 3524
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    .line 3525
    .local v0, "dval":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs geohash(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 3530
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3531
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->geohash(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3532
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs geopos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
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
    .line 3537
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3538
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->geopos(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3539
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEO_COORDINATE_LIST:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
    .locals 10
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
    .line 3545
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3546
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lredis/clients/jedis/Client;->georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;)V

    .line 3547
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
    .locals 10
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
    .line 3553
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3554
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lredis/clients/jedis/Client;->georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 3555
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;)Ljava/util/List;
    .locals 7
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
    .line 3561
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3562
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lredis/clients/jedis/Client;->georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;)V

    .line 3563
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
    .locals 9
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
    .line 3569
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3570
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lredis/clients/jedis/Client;->georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 3571
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 166
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    sget-object v1, Lredis/clients/jedis/Protocol$Command;->GET:Lredis/clients/jedis/Protocol$Command;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lredis/clients/jedis/Client;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[Ljava/lang/String;)Lredis/clients/jedis/Connection;

    .line 167
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 418
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->getSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getbit(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J

    .prologue
    .line 2689
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->getbit(Ljava/lang/String;J)V

    .line 2690
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public getrange(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "startOffset"    # J
    .param p4, "endOffset"    # J

    .prologue
    .line 2701
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->getrange(Ljava/lang/String;JJ)V

    .line 2702
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs hdel(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fields"    # [Ljava/lang/String;

    .prologue
    .line 840
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 841
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hdel(Ljava/lang/String;[Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hexists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 824
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 825
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hexists(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public hget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 713
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 714
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hget(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hgetAll(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
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
    .line 898
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 899
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hgetAll(Ljava/lang/String;)V

    .line 900
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_MAP:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public hincrBy(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 786
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 787
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->hincrBy(Ljava/lang/String;Ljava/lang/String;J)V

    .line 788
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hincrByFloat(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/Double;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 809
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 810
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->hincrByFloat(Ljava/lang/String;Ljava/lang/String;D)V

    .line 811
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "dval":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hkeys(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
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
    .line 869
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 870
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hkeys(Ljava/lang/String;)V

    .line 871
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_SET:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public hlen(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 855
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 856
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hlen(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs hmget(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 765
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 766
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hmget(Ljava/lang/String;[Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hmset(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
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
    .line 746
    .local p2, "hash":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 747
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hmset(Ljava/lang/String;Ljava/util/Map;)V

    .line 748
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;
    .locals 1
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
    .line 3213
    new-instance v0, Lredis/clients/jedis/ScanParams;

    invoke-direct {v0}, Lredis/clients/jedis/ScanParams;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lredis/clients/jedis/Jedis;->hscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public hscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/ScanParams;",
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
    .line 3219
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3220
    iget-object v5, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5, p1, p2, p3}, Lredis/clients/jedis/Client;->hscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)V

    .line 3221
    iget-object v5, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v3

    .line 3222
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .line 3223
    .local v1, "newcursor":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3224
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3225
    .local v2, "rawResults":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3226
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3230
    new-instance v5, Lredis/clients/jedis/ScanResult;

    invoke-direct {v5, v1, v4}, Lredis/clients/jedis/ScanResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v5

    .line 3227
    :cond_0
    new-instance v6, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v7

    .line 3228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3227
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 696
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 697
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->hset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hsetnx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 729
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 730
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->hsetnx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hstrlen(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 3601
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3602
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hstrlen(Ljava/lang/String;Ljava/lang/String;)V

    .line 3603
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hvals(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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
    .line 883
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 884
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1}, Lredis/clients/jedis/Client;->hvals(Ljava/lang/String;)V

    .line 885
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    .line 886
    .local v0, "lresult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public incr(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 635
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 636
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->incr(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public incrBy(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "integer"    # J

    .prologue
    .line 588
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 589
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->incrBy(Ljava/lang/String;J)V

    .line 590
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public incrByFloat(Ljava/lang/String;D)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 610
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 611
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3}, Lredis/clients/jedis/Client;->incrByFloat(Ljava/lang/String;D)V

    .line 612
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "dval":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keys(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
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
    .line 263
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 264
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->keys(Ljava/lang/String;)V

    .line 265
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_SET:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public lindex(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # J

    .prologue
    .line 1049
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1050
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->lindex(Ljava/lang/String;J)V

    .line 1051
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public linsert(Ljava/lang/String;Lredis/clients/jedis/BinaryClient$LIST_POSITION;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "where"    # Lredis/clients/jedis/BinaryClient$LIST_POSITION;
    .param p3, "pivot"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 2640
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->linsert(Ljava/lang/String;Lredis/clients/jedis/BinaryClient$LIST_POSITION;Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public llen(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 950
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 951
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->llen(Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public lpop(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1114
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1115
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->lpop(Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs lpush(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 934
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 935
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->lpush(Ljava/lang/String;[Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs lpushx(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;

    .prologue
    .line 2607
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->lpushx(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2608
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public lrange(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 6
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
    .line 989
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 990
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->lrange(Ljava/lang/String;JJ)V

    .line 991
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lrem(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 1097
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1098
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->lrem(Ljava/lang/String;JLjava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public lset(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 1075
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1076
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->lset(Ljava/lang/String;JLjava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ltrim(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 1026
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1027
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->ltrim(Ljava/lang/String;JJ)V

    .line 1028
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs mget([Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 433
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 434
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->mget([Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public migrate(Ljava/lang/String;ILjava/lang/String;II)Ljava/lang/String;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "destinationDb"    # I
    .param p5, "timeout"    # I

    .prologue
    .line 3187
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3188
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->migrate(Ljava/lang/String;ILjava/lang/String;II)V

    .line 3189
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public moduleList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/Module;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3588
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->moduleList()V

    .line 3589
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->MODULE_LIST:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public moduleLoad(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3576
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->moduleLoad(Ljava/lang/String;)V

    .line 3577
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public moduleUnload(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3582
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->moduleUnload(Ljava/lang/String;)V

    .line 3583
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public move(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dbIndex"    # I

    .prologue
    .line 400
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 401
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->move(Ljava/lang/String;I)V

    .line 402
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs mset([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keysvalues"    # [Ljava/lang/String;

    .prologue
    .line 490
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 491
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->mset([Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs msetnx([Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "keysvalues"    # [Ljava/lang/String;

    .prologue
    .line 514
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 515
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->msetnx([Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public objectEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2938
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->objectEncoding(Ljava/lang/String;)V

    .line 2939
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public objectIdletime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2944
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->objectIdletime(Ljava/lang/String;)V

    .line 2945
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public objectRefcount(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2932
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->objectRefcount(Ljava/lang/String;)V

    .line 2933
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public persist(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2621
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->persist(Ljava/lang/String;)V

    .line 2622
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public pexpire(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "milliseconds"    # J

    .prologue
    .line 3138
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3139
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->pexpire(Ljava/lang/String;J)V

    .line 3140
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public pexpireAt(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "millisecondsTimestamp"    # J

    .prologue
    .line 3145
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3146
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->pexpireAt(Ljava/lang/String;J)V

    .line 3147
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs pfadd(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "elements"    # [Ljava/lang/String;

    .prologue
    .line 3462
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3463
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->pfadd(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3464
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public pfcount(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3469
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3470
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pfcount(Ljava/lang/String;)V

    .line 3471
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public varargs pfcount([Ljava/lang/String;)J
    .locals 2
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 3476
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3477
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pfcount([Ljava/lang/String;)V

    .line 3478
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public varargs pfmerge(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "destkey"    # Ljava/lang/String;
    .param p2, "sourcekeys"    # [Ljava/lang/String;

    .prologue
    .line 3483
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3484
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->pfmerge(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3485
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public psetex(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "milliseconds"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 3168
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3169
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->psetex(Ljava/lang/String;JLjava/lang/String;)V

    .line 3170
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs psubscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
    .locals 2
    .param p1, "jedisPubSub"    # Lredis/clients/jedis/JedisPubSub;
    .param p2, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 2822
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2823
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 2825
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p1, v0, p2}, Lredis/clients/jedis/JedisPubSub;->proceedWithPatterns(Lredis/clients/jedis/Client;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2827
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 2829
    return-void

    .line 2826
    :catchall_0
    move-exception v0

    .line 2827
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 2828
    throw v0
.end method

.method public pttl(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3152
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3153
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pttl(Ljava/lang/String;)V

    .line 3154
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2814
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2815
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->connect()V

    .line 2816
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->publish(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public pubsubChannels(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
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
    .line 3426
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3427
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pubsubChannels(Ljava/lang/String;)V

    .line 3428
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public pubsubNumPat()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 3432
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3433
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->pubsubNumPat()V

    .line 3434
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs pubsubNumSub([Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "channels"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
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
    .line 3438
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3439
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pubsubNumSub([Ljava/lang/String;)V

    .line 3440
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->PUBSUB_NUMSUB_MAP:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public randomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 278
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->randomKey()V

    .line 279
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readonly()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3282
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->readonly()V

    .line 3283
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "oldkey"    # Ljava/lang/String;
    .param p2, "newkey"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 294
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public renamenx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "oldkey"    # Ljava/lang/String;
    .param p2, "newkey"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 309
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->renamenx(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public restore(Ljava/lang/String;I[B)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ttl"    # I
    .param p3, "serializedValue"    # [B

    .prologue
    .line 3131
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3132
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->restore(Ljava/lang/String;I[B)V

    .line 3133
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rpop(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1131
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1132
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->rpop(Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rpoplpush(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "srckey"    # Ljava/lang/String;
    .param p2, "dstkey"    # Ljava/lang/String;

    .prologue
    .line 1153
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1154
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rpoplpush(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs rpush(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 916
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 917
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rpush(Ljava/lang/String;[Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs rpushx(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;

    .prologue
    .line 2627
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rpushx(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2628
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs sadd(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;

    .prologue
    .line 1171
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1172
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sadd(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public scan(Ljava/lang/String;)Lredis/clients/jedis/ScanResult;
    .locals 1
    .param p1, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3194
    new-instance v0, Lredis/clients/jedis/ScanParams;

    invoke-direct {v0}, Lredis/clients/jedis/ScanParams;-><init>()V

    invoke-virtual {p0, p1, v0}, Lredis/clients/jedis/Jedis;->scan(Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v0

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
    .line 3199
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3200
    iget-object v5, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5, p1, p2}, Lredis/clients/jedis/Client;->scan(Ljava/lang/String;Lredis/clients/jedis/ScanParams;)V

    .line 3201
    iget-object v5, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v3

    .line 3202
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .line 3203
    .local v1, "newcursor":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3204
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3205
    .local v2, "rawResults":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3208
    new-instance v5, Lredis/clients/jedis/ScanResult;

    invoke-direct {v5, v1, v4}, Lredis/clients/jedis/ScanResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v5

    .line 3205
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3206
    .local v0, "bs":[B
    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public scard(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1276
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1277
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->scard(Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public scriptExists(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "sha1"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2895
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 2896
    .local v0, "a":[Ljava/lang/String;
    aput-object p1, v0, v2

    .line 2897
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Jedis;->scriptExists([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    return-object v1
.end method

.method public varargs scriptExists([Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "sha1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2902
    iget-object v3, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3, p1}, Lredis/clients/jedis/Client;->scriptExists([Ljava/lang/String;)V

    .line 2903
    iget-object v3, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3}, Lredis/clients/jedis/Client;->getIntegerMultiBulkReply()Ljava/util/List;

    move-result-object v1

    .line 2904
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2906
    .local v0, "exists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2909
    return-object v0

    .line 2906
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2907
    .local v2, "value":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public scriptLoad(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 2914
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->scriptLoad(Ljava/lang/String;)V

    .line 2915
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs sdiff([Ljava/lang/String;)Ljava/util/Set;
    .locals 2
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
    .line 1402
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1403
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sdiff([Ljava/lang/String;)V

    .line 1404
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_SET:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public varargs sdiffstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1416
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1417
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sdiffstore(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sentinelFailover(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "masterName"    # Ljava/lang/String;

    .prologue
    .line 3090
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "failover"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Client;->sentinel([Ljava/lang/String;)V

    .line 3091
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sentinelGetMasterAddrByName(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "masterName"    # Ljava/lang/String;
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
    .line 3021
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "get-master-addr-by-name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lredis/clients/jedis/Client;->sentinel([Ljava/lang/String;)V

    .line 3022
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v0

    .line 3023
    .local v0, "reply":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    sget-object v1, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {v1, v0}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public sentinelMasters()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3000
    iget-object v3, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "masters"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lredis/clients/jedis/Client;->sentinel([Ljava/lang/String;)V

    .line 3001
    iget-object v3, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v2

    .line 3003
    .local v2, "reply":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3004
    .local v0, "masters":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3007
    return-object v0

    .line 3004
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3005
    .local v1, "obj":Ljava/lang/Object;
    sget-object v3, Lredis/clients/jedis/BuilderFactory;->STRING_MAP:Lredis/clients/jedis/Builder;

    check-cast v1, Ljava/util/List;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v3, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public sentinelMonitor(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p1, "masterName"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "quorum"    # I

    .prologue
    .line 3096
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "monitor"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 3097
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3096
    invoke-virtual {v0, v1}, Lredis/clients/jedis/Client;->sentinel([Ljava/lang/String;)V

    .line 3098
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sentinelRemove(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "masterName"    # Ljava/lang/String;

    .prologue
    .line 3103
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "remove"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Client;->sentinel([Ljava/lang/String;)V

    .line 3104
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sentinelReset(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 3036
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "reset"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Client;->sentinel([Ljava/lang/String;)V

    .line 3037
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sentinelSet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p1, "masterName"    # Ljava/lang/String;
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
    .line 3109
    .local p2, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3110
    .local v1, "index":I
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, v5, 0x2

    .line 3111
    .local v4, "paramsLength":I
    new-array v3, v4, [Ljava/lang/String;

    .line 3113
    .local v3, "params":[Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    const-string v5, "set"

    aput-object v5, v3, v1

    .line 3114
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput-object p1, v3, v2

    .line 3115
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3120
    iget-object v5, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5, v3}, Lredis/clients/jedis/Client;->sentinel([Ljava/lang/String;)V

    .line 3121
    iget-object v5, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 3115
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3116
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 3117
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v2

    goto :goto_0
.end method

.method public sentinelSlaves(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "masterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3078
    iget-object v3, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "slaves"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Lredis/clients/jedis/Client;->sentinel([Ljava/lang/String;)V

    .line 3079
    iget-object v3, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v1

    .line 3081
    .local v1, "reply":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3082
    .local v2, "slaves":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3085
    return-object v2

    .line 3082
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3083
    .local v0, "obj":Ljava/lang/Object;
    sget-object v3, Lredis/clients/jedis/BuilderFactory;->STRING_MAP:Lredis/clients/jedis/Builder;

    check-cast v0, Ljava/util/List;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v3, v0}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 136
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/params/set/SetParams;

    .prologue
    .line 150
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 151
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->set(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)V

    .line 152
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDataSource(Lredis/clients/jedis/JedisPoolAbstract;)V
    .locals 0
    .param p1, "jedisPool"    # Lredis/clients/jedis/JedisPoolAbstract;

    .prologue
    .line 3457
    iput-object p1, p0, Lredis/clients/jedis/Jedis;->dataSource:Lredis/clients/jedis/JedisPoolAbstract;

    .line 3458
    return-void
.end method

.method public setbit(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 2677
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->setbit(Ljava/lang/String;JLjava/lang/String;)V

    .line 2678
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setbit(Ljava/lang/String;JZ)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .prologue
    .line 2671
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->setbit(Ljava/lang/String;JZ)V

    .line 2672
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "seconds"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 468
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->setex(Ljava/lang/String;ILjava/lang/String;)V

    .line 469
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setnx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 449
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 450
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->setnx(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public setrange(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 2695
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->setrange(Ljava/lang/String;JLjava/lang/String;)V

    .line 2696
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs sinter([Ljava/lang/String;)Ljava/util/Set;
    .locals 2
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
    .line 1314
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1315
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1}, Lredis/clients/jedis/Client;->sinter([Ljava/lang/String;)V

    .line 1316
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    .line 1317
    .local v0, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1318
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 1320
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v1

    goto :goto_0
.end method

.method public varargs sinterstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1335
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1336
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sinterstore(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sismember(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 1292
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1293
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sismember(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public slowlogGet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lredis/clients/util/Slowlog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2920
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->slowlogGet()V

    .line 2921
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/util/Slowlog;->from(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public slowlogGet(J)Ljava/util/List;
    .locals 1
    .param p1, "entries"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lredis/clients/util/Slowlog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2926
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->slowlogGet(J)V

    .line 2927
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/util/Slowlog;->from(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public smembers(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
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
    .line 1186
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1187
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1}, Lredis/clients/jedis/Client;->smembers(Ljava/lang/String;)V

    .line 1188
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    .line 1189
    .local v0, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1190
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 1192
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v1

    goto :goto_0
.end method

.method public smove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "srckey"    # Ljava/lang/String;
    .param p2, "dstkey"    # Ljava/lang/String;
    .param p3, "member"    # Ljava/lang/String;

    .prologue
    .line 1262
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1263
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->smove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dstkey"    # Ljava/lang/String;

    .prologue
    .line 1902
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1903
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sort(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .param p3, "dstkey"    # Ljava/lang/String;

    .prologue
    .line 1882
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1883
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;Ljava/lang/String;)V

    .line 1884
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 1682
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1683
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sort(Ljava/lang/String;)V

    .line 1684
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;)Ljava/util/List;
    .locals 1
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
    .line 1763
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1764
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;)V

    .line 1765
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public spop(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1225
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1226
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->spop(Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public spop(Ljava/lang/String;J)Ljava/util/Set;
    .locals 2
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
    .line 1232
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1233
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3}, Lredis/clients/jedis/Client;->spop(Ljava/lang/String;J)V

    .line 1234
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    .line 1235
    .local v0, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1236
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 1238
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v1

    goto :goto_0
.end method

.method public srandmember(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1433
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1434
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->srandmember(Ljava/lang/String;)V

    .line 1435
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public srandmember(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
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
    .line 1440
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1441
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->srandmember(Ljava/lang/String;I)V

    .line 1442
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs srem(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;

    .prologue
    .line 1207
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1208
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->srem(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1209
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;
    .locals 1
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
    .line 3235
    new-instance v0, Lredis/clients/jedis/ScanParams;

    invoke-direct {v0}, Lredis/clients/jedis/ScanParams;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lredis/clients/jedis/Jedis;->sscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public sscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 3240
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3241
    iget-object v5, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5, p1, p2, p3}, Lredis/clients/jedis/Client;->sscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)V

    .line 3242
    iget-object v5, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v3

    .line 3243
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .line 3244
    .local v1, "newcursor":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3245
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3246
    .local v2, "rawResults":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3249
    new-instance v5, Lredis/clients/jedis/ScanResult;

    invoke-direct {v5, v1, v4}, Lredis/clients/jedis/ScanResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v5

    .line 3246
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3247
    .local v0, "bs":[B
    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public strlen(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2601
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->strlen(Ljava/lang/String;)V

    .line 2602
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs subscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
    .locals 2
    .param p1, "jedisPubSub"    # Lredis/clients/jedis/JedisPubSub;
    .param p2, "channels"    # [Ljava/lang/String;

    .prologue
    .line 2804
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 2806
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p1, v0, p2}, Lredis/clients/jedis/JedisPubSub;->proceed(Lredis/clients/jedis/Client;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2808
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 2810
    return-void

    .line 2807
    :catchall_0
    move-exception v0

    .line 2808
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 2809
    throw v0
.end method

.method public substr(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 677
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 678
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->substr(Ljava/lang/String;II)V

    .line 679
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs sunion([Ljava/lang/String;)Ljava/util/Set;
    .locals 2
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
    .line 1354
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1355
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1}, Lredis/clients/jedis/Client;->sunion([Ljava/lang/String;)V

    .line 1356
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    .line 1357
    .local v0, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1358
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 1360
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v1

    goto :goto_0
.end method

.method public varargs sunionstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1374
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1375
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sunionstore(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public ttl(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 384
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->ttl(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public type(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 229
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->type(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs watch([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1663
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->watch([Ljava/lang/String;)V

    .line 1664
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zadd(Ljava/lang/String;DLjava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;

    .prologue
    .line 1463
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1464
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->zadd(Ljava/lang/String;DLjava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zadd(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;

    .prologue
    .line 1471
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1472
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zadd(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZAddParams;)V

    .line 1473
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zadd(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;
    .locals 1
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
    .line 1478
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1479
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zadd(Ljava/lang/String;Ljava/util/Map;)V

    .line 1480
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zadd(Ljava/lang/String;Ljava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
    .locals 1
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
    .line 1485
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1486
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zadd(Ljava/lang/String;Ljava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)V

    .line 1487
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zcard(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1638
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1639
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->zcard(Ljava/lang/String;)V

    .line 1640
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zcount(Ljava/lang/String;DD)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 1976
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1977
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zcount(Ljava/lang/String;DD)V

    .line 1978
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 1983
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1984
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zincrby(Ljava/lang/String;DLjava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;

    .prologue
    .line 1539
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1540
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->zincrby(Ljava/lang/String;DLjava/lang/String;)V

    .line 1541
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    .line 1542
    .local v0, "newscore":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public zincrby(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZIncrByParams;)Ljava/lang/Double;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZIncrByParams;

    .prologue
    .line 1547
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1548
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zincrby(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZIncrByParams;)V

    .line 1549
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v6

    .line 1552
    .local v6, "newscore":Ljava/lang/String;
    if-nez v6, :cond_0

    const/4 v0, 0x0

    .line 1554
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs zinterstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [Ljava/lang/String;

    .prologue
    .line 2535
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2536
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zinterstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)V

    .line 2537
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs zinterstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "sets"    # [Ljava/lang/String;

    .prologue
    .line 2497
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2498
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zinterstore(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2499
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zlexcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 2542
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2543
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zlexcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zrange(Ljava/lang/String;JJ)Ljava/util/Set;
    .locals 8
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
    .line 1492
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1493
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrange(Ljava/lang/String;JJ)V

    .line 1494
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v6

    .line 1495
    .local v6, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 1496
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 1498
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    goto :goto_0
.end method

.method public zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
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
    .line 2549
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2550
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3}, Lredis/clients/jedis/Client;->zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    .line 2552
    .local v0, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 2553
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 2555
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v1

    goto :goto_0
.end method

.method public zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 7
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
    .line 2561
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2562
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2563
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v6

    .line 2564
    .local v6, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 2565
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2567
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    goto :goto_0
.end method

.method public zrangeByScore(Ljava/lang/String;DD)Ljava/util/Set;
    .locals 8
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
    .line 2038
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2039
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScore(Ljava/lang/String;DD)V

    .line 2040
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v6

    .line 2041
    .local v6, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 2042
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2044
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    goto :goto_0
.end method

.method public zrangeByScore(Ljava/lang/String;DDII)Ljava/util/Set;
    .locals 10
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
    .line 2108
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2109
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Client;->zrangeByScore(Ljava/lang/String;DDII)V

    .line 2110
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v8

    .line 2111
    .local v8, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_0

    .line 2112
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2114
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v8}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    goto :goto_0
.end method

.method public zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
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
    .line 2049
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2050
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3}, Lredis/clients/jedis/Client;->zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    .line 2052
    .local v0, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 2053
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 2055
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v1

    goto :goto_0
.end method

.method public zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 7
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
    .line 2120
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2121
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2122
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v6

    .line 2123
    .local v6, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 2124
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2126
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    goto :goto_0
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;DD)Ljava/util/Set;
    .locals 6
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
    .line 2178
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2179
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores(Ljava/lang/String;DD)V

    .line 2180
    invoke-direct {p0}, Lredis/clients/jedis/Jedis;->getTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;DDII)Ljava/util/Set;
    .locals 8
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
    .line 2240
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2241
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores(Ljava/lang/String;DDII)V

    .line 2242
    invoke-direct {p0}, Lredis/clients/jedis/Jedis;->getTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
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
    .line 2185
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2186
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    invoke-direct {p0}, Lredis/clients/jedis/Jedis;->getTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 6
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
    .line 2248
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2249
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2250
    invoke-direct {p0}, Lredis/clients/jedis/Jedis;->getTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrangeWithScores(Ljava/lang/String;JJ)Ljava/util/Set;
    .locals 6
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
    .line 1616
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1617
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeWithScores(Ljava/lang/String;JJ)V

    .line 1618
    invoke-direct {p0}, Lredis/clients/jedis/Jedis;->getTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 1575
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1576
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zrank(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs zrem(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;

    .prologue
    .line 1514
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1515
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zrem(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1516
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 2594
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2595
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zremrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2596
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByRank(Ljava/lang/String;JJ)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 2358
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2359
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zremrangeByRank(Ljava/lang/String;JJ)V

    .line 2360
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByScore(Ljava/lang/String;DD)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # D
    .param p4, "end"    # D

    .prologue
    .line 2378
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2379
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zremrangeByScore(Ljava/lang/String;DD)V

    .line 2380
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;

    .prologue
    .line 2385
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2386
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zremrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zrevrange(Ljava/lang/String;JJ)Ljava/util/Set;
    .locals 8
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
    .line 1605
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1606
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrange(Ljava/lang/String;JJ)V

    .line 1607
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v6

    .line 1608
    .local v6, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 1609
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 1611
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    goto :goto_0
.end method

.method public zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
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
    .line 2572
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2573
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3}, Lredis/clients/jedis/Client;->zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    .line 2575
    .local v0, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 2576
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 2578
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v1

    goto :goto_0
.end method

.method public zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 7
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
    .line 2583
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2584
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2585
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v6

    .line 2586
    .local v6, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 2587
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2589
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    goto :goto_0
.end method

.method public zrevrangeByScore(Ljava/lang/String;DD)Ljava/util/Set;
    .locals 8
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
    .line 2272
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2273
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScore(Ljava/lang/String;DD)V

    .line 2274
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v6

    .line 2275
    .local v6, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 2276
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2278
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    goto :goto_0
.end method

.method public zrevrangeByScore(Ljava/lang/String;DDII)Ljava/util/Set;
    .locals 10
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
    .line 2295
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2296
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Client;->zrevrangeByScore(Ljava/lang/String;DDII)V

    .line 2297
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v8

    .line 2298
    .local v8, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_0

    .line 2299
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2301
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v8}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    goto :goto_0
.end method

.method public zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
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
    .line 2283
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2284
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3}, Lredis/clients/jedis/Client;->zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    .line 2286
    .local v0, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 2287
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 2289
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v1

    goto :goto_0
.end method

.method public zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 7
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
    .line 2330
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2331
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2332
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v6

    .line 2333
    .local v6, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 2334
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2336
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    goto :goto_0
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;DD)Ljava/util/Set;
    .locals 6
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
    .line 2306
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2307
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores(Ljava/lang/String;DD)V

    .line 2308
    invoke-direct {p0}, Lredis/clients/jedis/Jedis;->getTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;DDII)Ljava/util/Set;
    .locals 8
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
    .line 2314
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2315
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores(Ljava/lang/String;DDII)V

    .line 2316
    invoke-direct {p0}, Lredis/clients/jedis/Jedis;->getTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
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
    .line 2341
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2342
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    invoke-direct {p0}, Lredis/clients/jedis/Jedis;->getTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 6
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
    .line 2322
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2323
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2324
    invoke-direct {p0}, Lredis/clients/jedis/Jedis;->getTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeWithScores(Ljava/lang/String;JJ)Ljava/util/Set;
    .locals 6
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
    .line 1623
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1624
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeWithScores(Ljava/lang/String;JJ)V

    .line 1625
    invoke-direct {p0}, Lredis/clients/jedis/Jedis;->getTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 1598
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1599
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zrevrank(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;
    .locals 1
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
    .line 3254
    new-instance v0, Lredis/clients/jedis/ScanParams;

    invoke-direct {v0}, Lredis/clients/jedis/ScanParams;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lredis/clients/jedis/Jedis;->zscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public zscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3259
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 3260
    iget-object v5, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5, p1, p2, p3}, Lredis/clients/jedis/Client;->zscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)V

    .line 3261
    iget-object v5, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v3

    .line 3262
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .line 3263
    .local v1, "newcursor":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3264
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/Tuple;>;"
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3265
    .local v2, "rawResults":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3266
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3270
    new-instance v5, Lredis/clients/jedis/ScanResult;

    invoke-direct {v5, v1, v4}, Lredis/clients/jedis/ScanResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v5

    .line 3267
    :cond_0
    new-instance v6, Lredis/clients/jedis/Tuple;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v7

    .line 3268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v5

    .line 3267
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lredis/clients/jedis/Tuple;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public zscore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 1655
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 1656
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2}, Lredis/clients/jedis/Client;->zscore(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    iget-object v1, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    .line 1658
    .local v0, "score":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs zunionstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [Ljava/lang/String;

    .prologue
    .line 2460
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2461
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zunionstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)V

    .line 2462
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs zunionstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "sets"    # [Ljava/lang/String;

    .prologue
    .line 2422
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->checkIsInMultiOrPipeline()V

    .line 2423
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zunionstore(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2424
    iget-object v0, p0, Lredis/clients/jedis/Jedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.class public Lredis/clients/jedis/JedisPool;
.super Lredis/clients/jedis/JedisPoolAbstract;
.source "JedisPool.java"


# static fields
.field private static final REDISS:Ljava/lang/String; = "rediss"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "localhost"

    const/16 v1, 0x18eb

    invoke-direct {p0, v0, v1}, Lredis/clients/jedis/JedisPool;-><init>(Ljava/lang/String;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 23
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Lredis/clients/jedis/JedisPoolAbstract;-><init>()V

    .line 34
    invoke-static/range {p1 .. p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v22

    .line 35
    .local v22, "uri":Ljava/net/URI;
    invoke-static/range {v22 .. v22}, Lredis/clients/util/JedisURIHelper;->isValid(Ljava/net/URI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "h":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getPort()I

    move-result v3

    .line 38
    .local v3, "port":I
    invoke-static/range {v22 .. v22}, Lredis/clients/util/JedisURIHelper;->getPassword(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "password":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lredis/clients/util/JedisURIHelper;->getDBIndex(Ljava/net/URI;)I

    move-result v7

    .line 40
    .local v7, "database":I
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v4, "rediss"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 41
    .local v9, "ssl":Z
    new-instance v13, Lorg/apache/commons/pool2/impl/GenericObjectPool;

    new-instance v1, Lredis/clients/jedis/JedisFactory;

    .line 42
    const/16 v4, 0x7d0

    const/16 v5, 0x7d0

    const/4 v8, 0x0

    .line 43
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lredis/clients/jedis/JedisFactory;-><init>(Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    new-instance v4, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v4}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    invoke-direct {v13, v1, v4}, Lorg/apache/commons/pool2/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool2/PooledObjectFactory;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 41
    move-object/from16 v0, p0

    iput-object v13, v0, Lredis/clients/jedis/JedisPool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    .line 49
    .end local v2    # "h":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v6    # "password":Ljava/lang/String;
    .end local v7    # "database":I
    .end local v9    # "ssl":Z
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v1, Lorg/apache/commons/pool2/impl/GenericObjectPool;

    new-instance v10, Lredis/clients/jedis/JedisFactory;

    .line 46
    const/16 v12, 0x18eb

    const/16 v13, 0x7d0

    const/16 v14, 0x7d0

    const/4 v15, 0x0

    .line 47
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v21}, Lredis/clients/jedis/JedisFactory;-><init>(Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    new-instance v4, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v4}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    invoke-direct {v1, v10, v4}, Lorg/apache/commons/pool2/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool2/PooledObjectFactory;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 45
    move-object/from16 v0, p0

    iput-object v1, v0, Lredis/clients/jedis/JedisPool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v5, 0x0

    .line 29
    new-instance v1, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    const/16 v4, 0x7d0

    .line 30
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 23
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p3, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p4, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Lredis/clients/jedis/JedisPoolAbstract;-><init>()V

    .line 53
    invoke-static/range {p1 .. p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v22

    .line 54
    .local v22, "uri":Ljava/net/URI;
    invoke-static/range {v22 .. v22}, Lredis/clients/util/JedisURIHelper;->isValid(Ljava/net/URI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "h":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getPort()I

    move-result v3

    .line 57
    .local v3, "port":I
    invoke-static/range {v22 .. v22}, Lredis/clients/util/JedisURIHelper;->getPassword(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "password":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lredis/clients/util/JedisURIHelper;->getDBIndex(Ljava/net/URI;)I

    move-result v7

    .line 59
    .local v7, "database":I
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v4, "rediss"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 60
    .local v9, "ssl":Z
    new-instance v13, Lorg/apache/commons/pool2/impl/GenericObjectPool;

    new-instance v1, Lredis/clients/jedis/JedisFactory;

    .line 61
    const/16 v4, 0x7d0

    const/16 v5, 0x7d0

    const/4 v8, 0x0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 62
    invoke-direct/range {v1 .. v12}, Lredis/clients/jedis/JedisFactory;-><init>(Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 63
    new-instance v4, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v4}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    invoke-direct {v13, v1, v4}, Lorg/apache/commons/pool2/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool2/PooledObjectFactory;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 60
    move-object/from16 v0, p0

    iput-object v13, v0, Lredis/clients/jedis/JedisPool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    .line 69
    .end local v2    # "h":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v6    # "password":Ljava/lang/String;
    .end local v7    # "database":I
    .end local v9    # "ssl":Z
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v1, Lorg/apache/commons/pool2/impl/GenericObjectPool;

    new-instance v10, Lredis/clients/jedis/JedisFactory;

    .line 66
    const/16 v12, 0x18eb

    const/16 v13, 0x7d0

    const/16 v14, 0x7d0

    const/4 v15, 0x0

    .line 67
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v21}, Lredis/clients/jedis/JedisFactory;-><init>(Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    new-instance v4, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v4}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    invoke-direct {v1, v10, v4}, Lorg/apache/commons/pool2/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool2/PooledObjectFactory;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 65
    move-object/from16 v0, p0

    iput-object v1, v0, Lredis/clients/jedis/JedisPool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 72
    new-instance v0, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v0}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, p1, v1}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;I)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "timeout"    # I

    .prologue
    .line 82
    new-instance v0, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v0}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "timeout"    # I
    .param p3, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p4, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p5, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 87
    new-instance v1, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 88
    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p3, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p4, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 77
    new-instance v1, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    const/16 v3, 0x7d0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 78
    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;)V
    .locals 8
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 24
    const/16 v3, 0x18eb

    const/16 v4, 0x7d0

    .line 25
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;I)V
    .locals 8
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v5, 0x0

    .line 110
    const/16 v4, 0x7d0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;II)V
    .locals 8
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I

    .prologue
    const/4 v5, 0x0

    .line 128
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 12
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "connectionTimeout"    # I
    .param p5, "soTimeout"    # I
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "database"    # I
    .param p8, "clientName"    # Ljava/lang/String;
    .param p9, "ssl"    # Z
    .param p10, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p11, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p12, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 186
    new-instance v0, Lredis/clients/jedis/JedisFactory;

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    .line 187
    invoke-direct/range {v0 .. v11}, Lredis/clients/jedis/JedisFactory;-><init>(Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    invoke-direct {p0, p1, v0}, Lredis/clients/jedis/JedisPoolAbstract;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Lorg/apache/commons/pool2/PooledObjectFactory;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;)V
    .locals 8
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "password"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 8
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "database"    # I

    .prologue
    .line 145
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V
    .locals 13
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "database"    # I
    .param p7, "clientName"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v9, 0x0

    .line 164
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v12}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)V
    .locals 13
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "database"    # I
    .param p7, "clientName"    # Ljava/lang/String;
    .param p8, "ssl"    # Z

    .prologue
    .line 170
    .line 171
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v12}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 13
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "database"    # I
    .param p7, "clientName"    # Ljava/lang/String;
    .param p8, "ssl"    # Z
    .param p9, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p10, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p11, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 179
    invoke-direct/range {v0 .. v12}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;IZ)V
    .locals 9
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "database"    # I
    .param p7, "ssl"    # Z

    .prologue
    .line 150
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 12
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "database"    # I
    .param p7, "ssl"    # Z
    .param p8, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p9, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p10, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 157
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 158
    invoke-direct/range {v0 .. v11}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 9
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "ssl"    # Z

    .prologue
    .line 98
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 12
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "ssl"    # Z
    .param p7, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p8, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p9, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 105
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 106
    invoke-direct/range {v0 .. v11}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IIZ)V
    .locals 9
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "ssl"    # Z

    .prologue
    const/4 v5, 0x0

    .line 133
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v7, v5

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 12
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "ssl"    # Z
    .param p6, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p7, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p8, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 139
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 140
    invoke-direct/range {v0 .. v11}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IZ)V
    .locals 9
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "ssl"    # Z

    .prologue
    const/4 v5, 0x0

    .line 115
    const/16 v4, 0x7d0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v5

    move v8, p4

    .line 116
    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 12
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "ssl"    # Z
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p6, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p7, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 122
    const/16 v4, 0x7d0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 123
    invoke-direct/range {v0 .. v11}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;)V
    .locals 1
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "uri"    # Ljava/net/URI;

    .prologue
    .line 191
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;I)V

    .line 192
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;I)V
    .locals 0
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "timeout"    # I

    .prologue
    .line 202
    invoke-direct {p0, p1, p2, p3, p3}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;II)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;II)V
    .locals 9
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I

    .prologue
    const/4 v4, 0x0

    .line 213
    new-instance v0, Lredis/clients/jedis/JedisFactory;

    const/4 v5, 0x0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    .line 214
    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisFactory;-><init>(Ljava/net/URI;IILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    invoke-direct {p0, p1, v0}, Lredis/clients/jedis/JedisPoolAbstract;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Lorg/apache/commons/pool2/PooledObjectFactory;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;IILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 9
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p6, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p7, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 220
    new-instance v0, Lredis/clients/jedis/JedisFactory;

    const/4 v4, 0x0

    .line 221
    invoke-virtual {p2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rediss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 222
    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisFactory;-><init>(Ljava/net/URI;IILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    invoke-direct {p0, p1, v0}, Lredis/clients/jedis/JedisPoolAbstract;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Lorg/apache/commons/pool2/PooledObjectFactory;)V

    .line 223
    return-void

    .line 221
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 8
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "timeout"    # I
    .param p4, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p5, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;IILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 7
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p4, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p5, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 197
    const/16 v3, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 198
    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/net/URI;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 199
    return-void
.end method


# virtual methods
.method public bridge synthetic getResource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lredis/clients/jedis/JedisPool;->getResource()Lredis/clients/jedis/Jedis;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Lredis/clients/jedis/Jedis;
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Lredis/clients/jedis/JedisPoolAbstract;->getResource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 228
    .local v0, "jedis":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p0}, Lredis/clients/jedis/Jedis;->setDataSource(Lredis/clients/jedis/JedisPoolAbstract;)V

    .line 229
    return-object v0
.end method

.method protected returnBrokenResource(Lredis/clients/jedis/Jedis;)V
    .locals 0
    .param p1, "resource"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisPool;->returnBrokenResourceObject(Ljava/lang/Object;)V

    .line 237
    :cond_0
    return-void
.end method

.method protected returnResource(Lredis/clients/jedis/Jedis;)V
    .locals 3
    .param p1, "resource"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 243
    :try_start_0
    invoke-virtual {p1}, Lredis/clients/jedis/Jedis;->resetState()V

    .line 244
    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisPool;->returnResourceObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisPool;->returnBrokenResource(Lredis/clients/jedis/Jedis;)V

    .line 247
    new-instance v1, Lredis/clients/jedis/exceptions/JedisException;

    const-string v2, "Could not return the resource to the pool"

    invoke-direct {v1, v2, v0}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

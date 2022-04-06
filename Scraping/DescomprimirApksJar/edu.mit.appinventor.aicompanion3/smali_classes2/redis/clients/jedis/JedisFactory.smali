.class Lredis/clients/jedis/JedisFactory;
.super Ljava/lang/Object;
.source "JedisFactory.java"

# interfaces
.implements Lorg/apache/commons/pool2/PooledObjectFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool2/PooledObjectFactory",
        "<",
        "Lredis/clients/jedis/Jedis;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientName:Ljava/lang/String;

.field private final connectionTimeout:I

.field private final database:I

.field private final hostAndPort:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;"
        }
    .end annotation
.end field

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final password:Ljava/lang/String;

.field private final soTimeout:I

.field private final ssl:Z

.field private sslParameters:Ljavax/net/ssl/SSLParameters;

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "database"    # I
    .param p7, "clientName"    # Ljava/lang/String;
    .param p8, "ssl"    # Z
    .param p9, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p10, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p11, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/JedisFactory;->hostAndPort:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    iget-object v0, p0, Lredis/clients/jedis/JedisFactory;->hostAndPort:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lredis/clients/jedis/HostAndPort;

    invoke-direct {v1, p1, p2}, Lredis/clients/jedis/HostAndPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 38
    iput p3, p0, Lredis/clients/jedis/JedisFactory;->connectionTimeout:I

    .line 39
    iput p4, p0, Lredis/clients/jedis/JedisFactory;->soTimeout:I

    .line 40
    iput-object p5, p0, Lredis/clients/jedis/JedisFactory;->password:Ljava/lang/String;

    .line 41
    iput p6, p0, Lredis/clients/jedis/JedisFactory;->database:I

    .line 42
    iput-object p7, p0, Lredis/clients/jedis/JedisFactory;->clientName:Ljava/lang/String;

    .line 43
    iput-boolean p8, p0, Lredis/clients/jedis/JedisFactory;->ssl:Z

    .line 44
    iput-object p9, p0, Lredis/clients/jedis/JedisFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 45
    iput-object p10, p0, Lredis/clients/jedis/JedisFactory;->sslParameters:Ljavax/net/ssl/SSLParameters;

    .line 46
    iput-object p11, p0, Lredis/clients/jedis/JedisFactory;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;IILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "connectionTimeout"    # I
    .param p3, "soTimeout"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "ssl"    # Z
    .param p6, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p7, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p8, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/JedisFactory;->hostAndPort:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->isValid(Ljava/net/URI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lredis/clients/jedis/exceptions/InvalidURIException;

    .line 54
    const-string v1, "Cannot open Redis connection due invalid URI. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 53
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/InvalidURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lredis/clients/jedis/JedisFactory;->hostAndPort:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lredis/clients/jedis/HostAndPort;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lredis/clients/jedis/HostAndPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 58
    iput p2, p0, Lredis/clients/jedis/JedisFactory;->connectionTimeout:I

    .line 59
    iput p3, p0, Lredis/clients/jedis/JedisFactory;->soTimeout:I

    .line 60
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->getPassword(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/JedisFactory;->password:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->getDBIndex(Ljava/net/URI;)I

    move-result v0

    iput v0, p0, Lredis/clients/jedis/JedisFactory;->database:I

    .line 62
    iput-object p4, p0, Lredis/clients/jedis/JedisFactory;->clientName:Ljava/lang/String;

    .line 63
    iput-boolean p5, p0, Lredis/clients/jedis/JedisFactory;->ssl:Z

    .line 64
    iput-object p6, p0, Lredis/clients/jedis/JedisFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 65
    iput-object p7, p0, Lredis/clients/jedis/JedisFactory;->sslParameters:Ljavax/net/ssl/SSLParameters;

    .line 66
    iput-object p8, p0, Lredis/clients/jedis/JedisFactory;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 67
    return-void
.end method


# virtual methods
.method public activateObject(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<",
            "Lredis/clients/jedis/Jedis;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "pooledJedis":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<Lredis/clients/jedis/Jedis;>;"
    invoke-interface {p1}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/BinaryJedis;

    .line 76
    .local v0, "jedis":Lredis/clients/jedis/BinaryJedis;
    invoke-virtual {v0}, Lredis/clients/jedis/BinaryJedis;->getDB()I

    move-result v1

    iget v2, p0, Lredis/clients/jedis/JedisFactory;->database:I

    if-eq v1, v2, :cond_0

    .line 77
    iget v1, p0, Lredis/clients/jedis/JedisFactory;->database:I

    invoke-virtual {v0, v1}, Lredis/clients/jedis/BinaryJedis;->select(I)Ljava/lang/String;

    .line 80
    :cond_0
    return-void
.end method

.method public destroyObject(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<",
            "Lredis/clients/jedis/Jedis;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "pooledJedis":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<Lredis/clients/jedis/Jedis;>;"
    invoke-interface {p1}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/BinaryJedis;

    .line 85
    .local v0, "jedis":Lredis/clients/jedis/BinaryJedis;
    invoke-virtual {v0}, Lredis/clients/jedis/BinaryJedis;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {v0}, Lredis/clients/jedis/BinaryJedis;->quit()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lredis/clients/jedis/BinaryJedis;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :cond_0
    :goto_1
    return-void

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public makeObject()Lorg/apache/commons/pool2/PooledObject;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool2/PooledObject",
            "<",
            "Lredis/clients/jedis/Jedis;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lredis/clients/jedis/JedisFactory;->hostAndPort:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lredis/clients/jedis/HostAndPort;

    .line 102
    .local v9, "hostAndPort":Lredis/clients/jedis/HostAndPort;
    new-instance v0, Lredis/clients/jedis/Jedis;

    invoke-virtual {v9}, Lredis/clients/jedis/HostAndPort;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lredis/clients/jedis/HostAndPort;->getPort()I

    move-result v2

    iget v3, p0, Lredis/clients/jedis/JedisFactory;->connectionTimeout:I

    .line 103
    iget v4, p0, Lredis/clients/jedis/JedisFactory;->soTimeout:I

    iget-boolean v5, p0, Lredis/clients/jedis/JedisFactory;->ssl:Z

    iget-object v6, p0, Lredis/clients/jedis/JedisFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v7, p0, Lredis/clients/jedis/JedisFactory;->sslParameters:Ljavax/net/ssl/SSLParameters;

    iget-object v8, p0, Lredis/clients/jedis/JedisFactory;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 102
    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/Jedis;-><init>(Ljava/lang/String;IIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 106
    .local v0, "jedis":Lredis/clients/jedis/Jedis;
    :try_start_0
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->connect()V

    .line 107
    iget-object v1, p0, Lredis/clients/jedis/JedisFactory;->password:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lredis/clients/jedis/JedisFactory;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Jedis;->auth(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    :cond_0
    iget v1, p0, Lredis/clients/jedis/JedisFactory;->database:I

    if-eqz v1, :cond_1

    .line 111
    iget v1, p0, Lredis/clients/jedis/JedisFactory;->database:I

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Jedis;->select(I)Ljava/lang/String;

    .line 113
    :cond_1
    iget-object v1, p0, Lredis/clients/jedis/JedisFactory;->clientName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lredis/clients/jedis/JedisFactory;->clientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Jedis;->clientSetname(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_2
    new-instance v1, Lorg/apache/commons/pool2/impl/DefaultPooledObject;

    invoke-direct {v1, v0}, Lorg/apache/commons/pool2/impl/DefaultPooledObject;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 116
    :catch_0
    move-exception v10

    .line 117
    .local v10, "je":Lredis/clients/jedis/exceptions/JedisException;
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->close()V

    .line 118
    throw v10
.end method

.method public passivateObject(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<",
            "Lredis/clients/jedis/Jedis;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "pooledJedis":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<Lredis/clients/jedis/Jedis;>;"
    return-void
.end method

.method public setHostAndPort(Lredis/clients/jedis/HostAndPort;)V
    .locals 1
    .param p1, "hostAndPort"    # Lredis/clients/jedis/HostAndPort;

    .prologue
    .line 70
    iget-object v0, p0, Lredis/clients/jedis/JedisFactory;->hostAndPort:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public validateObject(Lorg/apache/commons/pool2/PooledObject;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<",
            "Lredis/clients/jedis/Jedis;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "pooledJedis":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<Lredis/clients/jedis/Jedis;>;"
    const/4 v5, 0x0

    .line 132
    invoke-interface {p1}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lredis/clients/jedis/BinaryJedis;

    .line 134
    .local v4, "jedis":Lredis/clients/jedis/BinaryJedis;
    :try_start_0
    iget-object v6, p0, Lredis/clients/jedis/JedisFactory;->hostAndPort:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lredis/clients/jedis/HostAndPort;

    .line 136
    .local v3, "hostAndPort":Lredis/clients/jedis/HostAndPort;
    invoke-virtual {v4}, Lredis/clients/jedis/BinaryJedis;->getClient()Lredis/clients/jedis/Client;

    move-result-object v6

    invoke-virtual {v6}, Lredis/clients/jedis/Client;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "connectionHost":Ljava/lang/String;
    invoke-virtual {v4}, Lredis/clients/jedis/BinaryJedis;->getClient()Lredis/clients/jedis/Client;

    move-result-object v6

    invoke-virtual {v6}, Lredis/clients/jedis/Client;->getPort()I

    move-result v1

    .line 139
    .local v1, "connectionPort":I
    invoke-virtual {v3}, Lredis/clients/jedis/HostAndPort;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    invoke-virtual {v3}, Lredis/clients/jedis/HostAndPort;->getPort()I

    move-result v6

    if-ne v6, v1, :cond_0

    invoke-virtual {v4}, Lredis/clients/jedis/BinaryJedis;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    invoke-virtual {v4}, Lredis/clients/jedis/BinaryJedis;->ping()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PONG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 139
    const/4 v5, 0x1

    .line 143
    .end local v0    # "connectionHost":Ljava/lang/String;
    .end local v1    # "connectionPort":I
    .end local v3    # "hostAndPort":Lredis/clients/jedis/HostAndPort;
    :cond_0
    :goto_0
    return v5

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

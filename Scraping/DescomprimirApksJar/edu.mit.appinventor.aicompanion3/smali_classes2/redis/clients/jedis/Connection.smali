.class public Lredis/clients/jedis/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final EMPTY_ARGS:[[B


# instance fields
.field private broken:Z

.field private connectionTimeout:I

.field private host:Ljava/lang/String;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private inputStream:Lredis/clients/util/RedisInputStream;

.field private outputStream:Lredis/clients/util/RedisOutputStream;

.field private port:I

.field private soTimeout:I

.field private socket:Ljava/net/Socket;

.field private ssl:Z

.field private sslParameters:Ljavax/net/ssl/SSLParameters;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [[B

    sput-object v0, Lredis/clients/jedis/Connection;->EMPTY_ARGS:[[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x7d0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "localhost"

    iput-object v0, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    .line 29
    const/16 v0, 0x18eb

    iput v0, p0, Lredis/clients/jedis/Connection;->port:I

    .line 33
    iput v1, p0, Lredis/clients/jedis/Connection;->connectionTimeout:I

    .line 34
    iput v1, p0, Lredis/clients/jedis/Connection;->soTimeout:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lredis/clients/jedis/Connection;->broken:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x7d0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "localhost"

    iput-object v0, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    .line 29
    const/16 v0, 0x18eb

    iput v0, p0, Lredis/clients/jedis/Connection;->port:I

    .line 33
    iput v1, p0, Lredis/clients/jedis/Connection;->connectionTimeout:I

    .line 34
    iput v1, p0, Lredis/clients/jedis/Connection;->soTimeout:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lredis/clients/jedis/Connection;->broken:Z

    .line 45
    iput-object p1, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/16 v1, 0x7d0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "localhost"

    iput-object v0, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    .line 29
    const/16 v0, 0x18eb

    iput v0, p0, Lredis/clients/jedis/Connection;->port:I

    .line 33
    iput v1, p0, Lredis/clients/jedis/Connection;->connectionTimeout:I

    .line 34
    iput v1, p0, Lredis/clients/jedis/Connection;->soTimeout:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lredis/clients/jedis/Connection;->broken:Z

    .line 49
    iput-object p1, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    .line 50
    iput p2, p0, Lredis/clients/jedis/Connection;->port:I

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "ssl"    # Z

    .prologue
    const/16 v1, 0x7d0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "localhost"

    iput-object v0, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    .line 29
    const/16 v0, 0x18eb

    iput v0, p0, Lredis/clients/jedis/Connection;->port:I

    .line 33
    iput v1, p0, Lredis/clients/jedis/Connection;->connectionTimeout:I

    .line 34
    iput v1, p0, Lredis/clients/jedis/Connection;->soTimeout:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lredis/clients/jedis/Connection;->broken:Z

    .line 54
    iput-object p1, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    .line 55
    iput p2, p0, Lredis/clients/jedis/Connection;->port:I

    .line 56
    iput-boolean p3, p0, Lredis/clients/jedis/Connection;->ssl:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "ssl"    # Z
    .param p4, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p5, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    const/16 v1, 0x7d0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "localhost"

    iput-object v0, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    .line 29
    const/16 v0, 0x18eb

    iput v0, p0, Lredis/clients/jedis/Connection;->port:I

    .line 33
    iput v1, p0, Lredis/clients/jedis/Connection;->connectionTimeout:I

    .line 34
    iput v1, p0, Lredis/clients/jedis/Connection;->soTimeout:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lredis/clients/jedis/Connection;->broken:Z

    .line 62
    iput-object p1, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    .line 63
    iput p2, p0, Lredis/clients/jedis/Connection;->port:I

    .line 64
    iput-boolean p3, p0, Lredis/clients/jedis/Connection;->ssl:Z

    .line 65
    iput-object p4, p0, Lredis/clients/jedis/Connection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 66
    iput-object p5, p0, Lredis/clients/jedis/Connection;->sslParameters:Ljavax/net/ssl/SSLParameters;

    .line 67
    iput-object p6, p0, Lredis/clients/jedis/Connection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 68
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->disconnect()V

    .line 213
    return-void
.end method

.method public connect()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 168
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 170
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    .line 172
    iget-object v2, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 173
    iget-object v2, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 175
    iget-object v2, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 177
    iget-object v2, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 182
    iget-object v2, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    iget v5, p0, Lredis/clients/jedis/Connection;->port:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v4, p0, Lredis/clients/jedis/Connection;->connectionTimeout:I

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 183
    iget-object v2, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    iget v3, p0, Lredis/clients/jedis/Connection;->soTimeout:I

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 185
    iget-boolean v2, p0, Lredis/clients/jedis/Connection;->ssl:Z

    if-eqz v2, :cond_2

    .line 186
    iget-object v2, p0, Lredis/clients/jedis/Connection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_0

    .line 187
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v2, p0, Lredis/clients/jedis/Connection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 189
    :cond_0
    iget-object v2, p0, Lredis/clients/jedis/Connection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    iget-object v4, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    iget v5, p0, Lredis/clients/jedis/Connection;->port:I

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    iput-object v2, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    .line 190
    iget-object v2, p0, Lredis/clients/jedis/Connection;->sslParameters:Ljavax/net/ssl/SSLParameters;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    iget-object v3, p0, Lredis/clients/jedis/Connection;->sslParameters:Ljavax/net/ssl/SSLParameters;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 193
    :cond_1
    iget-object v2, p0, Lredis/clients/jedis/Connection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v2, :cond_2

    .line 194
    iget-object v3, p0, Lredis/clients/jedis/Connection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v4, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    iget-object v2, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    const-string v2, "The connection to \'%s\' failed ssl/tls hostname verification."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 195
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lredis/clients/jedis/exceptions/JedisConnectionException;

    invoke-direct {v2, v1}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/io/IOException;
    iput-boolean v7, p0, Lredis/clients/jedis/Connection;->broken:Z

    .line 205
    new-instance v2, Lredis/clients/jedis/exceptions/JedisConnectionException;

    invoke-direct {v2, v0}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 201
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_2
    :try_start_1
    new-instance v2, Lredis/clients/util/RedisOutputStream;

    iget-object v3, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lredis/clients/util/RedisOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lredis/clients/jedis/Connection;->outputStream:Lredis/clients/util/RedisOutputStream;

    .line 202
    new-instance v2, Lredis/clients/util/RedisInputStream;

    iget-object v3, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lredis/clients/util/RedisInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lredis/clients/jedis/Connection;->inputStream:Lredis/clients/util/RedisInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    :cond_3
    return-void
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :try_start_0
    iget-object v1, p0, Lredis/clients/jedis/Connection;->outputStream:Lredis/clients/util/RedisOutputStream;

    invoke-virtual {v1}, Lredis/clients/util/RedisOutputStream;->flush()V

    .line 219
    iget-object v1, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v1, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lredis/clients/util/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 227
    :cond_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lredis/clients/jedis/Connection;->broken:Z

    .line 222
    new-instance v1, Lredis/clients/jedis/exceptions/JedisConnectionException;

    invoke-direct {v1, v0}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 224
    iget-object v2, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    invoke-static {v2}, Lredis/clients/util/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 225
    throw v1
.end method

.method protected flush()V
    .locals 2

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Lredis/clients/jedis/Connection;->outputStream:Lredis/clients/util/RedisOutputStream;

    invoke-virtual {v1}, Lredis/clients/util/RedisOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lredis/clients/jedis/Connection;->broken:Z

    .line 303
    new-instance v1, Lredis/clients/jedis/exceptions/JedisConnectionException;

    invoke-direct {v1, v0}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBinaryBulkReply()[B
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->flush()V

    .line 255
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->readProtocolWithCheckingBroken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getBinaryMultiBulkReply()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->flush()V

    .line 270
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->readProtocolWithCheckingBroken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getBulkReply()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->getBinaryBulkReply()[B

    move-result-object v0

    .line 246
    .local v0, "result":[B
    if-eqz v0, :cond_0

    .line 247
    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 249
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lredis/clients/jedis/Connection;->connectionTimeout:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIntegerMultiBulkReply()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->flush()V

    .line 286
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->readProtocolWithCheckingBroken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getIntegerReply()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->flush()V

    .line 260
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->readProtocolWithCheckingBroken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getMany(I)Ljava/util/List;
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->flush()V

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 319
    .local v2, "responses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 326
    return-object v2

    .line 321
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->readProtocolWithCheckingBroken()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Lredis/clients/jedis/exceptions/JedisDataException;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getMultiBulkReply()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getObjectMultiBulkReply()Ljava/util/List;
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
    .line 279
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->flush()V

    .line 280
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->getRawObjectMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOne()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->flush()V

    .line 291
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->readProtocolWithCheckingBroken()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lredis/clients/jedis/Connection;->port:I

    return v0
.end method

.method public getRawObjectMultiBulkReply()Ljava/util/List;
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
    .line 275
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->readProtocolWithCheckingBroken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getSoTimeout()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lredis/clients/jedis/Connection;->soTimeout:I

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getStatusCodeReply()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->flush()V

    .line 236
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->readProtocolWithCheckingBroken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 237
    .local v0, "resp":[B
    if-nez v0, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 240
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isBroken()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lredis/clients/jedis/Connection;->broken:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readProtocolWithCheckingBroken()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Lredis/clients/jedis/Connection;->inputStream:Lredis/clients/util/RedisInputStream;

    invoke-static {v1}, Lredis/clients/jedis/Protocol;->read(Lredis/clients/util/RedisInputStream;)Ljava/lang/Object;
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "exc":Lredis/clients/jedis/exceptions/JedisConnectionException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lredis/clients/jedis/Connection;->broken:Z

    .line 312
    throw v0
.end method

.method public rollbackTimeout()V
    .locals 3

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    iget v2, p0, Lredis/clients/jedis/Connection;->soTimeout:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/net/SocketException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lredis/clients/jedis/Connection;->broken:Z

    .line 107
    new-instance v1, Lredis/clients/jedis/exceptions/JedisConnectionException;

    invoke-direct {v1, v0}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;
    .locals 1
    .param p1, "cmd"    # Lredis/clients/jedis/commands/ProtocolCommand;

    .prologue
    .line 120
    sget-object v0, Lredis/clients/jedis/Connection;->EMPTY_ARGS:[[B

    invoke-virtual {p0, p1, v0}, Lredis/clients/jedis/Connection;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    move-result-object v0

    return-object v0
.end method

.method public varargs sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[Ljava/lang/String;)Lredis/clients/jedis/Connection;
    .locals 3
    .param p1, "cmd"    # Lredis/clients/jedis/commands/ProtocolCommand;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 112
    array-length v2, p2

    new-array v0, v2, [[B

    .line 113
    .local v0, "bargs":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_0

    .line 116
    invoke-virtual {p0, p1, v0}, Lredis/clients/jedis/Connection;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    move-result-object v2

    return-object v2

    .line 114
    :cond_0
    aget-object v2, p2, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;
    .locals 4
    .param p1, "cmd"    # Lredis/clients/jedis/commands/ProtocolCommand;
    .param p2, "args"    # [[B

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->connect()V

    .line 126
    iget-object v3, p0, Lredis/clients/jedis/Connection;->outputStream:Lredis/clients/util/RedisOutputStream;

    invoke-static {v3, p1, p2}, Lredis/clients/jedis/Protocol;->sendCommand(Lredis/clients/util/RedisOutputStream;Lredis/clients/jedis/commands/ProtocolCommand;[[B)V
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return-object p0

    .line 128
    :catch_0
    move-exception v1

    .line 134
    .local v1, "ex":Lredis/clients/jedis/exceptions/JedisConnectionException;
    :try_start_1
    iget-object v3, p0, Lredis/clients/jedis/Connection;->inputStream:Lredis/clients/util/RedisInputStream;

    invoke-static {v3}, Lredis/clients/jedis/Protocol;->readErrorLineIfPossible(Lredis/clients/util/RedisInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "errorMessage":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 136
    new-instance v2, Lredis/clients/jedis/exceptions/JedisConnectionException;

    invoke-virtual {v1}, Lredis/clients/jedis/exceptions/JedisConnectionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "ex":Lredis/clients/jedis/exceptions/JedisConnectionException;
    .local v2, "ex":Lredis/clients/jedis/exceptions/JedisConnectionException;
    move-object v1, v2

    .line 146
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v2    # "ex":Lredis/clients/jedis/exceptions/JedisConnectionException;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lredis/clients/jedis/Connection;->broken:Z

    .line 147
    throw v1

    .line 138
    .restart local v1    # "ex":Lredis/clients/jedis/exceptions/JedisConnectionException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 83
    iput p1, p0, Lredis/clients/jedis/Connection;->connectionTimeout:I

    .line 84
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lredis/clients/jedis/Connection;->host:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 164
    iput p1, p0, Lredis/clients/jedis/Connection;->port:I

    .line 165
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 0
    .param p1, "soTimeout"    # I

    .prologue
    .line 87
    iput p1, p0, Lredis/clients/jedis/Connection;->soTimeout:I

    .line 88
    return-void
.end method

.method public setTimeoutInfinite()V
    .locals 3

    .prologue
    .line 92
    :try_start_0
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lredis/clients/jedis/Connection;->connect()V

    .line 95
    :cond_0
    iget-object v1, p0, Lredis/clients/jedis/Connection;->socket:Ljava/net/Socket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Ljava/net/SocketException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lredis/clients/jedis/Connection;->broken:Z

    .line 98
    new-instance v1, Lredis/clients/jedis/exceptions/JedisConnectionException;

    invoke-direct {v1, v0}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.class public Lredis/clients/jedis/HostAndPort;
.super Ljava/lang/Object;
.source "HostAndPort.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LOCALHOST_STR:Ljava/lang/String;

.field protected static log:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x736f8ad3f089167L


# instance fields
.field private host:Ljava/lang/String;

.field private port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lredis/clients/jedis/HostAndPort;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lredis/clients/jedis/HostAndPort;->log:Ljava/util/logging/Logger;

    .line 12
    invoke-static {}, Lredis/clients/jedis/HostAndPort;->getLocalHostQuietly()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lredis/clients/jedis/HostAndPort;->LOCALHOST_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lredis/clients/jedis/HostAndPort;->host:Ljava/lang/String;

    .line 20
    iput p2, p0, Lredis/clients/jedis/HostAndPort;->port:I

    .line 21
    return-void
.end method

.method public static convertHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v0, "127.0.0.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "localhost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0.0.0.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const-string v0, "169.254"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, "::1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0:0:0:0:0:0:0:1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    sget-object p0, Lredis/clients/jedis/HostAndPort;->LOCALHOST_STR:Ljava/lang/String;

    .line 98
    .end local p0    # "host":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static extractParts(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "from"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 63
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, "idx":I
    if-eq v1, v4, :cond_0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "host":Ljava/lang/String;
    :goto_0
    if-eq v1, v4, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "port":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    return-object v3

    .end local v0    # "host":Ljava/lang/String;
    .end local v2    # "port":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 64
    goto :goto_0

    .line 65
    .restart local v0    # "host":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public static getLocalHostQuietly()Ljava/lang/String;
    .locals 7

    .prologue
    .line 105
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 110
    .local v6, "localAddress":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 106
    .end local v6    # "localAddress":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 107
    .local v5, "ex":Ljava/lang/Exception;
    sget-object v0, Lredis/clients/jedis/HostAndPort;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-class v2, Lredis/clients/jedis/HostAndPort;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getLocalHostQuietly"

    const-string v4, "cant resolve localhost address"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    const-string v6, "localhost"

    .restart local v6    # "localAddress":Ljava/lang/String;
    goto :goto_0
.end method

.method public static parseString(Ljava/lang/String;)Lredis/clients/jedis/HostAndPort;
    .locals 6
    .param p0, "from"    # Ljava/lang/String;

    .prologue
    .line 83
    :try_start_0
    invoke-static {p0}, Lredis/clients/jedis/HostAndPort;->extractParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 85
    .local v1, "host":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 86
    .local v3, "port":I
    new-instance v4, Lredis/clients/jedis/HostAndPort;

    invoke-static {v1}, Lredis/clients/jedis/HostAndPort;->convertHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lredis/clients/jedis/HostAndPort;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 87
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "port":I
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 33
    instance-of v4, p1, Lredis/clients/jedis/HostAndPort;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 34
    check-cast v0, Lredis/clients/jedis/HostAndPort;

    .line 36
    .local v0, "hp":Lredis/clients/jedis/HostAndPort;
    iget-object v4, p0, Lredis/clients/jedis/HostAndPort;->host:Ljava/lang/String;

    invoke-static {v4}, Lredis/clients/jedis/HostAndPort;->convertHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "thisHost":Ljava/lang/String;
    iget-object v4, v0, Lredis/clients/jedis/HostAndPort;->host:Ljava/lang/String;

    invoke-static {v4}, Lredis/clients/jedis/HostAndPort;->convertHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "hpHost":Ljava/lang/String;
    iget v4, p0, Lredis/clients/jedis/HostAndPort;->port:I

    iget v5, v0, Lredis/clients/jedis/HostAndPort;->port:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 42
    .end local v0    # "hp":Lredis/clients/jedis/HostAndPort;
    .end local v1    # "hpHost":Ljava/lang/String;
    .end local v2    # "thisHost":Ljava/lang/String;
    :cond_0
    return v3
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lredis/clients/jedis/HostAndPort;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lredis/clients/jedis/HostAndPort;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lredis/clients/jedis/HostAndPort;->host:Ljava/lang/String;

    invoke-static {v0}, Lredis/clients/jedis/HostAndPort;->convertHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lredis/clients/jedis/HostAndPort;->port:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lredis/clients/jedis/HostAndPort;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lredis/clients/jedis/HostAndPort;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

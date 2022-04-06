.class public Lredis/clients/jedis/BinaryJedis;
.super Ljava/lang/Object;
.source "BinaryJedis.java"

# interfaces
.implements Lredis/clients/jedis/commands/BasicCommands;
.implements Lredis/clients/jedis/commands/BinaryJedisCommands;
.implements Lredis/clients/jedis/commands/MultiKeyBinaryCommands;
.implements Lredis/clients/jedis/commands/AdvancedBinaryJedisCommands;
.implements Lredis/clients/jedis/commands/BinaryScriptingCommands;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lredis/clients/jedis/BinaryJedis$SetFromList;
    }
.end annotation


# instance fields
.field protected client:Lredis/clients/jedis/Client;

.field protected pipeline:Lredis/clients/jedis/Pipeline;

.field protected transaction:Lredis/clients/jedis/Transaction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 43
    new-instance v0, Lredis/clients/jedis/Client;

    invoke-direct {v0}, Lredis/clients/jedis/Client;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v1, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v1, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 47
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 48
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "redis"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-direct {p0, v0}, Lredis/clients/jedis/BinaryJedis;->initializeClientFromURI(Ljava/net/URI;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Lredis/clients/jedis/Client;

    invoke-direct {v1, p1}, Lredis/clients/jedis/Client;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 56
    new-instance v0, Lredis/clients/jedis/Client;

    invoke-direct {v0, p1, p2}, Lredis/clients/jedis/Client;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 70
    new-instance v0, Lredis/clients/jedis/Client;

    invoke-direct {v0, p1, p2}, Lredis/clients/jedis/Client;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 71
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p3}, Lredis/clients/jedis/Client;->setConnectionTimeout(I)V

    .line 72
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p3}, Lredis/clients/jedis/Client;->setSoTimeout(I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 91
    new-instance v0, Lredis/clients/jedis/Client;

    invoke-direct {v0, p1, p2}, Lredis/clients/jedis/Client;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 92
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p3}, Lredis/clients/jedis/Client;->setConnectionTimeout(I)V

    .line 93
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p4}, Lredis/clients/jedis/Client;->setSoTimeout(I)V

    .line 94
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
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 98
    new-instance v0, Lredis/clients/jedis/Client;

    invoke-direct {v0, p1, p2, p5}, Lredis/clients/jedis/Client;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 99
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p3}, Lredis/clients/jedis/Client;->setConnectionTimeout(I)V

    .line 100
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p4}, Lredis/clients/jedis/Client;->setSoTimeout(I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I
    .param p5, "ssl"    # Z
    .param p6, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p7, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p8, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 106
    new-instance v0, Lredis/clients/jedis/Client;

    move-object v1, p1

    move v2, p2

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/Client;-><init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 107
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p3}, Lredis/clients/jedis/Client;->setConnectionTimeout(I)V

    .line 108
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p4}, Lredis/clients/jedis/Client;->setSoTimeout(I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "ssl"    # Z

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 76
    new-instance v0, Lredis/clients/jedis/Client;

    invoke-direct {v0, p1, p2, p4}, Lredis/clients/jedis/Client;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 77
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p3}, Lredis/clients/jedis/Client;->setConnectionTimeout(I)V

    .line 78
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p3}, Lredis/clients/jedis/Client;->setSoTimeout(I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "ssl"    # Z
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p6, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p7, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 84
    new-instance v0, Lredis/clients/jedis/Client;

    move-object v1, p1

    move v2, p2

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/Client;-><init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 85
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p3}, Lredis/clients/jedis/Client;->setConnectionTimeout(I)V

    .line 86
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p3}, Lredis/clients/jedis/Client;->setSoTimeout(I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "ssl"    # Z

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 60
    new-instance v0, Lredis/clients/jedis/Client;

    invoke-direct {v0, p1, p2, p3}, Lredis/clients/jedis/Client;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "ssl"    # Z
    .param p4, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p5, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 66
    new-instance v0, Lredis/clients/jedis/Client;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/Client;-><init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 122
    invoke-direct {p0, p1}, Lredis/clients/jedis/BinaryJedis;->initializeClientFromURI(Ljava/net/URI;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;I)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "timeout"    # I

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 131
    invoke-direct {p0, p1}, Lredis/clients/jedis/BinaryJedis;->initializeClientFromURI(Ljava/net/URI;)V

    .line 132
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p2}, Lredis/clients/jedis/Client;->setConnectionTimeout(I)V

    .line 133
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p2}, Lredis/clients/jedis/Client;->setSoTimeout(I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;II)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "connectionTimeout"    # I
    .param p3, "soTimeout"    # I

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 144
    invoke-direct {p0, p1}, Lredis/clients/jedis/BinaryJedis;->initializeClientFromURI(Ljava/net/URI;)V

    .line 145
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p2}, Lredis/clients/jedis/Client;->setConnectionTimeout(I)V

    .line 146
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p3}, Lredis/clients/jedis/Client;->setSoTimeout(I)V

    .line 147
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
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 152
    invoke-direct {p0, p1, p4, p5, p6}, Lredis/clients/jedis/BinaryJedis;->initializeClientFromURI(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 153
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p2}, Lredis/clients/jedis/Client;->setConnectionTimeout(I)V

    .line 154
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p3}, Lredis/clients/jedis/Client;->setSoTimeout(I)V

    .line 155
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
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 138
    invoke-direct {p0, p1, p3, p4, p5}, Lredis/clients/jedis/BinaryJedis;->initializeClientFromURI(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 139
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p2}, Lredis/clients/jedis/Client;->setConnectionTimeout(I)V

    .line 140
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p2}, Lredis/clients/jedis/Client;->setSoTimeout(I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p3, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p4, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lredis/clients/jedis/BinaryJedis;->initializeClientFromURI(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/JedisShardInfo;)V
    .locals 7
    .param p1, "shardInfo"    # Lredis/clients/jedis/JedisShardInfo;

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 39
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 40
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 112
    new-instance v0, Lredis/clients/jedis/Client;

    invoke-virtual {p1}, Lredis/clients/jedis/JedisShardInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lredis/clients/jedis/JedisShardInfo;->getPort()I

    move-result v2

    invoke-virtual {p1}, Lredis/clients/jedis/JedisShardInfo;->getSsl()Z

    move-result v3

    .line 113
    invoke-virtual {p1}, Lredis/clients/jedis/JedisShardInfo;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {p1}, Lredis/clients/jedis/JedisShardInfo;->getSslParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v5

    .line 114
    invoke-virtual {p1}, Lredis/clients/jedis/JedisShardInfo;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/Client;-><init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 112
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 115
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p1}, Lredis/clients/jedis/JedisShardInfo;->getConnectionTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Client;->setConnectionTimeout(I)V

    .line 116
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p1}, Lredis/clients/jedis/JedisShardInfo;->getSoTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Client;->setSoTimeout(I)V

    .line 117
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p1}, Lredis/clients/jedis/JedisShardInfo;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Client;->setPassword(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p1}, Lredis/clients/jedis/JedisShardInfo;->getDb()I

    move-result v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Client;->setDb(I)V

    .line 119
    return-void
.end method

.method private getArgsAddTimeout(I[[B)[[B
    .locals 4
    .param p1, "timeout"    # I
    .param p2, "keys"    # [[B

    .prologue
    .line 2028
    array-length v2, p2

    .line 2029
    .local v2, "size":I
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [[B

    .line 2030
    .local v0, "args":[[B
    const/4 v1, 0x0

    .local v1, "at":I
    :goto_0
    if-ne v1, v2, :cond_0

    .line 2033
    invoke-static {p1}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 2034
    return-object v0

    .line 2031
    :cond_0
    aget-object v3, p2, v1

    aput-object v3, v0, v1

    .line 2030
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getBinaryTupledSet()Ljava/util/Set;
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
    .line 2443
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2444
    iget-object v3, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v1

    .line 2445
    .local v1, "membersWithScores":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2446
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 2453
    :cond_0
    return-object v2

    .line 2448
    :cond_1
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Ljava/util/LinkedHashSet;-><init>(IF)V

    .line 2449
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/Tuple;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2450
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2451
    new-instance v5, Lredis/clients/jedis/Tuple;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Lredis/clients/jedis/Tuple;-><init>([BLjava/lang/Double;)V

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected static getParamsWithBinary(Ljava/util/List;Ljava/util/List;)[[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)[[B"
        }
    .end annotation

    .prologue
    .line 3183
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 3184
    .local v2, "keyCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3185
    .local v0, "argCount":I
    add-int v4, v2, v0

    new-array v3, v4, [[B

    .line 3187
    .local v3, "params":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 3190
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_1

    .line 3193
    return-object v3

    .line 3188
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v3, v1

    .line 3187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3191
    :cond_1
    add-int v5, v2, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v3, v5

    .line 3190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initializeClientFromURI(Ljava/net/URI;)V
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 158
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->isValid(Ljava/net/URI;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    new-instance v2, Lredis/clients/jedis/exceptions/InvalidURIException;

    .line 160
    const-string v3, "Cannot open Redis connection due invalid URI. %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 159
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lredis/clients/jedis/exceptions/InvalidURIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_0
    new-instance v2, Lredis/clients/jedis/Client;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rediss"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lredis/clients/jedis/Client;-><init>(Ljava/lang/String;IZ)V

    iput-object v2, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 165
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->getPassword(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "password":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 167
    iget-object v2, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v2, v1}, Lredis/clients/jedis/Client;->auth(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v2}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    .line 171
    :cond_1
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->getDBIndex(Ljava/net/URI;)I

    move-result v0

    .line 172
    .local v0, "dbIndex":I
    if-lez v0, :cond_2

    .line 173
    iget-object v2, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v2, v0}, Lredis/clients/jedis/Client;->select(I)V

    .line 174
    iget-object v2, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v2}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v2, v0}, Lredis/clients/jedis/Client;->setDb(I)V

    .line 177
    :cond_2
    return-void
.end method

.method private initializeClientFromURI(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p3, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p4, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 181
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->isValid(Ljava/net/URI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lredis/clients/jedis/exceptions/InvalidURIException;

    .line 183
    const-string v1, "Cannot open Redis connection due invalid URI. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 182
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/InvalidURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    new-instance v0, Lredis/clients/jedis/Client;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rediss"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 187
    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/Client;-><init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 186
    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    .line 189
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->getPassword(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v8

    .line 190
    .local v8, "password":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 191
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, v8}, Lredis/clients/jedis/Client;->auth(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    .line 195
    :cond_1
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->getDBIndex(Ljava/net/URI;)I

    move-result v7

    .line 196
    .local v7, "dbIndex":I
    if-lez v7, :cond_2

    .line 197
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, v7}, Lredis/clients/jedis/Client;->select(I)V

    .line 198
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, v7}, Lredis/clients/jedis/Client;->setDb(I)V

    .line 201
    :cond_2
    return-void
.end method


# virtual methods
.method public append([B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 806
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 807
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->append([B[B)V

    .line 808
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public auth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2179
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2180
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->auth(Ljava/lang/String;)V

    .line 2181
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bgrewriteaof()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2788
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->bgrewriteaof()V

    .line 2789
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bgsave()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2768
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->bgsave()V

    .line 2769
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bitcount([B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 3312
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->bitcount([B)V

    .line 3313
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bitcount([BJJ)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 3318
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->bitcount([BJJ)V

    .line 3319
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs bitfield([B[[B)Ljava/util/List;
    .locals 1
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
    .line 3730
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3731
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->bitfield([B[[B)V

    .line 3732
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs bitop(Lredis/clients/jedis/BitOP;[B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "op"    # Lredis/clients/jedis/BitOP;
    .param p2, "destKey"    # [B
    .param p3, "srcKeys"    # [[B

    .prologue
    .line 3324
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->bitop(Lredis/clients/jedis/BitOP;[B[[B)V

    .line 3325
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bitpos([BZ)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # Z

    .prologue
    .line 3121
    new-instance v0, Lredis/clients/jedis/BitPosParams;

    invoke-direct {v0}, Lredis/clients/jedis/BitPosParams;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lredis/clients/jedis/BinaryJedis;->bitpos([BZLredis/clients/jedis/BitPosParams;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bitpos([BZLredis/clients/jedis/BitPosParams;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # Z
    .param p3, "params"    # Lredis/clients/jedis/BitPosParams;

    .prologue
    .line 3125
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->bitpos([BZLredis/clients/jedis/BitPosParams;)V

    .line 3126
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs blpop(I[[B)Ljava/util/List;
    .locals 1
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
    .line 2024
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryJedis;->getArgsAddTimeout(I[[B)[[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryJedis;->blpop([[B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs blpop([[B)Ljava/util/List;
    .locals 2
    .param p1, "args"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 2143
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2144
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->blpop([[B)V

    .line 2145
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 2147
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2149
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 2147
    return-object v0

    .line 2148
    :catchall_0
    move-exception v0

    .line 2149
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 2150
    throw v0
.end method

.method public varargs brpop(I[[B)Ljava/util/List;
    .locals 1
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
    .line 2138
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryJedis;->getArgsAddTimeout(I[[B)[[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryJedis;->brpop([[B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs brpop([[B)Ljava/util/List;
    .locals 2
    .param p1, "args"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 2155
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2156
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->brpop([[B)V

    .line 2157
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 2159
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2161
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 2159
    return-object v0

    .line 2160
    :catchall_0
    move-exception v0

    .line 2161
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 2162
    throw v0
.end method

.method public brpoplpush([B[BI)[B
    .locals 2
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "timeout"    # I

    .prologue
    .line 3080
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->brpoplpush([B[BI)V

    .line 3081
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 3083
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3085
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 3083
    return-object v0

    .line 3084
    :catchall_0
    move-exception v0

    .line 3085
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 3086
    throw v0
.end method

.method protected checkIsInMultiOrPipeline()V
    .locals 2

    .prologue
    .line 1804
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->isInMulti()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1805
    new-instance v0, Lredis/clients/jedis/exceptions/JedisDataException;

    .line 1806
    const-string v1, "Cannot use Jedis when in Multi. Please use Transation or reset jedis state."

    .line 1805
    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1807
    :cond_0
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    invoke-virtual {v0}, Lredis/clients/jedis/Pipeline;->hasPipelinedResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1808
    new-instance v0, Lredis/clients/jedis/exceptions/JedisDataException;

    .line 1809
    const-string v1, "Cannot use Jedis when in Pipeline. Please use Pipeline or reset jedis state ."

    .line 1808
    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1811
    :cond_1
    return-void
.end method

.method public clientGetname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3402
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3403
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->clientGetname()V

    .line 3404
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clientKill([B)Ljava/lang/String;
    .locals 1
    .param p1, "client"    # [B

    .prologue
    .line 3396
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3397
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clientKill([B)V

    .line 3398
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clientList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3408
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3409
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->clientList()V

    .line 3410
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clientSetname([B)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # [B

    .prologue
    .line 3414
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3415
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clientSetname([B)V

    .line 3416
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1856
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->close()V

    .line 1857
    return-void
.end method

.method public configGet([B)Ljava/util/List;
    .locals 1
    .param p1, "pattern"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 2959
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->configGet([B)V

    .line 2960
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public configResetStat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2969
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->configResetStat()V

    .line 2970
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public configSet([B[B)[B
    .locals 1
    .param p1, "parameter"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 3004
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->configSet([B[B)V

    .line 3005
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public connect()V
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->connect()V

    .line 1815
    return-void
.end method

.method public dbSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 430
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->dbSize()V

    .line 431
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public debug(Lredis/clients/jedis/DebugParams;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Lredis/clients/jedis/DebugParams;

    .prologue
    .line 3063
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->debug(Lredis/clients/jedis/DebugParams;)V

    .line 3064
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decr([B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 711
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 712
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->decr([B)V

    .line 713
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public decrBy([BJ)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "integer"    # J

    .prologue
    .line 687
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 688
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->decrBy([BJ)V

    .line 689
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public del([B)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 311
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 312
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Client;->del([[B)V

    .line 313
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs del([[B)Ljava/lang/Long;
    .locals 1
    .param p1, "keys"    # [[B

    .prologue
    .line 304
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 305
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->del([[B)V

    .line 306
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->disconnect()V

    .line 1819
    return-void
.end method

.method public dump([B)[B
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 3329
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3330
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->dump([B)V

    .line 3331
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public echo([B)[B
    .locals 1
    .param p1, "string"    # [B

    .prologue
    .line 3050
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->echo([B)V

    .line 3051
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public eval([B)Ljava/lang/Object;
    .locals 2
    .param p1, "script"    # [B

    .prologue
    const/4 v1, 0x0

    .line 3214
    new-array v0, v1, [[B

    invoke-virtual {p0, p1, v1, v0}, Lredis/clients/jedis/BinaryJedis;->eval([BI[[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs eval([BI[[B)Ljava/lang/Object;
    .locals 1
    .param p1, "script"    # [B
    .param p2, "keyCount"    # I
    .param p3, "params"    # [[B

    .prologue
    .line 3209
    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lredis/clients/jedis/BinaryJedis;->eval([B[B[[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval([BLjava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
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
    .line 3179
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/BinaryJedis;->getParamsWithBinary(Ljava/util/List;Ljava/util/List;)[[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/BinaryJedis;->eval([B[B[[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs eval([B[B[[B)Ljava/lang/Object;
    .locals 2
    .param p1, "script"    # [B
    .param p2, "keyCount"    # [B
    .param p3, "params"    # [[B

    .prologue
    .line 3198
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 3200
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->eval([B[B[[B)V

    .line 3201
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getOne()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3203
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 3201
    return-object v0

    .line 3202
    :catchall_0
    move-exception v0

    .line 3203
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 3204
    throw v0
.end method

.method public evalsha([B)Ljava/lang/Object;
    .locals 2
    .param p1, "sha1"    # [B

    .prologue
    .line 3219
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [[B

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/BinaryJedis;->evalsha([BI[[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs evalsha([BI[[B)Ljava/lang/Object;
    .locals 2
    .param p1, "sha1"    # [B
    .param p2, "keyCount"    # I
    .param p3, "params"    # [[B

    .prologue
    .line 3229
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 3231
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->evalsha([BI[[B)V

    .line 3232
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getOne()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3234
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 3232
    return-object v0

    .line 3233
    :catchall_0
    move-exception v0

    .line 3234
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 3235
    throw v0
.end method

.method public evalsha([BLjava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
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
    .line 3224
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, p3}, Lredis/clients/jedis/BinaryJedis;->getParamsWithBinary(Ljava/util/List;Ljava/util/List;)[[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/BinaryJedis;->evalsha([BI[[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public exists([B)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # [B

    .prologue
    .line 290
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 291
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->exists([B)V

    .line 292
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

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

.method public varargs exists([[B)Ljava/lang/Long;
    .locals 1
    .param p1, "keys"    # [[B

    .prologue
    .line 276
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 277
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->exists([[B)V

    .line 278
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public expire([BI)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "seconds"    # I

    .prologue
    .line 457
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 458
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->expire([BI)V

    .line 459
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public expireAt([BJ)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "unixTime"    # J

    .prologue
    .line 487
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 488
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->expireAt([BJ)V

    .line 489
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public flushAll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 549
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flushAll()V

    .line 550
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flushDB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 339
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flushDB()V

    .line 340
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public geoadd([BDD[B)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "member"    # [B

    .prologue
    .line 3543
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3544
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lredis/clients/jedis/Client;->geoadd([BDD[B)V

    .line 3545
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public geoadd([BLjava/util/Map;)Ljava/lang/Long;
    .locals 1
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
    .line 3550
    .local p2, "memberCoordinateMap":Ljava/util/Map;, "Ljava/util/Map<[BLredis/clients/jedis/GeoCoordinate;>;"
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3551
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->geoadd([BLjava/util/Map;)V

    .line 3552
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public geodist([B[B[B)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "member1"    # [B
    .param p3, "member2"    # [B

    .prologue
    .line 3557
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3558
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3}, Lredis/clients/jedis/Client;->geodist([B[B[B)V

    .line 3559
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    .line 3560
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

.method public geodist([B[B[BLredis/clients/jedis/GeoUnit;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "member1"    # [B
    .param p3, "member2"    # [B
    .param p4, "unit"    # Lredis/clients/jedis/GeoUnit;

    .prologue
    .line 3565
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3566
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->geodist([B[B[BLredis/clients/jedis/GeoUnit;)V

    .line 3567
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    .line 3568
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

.method public varargs geohash([B[[B)Ljava/util/List;
    .locals 1
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
    .line 3573
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3574
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->geohash([B[[B)V

    .line 3575
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs geopos([B[[B)Ljava/util/List;
    .locals 2
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
    .line 3580
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3581
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->geopos([B[[B)V

    .line 3582
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEO_COORDINATE_LIST:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public georadius([BDDDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
    .locals 10
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
    .line 3588
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3589
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lredis/clients/jedis/Client;->georadius([BDDDLredis/clients/jedis/GeoUnit;)V

    .line 3590
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public georadius([BDDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
    .locals 10
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
    .line 3596
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3597
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lredis/clients/jedis/Client;->georadius([BDDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 3598
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
    .locals 7
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
    .line 3604
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3605
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lredis/clients/jedis/Client;->georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;)V

    .line 3606
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
    .locals 9
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
    .line 3612
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3613
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lredis/clients/jedis/Client;->georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 3614
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get([B)[B
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 251
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 252
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->get([B)V

    .line 253
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public getClient()Lredis/clients/jedis/Client;
    .locals 1

    .prologue
    .line 3068
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    return-object v0
.end method

.method public getDB()I
    .locals 1

    .prologue
    .line 3169
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getDB()I

    move-result v0

    return v0
.end method

.method public getSet([B[B)[B
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 565
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 566
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->getSet([B[B)V

    .line 567
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public getbit([BJ)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # [B
    .param p2, "offset"    # J

    .prologue
    .line 3116
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->getbit([BJ)V

    .line 3117
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

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

.method public getrange([BJJ)[B
    .locals 6
    .param p1, "key"    # [B
    .param p2, "startOffset"    # J
    .param p4, "endOffset"    # J

    .prologue
    .line 3137
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->getrange([BJJ)V

    .line 3138
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public varargs hdel([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "fields"    # [[B

    .prologue
    .line 992
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 993
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hdel([B[[B)V

    .line 994
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hexists([B[B)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # [B
    .param p2, "field"    # [B

    .prologue
    .line 976
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 977
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hexists([B[B)V

    .line 978
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

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

.method public hget([B[B)[B
    .locals 1
    .param p1, "key"    # [B
    .param p2, "field"    # [B

    .prologue
    .line 865
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 866
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hget([B[B)V

    .line 867
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public hgetAll([B)Ljava/util/Map;
    .locals 5
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    .line 1049
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1050
    iget-object v3, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3, p1}, Lredis/clients/jedis/Client;->hgetAll([B)V

    .line 1051
    iget-object v3, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    .line 1052
    .local v0, "flatHash":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v1, Lredis/clients/util/JedisByteHashMap;

    invoke-direct {v1}, Lredis/clients/util/JedisByteHashMap;-><init>()V

    .line 1053
    .local v1, "hash":Ljava/util/Map;, "Ljava/util/Map<[B[B>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1054
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1058
    return-object v1

    .line 1055
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public hincrBy([B[BJ)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # J

    .prologue
    .line 938
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 939
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->hincrBy([B[BJ)V

    .line 940
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hincrByFloat([B[BD)Ljava/lang/Double;
    .locals 3
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # D

    .prologue
    .line 961
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 962
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->hincrByFloat([B[BD)V

    .line 963
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    .line 964
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

.method public hkeys([B)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1021
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1022
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hkeys([B)V

    .line 1023
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public hlen([B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 1007
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1008
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hlen([B)V

    .line 1009
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs hmget([B[[B)Ljava/util/List;
    .locals 1
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
    .line 917
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 918
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hmget([B[[B)V

    .line 919
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hmset([BLjava/util/Map;)Ljava/lang/String;
    .locals 1
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
    .line 898
    .local p2, "hash":Ljava/util/Map;, "Ljava/util/Map<[B[B>;"
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 899
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hmset([BLjava/util/Map;)V

    .line 900
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hscan([B[B)Lredis/clients/jedis/ScanResult;
    .locals 1
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
    .line 3487
    new-instance v0, Lredis/clients/jedis/ScanParams;

    invoke-direct {v0}, Lredis/clients/jedis/ScanParams;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lredis/clients/jedis/BinaryJedis;->hscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public hscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 8
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
    .line 3493
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3494
    iget-object v5, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5, p1, p2, p3}, Lredis/clients/jedis/Client;->hscan([B[BLredis/clients/jedis/ScanParams;)V

    .line 3495
    iget-object v5, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v3

    .line 3496
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 3497
    .local v1, "newcursor":[B
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3498
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<[B[B>;>;"
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3499
    .local v2, "rawResults":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3500
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3503
    new-instance v5, Lredis/clients/jedis/ScanResult;

    invoke-direct {v5, v1, v4}, Lredis/clients/jedis/ScanResult;-><init>([BLjava/util/List;)V

    return-object v5

    .line 3501
    :cond_0
    new-instance v7, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {v7, v5, v6}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hset([B[B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # [B

    .prologue
    .line 848
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 849
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->hset([B[B[B)V

    .line 850
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hsetnx([B[B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # [B

    .prologue
    .line 881
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 882
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->hsetnx([B[B[B)V

    .line 883
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hstrlen([B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "field"    # [B

    .prologue
    .line 3737
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3738
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hstrlen([B[B)V

    .line 3739
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hvals([B)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedis;->hvals([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hvals([B)Ljava/util/List;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1035
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1036
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hvals([B)V

    .line 1037
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public incr([B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 787
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 788
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->incr([B)V

    .line 789
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public incrBy([BJ)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "integer"    # J

    .prologue
    .line 736
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 737
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->incrBy([BJ)V

    .line 738
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public incrByFloat([BD)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "integer"    # D

    .prologue
    .line 762
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 763
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3}, Lredis/clients/jedis/Client;->incrByFloat([BD)V

    .line 764
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    .line 765
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

.method public info()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2866
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->info()V

    .line 2867
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 2872
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->info(Ljava/lang/String;)V

    .line 2873
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 3009
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->isConnected()Z

    move-result v0

    return v0
.end method

.method public keys([B)Ljava/util/Set;
    .locals 1
    .param p1, "pattern"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 374
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->keys([B)V

    .line 375
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public lastsave()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 2802
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->lastsave()V

    .line 2803
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public lindex([BJ)[B
    .locals 2
    .param p1, "key"    # [B
    .param p2, "index"    # J

    .prologue
    .line 1209
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1210
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->lindex([BJ)V

    .line 1211
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public linsert([BLredis/clients/jedis/BinaryClient$LIST_POSITION;[B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "where"    # Lredis/clients/jedis/BinaryClient$LIST_POSITION;
    .param p3, "pivot"    # [B
    .param p4, "value"    # [B

    .prologue
    .line 3057
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->linsert([BLredis/clients/jedis/BinaryClient$LIST_POSITION;[B[B)V

    .line 3058
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public llen([B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 1110
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1111
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->llen([B)V

    .line 1112
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public lpop([B)[B
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 1274
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1275
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->lpop([B)V

    .line 1276
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public varargs lpush([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "strings"    # [[B

    .prologue
    .line 1094
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1095
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->lpush([B[[B)V

    .line 1096
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs lpushx([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "string"    # [[B

    .prologue
    .line 3024
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->lpushx([B[[B)V

    .line 3025
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public lrange([BJJ)Ljava/util/List;
    .locals 6
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
    .line 1149
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1150
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->lrange([BJJ)V

    .line 1151
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lrem([BJ[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "count"    # J
    .param p4, "value"    # [B

    .prologue
    .line 1257
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1258
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->lrem([BJ[B)V

    .line 1259
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public lset([BJ[B)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "index"    # J
    .param p4, "value"    # [B

    .prologue
    .line 1235
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1236
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->lset([BJ[B)V

    .line 1237
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ltrim([BJJ)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 1186
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1187
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->ltrim([BJJ)V

    .line 1188
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs mget([[B)Ljava/util/List;
    .locals 1
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 581
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 582
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->mget([[B)V

    .line 583
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public migrate([BI[BII)Ljava/lang/String;
    .locals 6
    .param p1, "host"    # [B
    .param p2, "port"    # I
    .param p3, "key"    # [B
    .param p4, "destinationDb"    # I
    .param p5, "timeout"    # I

    .prologue
    .line 3427
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3428
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->migrate([BI[BII)V

    .line 3429
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public monitor(Lredis/clients/jedis/JedisMonitor;)V
    .locals 1
    .param p1, "jedisMonitor"    # Lredis/clients/jedis/JedisMonitor;

    .prologue
    .line 2885
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->monitor()V

    .line 2886
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    .line 2887
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p1, v0}, Lredis/clients/jedis/JedisMonitor;->proceed(Lredis/clients/jedis/Client;)V

    .line 2888
    return-void
.end method

.method public move([BI)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "dbIndex"    # I

    .prologue
    .line 536
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 537
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->move([BI)V

    .line 538
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs mset([[B)Ljava/lang/String;
    .locals 1
    .param p1, "keysvalues"    # [[B

    .prologue
    .line 638
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 639
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->mset([[B)V

    .line 640
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs msetnx([[B)Ljava/lang/Long;
    .locals 1
    .param p1, "keysvalues"    # [[B

    .prologue
    .line 662
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 663
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->msetnx([[B)V

    .line 664
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public multi()Lredis/clients/jedis/Transaction;
    .locals 2

    .prologue
    .line 1797
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->multi()V

    .line 1798
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getOne()Ljava/lang/Object;

    .line 1799
    new-instance v0, Lredis/clients/jedis/Transaction;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-direct {v0, v1}, Lredis/clients/jedis/Transaction;-><init>(Lredis/clients/jedis/Client;)V

    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 1800
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    return-object v0
.end method

.method public objectEncoding([B)[B
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 3300
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->objectEncoding([B)V

    .line 3301
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public objectIdletime([B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 3306
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->objectIdletime([B)V

    .line 3307
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public objectRefcount([B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 3294
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->objectRefcount([B)V

    .line 3295
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public persist([B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 3038
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->persist([B)V

    .line 3039
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public pexpire([BJ)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "milliseconds"    # J

    .prologue
    .line 3363
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3364
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->pexpire([BJ)V

    .line 3365
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public pexpireAt([BJ)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "millisecondsTimestamp"    # J

    .prologue
    .line 3370
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3371
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->pexpireAt([BJ)V

    .line 3372
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs pfadd([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "elements"    # [[B

    .prologue
    .line 3446
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3447
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->pfadd([B[[B)V

    .line 3448
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public pfcount([B)J
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 3453
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3454
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pfcount([B)V

    .line 3455
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public varargs pfcount([[B)Ljava/lang/Long;
    .locals 1
    .param p1, "keys"    # [[B

    .prologue
    .line 3467
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3468
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pfcount([[B)V

    .line 3469
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs pfmerge([B[[B)Ljava/lang/String;
    .locals 1
    .param p1, "destkey"    # [B
    .param p2, "sourcekeys"    # [[B

    .prologue
    .line 3460
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3461
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->pfmerge([B[[B)V

    .line 3462
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ping()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 206
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->ping()V

    .line 207
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pipelined()Lredis/clients/jedis/Pipeline;
    .locals 2

    .prologue
    .line 2185
    new-instance v0, Lredis/clients/jedis/Pipeline;

    invoke-direct {v0}, Lredis/clients/jedis/Pipeline;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 2186
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Pipeline;->setClient(Lredis/clients/jedis/Client;)V

    .line 2187
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    return-object v0
.end method

.method public psetex([BJ[B)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "milliseconds"    # J
    .param p4, "value"    # [B

    .prologue
    .line 3390
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3391
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->psetex([BJ[B)V

    .line 3392
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs psubscribe(Lredis/clients/jedis/BinaryJedisPubSub;[[B)V
    .locals 2
    .param p1, "jedisPubSub"    # Lredis/clients/jedis/BinaryJedisPubSub;
    .param p2, "patterns"    # [[B

    .prologue
    .line 3159
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 3161
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p1, v0, p2}, Lredis/clients/jedis/BinaryJedisPubSub;->proceedWithPatterns(Lredis/clients/jedis/Client;[[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3163
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 3165
    return-void

    .line 3162
    :catchall_0
    move-exception v0

    .line 3163
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 3164
    throw v0
.end method

.method public pttl([B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 3376
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3377
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pttl([B)V

    .line 3378
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public publish([B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "channel"    # [B
    .param p2, "message"    # [B

    .prologue
    .line 3143
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->publish([B[B)V

    .line 3144
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public quit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 262
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->quit()V

    .line 263
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "quitReturn":Ljava/lang/String;
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->disconnect()V

    .line 265
    return-object v0
.end method

.method public randomBinaryKey()[B
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 388
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->randomKey()V

    .line 389
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public rename([B[B)Ljava/lang/String;
    .locals 1
    .param p1, "oldkey"    # [B
    .param p2, "newkey"    # [B

    .prologue
    .line 403
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 404
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rename([B[B)V

    .line 405
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public renamenx([B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "oldkey"    # [B
    .param p2, "newkey"    # [B

    .prologue
    .line 418
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 419
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->renamenx([B[B)V

    .line 420
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1822
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1823
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    invoke-virtual {v0}, Lredis/clients/jedis/Transaction;->clear()V

    .line 1827
    :cond_0
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    if-eqz v0, :cond_1

    .line 1828
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    invoke-virtual {v0}, Lredis/clients/jedis/Pipeline;->clear()V

    .line 1831
    :cond_1
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->isInWatch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1832
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->unwatch()Ljava/lang/String;

    .line 1835
    :cond_2
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->resetState()V

    .line 1838
    :cond_3
    iput-object v1, p0, Lredis/clients/jedis/BinaryJedis;->transaction:Lredis/clients/jedis/Transaction;

    .line 1839
    iput-object v1, p0, Lredis/clients/jedis/BinaryJedis;->pipeline:Lredis/clients/jedis/Pipeline;

    .line 1840
    return-void
.end method

.method public restore([BI[B)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "ttl"    # I
    .param p3, "serializedValue"    # [B

    .prologue
    .line 3335
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3336
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->restore([BI[B)V

    .line 3337
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rpop([B)[B
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 1291
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1292
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->rpop([B)V

    .line 1293
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public rpoplpush([B[B)[B
    .locals 1
    .param p1, "srckey"    # [B
    .param p2, "dstkey"    # [B

    .prologue
    .line 1313
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1314
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rpoplpush([B[B)V

    .line 1315
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public varargs rpush([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "strings"    # [[B

    .prologue
    .line 1075
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1076
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rpush([B[[B)V

    .line 1077
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs rpushx([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "string"    # [[B

    .prologue
    .line 3044
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rpushx([B[[B)V

    .line 3045
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs sadd([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "members"    # [[B

    .prologue
    .line 1331
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1332
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sadd([B[[B)V

    .line 1333
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public save()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2754
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->save()V

    .line 2755
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scan([B)Lredis/clients/jedis/ScanResult;
    .locals 1
    .param p1, "cursor"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/ScanResult",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 3473
    new-instance v0, Lredis/clients/jedis/ScanParams;

    invoke-direct {v0}, Lredis/clients/jedis/ScanParams;-><init>()V

    invoke-virtual {p0, p1, v0}, Lredis/clients/jedis/BinaryJedis;->scan([BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public scan([BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 4
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
    .line 3477
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3478
    iget-object v3, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3, p1, p2}, Lredis/clients/jedis/Client;->scan([BLredis/clients/jedis/ScanParams;)V

    .line 3479
    iget-object v3, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v2

    .line 3480
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3481
    .local v0, "newcursor":[B
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3482
    .local v1, "rawResults":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v3, Lredis/clients/jedis/ScanResult;

    invoke-direct {v3, v0, v1}, Lredis/clients/jedis/ScanResult;-><init>([BLjava/util/List;)V

    return-object v3
.end method

.method public scard([B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 1428
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1429
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->scard([B)V

    .line 1430
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public scriptExists([B)Ljava/lang/Long;
    .locals 3
    .param p1, "sha1"    # [B

    .prologue
    const/4 v2, 0x0

    .line 3245
    const/4 v1, 0x1

    new-array v0, v1, [[B

    .line 3246
    .local v0, "a":[[B
    aput-object p1, v0, v2

    .line 3247
    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryJedis;->scriptExists([[B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    return-object v1
.end method

.method public varargs scriptExists([[B)Ljava/util/List;
    .locals 1
    .param p1, "sha1"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3252
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->scriptExists([[B)V

    .line 3253
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public scriptFlush()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3240
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->scriptFlush()V

    .line 3241
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scriptKill()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3264
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->scriptKill()V

    .line 3265
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scriptLoad([B)[B
    .locals 1
    .param p1, "script"    # [B

    .prologue
    .line 3258
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->scriptLoad([B)V

    .line 3259
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public varargs sdiff([[B)Ljava/util/Set;
    .locals 1
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1546
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1547
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sdiff([[B)V

    .line 1548
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public varargs sdiffstore([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "keys"    # [[B

    .prologue
    .line 1560
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1561
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sdiffstore([B[[B)V

    .line 1562
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public select(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 516
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 517
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1}, Lredis/clients/jedis/Client;->select(I)V

    .line 518
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "statusCodeReply":Ljava/lang/String;
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1}, Lredis/clients/jedis/Client;->setDb(I)V

    .line 521
    return-object v0
.end method

.method public set([B[B)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 221
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 222
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->set([B[B)V

    .line 223
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set([B[BLredis/clients/jedis/params/set/SetParams;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # [B
    .param p3, "params"    # Lredis/clients/jedis/params/set/SetParams;

    .prologue
    .line 235
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 236
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->set([B[BLredis/clients/jedis/params/set/SetParams;)V

    .line 237
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setbit([BJZ)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .prologue
    .line 3098
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->setbit([BJZ)V

    .line 3099
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

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

.method public setbit([BJ[B)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # [B

    .prologue
    .line 3104
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->setbit([BJ[B)V

    .line 3105
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

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

.method public setex([BI[B)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "seconds"    # I
    .param p3, "value"    # [B

    .prologue
    .line 615
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 616
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->setex([BI[B)V

    .line 617
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setnx([B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 597
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 598
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->setnx([B[B)V

    .line 599
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public setrange([BJ[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # [B

    .prologue
    .line 3131
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->setrange([BJ[B)V

    .line 3132
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2818
    iget-object v2, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v2}, Lredis/clients/jedis/Client;->shutdown()V

    .line 2821
    :try_start_0
    iget-object v2, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v2}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2825
    .local v1, "status":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2822
    .end local v1    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2823
    .local v0, "ex":Lredis/clients/jedis/exceptions/JedisException;
    const/4 v1, 0x0

    .restart local v1    # "status":Ljava/lang/String;
    goto :goto_0
.end method

.method public varargs sinter([[B)Ljava/util/Set;
    .locals 1
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1466
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1467
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sinter([[B)V

    .line 1468
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public varargs sinterstore([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "keys"    # [[B

    .prologue
    .line 1483
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1484
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sinterstore([B[[B)V

    .line 1485
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sismember([B[B)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 1444
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1445
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sismember([B[B)V

    .line 1446
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

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

.method public slaveof(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 2913
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->slaveof(Ljava/lang/String;I)V

    .line 2914
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public slaveofNoOne()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2919
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->slaveofNoOne()V

    .line 2920
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public slowlogGetBinary()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 3282
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->slowlogGet()V

    .line 3283
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public slowlogGetBinary(J)Ljava/util/List;
    .locals 1
    .param p1, "entries"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 3288
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->slowlogGet(J)V

    .line 3289
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public slowlogLen()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 3276
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->slowlogLen()V

    .line 3277
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public slowlogReset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3270
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->slowlogReset()V

    .line 3271
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public smembers([B)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1346
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1347
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->smembers([B)V

    .line 1348
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public smove([B[B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "srckey"    # [B
    .param p2, "dstkey"    # [B
    .param p3, "member"    # [B

    .prologue
    .line 1414
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1415
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->smove([B[B[B)V

    .line 1416
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sort([BLredis/clients/jedis/SortingParams;[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .param p3, "dstkey"    # [B

    .prologue
    .line 2049
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2050
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->sort([BLredis/clients/jedis/SortingParams;[B)V

    .line 2051
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sort([B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "dstkey"    # [B

    .prologue
    .line 2069
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2070
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sort([B[B)V

    .line 2071
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sort([B)Ljava/util/List;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1874
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1875
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sort([B)V

    .line 1876
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sort([BLredis/clients/jedis/SortingParams;)Ljava/util/List;
    .locals 1
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
    .line 1955
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1956
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sort([BLredis/clients/jedis/SortingParams;)V

    .line 1957
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public spop([BJ)Ljava/util/Set;
    .locals 2
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
    .line 1388
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1389
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->spop([BJ)V

    .line 1390
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public spop([B)[B
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 1381
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1382
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->spop([B)V

    .line 1383
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public srandmember([BI)Ljava/util/List;
    .locals 1
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
    .line 1584
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1585
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->srandmember([BI)V

    .line 1586
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public srandmember([B)[B
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 1577
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1578
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->srandmember([B)V

    .line 1579
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public varargs srem([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "member"    # [[B

    .prologue
    .line 1363
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1364
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->srem([B[[B)V

    .line 1365
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sscan([B[B)Lredis/clients/jedis/ScanResult;
    .locals 1
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
    .line 3508
    new-instance v0, Lredis/clients/jedis/ScanParams;

    invoke-direct {v0}, Lredis/clients/jedis/ScanParams;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lredis/clients/jedis/BinaryJedis;->sscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public sscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 4
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
    .line 3513
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3514
    iget-object v3, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3, p1, p2, p3}, Lredis/clients/jedis/Client;->sscan([B[BLredis/clients/jedis/ScanParams;)V

    .line 3515
    iget-object v3, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v2

    .line 3516
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3517
    .local v0, "newcursor":[B
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3518
    .local v1, "rawResults":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v3, Lredis/clients/jedis/ScanResult;

    invoke-direct {v3, v0, v1}, Lredis/clients/jedis/ScanResult;-><init>([BLjava/util/List;)V

    return-object v3
.end method

.method public strlen([B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 3014
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->strlen([B)V

    .line 3015
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs subscribe(Lredis/clients/jedis/BinaryJedisPubSub;[[B)V
    .locals 2
    .param p1, "jedisPubSub"    # Lredis/clients/jedis/BinaryJedisPubSub;
    .param p2, "channels"    # [[B

    .prologue
    .line 3149
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 3151
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p1, v0, p2}, Lredis/clients/jedis/BinaryJedisPubSub;->proceed(Lredis/clients/jedis/Client;[[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3153
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 3155
    return-void

    .line 3152
    :catchall_0
    move-exception v0

    .line 3153
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->rollbackTimeout()V

    .line 3154
    throw v0
.end method

.method public substr([BII)[B
    .locals 1
    .param p1, "key"    # [B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 829
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 830
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->substr([BII)V

    .line 831
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryBulkReply()[B

    move-result-object v0

    return-object v0
.end method

.method public varargs sunion([[B)Ljava/util/Set;
    .locals 1
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1502
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1503
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sunion([[B)V

    .line 1504
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public varargs sunionstore([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "keys"    # [[B

    .prologue
    .line 1518
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1519
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sunionstore([B[[B)V

    .line 1520
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sync()V
    .locals 1

    .prologue
    .line 3019
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->sync()V

    .line 3020
    return-void
.end method

.method public time()Ljava/util/List;
    .locals 1
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
    .line 3420
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3421
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->time()V

    .line 3422
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getMultiBulkReply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ttl([B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 503
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 504
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->ttl([B)V

    .line 505
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public type([B)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 327
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 328
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->type([B)V

    .line 329
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1850
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->unwatch()V

    .line 1851
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitReplicas(IJ)Ljava/lang/Long;
    .locals 2
    .param p1, "replicas"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 3439
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3440
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->waitReplicas(IJ)V

    .line 3441
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs watch([[B)Ljava/lang/String;
    .locals 1
    .param p1, "keys"    # [[B

    .prologue
    .line 1844
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->watch([[B)V

    .line 1845
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zadd([BD[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B

    .prologue
    .line 1607
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1608
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->zadd([BD[B)V

    .line 1609
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zadd([BD[BLredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;

    .prologue
    .line 1614
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1615
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zadd([BD[BLredis/clients/jedis/params/sortedset/ZAddParams;)V

    .line 1616
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zadd([BLjava/util/Map;)Ljava/lang/Long;
    .locals 1
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
    .line 1621
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<[BLjava/lang/Double;>;"
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1622
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zadd([BLjava/util/Map;)V

    .line 1623
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zadd([BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
    .locals 1
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
    .line 1628
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<[BLjava/lang/Double;>;"
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1629
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zadd([BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)V

    .line 1630
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zcard([B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 1773
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1774
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->zcard([B)V

    .line 1775
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zcount([BDD)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 2192
    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v0

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/BinaryJedis;->zcount([B[B[B)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zcount([B[B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 2197
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2198
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zcount([B[B[B)V

    .line 2199
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zincrby([BD[B)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B

    .prologue
    .line 1678
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1679
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->zincrby([BD[B)V

    .line 1680
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    .line 1681
    .local v0, "newscore":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public zincrby([BD[BLredis/clients/jedis/params/sortedset/ZIncrByParams;)Ljava/lang/Double;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZIncrByParams;

    .prologue
    .line 1686
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1687
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zincrby([BD[BLredis/clients/jedis/params/sortedset/ZIncrByParams;)V

    .line 1688
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v6

    .line 1691
    .local v6, "newscore":Ljava/lang/String;
    if-nez v6, :cond_0

    const/4 v0, 0x0

    .line 1693
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs zinterstore([BLredis/clients/jedis/ZParams;[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [[B

    .prologue
    .line 2691
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2692
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zinterstore([BLredis/clients/jedis/ZParams;[[B)V

    .line 2693
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs zinterstore([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "sets"    # [[B

    .prologue
    .line 2654
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2655
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zinterstore([B[[B)V

    .line 2656
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zlexcount([B[B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 2698
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2699
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zlexcount([B[B[B)V

    .line 2700
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zrange([BJJ)Ljava/util/Set;
    .locals 6
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
    .line 1635
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1636
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrange([BJJ)V

    .line 1637
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByLex([B[B[B)Ljava/util/Set;
    .locals 1
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
    .line 2705
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2706
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrangeByLex([B[B[B)V

    .line 2707
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByLex([B[B[BII)Ljava/util/Set;
    .locals 6
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
    .line 2713
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2714
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByLex([B[B[BII)V

    .line 2715
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScore([BDD)Ljava/util/Set;
    .locals 2
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
    .line 2251
    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v0

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/BinaryJedis;->zrangeByScore([B[B[B)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScore([BDDII)Ljava/util/Set;
    .locals 6
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
    .line 2311
    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedis;->zrangeByScore([B[B[BII)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScore([B[B[B)Ljava/util/Set;
    .locals 1
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
    .line 2256
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2257
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrangeByScore([B[B[B)V

    .line 2258
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScore([B[B[BII)Ljava/util/Set;
    .locals 6
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
    .line 2317
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2318
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScore([B[B[BII)V

    .line 2319
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores([BDD)Ljava/util/Set;
    .locals 2
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
    .line 2371
    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v0

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/BinaryJedis;->zrangeByScoreWithScores([B[B[B)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores([BDDII)Ljava/util/Set;
    .locals 6
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
    .line 2431
    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedis;->zrangeByScoreWithScores([B[B[BII)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores([B[B[B)Ljava/util/Set;
    .locals 1
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
    .line 2376
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2377
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores([B[B[B)V

    .line 2378
    invoke-direct {p0}, Lredis/clients/jedis/BinaryJedis;->getBinaryTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores([B[B[BII)Ljava/util/Set;
    .locals 6
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
    .line 2437
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2438
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores([B[B[BII)V

    .line 2439
    invoke-direct {p0}, Lredis/clients/jedis/BinaryJedis;->getBinaryTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrangeWithScores([BJJ)Ljava/util/Set;
    .locals 6
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
    .line 1751
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1752
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeWithScores([BJJ)V

    .line 1753
    invoke-direct {p0}, Lredis/clients/jedis/BinaryJedis;->getBinaryTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrank([B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 1714
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1715
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zrank([B[B)V

    .line 1716
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs zrem([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "members"    # [[B

    .prologue
    .line 1653
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1654
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zrem([B[[B)V

    .line 1655
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByLex([B[B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 2734
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2735
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zremrangeByLex([B[B[B)V

    .line 2736
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByRank([BJJ)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 2520
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2521
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zremrangeByRank([BJJ)V

    .line 2522
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByScore([BDD)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "start"    # D
    .param p4, "end"    # D

    .prologue
    .line 2540
    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v0

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/BinaryJedis;->zremrangeByScore([B[B[B)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByScore([B[B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "start"    # [B
    .param p3, "end"    # [B

    .prologue
    .line 2545
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2546
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zremrangeByScore([B[B[B)V

    .line 2547
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zrevrange([BJJ)Ljava/util/Set;
    .locals 6
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
    .line 1744
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1745
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrange([BJJ)V

    .line 1746
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByLex([B[B[B)Ljava/util/Set;
    .locals 1
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
    .line 2720
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2721
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrevrangeByLex([B[B[B)V

    .line 2722
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByLex([B[B[BII)Ljava/util/Set;
    .locals 6
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
    .line 2727
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2728
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByLex([B[B[BII)V

    .line 2729
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScore([BDD)Ljava/util/Set;
    .locals 2
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
    .line 2458
    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v0

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/BinaryJedis;->zrevrangeByScore([B[B[B)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScore([BDDII)Ljava/util/Set;
    .locals 6
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
    .line 2471
    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedis;->zrevrangeByScore([B[B[BII)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScore([B[B[B)Ljava/util/Set;
    .locals 1
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
    .line 2463
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2464
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrevrangeByScore([B[B[B)V

    .line 2465
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScore([B[B[BII)Ljava/util/Set;
    .locals 6
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
    .line 2477
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2478
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScore([B[B[BII)V

    .line 2479
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getBinaryMultiBulkReply()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores([BDD)Ljava/util/Set;
    .locals 2
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
    .line 2484
    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v0

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/BinaryJedis;->zrevrangeByScoreWithScores([B[B[B)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores([BDDII)Ljava/util/Set;
    .locals 6
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
    .line 2490
    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/BinaryJedis;->zrevrangeByScoreWithScores([B[B[BII)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores([B[B[B)Ljava/util/Set;
    .locals 1
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
    .line 2495
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2496
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores([B[B[B)V

    .line 2497
    invoke-direct {p0}, Lredis/clients/jedis/BinaryJedis;->getBinaryTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores([B[B[BII)Ljava/util/Set;
    .locals 6
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
    .line 2503
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2504
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores([B[B[BII)V

    .line 2505
    invoke-direct {p0}, Lredis/clients/jedis/BinaryJedis;->getBinaryTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeWithScores([BJJ)Ljava/util/Set;
    .locals 6
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
    .line 1758
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1759
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeWithScores([BJJ)V

    .line 1760
    invoke-direct {p0}, Lredis/clients/jedis/BinaryJedis;->getBinaryTupledSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrank([B[B)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 1737
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1738
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zrevrank([B[B)V

    .line 1739
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zscan([B[B)Lredis/clients/jedis/ScanResult;
    .locals 1
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
    .line 3523
    new-instance v0, Lredis/clients/jedis/ScanParams;

    invoke-direct {v0}, Lredis/clients/jedis/ScanParams;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lredis/clients/jedis/BinaryJedis;->zscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public zscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 8
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
    .line 3528
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 3529
    iget-object v5, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5, p1, p2, p3}, Lredis/clients/jedis/Client;->zscan([B[BLredis/clients/jedis/ScanParams;)V

    .line 3530
    iget-object v5, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v5}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v3

    .line 3531
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 3532
    .local v1, "newcursor":[B
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3533
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/Tuple;>;"
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3534
    .local v2, "rawResults":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3535
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3538
    new-instance v5, Lredis/clients/jedis/ScanResult;

    invoke-direct {v5, v1, v4}, Lredis/clients/jedis/ScanResult;-><init>([BLjava/util/List;)V

    return-object v5

    .line 3536
    :cond_0
    new-instance v7, Lredis/clients/jedis/Tuple;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v7, v5, v6}, Lredis/clients/jedis/Tuple;-><init>([BLjava/lang/Double;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public zscore([B[B)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 1790
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 1791
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1, p2}, Lredis/clients/jedis/Client;->zscore([B[B)V

    .line 1792
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    .line 1793
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

.method public varargs zunionstore([BLredis/clients/jedis/ZParams;[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [[B

    .prologue
    .line 2618
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2619
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zunionstore([BLredis/clients/jedis/ZParams;[[B)V

    .line 2620
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public varargs zunionstore([B[[B)Ljava/lang/Long;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "sets"    # [[B

    .prologue
    .line 2581
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis;->checkIsInMultiOrPipeline()V

    .line 2582
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zunionstore([B[[B)V

    .line 2583
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getIntegerReply()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

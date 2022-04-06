.class public Lredis/clients/jedis/JedisShardInfo;
.super Lredis/clients/util/ShardInfo;
.source "JedisShardInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/util/ShardInfo",
        "<",
        "Lredis/clients/jedis/Jedis;",
        ">;"
    }
.end annotation


# static fields
.field private static final REDISS:Ljava/lang/String; = "rediss"


# instance fields
.field private connectionTimeout:I

.field private db:I

.field private host:Ljava/lang/String;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:I

.field private soTimeout:I

.field private ssl:Z

.field private sslParameters:Ljavax/net/ssl/SSLParameters;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 31
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lredis/clients/util/ShardInfo;-><init>(I)V

    .line 21
    iput-object v2, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 24
    const/4 v1, 0x0

    iput v1, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 32
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 33
    .local v0, "uri":Ljava/net/URI;
    invoke-static {v0}, Lredis/clients/util/JedisURIHelper;->isValid(Ljava/net/URI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    iput v1, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    .line 36
    invoke-static {v0}, Lredis/clients/util/JedisURIHelper;->getPassword(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 37
    invoke-static {v0}, Lredis/clients/util/JedisURIHelper;->getDBIndex(Ljava/net/URI;)I

    move-result v1

    iput v1, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 38
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rediss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lredis/clients/jedis/JedisShardInfo;->ssl:Z

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    iput-object p1, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    .line 41
    const/16 v1, 0x18eb

    iput v1, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 69
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I

    .prologue
    .line 97
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;IIII)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I
    .param p5, "weight"    # I

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p5}, Lredis/clients/util/ShardInfo;-><init>(I)V

    .line 21
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 135
    iput-object p1, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    .line 136
    iput p2, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    .line 137
    iput p3, p0, Lredis/clients/jedis/JedisShardInfo;->connectionTimeout:I

    .line 138
    iput p4, p0, Lredis/clients/jedis/JedisShardInfo;->soTimeout:I

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I
    .param p5, "weight"    # I
    .param p6, "ssl"    # Z

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p5}, Lredis/clients/util/ShardInfo;-><init>(I)V

    .line 21
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 144
    iput-object p1, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    .line 145
    iput p2, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    .line 146
    iput p3, p0, Lredis/clients/jedis/JedisShardInfo;->connectionTimeout:I

    .line 147
    iput p4, p0, Lredis/clients/jedis/JedisShardInfo;->soTimeout:I

    .line 148
    iput-boolean p6, p0, Lredis/clients/jedis/JedisShardInfo;->ssl:Z

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I
    .param p5, "weight"    # I
    .param p6, "ssl"    # Z
    .param p7, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p8, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p9, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p5}, Lredis/clients/util/ShardInfo;-><init>(I)V

    .line 21
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 155
    iput-object p1, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    .line 156
    iput p2, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    .line 157
    iput p3, p0, Lredis/clients/jedis/JedisShardInfo;->connectionTimeout:I

    .line 158
    iput p4, p0, Lredis/clients/jedis/JedisShardInfo;->soTimeout:I

    .line 159
    iput-boolean p6, p0, Lredis/clients/jedis/JedisShardInfo;->ssl:Z

    .line 160
    iput-object p7, p0, Lredis/clients/jedis/JedisShardInfo;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 161
    iput-object p8, p0, Lredis/clients/jedis/JedisShardInfo;->sslParameters:Ljavax/net/ssl/SSLParameters;

    .line 162
    iput-object p9, p0, Lredis/clients/jedis/JedisShardInfo;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;IIII)V

    .line 113
    iput-object p4, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "ssl"    # Z

    .prologue
    .line 117
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;IIII)V

    .line 118
    iput-object p4, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 119
    iput-boolean p5, p0, Lredis/clients/jedis/JedisShardInfo;->ssl:Z

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "ssl"    # Z
    .param p6, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p7, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p8, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 125
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;IIII)V

    .line 126
    iput-object p4, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 127
    iput-boolean p5, p0, Lredis/clients/jedis/JedisShardInfo;->ssl:Z

    .line 128
    iput-object p6, p0, Lredis/clients/jedis/JedisShardInfo;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 129
    iput-object p7, p0, Lredis/clients/jedis/JedisShardInfo;->sslParameters:Ljavax/net/ssl/SSLParameters;

    .line 130
    iput-object p8, p0, Lredis/clients/jedis/JedisShardInfo;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "ssl"    # Z

    .prologue
    .line 101
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;IIIIZ)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "ssl"    # Z
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p6, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p7, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 107
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 108
    invoke-direct/range {v0 .. v9}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;IIIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0, p3}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "ssl"    # Z

    .prologue
    .line 87
    const/16 v3, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "ssl"    # Z
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p6, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p7, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 92
    const/16 v3, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 93
    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "ssl"    # Z

    .prologue
    const/16 v3, 0x7d0

    .line 73
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;IIIIZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "ssl"    # Z
    .param p4, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p5, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 78
    const/16 v3, 0x7d0

    const/16 v4, 0x7d0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    .line 79
    invoke-direct/range {v0 .. v9}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;IIIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const/16 v0, 0x18eb

    invoke-direct {p0, p1, v0, p2}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "weight"    # I

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p5}, Lredis/clients/util/ShardInfo;-><init>(I)V

    .line 21
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 167
    iput-object p1, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 169
    iput p3, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    .line 170
    iput p4, p0, Lredis/clients/jedis/JedisShardInfo;->connectionTimeout:I

    .line 171
    iput p4, p0, Lredis/clients/jedis/JedisShardInfo;->soTimeout:I

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "weight"    # I
    .param p6, "ssl"    # Z

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p5}, Lredis/clients/util/ShardInfo;-><init>(I)V

    .line 21
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 177
    iput-object p1, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 179
    iput p3, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    .line 180
    iput p4, p0, Lredis/clients/jedis/JedisShardInfo;->connectionTimeout:I

    .line 181
    iput p4, p0, Lredis/clients/jedis/JedisShardInfo;->soTimeout:I

    .line 182
    iput-boolean p6, p0, Lredis/clients/jedis/JedisShardInfo;->ssl:Z

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .param p5, "weight"    # I
    .param p6, "ssl"    # Z
    .param p7, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p8, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p9, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, p5}, Lredis/clients/util/ShardInfo;-><init>(I)V

    .line 21
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 189
    iput-object p1, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 191
    iput p3, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    .line 192
    iput p4, p0, Lredis/clients/jedis/JedisShardInfo;->connectionTimeout:I

    .line 193
    iput p4, p0, Lredis/clients/jedis/JedisShardInfo;->soTimeout:I

    .line 194
    iput-boolean p6, p0, Lredis/clients/jedis/JedisShardInfo;->ssl:Z

    .line 195
    iput-object p7, p0, Lredis/clients/jedis/JedisShardInfo;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 196
    iput-object p8, p0, Lredis/clients/jedis/JedisShardInfo;->sslParameters:Ljavax/net/ssl/SSLParameters;

    .line 197
    iput-object p9, p0, Lredis/clients/jedis/JedisShardInfo;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 198
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p3, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p4, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    const/4 v2, 0x0

    .line 47
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lredis/clients/util/ShardInfo;-><init>(I)V

    .line 21
    iput-object v2, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 24
    const/4 v1, 0x0

    iput v1, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 48
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 49
    .local v0, "uri":Ljava/net/URI;
    invoke-static {v0}, Lredis/clients/util/JedisURIHelper;->isValid(Ljava/net/URI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    iput v1, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    .line 52
    invoke-static {v0}, Lredis/clients/util/JedisURIHelper;->getPassword(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 53
    invoke-static {v0}, Lredis/clients/util/JedisURIHelper;->getDBIndex(Ljava/net/URI;)I

    move-result v1

    iput v1, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 54
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rediss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lredis/clients/jedis/JedisShardInfo;->ssl:Z

    .line 55
    iput-object p2, p0, Lredis/clients/jedis/JedisShardInfo;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 56
    iput-object p3, p0, Lredis/clients/jedis/JedisShardInfo;->sslParameters:Ljavax/net/ssl/SSLParameters;

    .line 57
    iput-object p4, p0, Lredis/clients/jedis/JedisShardInfo;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-object p1, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    .line 60
    const/16 v1, 0x18eb

    iput v1, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 201
    invoke-direct {p0, v2}, Lredis/clients/util/ShardInfo;-><init>(I)V

    .line 21
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 24
    iput v4, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 202
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->isValid(Ljava/net/URI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lredis/clients/jedis/exceptions/InvalidURIException;

    .line 204
    const-string v1, "Cannot open Redis connection due invalid URI. %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 203
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/InvalidURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    .line 209
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->getPassword(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 210
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->getDBIndex(Ljava/net/URI;)I

    move-result v0

    iput v0, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 211
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rediss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lredis/clients/jedis/JedisShardInfo;->ssl:Z

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p3, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p4, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-direct {p0, v2}, Lredis/clients/util/ShardInfo;-><init>(I)V

    .line 21
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    .line 24
    iput v4, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 217
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->isValid(Ljava/net/URI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lredis/clients/jedis/exceptions/InvalidURIException;

    .line 219
    const-string v1, "Cannot open Redis connection due invalid URI. %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 218
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/InvalidURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    .line 224
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->getPassword(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 225
    invoke-static {p1}, Lredis/clients/util/JedisURIHelper;->getDBIndex(Ljava/net/URI;)I

    move-result v0

    iput v0, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    .line 226
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rediss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lredis/clients/jedis/JedisShardInfo;->ssl:Z

    .line 227
    iput-object p2, p0, Lredis/clients/jedis/JedisShardInfo;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 228
    iput-object p3, p0, Lredis/clients/jedis/JedisShardInfo;->sslParameters:Ljavax/net/ssl/SSLParameters;

    .line 229
    iput-object p4, p0, Lredis/clients/jedis/JedisShardInfo;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 230
    return-void
.end method


# virtual methods
.method public bridge synthetic createResource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lredis/clients/jedis/JedisShardInfo;->createResource()Lredis/clients/jedis/Jedis;

    move-result-object v0

    return-object v0
.end method

.method public createResource()Lredis/clients/jedis/Jedis;
    .locals 1

    .prologue
    .line 295
    new-instance v0, Lredis/clients/jedis/Jedis;

    invoke-direct {v0, p0}, Lredis/clients/jedis/Jedis;-><init>(Lredis/clients/jedis/JedisShardInfo;)V

    return-object v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lredis/clients/jedis/JedisShardInfo;->connectionTimeout:I

    return v0
.end method

.method public getDb()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lredis/clients/jedis/JedisShardInfo;->db:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    return v0
.end method

.method public getSoTimeout()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lredis/clients/jedis/JedisShardInfo;->soTimeout:I

    return v0
.end method

.method public getSsl()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lredis/clients/jedis/JedisShardInfo;->ssl:Z

    return v0
.end method

.method public getSslParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->sslParameters:Ljavax/net/ssl/SSLParameters;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lredis/clients/jedis/JedisShardInfo;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 257
    iput p1, p0, Lredis/clients/jedis/JedisShardInfo;->connectionTimeout:I

    .line 258
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "auth"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lredis/clients/jedis/JedisShardInfo;->password:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 0
    .param p1, "soTimeout"    # I

    .prologue
    .line 265
    iput p1, p0, Lredis/clients/jedis/JedisShardInfo;->soTimeout:I

    .line 266
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lredis/clients/jedis/JedisShardInfo;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lredis/clients/jedis/JedisShardInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lredis/clients/jedis/JedisShardInfo;->getWeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

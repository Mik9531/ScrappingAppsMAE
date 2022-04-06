.class public abstract Lredis/clients/jedis/JedisMonitor;
.super Ljava/lang/Object;
.source "JedisMonitor.java"


# instance fields
.field protected client:Lredis/clients/jedis/Client;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCommand(Ljava/lang/String;)V
.end method

.method public proceed(Lredis/clients/jedis/Client;)V
    .locals 2
    .param p1, "client"    # Lredis/clients/jedis/Client;

    .prologue
    .line 7
    iput-object p1, p0, Lredis/clients/jedis/JedisMonitor;->client:Lredis/clients/jedis/Client;

    .line 8
    iget-object v1, p0, Lredis/clients/jedis/JedisMonitor;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->setTimeoutInfinite()V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lredis/clients/jedis/Client;->getBulkReply()Ljava/lang/String;

    move-result-object v0

    .line 11
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lredis/clients/jedis/JedisMonitor;->onCommand(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lredis/clients/jedis/Client;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    return-void
.end method

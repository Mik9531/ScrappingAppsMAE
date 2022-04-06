.class public Lredis/clients/jedis/ShardedJedisPipeline;
.super Lredis/clients/jedis/PipelineBase;
.source "ShardedJedisPipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lredis/clients/jedis/ShardedJedisPipeline$FutureResult;
    }
.end annotation


# instance fields
.field private clients:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lredis/clients/jedis/Client;",
            ">;"
        }
    .end annotation
.end field

.field private jedis:Lredis/clients/jedis/BinaryShardedJedis;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/ShardedJedisPipeline$FutureResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lredis/clients/jedis/PipelineBase;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/ShardedJedisPipeline;->results:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/ShardedJedisPipeline;->clients:Ljava/util/Queue;

    .line 8
    return-void
.end method


# virtual methods
.method protected getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v1, p0, Lredis/clients/jedis/ShardedJedisPipeline;->jedis:Lredis/clients/jedis/BinaryShardedJedis;

    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lredis/clients/jedis/Jedis;

    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->getClient()Lredis/clients/jedis/Client;

    move-result-object v0

    .line 65
    .local v0, "client":Lredis/clients/jedis/Client;
    iget-object v1, p0, Lredis/clients/jedis/ShardedJedisPipeline;->clients:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lredis/clients/jedis/ShardedJedisPipeline;->results:Ljava/util/List;

    new-instance v2, Lredis/clients/jedis/ShardedJedisPipeline$FutureResult;

    invoke-direct {v2, v0}, Lredis/clients/jedis/ShardedJedisPipeline$FutureResult;-><init>(Lredis/clients/jedis/Client;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v0
.end method

.method protected getClient([B)Lredis/clients/jedis/Client;
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 72
    iget-object v1, p0, Lredis/clients/jedis/ShardedJedisPipeline;->jedis:Lredis/clients/jedis/BinaryShardedJedis;

    invoke-virtual {v1, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lredis/clients/jedis/Jedis;

    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->getClient()Lredis/clients/jedis/Client;

    move-result-object v0

    .line 73
    .local v0, "client":Lredis/clients/jedis/Client;
    iget-object v1, p0, Lredis/clients/jedis/ShardedJedisPipeline;->clients:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lredis/clients/jedis/ShardedJedisPipeline;->results:Ljava/util/List;

    new-instance v2, Lredis/clients/jedis/ShardedJedisPipeline$FutureResult;

    invoke-direct {v2, v0}, Lredis/clients/jedis/ShardedJedisPipeline$FutureResult;-><init>(Lredis/clients/jedis/Client;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-object v0
.end method

.method public getResults()Ljava/util/List;
    .locals 4
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
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lredis/clients/jedis/ShardedJedisPipeline;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 34
    return-object v1

    .line 31
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ShardedJedisPipeline$FutureResult;

    .line 32
    .local v0, "fr":Lredis/clients/jedis/ShardedJedisPipeline$FutureResult;
    invoke-virtual {v0}, Lredis/clients/jedis/ShardedJedisPipeline$FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShardedJedis(Lredis/clients/jedis/BinaryShardedJedis;)V
    .locals 0
    .param p1, "jedis"    # Lredis/clients/jedis/BinaryShardedJedis;

    .prologue
    .line 26
    iput-object p1, p0, Lredis/clients/jedis/ShardedJedisPipeline;->jedis:Lredis/clients/jedis/BinaryShardedJedis;

    .line 27
    return-void
.end method

.method public sync()V
    .locals 3

    .prologue
    .line 43
    iget-object v1, p0, Lredis/clients/jedis/ShardedJedisPipeline;->clients:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    return-void

    .line 43
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Client;

    .line 44
    .local v0, "client":Lredis/clients/jedis/Client;
    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getOne()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lredis/clients/jedis/ShardedJedisPipeline;->generateResponse(Ljava/lang/Object;)Lredis/clients/jedis/Response;

    goto :goto_0
.end method

.method public syncAndReturnAll()Ljava/util/List;
    .locals 4
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
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "formatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lredis/clients/jedis/ShardedJedisPipeline;->clients:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    return-object v1

    .line 56
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Client;

    .line 57
    .local v0, "client":Lredis/clients/jedis/Client;
    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getOne()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lredis/clients/jedis/ShardedJedisPipeline;->generateResponse(Ljava/lang/Object;)Lredis/clients/jedis/Response;

    move-result-object v3

    invoke-virtual {v3}, Lredis/clients/jedis/Response;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

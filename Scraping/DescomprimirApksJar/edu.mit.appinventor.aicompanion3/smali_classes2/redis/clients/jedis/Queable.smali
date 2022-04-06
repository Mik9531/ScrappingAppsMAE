.class public Lredis/clients/jedis/Queable;
.super Ljava/lang/Object;
.source "Queable.java"


# instance fields
.field private pipelinedResponses:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lredis/clients/jedis/Response",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/Queable;->pipelinedResponses:Ljava/util/Queue;

    .line 6
    return-void
.end method


# virtual methods
.method protected clean()V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lredis/clients/jedis/Queable;->pipelinedResponses:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 11
    return-void
.end method

.method protected generateResponse(Ljava/lang/Object;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lredis/clients/jedis/Response",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v1, p0, Lredis/clients/jedis/Queable;->pipelinedResponses:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Response;

    .line 15
    .local v0, "response":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<*>;"
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Response;->set(Ljava/lang/Object;)V

    .line 18
    :cond_0
    return-object v0
.end method

.method protected getPipelinedResponseLength()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lredis/clients/jedis/Queable;->pipelinedResponses:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method protected getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lredis/clients/jedis/Builder",
            "<TT;>;)",
            "Lredis/clients/jedis/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "builder":Lredis/clients/jedis/Builder;, "Lredis/clients/jedis/Builder<TT;>;"
    new-instance v0, Lredis/clients/jedis/Response;

    invoke-direct {v0, p1}, Lredis/clients/jedis/Response;-><init>(Lredis/clients/jedis/Builder;)V

    .line 23
    .local v0, "lr":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<TT;>;"
    iget-object v1, p0, Lredis/clients/jedis/Queable;->pipelinedResponses:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 24
    return-object v0
.end method

.method protected hasPipelinedResponse()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lredis/clients/jedis/Queable;->pipelinedResponses:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

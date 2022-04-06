.class public Lredis/clients/jedis/Transaction;
.super Lredis/clients/jedis/MultiKeyPipelineBase;
.source "Transaction.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected inTransaction:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lredis/clients/jedis/MultiKeyPipelineBase;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lredis/clients/jedis/Transaction;->inTransaction:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/Client;)V
    .locals 1
    .param p1, "client"    # Lredis/clients/jedis/Client;

    .prologue
    .line 21
    invoke-direct {p0}, Lredis/clients/jedis/MultiKeyPipelineBase;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lredis/clients/jedis/Transaction;->inTransaction:Z

    .line 22
    iput-object p1, p0, Lredis/clients/jedis/Transaction;->client:Lredis/clients/jedis/Client;

    .line 23
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lredis/clients/jedis/Transaction;->inTransaction:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lredis/clients/jedis/Transaction;->discard()Ljava/lang/String;

    .line 39
    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lredis/clients/jedis/Transaction;->clear()V

    .line 94
    return-void
.end method

.method public discard()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lredis/clients/jedis/Transaction;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p0}, Lredis/clients/jedis/Transaction;->getPipelinedResponseLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Client;->getMany(I)Ljava/util/List;

    .line 81
    iget-object v0, p0, Lredis/clients/jedis/Transaction;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->discard()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lredis/clients/jedis/Transaction;->inTransaction:Z

    .line 83
    invoke-virtual {p0}, Lredis/clients/jedis/Transaction;->clean()V

    .line 84
    iget-object v0, p0, Lredis/clients/jedis/Transaction;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getStatusCodeReply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public exec()Ljava/util/List;
    .locals 6
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
    .line 43
    iget-object v4, p0, Lredis/clients/jedis/Transaction;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p0}, Lredis/clients/jedis/Transaction;->getPipelinedResponseLength()I

    move-result v5

    invoke-virtual {v4, v5}, Lredis/clients/jedis/Client;->getMany(I)Ljava/util/List;

    .line 44
    iget-object v4, p0, Lredis/clients/jedis/Transaction;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v4}, Lredis/clients/jedis/Client;->exec()V

    .line 45
    const/4 v4, 0x0

    iput-boolean v4, p0, Lredis/clients/jedis/Transaction;->inTransaction:Z

    .line 47
    iget-object v4, p0, Lredis/clients/jedis/Transaction;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v4}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v3

    .line 48
    .local v3, "unformatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v3, :cond_1

    .line 49
    const/4 v1, 0x0

    .line 59
    :cond_0
    return-object v1

    .line 51
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v1, "formatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 54
    .local v2, "o":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, v2}, Lredis/clients/jedis/Transaction;->generateResponse(Ljava/lang/Object;)Lredis/clients/jedis/Response;

    move-result-object v5

    invoke-virtual {v5}, Lredis/clients/jedis/Response;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lredis/clients/jedis/exceptions/JedisDataException;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public execGetResponse()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/Response",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v3, p0, Lredis/clients/jedis/Transaction;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p0}, Lredis/clients/jedis/Transaction;->getPipelinedResponseLength()I

    move-result v4

    invoke-virtual {v3, v4}, Lredis/clients/jedis/Client;->getMany(I)Ljava/util/List;

    .line 65
    iget-object v3, p0, Lredis/clients/jedis/Transaction;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3}, Lredis/clients/jedis/Client;->exec()V

    .line 66
    const/4 v3, 0x0

    iput-boolean v3, p0, Lredis/clients/jedis/Transaction;->inTransaction:Z

    .line 68
    iget-object v3, p0, Lredis/clients/jedis/Transaction;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v3}, Lredis/clients/jedis/Client;->getObjectMultiBulkReply()Ljava/util/List;

    move-result-object v2

    .line 69
    .local v2, "unformatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 70
    const/4 v1, 0x0

    .line 76
    :cond_0
    return-object v1

    .line 72
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v1, "response":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/Response<*>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Transaction;->generateResponse(Ljava/lang/Object;)Lredis/clients/jedis/Response;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lredis/clients/jedis/Transaction;->client:Lredis/clients/jedis/Client;

    return-object v0
.end method

.method protected getClient([B)Lredis/clients/jedis/Client;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 32
    iget-object v0, p0, Lredis/clients/jedis/Transaction;->client:Lredis/clients/jedis/Client;

    return-object v0
.end method

.method public setClient(Lredis/clients/jedis/Client;)V
    .locals 0
    .param p1, "client"    # Lredis/clients/jedis/Client;

    .prologue
    .line 88
    iput-object p1, p0, Lredis/clients/jedis/Transaction;->client:Lredis/clients/jedis/Client;

    .line 89
    return-void
.end method

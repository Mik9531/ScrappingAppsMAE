.class public Lredis/clients/jedis/Pipeline;
.super Lredis/clients/jedis/MultiKeyPipelineBase;
.source "Pipeline.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lredis/clients/jedis/Pipeline$MultiResponseBuilder;
    }
.end annotation


# instance fields
.field private currentMulti:Lredis/clients/jedis/Pipeline$MultiResponseBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lredis/clients/jedis/MultiKeyPipelineBase;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lredis/clients/jedis/Pipeline;->isInMulti()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lredis/clients/jedis/Pipeline;->discard()Lredis/clients/jedis/Response;

    .line 84
    :cond_0
    invoke-virtual {p0}, Lredis/clients/jedis/Pipeline;->sync()V

    .line 85
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lredis/clients/jedis/Pipeline;->clear()V

    .line 158
    return-void
.end method

.method public discard()Lredis/clients/jedis/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lredis/clients/jedis/Pipeline;->currentMulti:Lredis/clients/jedis/Pipeline$MultiResponseBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lredis/clients/jedis/exceptions/JedisDataException;

    const-string v1, "DISCARD without MULTI"

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lredis/clients/jedis/Pipeline;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->discard()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Pipeline;->currentMulti:Lredis/clients/jedis/Pipeline$MultiResponseBuilder;

    .line 132
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Pipeline;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public exec()Lredis/clients/jedis/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lredis/clients/jedis/Pipeline;->currentMulti:Lredis/clients/jedis/Pipeline$MultiResponseBuilder;

    if-nez v1, :cond_0

    new-instance v1, Lredis/clients/jedis/exceptions/JedisDataException;

    const-string v2, "EXEC without MULTI"

    invoke-direct {v1, v2}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    iget-object v1, p0, Lredis/clients/jedis/Pipeline;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->exec()V

    .line 139
    iget-object v1, p0, Lredis/clients/jedis/Pipeline;->currentMulti:Lredis/clients/jedis/Pipeline$MultiResponseBuilder;

    invoke-super {p0, v1}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    .line 140
    .local v0, "response":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<Ljava/util/List<Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lredis/clients/jedis/Pipeline;->currentMulti:Lredis/clients/jedis/Pipeline$MultiResponseBuilder;

    invoke-virtual {v1, v0}, Lredis/clients/jedis/Pipeline$MultiResponseBuilder;->setResponseDependency(Lredis/clients/jedis/Response;)V

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lredis/clients/jedis/Pipeline;->currentMulti:Lredis/clients/jedis/Pipeline$MultiResponseBuilder;

    .line 142
    return-object v0
.end method

.method protected getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lredis/clients/jedis/Pipeline;->client:Lredis/clients/jedis/Client;

    return-object v0
.end method

.method protected getClient([B)Lredis/clients/jedis/Client;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 71
    iget-object v0, p0, Lredis/clients/jedis/Pipeline;->client:Lredis/clients/jedis/Client;

    return-object v0
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
    .line 54
    .local p1, "builder":Lredis/clients/jedis/Builder;, "Lredis/clients/jedis/Builder<TT;>;"
    iget-object v1, p0, Lredis/clients/jedis/Pipeline;->currentMulti:Lredis/clients/jedis/Pipeline$MultiResponseBuilder;

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-super {p0, v1}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    .line 57
    new-instance v0, Lredis/clients/jedis/Response;

    invoke-direct {v0, p1}, Lredis/clients/jedis/Response;-><init>(Lredis/clients/jedis/Builder;)V

    .line 58
    .local v0, "lr":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<TT;>;"
    iget-object v1, p0, Lredis/clients/jedis/Pipeline;->currentMulti:Lredis/clients/jedis/Pipeline$MultiResponseBuilder;

    invoke-virtual {v1, v0}, Lredis/clients/jedis/Pipeline$MultiResponseBuilder;->addResponse(Lredis/clients/jedis/Response;)V

    .line 61
    .end local v0    # "lr":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<TT;>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public isInMulti()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lredis/clients/jedis/Pipeline;->currentMulti:Lredis/clients/jedis/Pipeline$MultiResponseBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multi()Lredis/clients/jedis/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v1, p0, Lredis/clients/jedis/Pipeline;->currentMulti:Lredis/clients/jedis/Pipeline$MultiResponseBuilder;

    if-eqz v1, :cond_0

    new-instance v1, Lredis/clients/jedis/exceptions/JedisDataException;

    const-string v2, "MULTI calls can not be nested"

    invoke-direct {v1, v2}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_0
    iget-object v1, p0, Lredis/clients/jedis/Pipeline;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1}, Lredis/clients/jedis/Client;->multi()V

    .line 149
    sget-object v1, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v1}, Lredis/clients/jedis/Pipeline;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    .line 151
    .local v0, "response":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<Ljava/lang/String;>;"
    new-instance v1, Lredis/clients/jedis/Pipeline$MultiResponseBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lredis/clients/jedis/Pipeline$MultiResponseBuilder;-><init>(Lredis/clients/jedis/Pipeline;Lredis/clients/jedis/Pipeline$MultiResponseBuilder;)V

    iput-object v1, p0, Lredis/clients/jedis/Pipeline;->currentMulti:Lredis/clients/jedis/Pipeline$MultiResponseBuilder;

    .line 152
    return-object v0
.end method

.method public setClient(Lredis/clients/jedis/Client;)V
    .locals 0
    .param p1, "client"    # Lredis/clients/jedis/Client;

    .prologue
    .line 66
    iput-object p1, p0, Lredis/clients/jedis/Pipeline;->client:Lredis/clients/jedis/Client;

    .line 67
    return-void
.end method

.method public sync()V
    .locals 4

    .prologue
    .line 97
    invoke-virtual {p0}, Lredis/clients/jedis/Pipeline;->getPipelinedResponseLength()I

    move-result v2

    if-lez v2, :cond_0

    .line 98
    iget-object v2, p0, Lredis/clients/jedis/Pipeline;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p0}, Lredis/clients/jedis/Pipeline;->getPipelinedResponseLength()I

    move-result v3

    invoke-virtual {v2, v3}, Lredis/clients/jedis/Client;->getMany(I)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "unformatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    .end local v1    # "unformatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    return-void

    .line 99
    .restart local v1    # "unformatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Pipeline;->generateResponse(Ljava/lang/Object;)Lredis/clients/jedis/Response;

    goto :goto_0
.end method

.method public syncAndReturnAll()Ljava/util/List;
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
    .line 112
    invoke-virtual {p0}, Lredis/clients/jedis/Pipeline;->getPipelinedResponseLength()I

    move-result v4

    if-lez v4, :cond_1

    .line 113
    iget-object v4, p0, Lredis/clients/jedis/Pipeline;->client:Lredis/clients/jedis/Client;

    invoke-virtual {p0}, Lredis/clients/jedis/Pipeline;->getPipelinedResponseLength()I

    move-result v5

    invoke-virtual {v4, v5}, Lredis/clients/jedis/Client;->getMany(I)Ljava/util/List;

    move-result-object v3

    .line 114
    .local v3, "unformatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "formatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 124
    .end local v1    # "formatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "unformatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    return-object v1

    .line 115
    .restart local v1    # "formatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v3    # "unformatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 117
    .local v2, "o":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, v2}, Lredis/clients/jedis/Pipeline;->generateResponse(Ljava/lang/Object;)Lredis/clients/jedis/Response;

    move-result-object v5

    invoke-virtual {v5}, Lredis/clients/jedis/Response;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lredis/clients/jedis/exceptions/JedisDataException;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v0    # "e":Lredis/clients/jedis/exceptions/JedisDataException;
    .end local v1    # "formatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "unformatted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

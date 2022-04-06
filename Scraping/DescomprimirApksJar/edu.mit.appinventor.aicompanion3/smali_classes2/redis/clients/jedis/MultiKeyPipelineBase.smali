.class public abstract Lredis/clients/jedis/MultiKeyPipelineBase;
.super Lredis/clients/jedis/PipelineBase;
.source "MultiKeyPipelineBase.java"

# interfaces
.implements Lredis/clients/jedis/commands/MultiKeyBinaryRedisPipeline;
.implements Lredis/clients/jedis/commands/MultiKeyCommandsPipeline;
.implements Lredis/clients/jedis/commands/ClusterPipeline;
.implements Lredis/clients/jedis/commands/BinaryScriptingCommandsPipeline;
.implements Lredis/clients/jedis/commands/ScriptingCommandsPipeline;
.implements Lredis/clients/jedis/commands/BasicRedisPipeline;


# instance fields
.field protected client:Lredis/clients/jedis/Client;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lredis/clients/jedis/PipelineBase;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    .line 9
    return-void
.end method


# virtual methods
.method public bgrewriteaof()Lredis/clients/jedis/Response;
    .locals 1
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
    .line 296
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->bgrewriteaof()V

    .line 297
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public bgsave()Lredis/clients/jedis/Response;
    .locals 1
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
    .line 301
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->bgsave()V

    .line 302
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs bitop(Lredis/clients/jedis/BitOP;Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "op"    # Lredis/clients/jedis/BitOP;
    .param p2, "destKey"    # Ljava/lang/String;
    .param p3, "srcKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/BitOP;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->bitop(Lredis/clients/jedis/BitOP;Ljava/lang/String;[Ljava/lang/String;)V

    .line 410
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs bitop(Lredis/clients/jedis/BitOP;[B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "op"    # Lredis/clients/jedis/BitOP;
    .param p2, "destKey"    # [B
    .param p3, "srcKeys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/BitOP;",
            "[B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->bitop(Lredis/clients/jedis/BitOP;[B[[B)V

    .line 405
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs blpop(I[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "timeout"    # I
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->blpop(I[Ljava/lang/String;)V

    .line 32
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs blpop(I[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "timeout"    # I
    .param p2, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->blpop(I[[B)V

    .line 62
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs blpop([Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->blpop([Ljava/lang/String;)V

    .line 27
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs blpop([[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "args"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->blpop([[B)V

    .line 57
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs blpopMap(I[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "timeout"    # I
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->blpop(I[Ljava/lang/String;)V

    .line 37
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_MAP:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs brpop(I[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "timeout"    # I
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->brpop(I[Ljava/lang/String;)V

    .line 22
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs brpop(I[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "timeout"    # I
    .param p2, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->brpop(I[[B)V

    .line 47
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs brpop([Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->brpop([Ljava/lang/String;)V

    .line 17
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs brpop([[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "args"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->brpop([[B)V

    .line 42
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs brpopMap(I[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "timeout"    # I
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->blpop(I[Ljava/lang/String;)V

    .line 52
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_MAP:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public brpoplpush(Ljava/lang/String;Ljava/lang/String;I)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->brpoplpush(Ljava/lang/String;Ljava/lang/String;I)V

    .line 317
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public brpoplpush([B[BI)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BI)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->brpoplpush([B[BI)V

    .line 322
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs clusterAddSlots([I)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "slots"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clusterAddSlots([I)V

    .line 425
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs clusterDelSlots([I)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "slots"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->clusterDelSlots([I)V

    .line 430
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public clusterGetKeysInSlot(II)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "slot"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->clusterGetKeysInSlot(II)V

    .line 440
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public clusterInfo()Lredis/clients/jedis/Response;
    .locals 1
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
    .line 434
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->clusterInfo()V

    .line 435
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public clusterMeet(Ljava/lang/String;I)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->clusterMeet(Ljava/lang/String;I)V

    .line 420
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public clusterNodes()Lredis/clients/jedis/Response;
    .locals 1
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
    .line 414
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->clusterNodes()V

    .line 415
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public clusterSetSlotImporting(ILjava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "slot"    # I
    .param p2, "nodeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->clusterSetSlotImporting(ILjava/lang/String;)V

    .line 455
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public clusterSetSlotMigrating(ILjava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "slot"    # I
    .param p2, "nodeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->clusterSetSlotMigrating(ILjava/lang/String;)V

    .line 450
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public clusterSetSlotNode(ILjava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "slot"    # I
    .param p2, "nodeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->clusterSetSlotNode(ILjava/lang/String;)V

    .line 445
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public configGet(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->configGet(Ljava/lang/String;)V

    .line 307
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public configResetStat()Lredis/clients/jedis/Response;
    .locals 1
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
    .line 326
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->configResetStat()V

    .line 327
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public configSet(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->configSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public dbSize()Lredis/clients/jedis/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->dbSize()V

    .line 382
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs del([Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->del([Ljava/lang/String;)V

    .line 67
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs del([[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->del([[B)V

    .line 72
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 459
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->eval(Ljava/lang/String;I[Ljava/lang/String;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs eval(Ljava/lang/String;I[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "keyCount"    # I
    .param p3, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lredis/clients/jedis/MultiKeyPipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->eval(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 469
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->EVAL_RESULT:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2, p3}, Lredis/clients/jedis/Jedis;->getParams(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "argv":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->eval(Ljava/lang/String;I[Ljava/lang/String;)Lredis/clients/jedis/Response;

    move-result-object v1

    return-object v1
.end method

.method public eval([B)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "script"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 487
    new-array v0, v1, [[B

    invoke-virtual {p0, p1, v1, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->eval([BI[[B)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs eval([BI[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "script"    # [B
    .param p2, "keyCount"    # I
    .param p3, "params"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    invoke-virtual {p0, p1}, Lredis/clients/jedis/MultiKeyPipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->eval([BI[[B)V

    .line 502
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->EVAL_BINARY_RESULT:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public eval([BLjava/util/List;Ljava/util/List;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "script"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-static {p2, p3}, Lredis/clients/jedis/BinaryJedis;->getParamsWithBinary(Ljava/util/List;Ljava/util/List;)[[B

    move-result-object v0

    .line 497
    .local v0, "argv":[[B
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->eval([BI[[B)Lredis/clients/jedis/Response;

    move-result-object v1

    return-object v1
.end method

.method public varargs eval([B[B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "script"    # [B
    .param p2, "keyCount"    # [B
    .param p3, "params"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lredis/clients/jedis/MultiKeyPipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->eval([B[B[[B)V

    .line 492
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->EVAL_BINARY_RESULT:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public evalsha(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 473
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->evalsha(Ljava/lang/String;I[Ljava/lang/String;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs evalsha(Ljava/lang/String;I[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "keyCount"    # I
    .param p3, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lredis/clients/jedis/MultiKeyPipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->evalsha(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 483
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->EVAL_RESULT:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public evalsha(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "sha1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2, p3}, Lredis/clients/jedis/Jedis;->getParams(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "argv":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->evalsha(Ljava/lang/String;I[Ljava/lang/String;)Lredis/clients/jedis/Response;

    move-result-object v1

    return-object v1
.end method

.method public evalsha([B)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "sha1"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 506
    new-array v0, v1, [[B

    invoke-virtual {p0, p1, v1, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->evalsha([BI[[B)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs evalsha([BI[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "sha1"    # [B
    .param p2, "keyCount"    # I
    .param p3, "params"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lredis/clients/jedis/MultiKeyPipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->evalsha([BI[[B)V

    .line 516
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->EVAL_BINARY_RESULT:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public evalsha([BLjava/util/List;Ljava/util/List;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "sha1"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-static {p2, p3}, Lredis/clients/jedis/BinaryJedis;->getParamsWithBinary(Ljava/util/List;Ljava/util/List;)[[B

    move-result-object v0

    .line 511
    .local v0, "argv":[[B
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->evalsha([BI[[B)Lredis/clients/jedis/Response;

    move-result-object v1

    return-object v1
.end method

.method public varargs exists([Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->exists([Ljava/lang/String;)V

    .line 77
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs exists([[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->exists([[B)V

    .line 82
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public flushAll()Lredis/clients/jedis/Response;
    .locals 1
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
    .line 366
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flushAll()V

    .line 367
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public flushDB()Lredis/clients/jedis/Response;
    .locals 1
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
    .line 361
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flushDB()V

    .line 362
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public info()Lredis/clients/jedis/Response;
    .locals 1
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
    .line 371
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->info()V

    .line 372
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->info(Ljava/lang/String;)V

    .line 377
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public keys(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lredis/clients/jedis/MultiKeyPipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->keys(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_SET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public keys([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "pattern"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lredis/clients/jedis/MultiKeyPipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->keys([B)V

    .line 92
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public lastsave()Lredis/clients/jedis/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->lastsave()V

    .line 337
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs mget([Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->mget([Ljava/lang/String;)V

    .line 97
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs mget([[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->mget([[B)V

    .line 102
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public moduleList()Lredis/clients/jedis/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/Module;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->moduleList()V

    .line 558
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->MODULE_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public moduleLoad(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->moduleLoad(Ljava/lang/String;)V

    .line 564
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public moduleUnload(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->moduleUnload(Ljava/lang/String;)V

    .line 552
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs mset([Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keysvalues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->mset([Ljava/lang/String;)V

    .line 107
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs mset([[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keysvalues"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->mset([[B)V

    .line 112
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs msetnx([Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keysvalues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->msetnx([Ljava/lang/String;)V

    .line 117
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs msetnx([[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keysvalues"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->msetnx([[B)V

    .line 122
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs pfcount([Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pfcount([Ljava/lang/String;)V

    .line 522
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs pfcount([[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pfcount([[B)V

    .line 528
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs pfmerge(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "destkey"    # Ljava/lang/String;
    .param p2, "sourcekeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->pfmerge(Ljava/lang/String;[Ljava/lang/String;)V

    .line 540
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs pfmerge([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "destkey"    # [B
    .param p2, "sourcekeys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->pfmerge([B[[B)V

    .line 534
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public ping()Lredis/clients/jedis/Response;
    .locals 1
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
    .line 391
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->ping()V

    .line 392
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->publish(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public publish([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "channel"    # [B
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->publish([B[B)V

    .line 347
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public randomKey()Lredis/clients/jedis/Response;
    .locals 1
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
    .line 351
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->randomKey()V

    .line 352
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public randomKeyBinary()Lredis/clients/jedis/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->randomKey()V

    .line 357
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "oldkey"    # Ljava/lang/String;
    .param p2, "newkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public rename([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "oldkey"    # [B
    .param p2, "newkey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rename([B[B)V

    .line 132
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public renamenx(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "oldkey"    # Ljava/lang/String;
    .param p2, "newkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->renamenx(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public renamenx([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "oldkey"    # [B
    .param p2, "newkey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->renamenx([B[B)V

    .line 142
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public rpoplpush(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "srckey"    # Ljava/lang/String;
    .param p2, "dstkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rpoplpush(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public rpoplpush([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "srckey"    # [B
    .param p2, "dstkey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rpoplpush([B[B)V

    .line 152
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public save()Lredis/clients/jedis/Response;
    .locals 1
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
    .line 331
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->save()V

    .line 332
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sdiff([Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sdiff([Ljava/lang/String;)V

    .line 157
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_SET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sdiff([[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sdiff([[B)V

    .line 162
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sdiffstore(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sdiffstore(Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sdiffstore([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sdiffstore([B[[B)V

    .line 172
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public select(I)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v1, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1}, Lredis/clients/jedis/Client;->select(I)V

    .line 397
    sget-object v1, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v1}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    .line 398
    .local v0, "response":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<Ljava/lang/String;>;"
    iget-object v1, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v1, p1}, Lredis/clients/jedis/Client;->setDb(I)V

    .line 400
    return-object v0
.end method

.method public shutdown()Lredis/clients/jedis/Response;
    .locals 1
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
    .line 386
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->shutdown()V

    .line 387
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sinter([Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sinter([Ljava/lang/String;)V

    .line 177
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_SET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sinter([[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sinter([[B)V

    .line 182
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sinterstore(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sinterstore(Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sinterstore([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sinterstore([B[[B)V

    .line 192
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public smove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "srckey"    # Ljava/lang/String;
    .param p2, "dstkey"    # Ljava/lang/String;
    .param p3, "member"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->smove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public smove([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "srckey"    # [B
    .param p2, "dstkey"    # [B
    .param p3, "member"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->smove([B[B[B)V

    .line 202
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dstkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sort(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .param p3, "dstkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/SortingParams;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public sort([BLredis/clients/jedis/SortingParams;[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .param p3, "dstkey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/SortingParams;",
            "[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->sort([BLredis/clients/jedis/SortingParams;[B)V

    .line 212
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public sort([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "dstkey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sort([B[B)V

    .line 222
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sunion([Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sunion([Ljava/lang/String;)V

    .line 227
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_SET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sunion([[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sunion([[B)V

    .line 232
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sunionstore(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sunionstore(Ljava/lang/String;[Ljava/lang/String;)V

    .line 237
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sunionstore([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sunionstore([B[[B)V

    .line 242
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public time()Lredis/clients/jedis/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->time()V

    .line 546
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs watch([Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->watch([Ljava/lang/String;)V

    .line 247
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs watch([[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "keys"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->watch([[B)V

    .line 252
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs zinterstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/ZParams;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zinterstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)V

    .line 267
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs zinterstore(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "sets"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zinterstore(Ljava/lang/String;[Ljava/lang/String;)V

    .line 257
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs zinterstore([BLredis/clients/jedis/ZParams;[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/ZParams;",
            "[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zinterstore([BLredis/clients/jedis/ZParams;[[B)V

    .line 272
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs zinterstore([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "sets"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zinterstore([B[[B)V

    .line 262
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs zunionstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/ZParams;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zunionstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)V

    .line 287
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs zunionstore(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "sets"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zunionstore(Ljava/lang/String;[Ljava/lang/String;)V

    .line 277
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs zunionstore([BLredis/clients/jedis/ZParams;[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/ZParams;",
            "[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zunionstore([BLredis/clients/jedis/ZParams;[[B)V

    .line 292
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs zunionstore([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "dstkey"    # [B
    .param p2, "sets"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lredis/clients/jedis/MultiKeyPipelineBase;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zunionstore([B[[B)V

    .line 282
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/MultiKeyPipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

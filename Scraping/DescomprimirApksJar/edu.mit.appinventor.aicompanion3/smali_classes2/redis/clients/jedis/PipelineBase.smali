.class public abstract Lredis/clients/jedis/PipelineBase;
.super Lredis/clients/jedis/Queable;
.source "PipelineBase.java"

# interfaces
.implements Lredis/clients/jedis/commands/BinaryRedisPipeline;
.implements Lredis/clients/jedis/commands/RedisPipeline;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lredis/clients/jedis/Queable;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
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
    .line 25
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public append([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # [B
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
    .line 31
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->append([B[B)V

    .line 32
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public bitcount(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1327
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->bitcount(Ljava/lang/String;)V

    .line 1328
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public bitcount(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1333
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->bitcount(Ljava/lang/String;JJ)V

    .line 1334
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public bitcount([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1339
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->bitcount([B)V

    .line 1340
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public bitcount([BJJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1345
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->bitcount([BJJ)V

    .line 1346
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs bitfield(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "elements"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1627
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->bitfield(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1628
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs bitfield([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "elements"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1633
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->bitfield([B[[B)V

    .line 1634
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public bitpos(Ljava/lang/String;Z)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lredis/clients/jedis/BitPosParams;

    invoke-direct {v0}, Lredis/clients/jedis/BitPosParams;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lredis/clients/jedis/PipelineBase;->bitpos(Ljava/lang/String;ZLredis/clients/jedis/BitPosParams;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public bitpos(Ljava/lang/String;ZLredis/clients/jedis/BitPosParams;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "params"    # Lredis/clients/jedis/BitPosParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lredis/clients/jedis/BitPosParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->bitpos(Ljava/lang/String;ZLredis/clients/jedis/BitPosParams;)V

    .line 181
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public bitpos([BZ)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lredis/clients/jedis/BitPosParams;

    invoke-direct {v0}, Lredis/clients/jedis/BitPosParams;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lredis/clients/jedis/PipelineBase;->bitpos([BZLredis/clients/jedis/BitPosParams;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public bitpos([BZLredis/clients/jedis/BitPosParams;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # Z
    .param p3, "params"    # Lredis/clients/jedis/BitPosParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZ",
            "Lredis/clients/jedis/BitPosParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->bitpos([BZLredis/clients/jedis/BitPosParams;)V

    .line 190
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public blpop(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
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
    .line 37
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 38
    .local v0, "temp":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 39
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v1

    invoke-virtual {v1, v0}, Lredis/clients/jedis/Client;->blpop([Ljava/lang/String;)V

    .line 40
    sget-object v1, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v1}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v1

    return-object v1
.end method

.method public blpop([B)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v1, 0x1

    new-array v0, v1, [[B

    .line 54
    .local v0, "temp":[[B
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 55
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v1

    invoke-virtual {v1, v0}, Lredis/clients/jedis/Client;->blpop([[B)V

    .line 56
    sget-object v1, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v1}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v1

    return-object v1
.end method

.method public brpop(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
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
    .line 45
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 46
    .local v0, "temp":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 47
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v1

    invoke-virtual {v1, v0}, Lredis/clients/jedis/Client;->brpop([Ljava/lang/String;)V

    .line 48
    sget-object v1, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v1}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v1

    return-object v1
.end method

.method public brpop([B)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v1, 0x1

    new-array v0, v1, [[B

    .line 62
    .local v0, "temp":[[B
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 63
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v1

    invoke-virtual {v1, v0}, Lredis/clients/jedis/Client;->brpop([[B)V

    .line 64
    sget-object v1, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v1}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v1

    return-object v1
.end method

.method public decr(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->decr(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public decr([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->decr([B)V

    .line 76
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public decrBy(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "integer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->decrBy(Ljava/lang/String;J)V

    .line 82
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public decrBy([BJ)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "integer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->decrBy([BJ)V

    .line 88
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public del(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Client;->del([Ljava/lang/String;)V

    .line 94
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public del([B)Lredis/clients/jedis/Response;
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Client;->del([[B)V

    .line 100
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1350
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->dump(Ljava/lang/String;)V

    .line 1351
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public dump([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1355
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->dump([B)V

    .line 1356
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public echo(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
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
    .line 105
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->echo(Ljava/lang/String;)V

    .line 106
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public echo([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "string"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->echo([B)V

    .line 112
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public exists(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->exists(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BOOLEAN:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public exists([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->exists([B)V

    .line 124
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BOOLEAN:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public expire(Ljava/lang/String;I)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "seconds"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->expire(Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public expire([BI)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "seconds"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->expire([BI)V

    .line 136
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public expireAt(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "unixTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->expireAt(Ljava/lang/String;J)V

    .line 142
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public expireAt([BJ)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "unixTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->expireAt([BJ)V

    .line 148
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public geoadd(Ljava/lang/String;DDLjava/lang/String;)Lredis/clients/jedis/Response;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "member"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1511
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lredis/clients/jedis/Client;->geoadd(Ljava/lang/String;DDLjava/lang/String;)V

    .line 1512
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public geoadd(Ljava/lang/String;Ljava/util/Map;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1517
    .local p2, "memberCoordinateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lredis/clients/jedis/GeoCoordinate;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->geoadd(Ljava/lang/String;Ljava/util/Map;)V

    .line 1518
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public geoadd([BDD[B)Lredis/clients/jedis/Response;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "member"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1499
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lredis/clients/jedis/Client;->geoadd([BDD[B)V

    .line 1500
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public geoadd([BLjava/util/Map;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1505
    .local p2, "memberCoordinateMap":Ljava/util/Map;, "Ljava/util/Map<[BLredis/clients/jedis/GeoCoordinate;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->geoadd([BLjava/util/Map;)V

    .line 1506
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member1"    # Ljava/lang/String;
    .param p3, "member2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1535
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/GeoUnit;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member1"    # Ljava/lang/String;
    .param p3, "member2"    # Ljava/lang/String;
    .param p4, "unit"    # Lredis/clients/jedis/GeoUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1541
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public geodist([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "member1"    # [B
    .param p3, "member2"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1523
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->geodist([B[B[B)V

    .line 1524
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public geodist([B[B[BLredis/clients/jedis/GeoUnit;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "member1"    # [B
    .param p3, "member2"    # [B
    .param p4, "unit"    # Lredis/clients/jedis/GeoUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1529
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->geodist([B[B[BLredis/clients/jedis/GeoUnit;)V

    .line 1530
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs geohash(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
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
    .line 1553
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->geohash(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1554
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs geohash([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "members"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 1547
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->geohash([B[[B)V

    .line 1548
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs geopos(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1565
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->geopos(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1566
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEO_COORDINATE_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs geopos([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "members"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1559
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->geopos([B[[B)V

    .line 1560
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEO_COORDINATE_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;)Lredis/clients/jedis/Response;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDD",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1586
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lredis/clients/jedis/Client;->georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;)V

    .line 1587
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Lredis/clients/jedis/Response;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p9, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDD",
            "Lredis/clients/jedis/GeoUnit;",
            "Lredis/clients/jedis/params/geo/GeoRadiusParam;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1593
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lredis/clients/jedis/Client;->georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 1594
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public georadius([BDDDLredis/clients/jedis/GeoUnit;)Lredis/clients/jedis/Response;
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
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1572
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lredis/clients/jedis/Client;->georadius([BDDDLredis/clients/jedis/GeoUnit;)V

    .line 1573
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public georadius([BDDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Lredis/clients/jedis/Response;
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
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1579
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lredis/clients/jedis/Client;->georadius([BDDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 1580
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;)Lredis/clients/jedis/Response;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1614
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lredis/clients/jedis/Client;->georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;)V

    .line 1615
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Lredis/clients/jedis/Response;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p6, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Lredis/clients/jedis/GeoUnit;",
            "Lredis/clients/jedis/params/geo/GeoRadiusParam;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1621
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lredis/clients/jedis/Client;->georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 1622
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;)Lredis/clients/jedis/Response;
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
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1600
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lredis/clients/jedis/Client;->georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;)V

    .line 1601
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Lredis/clients/jedis/Response;
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
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1607
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lredis/clients/jedis/Client;->georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 1608
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->GEORADIUS_WITH_PARAMS_RESULT:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .line 153
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->get(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public get([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->get([B)V

    .line 160
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;
.end method

.method protected abstract getClient([B)Lredis/clients/jedis/Client;
.end method

.method public getSet(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .line 201
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->getSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public getSet([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->getSet([B[B)V

    .line 208
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public getbit(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->getbit(Ljava/lang/String;J)V

    .line 166
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BOOLEAN:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public getbit([BJ)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->getbit([BJ)V

    .line 172
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BOOLEAN:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public getrange(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "startOffset"    # J
    .param p4, "endOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->getrange(Ljava/lang/String;JJ)V

    .line 196
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public getrange([BJJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "startOffset"    # J
    .param p4, "endOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->getrange([BJJ)V

    .line 214
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs hdel(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # [Ljava/lang/String;
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
    .line 219
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hdel(Ljava/lang/String;[Ljava/lang/String;)V

    .line 220
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs hdel([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "field"    # [[B
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
    .line 225
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hdel([B[[B)V

    .line 226
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hexists(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hexists(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BOOLEAN:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hexists([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hexists([B[B)V

    .line 238
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BOOLEAN:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hget(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
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
    .line 243
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hget(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hget([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hget([B[B)V

    .line 250
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hgetAll(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 255
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hgetAll(Ljava/lang/String;)V

    .line 256
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_MAP:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hgetAll([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Map",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hgetAll([B)V

    .line 262
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_MAP:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hincrBy(Ljava/lang/String;Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->hincrBy(Ljava/lang/String;Ljava/lang/String;J)V

    .line 268
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hincrBy([B[BJ)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->hincrBy([B[BJ)V

    .line 274
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hincrByFloat(Ljava/lang/String;Ljava/lang/String;D)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "increment"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1464
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->hincrByFloat(Ljava/lang/String;Ljava/lang/String;D)V

    .line 1465
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hincrByFloat([B[BD)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "increment"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1469
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->hincrByFloat([B[BD)V

    .line 1470
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hkeys(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .line 279
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hkeys(Ljava/lang/String;)V

    .line 280
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_SET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hkeys([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
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
    .line 285
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hkeys([B)V

    .line 286
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hlen(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hlen(Ljava/lang/String;)V

    .line 292
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hlen([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hlen([B)V

    .line 298
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs hmget(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
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
    .line 303
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hmget(Ljava/lang/String;[Ljava/lang/String;)V

    .line 304
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs hmget([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "fields"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hmget([B[[B)V

    .line 310
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hmset(Ljava/lang/String;Ljava/util/Map;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, "hash":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hmset(Ljava/lang/String;Ljava/util/Map;)V

    .line 316
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hmset([BLjava/util/Map;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B[B>;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    .local p2, "hash":Ljava/util/Map;, "Ljava/util/Map<[B[B>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hmset([BLjava/util/Map;)V

    .line 322
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
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
    .line 327
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->hset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hset([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # [B
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
    .line 333
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->hset([B[B[B)V

    .line 334
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hsetnx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
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
    .line 339
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->hsetnx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hsetnx([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # [B
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
    .line 345
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->hsetnx([B[B[B)V

    .line 346
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hstrlen(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
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
    .line 1639
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hstrlen(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hstrlen([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "field"    # [B
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
    .line 1645
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->hstrlen([B[B)V

    .line 1646
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hvals(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .line 351
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hvals(Ljava/lang/String;)V

    .line 352
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public hvals([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->hvals([B)V

    .line 358
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public incr(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->incr(Ljava/lang/String;)V

    .line 364
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public incr([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->incr([B)V

    .line 370
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public incrBy(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "integer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->incrBy(Ljava/lang/String;J)V

    .line 376
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public incrBy([BJ)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "integer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->incrBy([BJ)V

    .line 382
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public incrByFloat(Ljava/lang/String;D)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "increment"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1444
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->incrByFloat(Ljava/lang/String;D)V

    .line 1445
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public incrByFloat([BD)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "increment"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1449
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->incrByFloat([BD)V

    .line 1450
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public lindex(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->lindex(Ljava/lang/String;J)V

    .line 388
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public lindex([BJ)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->lindex([BJ)V

    .line 394
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public linsert(Ljava/lang/String;Lredis/clients/jedis/BinaryClient$LIST_POSITION;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "where"    # Lredis/clients/jedis/BinaryClient$LIST_POSITION;
    .param p3, "pivot"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/BinaryClient$LIST_POSITION;",
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
    .line 399
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->linsert(Ljava/lang/String;Lredis/clients/jedis/BinaryClient$LIST_POSITION;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public linsert([BLredis/clients/jedis/BinaryClient$LIST_POSITION;[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "where"    # Lredis/clients/jedis/BinaryClient$LIST_POSITION;
    .param p3, "pivot"    # [B
    .param p4, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/BinaryClient$LIST_POSITION;",
            "[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->linsert([BLredis/clients/jedis/BinaryClient$LIST_POSITION;[B[B)V

    .line 406
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public llen(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->llen(Ljava/lang/String;)V

    .line 412
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public llen([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->llen([B)V

    .line 418
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public lpop(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .line 423
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->lpop(Ljava/lang/String;)V

    .line 424
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public lpop([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->lpop([B)V

    .line 430
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs lpush(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;
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
    .line 435
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->lpush(Ljava/lang/String;[Ljava/lang/String;)V

    .line 436
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs lpush([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "string"    # [[B
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
    .line 441
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->lpush([B[[B)V

    .line 442
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs lpushx(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;
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
    .line 447
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->lpushx(Ljava/lang/String;[Ljava/lang/String;)V

    .line 448
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs lpushx([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "bytes"    # [[B
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
    .line 453
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->lpushx([B[[B)V

    .line 454
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public lrange(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->lrange(Ljava/lang/String;JJ)V

    .line 460
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public lrange([BJJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->lrange([BJJ)V

    .line 466
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public lrem(Ljava/lang/String;JLjava/lang/String;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # J
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->lrem(Ljava/lang/String;JLjava/lang/String;)V

    .line 472
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public lrem([BJ[B)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "count"    # J
    .param p4, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->lrem([BJ[B)V

    .line 478
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public lset(Ljava/lang/String;JLjava/lang/String;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # J
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->lset(Ljava/lang/String;JLjava/lang/String;)V

    .line 484
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public lset([BJ[B)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "index"    # J
    .param p4, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->lset([BJ[B)V

    .line 490
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public ltrim(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->ltrim(Ljava/lang/String;JJ)V

    .line 496
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public ltrim([BJJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->ltrim([BJJ)V

    .line 502
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public migrate(Ljava/lang/String;ILjava/lang/String;II)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "destinationDb"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "II)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1360
    invoke-virtual {p0, p3}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->migrate(Ljava/lang/String;ILjava/lang/String;II)V

    .line 1361
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public migrate([BI[BII)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "host"    # [B
    .param p2, "port"    # I
    .param p3, "key"    # [B
    .param p4, "destinationDb"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI[BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1365
    invoke-virtual {p0, p3}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->migrate([BI[BII)V

    .line 1366
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public move(Ljava/lang/String;I)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dbIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->move(Ljava/lang/String;I)V

    .line 508
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public move([BI)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "dbIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->move([BI)V

    .line 514
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public objectEncoding(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .line 1380
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->objectEncoding(Ljava/lang/String;)V

    .line 1381
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public objectEncoding([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1385
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->objectEncoding([B)V

    .line 1386
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public objectIdletime(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1390
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->objectIdletime(Ljava/lang/String;)V

    .line 1391
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public objectIdletime([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1395
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->objectIdletime([B)V

    .line 1396
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public objectRefcount(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1370
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->objectRefcount(Ljava/lang/String;)V

    .line 1371
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public objectRefcount([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1375
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->objectRefcount([B)V

    .line 1376
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public persist(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->persist(Ljava/lang/String;)V

    .line 520
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public persist([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->persist([B)V

    .line 526
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public pexpire(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "milliseconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1401
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->pexpire(Ljava/lang/String;J)V

    .line 1402
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public pexpire([BJ)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "milliseconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1407
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->pexpire([BJ)V

    .line 1408
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public pexpireAt(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "millisecondsTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1413
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->pexpireAt(Ljava/lang/String;J)V

    .line 1414
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public pexpireAt([BJ)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "millisecondsTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1419
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->pexpireAt([BJ)V

    .line 1420
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs pfadd(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "elements"    # [Ljava/lang/String;
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
    .line 1487
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->pfadd(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1488
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs pfadd([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "elements"    # [[B
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
    .line 1475
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->pfadd([B[[B)V

    .line 1476
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public pfcount(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1493
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pfcount(Ljava/lang/String;)V

    .line 1494
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public pfcount([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1481
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pfcount([B)V

    .line 1482
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public psetex(Ljava/lang/String;JLjava/lang/String;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "milliseconds"    # J
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1454
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->psetex(Ljava/lang/String;JLjava/lang/String;)V

    .line 1455
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public psetex([BJ[B)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "milliseconds"    # J
    .param p4, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1459
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->psetex([BJ[B)V

    .line 1460
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public pttl(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pttl(Ljava/lang/String;)V

    .line 1425
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public pttl([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1429
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->pttl([B)V

    .line 1430
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public restore(Ljava/lang/String;I[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ttl"    # I
    .param p3, "serializedValue"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1434
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->restore(Ljava/lang/String;I[B)V

    .line 1435
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public restore([BI[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "ttl"    # I
    .param p3, "serializedValue"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1439
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->restore([BI[B)V

    .line 1440
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public rpop(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .line 531
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->rpop(Ljava/lang/String;)V

    .line 532
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public rpop([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 537
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->rpop([B)V

    .line 538
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs rpush(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;
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
    .line 543
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rpush(Ljava/lang/String;[Ljava/lang/String;)V

    .line 544
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs rpush([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "string"    # [[B
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
    .line 549
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rpush([B[[B)V

    .line 550
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs rpushx(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;
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
    .line 555
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rpushx(Ljava/lang/String;[Ljava/lang/String;)V

    .line 556
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs rpushx([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "string"    # [[B
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
    .line 561
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->rpushx([B[[B)V

    .line 562
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sadd(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # [Ljava/lang/String;
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
    .line 567
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sadd(Ljava/lang/String;[Ljava/lang/String;)V

    .line 568
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs sadd([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "member"    # [[B
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
    .line 573
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sadd([B[[B)V

    .line 574
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public scard(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->scard(Ljava/lang/String;)V

    .line 580
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public scard([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->scard([B)V

    .line 586
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .line 591
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/params/set/SetParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/params/set/SetParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->set(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)V

    .line 603
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public set([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # [B
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
    .line 597
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->set([B[B)V

    .line 598
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public set([B[BLredis/clients/jedis/params/set/SetParams;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # [B
    .param p3, "params"    # Lredis/clients/jedis/params/set/SetParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Lredis/clients/jedis/params/set/SetParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->set([B[BLredis/clients/jedis/params/set/SetParams;)V

    .line 608
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public setbit(Ljava/lang/String;JZ)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->setbit(Ljava/lang/String;JZ)V

    .line 614
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BOOLEAN:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public setbit([BJ[B)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->setbit([BJ[B)V

    .line 620
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BOOLEAN:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public setex(Ljava/lang/String;ILjava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "seconds"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 625
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->setex(Ljava/lang/String;ILjava/lang/String;)V

    .line 626
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public setex([BI[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "seconds"    # I
    .param p3, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->setex([BI[B)V

    .line 632
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public setnx(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
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
    .line 637
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->setnx(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public setnx([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "value"    # [B
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
    .line 643
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->setnx([B[B)V

    .line 644
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public setrange(Ljava/lang/String;JLjava/lang/String;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->setrange(Ljava/lang/String;JLjava/lang/String;)V

    .line 650
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public setrange([BJ[B)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->setrange([BJ[B)V

    .line 656
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public sismember(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sismember(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BOOLEAN:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public sismember([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "member"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sismember([B[B)V

    .line 668
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BOOLEAN:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public smembers(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .line 673
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->smembers(Ljava/lang/String;)V

    .line 674
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_SET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public smembers([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
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
    .line 679
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->smembers([B)V

    .line 680
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .line 685
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sort(Ljava/lang/String;)V

    .line 686
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/SortingParams;",
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
    .line 697
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;)V

    .line 698
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public sort([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 691
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->sort([B)V

    .line 692
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public sort([BLredis/clients/jedis/SortingParams;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/SortingParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 703
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->sort([BLredis/clients/jedis/SortingParams;)V

    .line 704
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public spop(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .line 709
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->spop(Ljava/lang/String;)V

    .line 710
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public spop(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 715
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->spop(Ljava/lang/String;J)V

    .line 716
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_SET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public spop([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 721
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->spop([B)V

    .line 722
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public spop([BJ)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 727
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->spop([BJ)V

    .line 728
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public srandmember(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .line 733
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->srandmember(Ljava/lang/String;)V

    .line 734
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public srandmember(Ljava/lang/String;I)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->srandmember(Ljava/lang/String;I)V

    .line 739
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public srandmember([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 744
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->srandmember([B)V

    .line 745
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public srandmember([BI)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 749
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->srandmember([BI)V

    .line 750
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_LIST:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs srem(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # [Ljava/lang/String;
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
    .line 755
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->srem(Ljava/lang/String;[Ljava/lang/String;)V

    .line 756
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs srem([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "member"    # [[B
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
    .line 761
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->srem([B[[B)V

    .line 762
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public strlen(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 767
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->strlen(Ljava/lang/String;)V

    .line 768
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public strlen([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 773
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->strlen([B)V

    .line 774
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public substr(Ljava/lang/String;II)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->substr(Ljava/lang/String;II)V

    .line 780
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public substr([BII)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->substr([BII)V

    .line 786
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public ttl(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 791
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->ttl(Ljava/lang/String;)V

    .line 792
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public ttl([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 797
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->ttl([B)V

    .line 798
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public type(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .line 803
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->type(Ljava/lang/String;)V

    .line 804
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public type([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->type([B)V

    .line 810
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zadd(Ljava/lang/String;DLjava/lang/String;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->zadd(Ljava/lang/String;DLjava/lang/String;)V

    .line 816
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zadd(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZAddParams;)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/params/sortedset/ZAddParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 821
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zadd(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZAddParams;)V

    .line 822
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zadd(Ljava/lang/String;Ljava/util/Map;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 826
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zadd(Ljava/lang/String;Ljava/util/Map;)V

    .line 827
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zadd(Ljava/lang/String;Ljava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Lredis/clients/jedis/params/sortedset/ZAddParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 832
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zadd(Ljava/lang/String;Ljava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)V

    .line 833
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zadd([BD[B)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BD[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->zadd([BD[B)V

    .line 839
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zadd([BD[BLredis/clients/jedis/params/sortedset/ZAddParams;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BD[B",
            "Lredis/clients/jedis/params/sortedset/ZAddParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 844
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->zadd([BD[B)V

    .line 845
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zadd([BLjava/util/Map;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
            "Ljava/lang/Double;",
            ">;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<[BLjava/lang/Double;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zadd([BLjava/util/Map;)V

    .line 851
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zadd([BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Lredis/clients/jedis/Response;
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
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 856
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<[BLjava/lang/Double;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zadd([BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)V

    .line 857
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zcard(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->zcard(Ljava/lang/String;)V

    .line 863
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zcard([B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 868
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->zcard([B)V

    .line 869
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zcount(Ljava/lang/String;DD)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 874
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zcount(Ljava/lang/String;DD)V

    .line 875
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
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
    .line 879
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zcount([BDD)Lredis/clients/jedis/Response;
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 885
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lredis/clients/jedis/Client;->zcount([B[B[B)V

    .line 886
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zcount([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
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
    .line 890
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zcount([B[B[B)V

    .line 891
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zincrby(Ljava/lang/String;DLjava/lang/String;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 896
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->zincrby(Ljava/lang/String;DLjava/lang/String;)V

    .line 897
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zincrby(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZIncrByParams;)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZIncrByParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/params/sortedset/ZIncrByParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 902
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zincrby(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZIncrByParams;)V

    .line 903
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zincrby([BD[B)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BD[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 908
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->zincrby([BD[B)V

    .line 909
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zincrby([BD[BLredis/clients/jedis/params/sortedset/ZIncrByParams;)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZIncrByParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BD[B",
            "Lredis/clients/jedis/params/sortedset/ZIncrByParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 914
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Client;->zincrby([BD[B)V

    .line 915
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zlexcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
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
    .line 1257
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zlexcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zlexcount([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
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
    .line 1251
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zlexcount([B[B[B)V

    .line 1252
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrange(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 920
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrange(Ljava/lang/String;JJ)V

    .line 921
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrange([BJJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 926
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrange([BJJ)V

    .line 927
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 1269
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1283
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1284
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByLex([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 1263
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrangeByLex([B[B[B)V

    .line 1264
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByLex([B[B[BII)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 1276
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByLex([B[B[BII)V

    .line 1277
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScore(Ljava/lang/String;DD)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScore(Ljava/lang/String;DD)V

    .line 933
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScore(Ljava/lang/String;DDII)Lredis/clients/jedis/Response;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 956
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Client;->zrangeByScore(Ljava/lang/String;DDII)V

    .line 957
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 943
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 962
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 963
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScore([BDD)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 938
    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v0

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/PipelineBase;->zrangeByScore([B[B[B)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScore([BDDII)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 969
    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/PipelineBase;->zrangeByScore([B[B[BII)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScore([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 949
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrangeByScore([B[B[B)V

    .line 950
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScore([B[B[BII)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 975
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScore([B[B[BII)V

    .line 976
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;DD)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 981
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores(Ljava/lang/String;DD)V

    .line 982
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;DDII)Lredis/clients/jedis/Response;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1004
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores(Ljava/lang/String;DDII)V

    .line 1005
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 986
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1010
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1011
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores([BDD)Lredis/clients/jedis/Response;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 992
    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v0

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/PipelineBase;->zrangeByScoreWithScores([B[B[B)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores([BDDII)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1017
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    move-object v1, p1

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores([B[B[BII)V

    .line 1018
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET_BINARY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 997
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores([B[B[B)V

    .line 998
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET_BINARY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScoreWithScores([B[B[BII)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1024
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores([B[B[BII)V

    .line 1025
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET_BINARY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeWithScores(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1132
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeWithScores(Ljava/lang/String;JJ)V

    .line 1133
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrangeWithScores([BJJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1138
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeWithScores([BJJ)V

    .line 1139
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET_BINARY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrank(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;
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
    .line 1144
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zrank(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrank([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "member"    # [B
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
    .line 1150
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zrank([B[B)V

    .line 1151
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs zrem(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # [Ljava/lang/String;
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
    .line 1156
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zrem(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1157
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public varargs zrem([B[[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "member"    # [[B
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
    .line 1162
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zrem([B[[B)V

    .line 1163
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
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
    .line 1321
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zremrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByLex([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
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
    .line 1315
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zremrangeByLex([B[B[B)V

    .line 1316
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByRank(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1168
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zremrangeByRank(Ljava/lang/String;JJ)V

    .line 1169
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByRank([BJJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1174
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zremrangeByRank([BJJ)V

    .line 1175
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByScore(Ljava/lang/String;DD)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # D
    .param p4, "end"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1180
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zremrangeByScore(Ljava/lang/String;DD)V

    .line 1181
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;
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
    .line 1185
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zremrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByScore([BDD)Lredis/clients/jedis/Response;
    .locals 4
    .param p1, "key"    # [B
    .param p2, "start"    # D
    .param p4, "end"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1191
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lredis/clients/jedis/Client;->zremrangeByScore([B[B[B)V

    .line 1192
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByScore([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "start"    # [B
    .param p3, "end"    # [B
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
    .line 1197
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zremrangeByScore([B[B[B)V

    .line 1198
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrange(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1203
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrange(Ljava/lang/String;JJ)V

    .line 1204
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrange([BJJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 1209
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrange([BJJ)V

    .line 1210
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 1295
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1309
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1310
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByLex([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 1289
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrevrangeByLex([B[B[B)V

    .line 1290
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByLex([B[B[BII)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 1302
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByLex([B[B[BII)V

    .line 1303
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScore(Ljava/lang/String;DD)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1030
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScore(Ljava/lang/String;DD)V

    .line 1031
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScore(Ljava/lang/String;DDII)Lredis/clients/jedis/Response;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1055
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Client;->zrevrangeByScore(Ljava/lang/String;DDII)V

    .line 1056
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 1042
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1061
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1062
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->STRING_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScore([BDD)Lredis/clients/jedis/Response;
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 1036
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lredis/clients/jedis/Client;->zrevrangeByScore([B[B[B)V

    .line 1037
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScore([BDDII)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 1068
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    move-object v1, p1

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScore([B[B[BII)V

    .line 1069
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScore([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 1048
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrevrangeByScore([B[B[B)V

    .line 1049
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScore([B[B[BII)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 1075
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScore([B[B[BII)V

    .line 1076
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->BYTE_ARRAY_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;DD)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1081
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores(Ljava/lang/String;DD)V

    .line 1082
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;DDII)Lredis/clients/jedis/Response;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1105
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores(Ljava/lang/String;DDII)V

    .line 1106
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1086
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1111
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1112
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores([BDD)Lredis/clients/jedis/Response;
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1092
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores([B[B[B)V

    .line 1093
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET_BINARY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores([BDDII)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1118
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    move-object v1, p1

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores([B[B[BII)V

    .line 1120
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET_BINARY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores([B[B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1098
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores([B[B[B)V

    .line 1099
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET_BINARY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScoreWithScores([B[B[BII)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1126
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores([B[B[BII)V

    .line 1127
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET_BINARY:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeWithScores(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1215
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeWithScores(Ljava/lang/String;JJ)V

    .line 1216
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeWithScores([BJJ)Lredis/clients/jedis/Response;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1221
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeWithScores([BJJ)V

    .line 1222
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->TUPLE_ZSET:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrank(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;
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
    .line 1227
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zrevrank(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zrevrank([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "member"    # [B
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
    .line 1233
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zrevrank([B[B)V

    .line 1234
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->LONG:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zscore(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1239
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient(Ljava/lang/String;)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zscore(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.method public zscore([B[B)Lredis/clients/jedis/Response;
    .locals 1
    .param p1, "key"    # [B
    .param p2, "member"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1245
    invoke-virtual {p0, p1}, Lredis/clients/jedis/PipelineBase;->getClient([B)Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Client;->zscore([B[B)V

    .line 1246
    sget-object v0, Lredis/clients/jedis/BuilderFactory;->DOUBLE:Lredis/clients/jedis/Builder;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/PipelineBase;->getResponse(Lredis/clients/jedis/Builder;)Lredis/clients/jedis/Response;

    move-result-object v0

    return-object v0
.end method

.class public Lredis/clients/jedis/ZParams;
.super Ljava/lang/Object;
.source "ZParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lredis/clients/jedis/ZParams$Aggregate;
    }
.end annotation


# instance fields
.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/ZParams;->params:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public aggregate(Lredis/clients/jedis/ZParams$Aggregate;)Lredis/clients/jedis/ZParams;
    .locals 2
    .param p1, "aggregate"    # Lredis/clients/jedis/ZParams$Aggregate;

    .prologue
    .line 44
    iget-object v0, p0, Lredis/clients/jedis/ZParams;->params:Ljava/util/List;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->AGGREGATE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v1, v1, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lredis/clients/jedis/ZParams;->params:Ljava/util/List;

    iget-object v1, p1, Lredis/clients/jedis/ZParams$Aggregate;->raw:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-object p0
.end method

.method public getParams()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lredis/clients/jedis/ZParams;->params:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public varargs weights([D)Lredis/clients/jedis/ZParams;
    .locals 6
    .param p1, "weights"    # [D

    .prologue
    .line 31
    iget-object v2, p0, Lredis/clients/jedis/ZParams;->params:Ljava/util/List;

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WEIGHTS:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 36
    return-object p0

    .line 32
    :cond_0
    aget-wide v0, p1, v2

    .line 33
    .local v0, "weight":D
    iget-object v4, p0, Lredis/clients/jedis/ZParams;->params:Ljava/util/List;

    invoke-static {v0, v1}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

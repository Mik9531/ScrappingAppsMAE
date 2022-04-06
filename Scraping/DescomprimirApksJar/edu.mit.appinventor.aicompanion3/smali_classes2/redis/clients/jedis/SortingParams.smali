.class public Lredis/clients/jedis/SortingParams;
.super Ljava/lang/Object;
.source "SortingParams.java"


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
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public alpha()Lredis/clients/jedis/SortingParams;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->ALPHA:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v1, v1, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-object p0
.end method

.method public asc()Lredis/clients/jedis/SortingParams;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->ASC:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v1, v1, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-object p0
.end method

.method public by(Ljava/lang/String;)Lredis/clients/jedis/SortingParams;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/SortingParams;->by([B)Lredis/clients/jedis/SortingParams;

    move-result-object v0

    return-object v0
.end method

.method public by([B)Lredis/clients/jedis/SortingParams;
    .locals 2
    .param p1, "pattern"    # [B

    .prologue
    .line 53
    iget-object v0, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->BY:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v1, v1, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object p0
.end method

.method public desc()Lredis/clients/jedis/SortingParams;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->DESC:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v1, v1, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-object p0
.end method

.method public varargs get([Ljava/lang/String;)Lredis/clients/jedis/SortingParams;
    .locals 5
    .param p1, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 131
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 135
    return-object p0

    .line 131
    :cond_0
    aget-object v0, p1, v1

    .line 132
    .local v0, "pattern":Ljava/lang/String;
    iget-object v3, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    sget-object v4, Lredis/clients/jedis/Protocol$Keyword;->GET:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v4, v4, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v3, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs get([[B)Lredis/clients/jedis/SortingParams;
    .locals 5
    .param p1, "patterns"    # [[B

    .prologue
    .line 153
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 157
    return-object p0

    .line 153
    :cond_0
    aget-object v0, p1, v1

    .line 154
    .local v0, "pattern":[B
    iget-object v3, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    sget-object v4, Lredis/clients/jedis/Protocol$Keyword;->GET:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v4, v4, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v3, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
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
    .line 72
    iget-object v0, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public limit(II)Lredis/clients/jedis/SortingParams;
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v1, v1, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    invoke-static {p1}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object p0
.end method

.method public nosort()Lredis/clients/jedis/SortingParams;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->BY:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v1, v1, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lredis/clients/jedis/SortingParams;->params:Ljava/util/List;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->NOSORT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v1, v1, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-object p0
.end method

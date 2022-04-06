.class Lredis/clients/jedis/Pipeline$MultiResponseBuilder;
.super Lredis/clients/jedis/Builder;
.source "Pipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/jedis/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiResponseBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/Builder",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private responses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/Response",
            "<*>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lredis/clients/jedis/Pipeline;


# direct methods
.method private constructor <init>(Lredis/clients/jedis/Pipeline;)V
    .locals 1

    .prologue
    .line 13
    iput-object p1, p0, Lredis/clients/jedis/Pipeline$MultiResponseBuilder;->this$0:Lredis/clients/jedis/Pipeline;

    invoke-direct {p0}, Lredis/clients/jedis/Builder;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/Pipeline$MultiResponseBuilder;->responses:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lredis/clients/jedis/Pipeline;Lredis/clients/jedis/Pipeline$MultiResponseBuilder;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lredis/clients/jedis/Pipeline$MultiResponseBuilder;-><init>(Lredis/clients/jedis/Pipeline;)V

    return-void
.end method


# virtual methods
.method public addResponse(Lredis/clients/jedis/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "response":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<*>;"
    iget-object v0, p0, Lredis/clients/jedis/Pipeline$MultiResponseBuilder;->responses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public bridge synthetic build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/Pipeline$MultiResponseBuilder;->build(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    .line 20
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lredis/clients/jedis/Pipeline$MultiResponseBuilder;->responses:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 23
    new-instance v6, Lredis/clients/jedis/exceptions/JedisDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Expected data size "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lredis/clients/jedis/Pipeline$MultiResponseBuilder;->responses:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-direct {v6, v7}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 27
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 38
    return-object v5

    .line 28
    :cond_1
    iget-object v6, p0, Lredis/clients/jedis/Pipeline$MultiResponseBuilder;->responses:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lredis/clients/jedis/Response;

    .line 29
    .local v4, "response":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<*>;"
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lredis/clients/jedis/Response;->set(Ljava/lang/Object;)V

    .line 32
    :try_start_0
    invoke-virtual {v4}, Lredis/clients/jedis/Response;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_1
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Lredis/clients/jedis/exceptions/JedisDataException;
    move-object v0, v1

    .local v0, "builtResponse":Lredis/clients/jedis/exceptions/JedisDataException;
    goto :goto_1
.end method

.method public setResponseDependency(Lredis/clients/jedis/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "dependency":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<*>;"
    iget-object v1, p0, Lredis/clients/jedis/Pipeline$MultiResponseBuilder;->responses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    return-void

    .line 42
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Response;

    .line 43
    .local v0, "response":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<*>;"
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Response;->setDependency(Lredis/clients/jedis/Response;)V

    goto :goto_0
.end method

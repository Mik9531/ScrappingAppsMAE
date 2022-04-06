.class public Lredis/clients/jedis/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private builder:Lredis/clients/jedis/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lredis/clients/jedis/Builder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private building:Z

.field private built:Z

.field private data:Ljava/lang/Object;

.field private dependency:Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lredis/clients/jedis/Response",
            "<*>;"
        }
    .end annotation
.end field

.field protected exception:Lredis/clients/jedis/exceptions/JedisDataException;

.field protected response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private set:Z


# direct methods
.method public constructor <init>(Lredis/clients/jedis/Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/Builder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<TT;>;"
    .local p1, "b":Lredis/clients/jedis/Builder;, "Lredis/clients/jedis/Builder<TT;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v1, p0, Lredis/clients/jedis/Response;->response:Ljava/lang/Object;

    .line 7
    iput-object v1, p0, Lredis/clients/jedis/Response;->exception:Lredis/clients/jedis/exceptions/JedisDataException;

    .line 9
    iput-boolean v0, p0, Lredis/clients/jedis/Response;->building:Z

    .line 10
    iput-boolean v0, p0, Lredis/clients/jedis/Response;->built:Z

    .line 11
    iput-boolean v0, p0, Lredis/clients/jedis/Response;->set:Z

    .line 15
    iput-object v1, p0, Lredis/clients/jedis/Response;->dependency:Lredis/clients/jedis/Response;

    .line 18
    iput-object p1, p0, Lredis/clients/jedis/Response;->builder:Lredis/clients/jedis/Builder;

    .line 19
    return-void
.end method

.method private build()V
    .locals 4

    .prologue
    .local p0, "this":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    iget-boolean v0, p0, Lredis/clients/jedis/Response;->building:Z

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-boolean v2, p0, Lredis/clients/jedis/Response;->building:Z

    .line 57
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/Response;->data:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lredis/clients/jedis/Response;->data:Ljava/lang/Object;

    instance-of v0, v0, Lredis/clients/jedis/exceptions/JedisDataException;

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lredis/clients/jedis/Response;->data:Ljava/lang/Object;

    check-cast v0, Lredis/clients/jedis/exceptions/JedisDataException;

    iput-object v0, p0, Lredis/clients/jedis/Response;->exception:Lredis/clients/jedis/exceptions/JedisDataException;

    .line 65
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/Response;->data:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iput-boolean v3, p0, Lredis/clients/jedis/Response;->building:Z

    .line 68
    iput-boolean v2, p0, Lredis/clients/jedis/Response;->built:Z

    goto :goto_0

    .line 61
    :cond_2
    :try_start_1
    iget-object v0, p0, Lredis/clients/jedis/Response;->builder:Lredis/clients/jedis/Builder;

    iget-object v1, p0, Lredis/clients/jedis/Response;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/Response;->response:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    iput-boolean v3, p0, Lredis/clients/jedis/Response;->building:Z

    .line 68
    iput-boolean v2, p0, Lredis/clients/jedis/Response;->built:Z

    .line 69
    throw v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<TT;>;"
    iget-object v0, p0, Lredis/clients/jedis/Response;->dependency:Lredis/clients/jedis/Response;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lredis/clients/jedis/Response;->dependency:Lredis/clients/jedis/Response;

    iget-boolean v0, v0, Lredis/clients/jedis/Response;->set:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lredis/clients/jedis/Response;->dependency:Lredis/clients/jedis/Response;

    iget-boolean v0, v0, Lredis/clients/jedis/Response;->built:Z

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lredis/clients/jedis/Response;->dependency:Lredis/clients/jedis/Response;

    invoke-direct {v0}, Lredis/clients/jedis/Response;->build()V

    .line 32
    :cond_0
    iget-boolean v0, p0, Lredis/clients/jedis/Response;->set:Z

    if-nez v0, :cond_1

    .line 33
    new-instance v0, Lredis/clients/jedis/exceptions/JedisDataException;

    .line 34
    const-string v1, "Please close pipeline or multi block before calling this method."

    .line 33
    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iget-boolean v0, p0, Lredis/clients/jedis/Response;->built:Z

    if-nez v0, :cond_2

    .line 37
    invoke-direct {p0}, Lredis/clients/jedis/Response;->build()V

    .line 39
    :cond_2
    iget-object v0, p0, Lredis/clients/jedis/Response;->exception:Lredis/clients/jedis/exceptions/JedisDataException;

    if-eqz v0, :cond_3

    .line 40
    iget-object v0, p0, Lredis/clients/jedis/Response;->exception:Lredis/clients/jedis/exceptions/JedisDataException;

    throw v0

    .line 42
    :cond_3
    iget-object v0, p0, Lredis/clients/jedis/Response;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 22
    .local p0, "this":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<TT;>;"
    iput-object p1, p0, Lredis/clients/jedis/Response;->data:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lredis/clients/jedis/Response;->set:Z

    .line 24
    return-void
.end method

.method public setDependency(Lredis/clients/jedis/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<TT;>;"
    .local p1, "dependency":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<*>;"
    iput-object p1, p0, Lredis/clients/jedis/Response;->dependency:Lredis/clients/jedis/Response;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    .local p0, "this":Lredis/clients/jedis/Response;, "Lredis/clients/jedis/Response<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lredis/clients/jedis/Response;->builder:Lredis/clients/jedis/Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lredis/clients/jedis/BuilderFactory$17;
.super Lredis/clients/jedis/Builder;
.source "BuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/jedis/BuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/Builder",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lredis/clients/jedis/Builder;-><init>()V

    .line 1
    return-void
.end method

.method private evalResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 333
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 334
    check-cast v1, Ljava/util/List;

    .line 335
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 336
    .local v2, "listResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 343
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "listResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    return-object v2

    .line 336
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v2    # "listResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 337
    .local v0, "bin":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lredis/clients/jedis/BuilderFactory$17;->evalResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "bin":Ljava/lang/Object;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "listResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    move-object v2, p1

    .line 343
    goto :goto_1
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lredis/clients/jedis/BuilderFactory$17;->evalResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    const-string v0, "Eval<Object>"

    return-object v0
.end method

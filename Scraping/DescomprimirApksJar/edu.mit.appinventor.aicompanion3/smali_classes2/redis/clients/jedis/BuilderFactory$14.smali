.class Lredis/clients/jedis/BuilderFactory$14;
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
        "Ljava/util/Set",
        "<",
        "Lredis/clients/jedis/Tuple;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lredis/clients/jedis/Builder;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BuilderFactory$14;->build(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/lang/Object;)Ljava/util/Set;
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    if-nez p1, :cond_1

    .line 251
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 260
    :cond_0
    return-object v2

    :cond_1
    move-object v1, p1

    .line 253
    check-cast v1, Ljava/util/List;

    .line 254
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Ljava/util/LinkedHashSet;-><init>(IF)V

    .line 255
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/Tuple;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 256
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    new-instance v4, Lredis/clients/jedis/Tuple;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lredis/clients/jedis/Tuple;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-string v0, "ZSet<Tuple>"

    return-object v0
.end method

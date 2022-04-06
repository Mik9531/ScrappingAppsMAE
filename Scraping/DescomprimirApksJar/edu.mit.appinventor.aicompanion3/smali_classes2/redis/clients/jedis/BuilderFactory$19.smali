.class Lredis/clients/jedis/BuilderFactory$19;
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
        "Ljava/util/List",
        "<",
        "Lredis/clients/jedis/GeoRadiusResponse;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lredis/clients/jedis/Builder;-><init>()V

    .line 1
    return-void
.end method

.method private convertByteArrayToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 428
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BuilderFactory$19;->build(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/lang/Object;)Ljava/util/List;
    .locals 18
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    if-nez p1, :cond_1

    .line 382
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 423
    :cond_0
    :goto_0
    return-object v9

    :cond_1
    move-object/from16 v7, p1

    .line 384
    check-cast v7, Ljava/util/List;

    .line 386
    .local v7, "objectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 387
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 390
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 391
    .local v9, "responses":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/GeoRadiusResponse;>;"
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Ljava/util/List;

    if-eqz v11, :cond_5

    .line 394
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "obj":Ljava/lang/Object;
    move-object v5, v6

    .line 395
    check-cast v5, Ljava/util/List;

    .line 397
    .local v5, "informations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v8, Lredis/clients/jedis/GeoRadiusResponse;

    const/4 v11, 0x0

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-direct {v8, v11}, Lredis/clients/jedis/GeoRadiusResponse;-><init>([B)V

    .line 399
    .local v8, "resp":Lredis/clients/jedis/GeoRadiusResponse;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    .line 400
    .local v10, "size":I
    const/4 v3, 0x1

    .local v3, "idx":I
    :goto_2
    if-lt v3, v10, :cond_3

    .line 414
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 401
    :cond_3
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 402
    .local v4, "info":Ljava/lang/Object;
    instance-of v11, v4, Ljava/util/List;

    if-eqz v11, :cond_4

    move-object v2, v4

    .line 404
    check-cast v2, Ljava/util/List;

    .line 406
    .local v2, "coord":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v11, Lredis/clients/jedis/GeoCoordinate;

    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lredis/clients/jedis/BuilderFactory$19;->convertByteArrayToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 407
    const/4 v13, 0x1

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lredis/clients/jedis/BuilderFactory$19;->convertByteArrayToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v11, v14, v15, v0, v1}, Lredis/clients/jedis/GeoCoordinate;-><init>(DD)V

    .line 406
    invoke-virtual {v8, v11}, Lredis/clients/jedis/GeoRadiusResponse;->setCoordinate(Lredis/clients/jedis/GeoCoordinate;)V

    .line 400
    .end local v2    # "coord":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 410
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lredis/clients/jedis/BuilderFactory$19;->convertByteArrayToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lredis/clients/jedis/GeoRadiusResponse;->setDistance(D)V

    goto :goto_3

    .line 418
    .end local v3    # "idx":I
    .end local v4    # "info":Ljava/lang/Object;
    .end local v5    # "informations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v8    # "resp":Lredis/clients/jedis/GeoRadiusResponse;
    .end local v10    # "size":I
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 419
    .restart local v6    # "obj":Ljava/lang/Object;
    new-instance v12, Lredis/clients/jedis/GeoRadiusResponse;

    check-cast v6, [B

    .end local v6    # "obj":Ljava/lang/Object;
    invoke-direct {v12, v6}, Lredis/clients/jedis/GeoRadiusResponse;-><init>([B)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    const-string v0, "GeoRadiusWithParamsResult"

    return-object v0
.end method

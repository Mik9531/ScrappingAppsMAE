.class Lredis/clients/jedis/BuilderFactory$18;
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
        "Lredis/clients/jedis/GeoCoordinate;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lredis/clients/jedis/Builder;-><init>()V

    .line 1
    return-void
.end method

.method private interpretGeoposResult(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    .local v3, "responseCoordinate":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/GeoCoordinate;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 374
    return-object v3

    .line 363
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 364
    .local v2, "response":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 365
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 367
    check-cast v1, Ljava/util/List;

    .line 368
    .local v1, "respList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Lredis/clients/jedis/GeoCoordinate;

    .line 369
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 370
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 369
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 368
    invoke-direct {v0, v6, v7, v8, v9}, Lredis/clients/jedis/GeoCoordinate;-><init>(DD)V

    .line 371
    .local v0, "coord":Lredis/clients/jedis/GeoCoordinate;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BuilderFactory$18;->build(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    if-nez p1, :cond_0

    .line 352
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 354
    .end local p1    # "data":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local p1    # "data":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/util/List;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lredis/clients/jedis/BuilderFactory$18;->interpretGeoposResult(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    const-string v0, "List<GeoCoordinate>"

    return-object v0
.end method

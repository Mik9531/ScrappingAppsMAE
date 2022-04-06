.class public Lredis/clients/jedis/params/geo/GeoRadiusParam;
.super Lredis/clients/jedis/params/Params;
.source "GeoRadiusParam.java"


# static fields
.field private static final ASC:Ljava/lang/String; = "asc"

.field private static final COUNT:Ljava/lang/String; = "count"

.field private static final DESC:Ljava/lang/String; = "desc"

.field private static final WITHCOORD:Ljava/lang/String; = "withcoord"

.field private static final WITHDIST:Ljava/lang/String; = "withdist"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lredis/clients/jedis/params/Params;-><init>()V

    .line 21
    return-void
.end method

.method public static geoRadiusParam()Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lredis/clients/jedis/params/geo/GeoRadiusParam;

    invoke-direct {v0}, Lredis/clients/jedis/params/geo/GeoRadiusParam;-><init>()V

    return-object v0
.end method


# virtual methods
.method public count(I)Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 48
    if-lez p1, :cond_0

    .line 49
    const-string v0, "count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/params/geo/GeoRadiusParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    :cond_0
    return-object p0
.end method

.method public varargs getByteParams([[B)[[B
    .locals 4
    .param p1, "args"    # [[B

    .prologue
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "byteParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_4

    .line 60
    const-string v2, "withcoord"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/geo/GeoRadiusParam;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const-string v2, "withcoord"

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    const-string v2, "withdist"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/geo/GeoRadiusParam;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    const-string v2, "withdist"

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    const-string v2, "count"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/geo/GeoRadiusParam;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const-string v2, "count"

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v2, "count"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/geo/GeoRadiusParam;->getParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_2
    const-string v2, "asc"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/geo/GeoRadiusParam;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 73
    const-string v2, "asc"

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[B

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    return-object v2

    .line 56
    :cond_4
    aget-object v0, p1, v2

    .line 57
    .local v0, "arg":[B
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "arg":[B
    :cond_5
    const-string v2, "desc"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/geo/GeoRadiusParam;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    const-string v2, "desc"

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public sortAscending()Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .locals 1

    .prologue
    .line 38
    const-string v0, "asc"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/params/geo/GeoRadiusParam;->addParam(Ljava/lang/String;)V

    .line 39
    return-object p0
.end method

.method public sortDescending()Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .locals 1

    .prologue
    .line 43
    const-string v0, "desc"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/params/geo/GeoRadiusParam;->addParam(Ljava/lang/String;)V

    .line 44
    return-object p0
.end method

.method public withCoord()Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .locals 1

    .prologue
    .line 28
    const-string v0, "withcoord"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/params/geo/GeoRadiusParam;->addParam(Ljava/lang/String;)V

    .line 29
    return-object p0
.end method

.method public withDist()Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .locals 1

    .prologue
    .line 33
    const-string v0, "withdist"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/params/geo/GeoRadiusParam;->addParam(Ljava/lang/String;)V

    .line 34
    return-object p0
.end method

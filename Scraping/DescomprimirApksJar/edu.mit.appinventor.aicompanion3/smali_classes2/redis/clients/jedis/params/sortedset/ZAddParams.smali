.class public Lredis/clients/jedis/params/sortedset/ZAddParams;
.super Lredis/clients/jedis/params/Params;
.source "ZAddParams.java"


# static fields
.field private static final CH:Ljava/lang/String; = "ch"

.field private static final NX:Ljava/lang/String; = "nx"

.field private static final XX:Ljava/lang/String; = "xx"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lredis/clients/jedis/params/Params;-><init>()V

    .line 15
    return-void
.end method

.method public static zAddParams()Lredis/clients/jedis/params/sortedset/ZAddParams;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lredis/clients/jedis/params/sortedset/ZAddParams;

    invoke-direct {v0}, Lredis/clients/jedis/params/sortedset/ZAddParams;-><init>()V

    return-object v0
.end method


# virtual methods
.method public ch()Lredis/clients/jedis/params/sortedset/ZAddParams;
    .locals 1

    .prologue
    .line 45
    const-string v0, "ch"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/params/sortedset/ZAddParams;->addParam(Ljava/lang/String;)V

    .line 46
    return-object p0
.end method

.method public varargs getByteParams([B[[B)[[B
    .locals 4
    .param p1, "key"    # [B
    .param p2, "args"    # [[B

    .prologue
    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, "byteParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v2, "nx"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/sortedset/ZAddParams;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const-string v2, "nx"

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    const-string v2, "xx"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/sortedset/ZAddParams;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    const-string v2, "xx"

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    const-string v2, "ch"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/sortedset/ZAddParams;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    const-string v2, "ch"

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_2
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_3

    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[B

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    return-object v2

    .line 63
    :cond_3
    aget-object v0, p2, v2

    .line 64
    .local v0, "arg":[B
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public nx()Lredis/clients/jedis/params/sortedset/ZAddParams;
    .locals 1

    .prologue
    .line 26
    const-string v0, "nx"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/params/sortedset/ZAddParams;->addParam(Ljava/lang/String;)V

    .line 27
    return-object p0
.end method

.method public xx()Lredis/clients/jedis/params/sortedset/ZAddParams;
    .locals 1

    .prologue
    .line 35
    const-string v0, "xx"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/params/sortedset/ZAddParams;->addParam(Ljava/lang/String;)V

    .line 36
    return-object p0
.end method

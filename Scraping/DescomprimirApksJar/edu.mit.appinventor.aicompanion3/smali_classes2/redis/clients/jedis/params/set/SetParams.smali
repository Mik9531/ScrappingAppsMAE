.class public Lredis/clients/jedis/params/set/SetParams;
.super Lredis/clients/jedis/params/Params;
.source "SetParams.java"


# static fields
.field private static final EX:Ljava/lang/String; = "ex"

.field private static final NX:Ljava/lang/String; = "nx"

.field private static final PX:Ljava/lang/String; = "px"

.field private static final XX:Ljava/lang/String; = "xx"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lredis/clients/jedis/params/Params;-><init>()V

    .line 16
    return-void
.end method

.method public static setParams()Lredis/clients/jedis/params/set/SetParams;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lredis/clients/jedis/params/set/SetParams;

    invoke-direct {v0}, Lredis/clients/jedis/params/set/SetParams;-><init>()V

    return-object v0
.end method


# virtual methods
.method public ex(I)Lredis/clients/jedis/params/set/SetParams;
    .locals 2
    .param p1, "secondsToExpire"    # I

    .prologue
    .line 28
    const-string v0, "ex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/params/set/SetParams;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    return-object p0
.end method

.method public varargs getByteParams([[B)[[B
    .locals 4
    .param p1, "args"    # [[B

    .prologue
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v1, "byteParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_4

    .line 66
    const-string v2, "nx"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/set/SetParams;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "nx"

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    const-string v2, "xx"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/set/SetParams;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    const-string v2, "xx"

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_1
    const-string v2, "ex"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/set/SetParams;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    const-string v2, "ex"

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v2, "ex"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/set/SetParams;->getParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    const-string v2, "px"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/set/SetParams;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    const-string v2, "px"

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v2, "px"

    invoke-virtual {p0, v2}, Lredis/clients/jedis/params/set/SetParams;->getParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[B

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    return-object v2

    .line 62
    :cond_4
    aget-object v0, p1, v2

    .line 63
    .local v0, "arg":[B
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public nx()Lredis/clients/jedis/params/set/SetParams;
    .locals 1

    .prologue
    .line 47
    const-string v0, "nx"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/params/set/SetParams;->addParam(Ljava/lang/String;)V

    .line 48
    return-object p0
.end method

.method public px(J)Lredis/clients/jedis/params/set/SetParams;
    .locals 3
    .param p1, "millisecondsToExpire"    # J

    .prologue
    .line 38
    const-string v0, "px"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/params/set/SetParams;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-object p0
.end method

.method public xx()Lredis/clients/jedis/params/set/SetParams;
    .locals 1

    .prologue
    .line 56
    const-string v0, "xx"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/params/set/SetParams;->addParam(Ljava/lang/String;)V

    .line 57
    return-object p0
.end method

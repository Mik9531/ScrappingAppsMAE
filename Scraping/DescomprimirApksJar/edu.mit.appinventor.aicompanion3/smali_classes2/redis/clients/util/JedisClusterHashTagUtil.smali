.class public final Lredis/clients/util/JedisClusterHashTagUtil;
.super Ljava/lang/Object;
.source "JedisClusterHashTagUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/InstantiationError;

    const-string v1, "Must not instantiate this class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extractHashTag(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "returnKeyOnAbsence"    # Z

    .prologue
    const/4 v4, -0x1

    .line 23
    const-string v2, "{"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 24
    .local v1, "s":I
    if-le v1, v4, :cond_1

    .line 25
    const-string v2, "}"

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 26
    .local v0, "e":I
    if-le v0, v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    if-eq v0, v2, :cond_1

    .line 27
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 30
    .end local v0    # "e":I
    .end local p0    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "key":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getHashTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lredis/clients/util/JedisClusterHashTagUtil;->extractHashTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isClusterCompliantMatchPattern(Ljava/lang/String;)Z
    .locals 3
    .param p0, "matchPattern"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v1}, Lredis/clients/util/JedisClusterHashTagUtil;->extractHashTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

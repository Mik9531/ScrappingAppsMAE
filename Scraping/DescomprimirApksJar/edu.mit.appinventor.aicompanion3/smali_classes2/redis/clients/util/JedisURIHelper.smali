.class public final Lredis/clients/util/JedisURIHelper;
.super Ljava/lang/Object;
.source "JedisURIHelper.java"


# static fields
.field private static final DEFAULT_DB:I


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

.method public static getDBIndex(Ljava/net/URI;)I
    .locals 7
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "pathSplit":[Ljava/lang/String;
    array-length v3, v1

    if-le v3, v6, :cond_0

    .line 24
    aget-object v0, v1, v6

    .line 25
    .local v0, "dbIndexStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    .end local v0    # "dbIndexStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 28
    .restart local v0    # "dbIndexStr":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static getPassword(Ljava/net/URI;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    .line 14
    invoke-virtual {p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "userInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 16
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 18
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValid(Ljava/net/URI;)Z
    .locals 2
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/util/JedisURIHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/util/JedisURIHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

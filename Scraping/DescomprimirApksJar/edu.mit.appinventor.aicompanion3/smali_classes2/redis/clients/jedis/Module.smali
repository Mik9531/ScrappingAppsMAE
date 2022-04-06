.class public Lredis/clients/jedis/Module;
.super Ljava/lang/Object;
.source "Module.java"


# instance fields
.field private name:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lredis/clients/jedis/Module;->name:Ljava/lang/String;

    .line 9
    iput p2, p0, Lredis/clients/jedis/Module;->version:I

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 29
    :cond_0
    :goto_0
    return v1

    .line 24
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 26
    check-cast v0, Lredis/clients/jedis/Module;

    .line 28
    .local v0, "module":Lredis/clients/jedis/Module;
    iget v3, p0, Lredis/clients/jedis/Module;->version:I

    iget v4, v0, Lredis/clients/jedis/Module;->version:I

    if-ne v3, v4, :cond_0

    .line 29
    iget-object v3, p0, Lredis/clients/jedis/Module;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lredis/clients/jedis/Module;->name:Ljava/lang/String;

    iget-object v4, v0, Lredis/clients/jedis/Module;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lredis/clients/jedis/Module;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lredis/clients/jedis/Module;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lredis/clients/jedis/Module;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 35
    iget-object v1, p0, Lredis/clients/jedis/Module;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lredis/clients/jedis/Module;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 36
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lredis/clients/jedis/Module;->version:I

    add-int v0, v1, v2

    .line 37
    return v0

    .line 35
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

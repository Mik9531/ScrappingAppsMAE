.class public Lredis/clients/jedis/Tuple;
.super Ljava/lang/Object;
.source "Tuple.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lredis/clients/jedis/Tuple;",
        ">;"
    }
.end annotation


# instance fields
.field private element:[B

.field private score:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "score"    # Ljava/lang/Double;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/Tuple;->element:[B

    .line 14
    iput-object p2, p0, Lredis/clients/jedis/Tuple;->score:Ljava/lang/Double;

    .line 15
    return-void
.end method

.method public constructor <init>([BLjava/lang/Double;)V
    .locals 0
    .param p1, "element"    # [B
    .param p2, "score"    # Ljava/lang/Double;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lredis/clients/jedis/Tuple;->element:[B

    .line 20
    iput-object p2, p0, Lredis/clients/jedis/Tuple;->score:Ljava/lang/Double;

    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lredis/clients/jedis/Tuple;

    invoke-virtual {p0, p1}, Lredis/clients/jedis/Tuple;->compareTo(Lredis/clients/jedis/Tuple;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lredis/clients/jedis/Tuple;)I
    .locals 4
    .param p1, "other"    # Lredis/clients/jedis/Tuple;

    .prologue
    .line 53
    iget-object v0, p0, Lredis/clients/jedis/Tuple;->score:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lredis/clients/jedis/Tuple;->getScore()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lredis/clients/jedis/Tuple;->element:[B

    iget-object v1, p1, Lredis/clients/jedis/Tuple;->element:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lredis/clients/jedis/Tuple;->score:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lredis/clients/jedis/Tuple;->getScore()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 44
    check-cast v0, Lredis/clients/jedis/Tuple;

    .line 45
    .local v0, "other":Lredis/clients/jedis/Tuple;
    iget-object v3, p0, Lredis/clients/jedis/Tuple;->element:[B

    if-nez v3, :cond_4

    .line 46
    iget-object v3, v0, Lredis/clients/jedis/Tuple;->element:[B

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 47
    :cond_4
    iget-object v3, p0, Lredis/clients/jedis/Tuple;->element:[B

    iget-object v4, v0, Lredis/clients/jedis/Tuple;->element:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getBinaryElement()[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lredis/clients/jedis/Tuple;->element:[B

    return-object v0
.end method

.method public getElement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lredis/clients/jedis/Tuple;->element:[B

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lredis/clients/jedis/Tuple;->element:[B

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScore()D
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lredis/clients/jedis/Tuple;->score:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 25
    const/16 v1, 0x1f

    .line 26
    .local v1, "prime":I
    const/4 v2, 0x1

    .line 27
    .local v2, "result":I
    mul-int/lit8 v2, v2, 0x1f

    .line 28
    iget-object v3, p0, Lredis/clients/jedis/Tuple;->element:[B

    if-eqz v3, :cond_0

    .line 29
    iget-object v6, p0, Lredis/clients/jedis/Tuple;->element:[B

    array-length v7, v6

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v7, :cond_1

    .line 34
    :cond_0
    iget-object v3, p0, Lredis/clients/jedis/Tuple;->score:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 35
    .local v4, "temp":J
    mul-int/lit8 v3, v2, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v4, v6

    xor-long/2addr v6, v4

    long-to-int v6, v6

    add-int v2, v3, v6

    .line 36
    return v2

    .line 29
    .end local v4    # "temp":J
    :cond_1
    aget-byte v0, v6, v3

    .line 30
    .local v0, "b":B
    mul-int/lit8 v8, v2, 0x1f

    add-int v2, v8, v0

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lredis/clients/jedis/Tuple;->element:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lredis/clients/jedis/Tuple;->score:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

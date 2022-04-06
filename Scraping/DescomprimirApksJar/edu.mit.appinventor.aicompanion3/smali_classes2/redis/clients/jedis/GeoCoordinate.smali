.class public Lredis/clients/jedis/GeoCoordinate;
.super Ljava/lang/Object;
.source "GeoCoordinate.java"


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lredis/clients/jedis/GeoCoordinate;->longitude:D

    .line 9
    iput-wide p3, p0, Lredis/clients/jedis/GeoCoordinate;->latitude:D

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    if-ne p0, p1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v1

    .line 23
    :cond_1
    instance-of v3, p1, Lredis/clients/jedis/GeoCoordinate;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 25
    check-cast v0, Lredis/clients/jedis/GeoCoordinate;

    .line 27
    .local v0, "that":Lredis/clients/jedis/GeoCoordinate;
    iget-wide v4, v0, Lredis/clients/jedis/GeoCoordinate;->longitude:D

    iget-wide v6, p0, Lredis/clients/jedis/GeoCoordinate;->longitude:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 28
    :cond_3
    iget-wide v4, v0, Lredis/clients/jedis/GeoCoordinate;->latitude:D

    iget-wide v6, p0, Lredis/clients/jedis/GeoCoordinate;->latitude:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lredis/clients/jedis/GeoCoordinate;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lredis/clients/jedis/GeoCoordinate;->longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 36
    iget-wide v4, p0, Lredis/clients/jedis/GeoCoordinate;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 37
    .local v2, "temp":J
    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v0, v4

    .line 38
    .local v0, "result":I
    iget-wide v4, p0, Lredis/clients/jedis/GeoCoordinate;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 39
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 40
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lredis/clients/jedis/GeoCoordinate;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lredis/clients/jedis/GeoCoordinate;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

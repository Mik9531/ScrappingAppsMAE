.class public Lredis/clients/jedis/GeoRadiusResponse;
.super Ljava/lang/Object;
.source "GeoRadiusResponse.java"


# instance fields
.field private coordinate:Lredis/clients/jedis/GeoCoordinate;

.field private distance:D

.field private member:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "member"    # [B

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lredis/clients/jedis/GeoRadiusResponse;->member:[B

    .line 12
    return-void
.end method


# virtual methods
.method public getCoordinate()Lredis/clients/jedis/GeoCoordinate;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lredis/clients/jedis/GeoRadiusResponse;->coordinate:Lredis/clients/jedis/GeoCoordinate;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lredis/clients/jedis/GeoRadiusResponse;->distance:D

    return-wide v0
.end method

.method public getMember()[B
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lredis/clients/jedis/GeoRadiusResponse;->member:[B

    return-object v0
.end method

.method public getMemberByString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lredis/clients/jedis/GeoRadiusResponse;->member:[B

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCoordinate(Lredis/clients/jedis/GeoCoordinate;)V
    .locals 0
    .param p1, "coordinate"    # Lredis/clients/jedis/GeoCoordinate;

    .prologue
    .line 19
    iput-object p1, p0, Lredis/clients/jedis/GeoRadiusResponse;->coordinate:Lredis/clients/jedis/GeoCoordinate;

    .line 20
    return-void
.end method

.method public setDistance(D)V
    .locals 1
    .param p1, "distance"    # D

    .prologue
    .line 15
    iput-wide p1, p0, Lredis/clients/jedis/GeoRadiusResponse;->distance:D

    .line 16
    return-void
.end method

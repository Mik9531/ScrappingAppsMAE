.class Lredis/clients/jedis/BinaryJedisCluster$160;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->georadius([BDDDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/JedisClusterCommand",
        "<",
        "Ljava/util/List",
        "<",
        "Lredis/clients/jedis/GeoRadiusResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/BinaryJedisCluster;

.field private final synthetic val$key:[B

.field private final synthetic val$latitude:D

.field private final synthetic val$longitude:D

.field private final synthetic val$radius:D

.field private final synthetic val$unit:Lredis/clients/jedis/GeoUnit;


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDDDLredis/clients/jedis/GeoUnit;)V
    .locals 1
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$160;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/BinaryJedisCluster$160;->val$key:[B

    iput-wide p5, p0, Lredis/clients/jedis/BinaryJedisCluster$160;->val$longitude:D

    iput-wide p7, p0, Lredis/clients/jedis/BinaryJedisCluster$160;->val$latitude:D

    iput-wide p9, p0, Lredis/clients/jedis/BinaryJedisCluster$160;->val$radius:D

    iput-object p11, p0, Lredis/clients/jedis/BinaryJedisCluster$160;->val$unit:Lredis/clients/jedis/GeoUnit;

    .line 1719
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedisCluster$160;->execute(Lredis/clients/jedis/Jedis;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)Ljava/util/List;
    .locals 9
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/Jedis;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1722
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster$160;->val$key:[B

    iget-wide v2, p0, Lredis/clients/jedis/BinaryJedisCluster$160;->val$longitude:D

    iget-wide v4, p0, Lredis/clients/jedis/BinaryJedisCluster$160;->val$latitude:D

    iget-wide v6, p0, Lredis/clients/jedis/BinaryJedisCluster$160;->val$radius:D

    iget-object v8, p0, Lredis/clients/jedis/BinaryJedisCluster$160;->val$unit:Lredis/clients/jedis/GeoUnit;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lredis/clients/jedis/Jedis;->georadius([BDDDLredis/clients/jedis/GeoUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

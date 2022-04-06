.class Lredis/clients/jedis/BinaryJedisCluster$162;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
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

.field private final synthetic val$member:[B

.field private final synthetic val$radius:D

.field private final synthetic val$unit:Lredis/clients/jedis/GeoUnit;


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[BDLredis/clients/jedis/GeoUnit;)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$162;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/BinaryJedisCluster$162;->val$key:[B

    iput-object p5, p0, Lredis/clients/jedis/BinaryJedisCluster$162;->val$member:[B

    iput-wide p6, p0, Lredis/clients/jedis/BinaryJedisCluster$162;->val$radius:D

    iput-object p8, p0, Lredis/clients/jedis/BinaryJedisCluster$162;->val$unit:Lredis/clients/jedis/GeoUnit;

    .line 1741
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedisCluster$162;->execute(Lredis/clients/jedis/Jedis;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)Ljava/util/List;
    .locals 7
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
    .line 1744
    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster$162;->val$key:[B

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster$162;->val$member:[B

    iget-wide v4, p0, Lredis/clients/jedis/BinaryJedisCluster$162;->val$radius:D

    iget-object v6, p0, Lredis/clients/jedis/BinaryJedisCluster$162;->val$unit:Lredis/clients/jedis/GeoUnit;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lredis/clients/jedis/Jedis;->georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.class Lredis/clients/jedis/JedisCluster$166;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "JedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/JedisCluster;->georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
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
.field final synthetic this$0:Lredis/clients/jedis/JedisCluster;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$member:Ljava/lang/String;

.field private final synthetic val$param:Lredis/clients/jedis/params/geo/GeoRadiusParam;

.field private final synthetic val$radius:D

.field private final synthetic val$unit:Lredis/clients/jedis/GeoUnit;


# direct methods
.method constructor <init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/JedisCluster$166;->this$0:Lredis/clients/jedis/JedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/JedisCluster$166;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lredis/clients/jedis/JedisCluster$166;->val$member:Ljava/lang/String;

    iput-wide p6, p0, Lredis/clients/jedis/JedisCluster$166;->val$radius:D

    iput-object p8, p0, Lredis/clients/jedis/JedisCluster$166;->val$unit:Lredis/clients/jedis/GeoUnit;

    iput-object p9, p0, Lredis/clients/jedis/JedisCluster$166;->val$param:Lredis/clients/jedis/params/geo/GeoRadiusParam;

    .line 1829
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisCluster$166;->execute(Lredis/clients/jedis/Jedis;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)Ljava/util/List;
    .locals 8
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
    .line 1832
    iget-object v2, p0, Lredis/clients/jedis/JedisCluster$166;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lredis/clients/jedis/JedisCluster$166;->val$member:Ljava/lang/String;

    iget-wide v4, p0, Lredis/clients/jedis/JedisCluster$166;->val$radius:D

    iget-object v6, p0, Lredis/clients/jedis/JedisCluster$166;->val$unit:Lredis/clients/jedis/GeoUnit;

    iget-object v7, p0, Lredis/clients/jedis/JedisCluster$166;->val$param:Lredis/clients/jedis/params/geo/GeoRadiusParam;

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lredis/clients/jedis/Jedis;->georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

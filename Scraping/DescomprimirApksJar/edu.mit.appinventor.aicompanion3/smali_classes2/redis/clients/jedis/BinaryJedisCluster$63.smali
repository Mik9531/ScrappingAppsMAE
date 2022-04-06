.class Lredis/clients/jedis/BinaryJedisCluster$63;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->zadd([BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/JedisClusterCommand",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/BinaryJedisCluster;

.field private final synthetic val$key:[B

.field private final synthetic val$params:Lredis/clients/jedis/params/sortedset/ZAddParams;

.field private final synthetic val$scoreMembers:Ljava/util/Map;


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$63;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/BinaryJedisCluster$63;->val$key:[B

    iput-object p5, p0, Lredis/clients/jedis/BinaryJedisCluster$63;->val$scoreMembers:Ljava/util/Map;

    iput-object p6, p0, Lredis/clients/jedis/BinaryJedisCluster$63;->val$params:Lredis/clients/jedis/params/sortedset/ZAddParams;

    .line 701
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Long;
    .locals 3
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 704
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster$63;->val$key:[B

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster$63;->val$scoreMembers:Ljava/util/Map;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster$63;->val$params:Lredis/clients/jedis/params/sortedset/ZAddParams;

    invoke-virtual {p1, v0, v1, v2}, Lredis/clients/jedis/Jedis;->zadd([BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedisCluster$63;->execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

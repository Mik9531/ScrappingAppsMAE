.class Lredis/clients/jedis/BinaryJedisCluster$116;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->eval([BLjava/util/List;Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/JedisClusterCommand",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/BinaryJedisCluster;

.field private final synthetic val$args:Ljava/util/List;

.field private final synthetic val$keys:Ljava/util/List;

.field private final synthetic val$script:[B


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BLjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$116;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/BinaryJedisCluster$116;->val$script:[B

    iput-object p5, p0, Lredis/clients/jedis/BinaryJedisCluster$116;->val$keys:Ljava/util/List;

    iput-object p6, p0, Lredis/clients/jedis/BinaryJedisCluster$116;->val$args:Ljava/util/List;

    .line 1244
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 3
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 1247
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster$116;->val$script:[B

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster$116;->val$keys:Ljava/util/List;

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster$116;->val$args:Ljava/util/List;

    invoke-virtual {p1, v0, v1, v2}, Lredis/clients/jedis/Jedis;->eval([BLjava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
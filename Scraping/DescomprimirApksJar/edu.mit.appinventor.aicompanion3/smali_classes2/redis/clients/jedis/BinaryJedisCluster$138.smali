.class Lredis/clients/jedis/BinaryJedisCluster$138;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->smove([B[B[B)Ljava/lang/Long;
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

.field private final synthetic val$dstkey:[B

.field private final synthetic val$member:[B

.field private final synthetic val$srckey:[B


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$138;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/BinaryJedisCluster$138;->val$srckey:[B

    iput-object p5, p0, Lredis/clients/jedis/BinaryJedisCluster$138;->val$dstkey:[B

    iput-object p6, p0, Lredis/clients/jedis/BinaryJedisCluster$138;->val$member:[B

    .line 1480
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Long;
    .locals 3
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 1483
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster$138;->val$srckey:[B

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster$138;->val$dstkey:[B

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster$138;->val$member:[B

    invoke-virtual {p1, v0, v1, v2}, Lredis/clients/jedis/Jedis;->smove([B[B[B)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedisCluster$138;->execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

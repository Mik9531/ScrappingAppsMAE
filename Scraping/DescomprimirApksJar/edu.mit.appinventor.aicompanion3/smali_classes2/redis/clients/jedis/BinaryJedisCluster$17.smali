.class Lredis/clients/jedis/BinaryJedisCluster$17;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->getrange([BJJ)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/JedisClusterCommand",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/BinaryJedisCluster;

.field private final synthetic val$endOffset:J

.field private final synthetic val$key:[B

.field private final synthetic val$startOffset:J


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BJJ)V
    .locals 1
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$17;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/BinaryJedisCluster$17;->val$key:[B

    iput-wide p5, p0, Lredis/clients/jedis/BinaryJedisCluster$17;->val$startOffset:J

    iput-wide p7, p0, Lredis/clients/jedis/BinaryJedisCluster$17;->val$endOffset:J

    .line 240
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedisCluster$17;->execute(Lredis/clients/jedis/Jedis;)[B

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)[B
    .locals 6
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 243
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster$17;->val$key:[B

    iget-wide v2, p0, Lredis/clients/jedis/BinaryJedisCluster$17;->val$startOffset:J

    iget-wide v4, p0, Lredis/clients/jedis/BinaryJedisCluster$17;->val$endOffset:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->getrange([BJJ)[B

    move-result-object v0

    return-object v0
.end method

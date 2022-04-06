.class Lredis/clients/jedis/BinaryJedisCluster$93;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->zrevrangeByScoreWithScores([BDDII)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/JedisClusterCommand",
        "<",
        "Ljava/util/Set",
        "<",
        "Lredis/clients/jedis/Tuple;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/BinaryJedisCluster;

.field private final synthetic val$count:I

.field private final synthetic val$key:[B

.field private final synthetic val$max:D

.field private final synthetic val$min:D

.field private final synthetic val$offset:I


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BDDII)V
    .locals 1
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$93;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/BinaryJedisCluster$93;->val$key:[B

    iput-wide p5, p0, Lredis/clients/jedis/BinaryJedisCluster$93;->val$max:D

    iput-wide p7, p0, Lredis/clients/jedis/BinaryJedisCluster$93;->val$min:D

    iput p9, p0, Lredis/clients/jedis/BinaryJedisCluster$93;->val$offset:I

    iput p10, p0, Lredis/clients/jedis/BinaryJedisCluster$93;->val$count:I

    .line 1009
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedisCluster$93;->execute(Lredis/clients/jedis/Jedis;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)Ljava/util/Set;
    .locals 8
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/Jedis;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster$93;->val$key:[B

    iget-wide v2, p0, Lredis/clients/jedis/BinaryJedisCluster$93;->val$max:D

    iget-wide v4, p0, Lredis/clients/jedis/BinaryJedisCluster$93;->val$min:D

    iget v6, p0, Lredis/clients/jedis/BinaryJedisCluster$93;->val$offset:I

    iget v7, p0, Lredis/clients/jedis/BinaryJedisCluster$93;->val$count:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Jedis;->zrevrangeByScoreWithScores([BDDII)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

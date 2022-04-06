.class Lredis/clients/jedis/BinaryJedisCluster$110;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->zrangeByLex([B[B[BII)Ljava/util/Set;
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
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/BinaryJedisCluster;

.field private final synthetic val$count:I

.field private final synthetic val$key:[B

.field private final synthetic val$max:[B

.field private final synthetic val$min:[B

.field private final synthetic val$offset:I


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[BII)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$110;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/BinaryJedisCluster$110;->val$key:[B

    iput-object p5, p0, Lredis/clients/jedis/BinaryJedisCluster$110;->val$min:[B

    iput-object p6, p0, Lredis/clients/jedis/BinaryJedisCluster$110;->val$max:[B

    iput p7, p0, Lredis/clients/jedis/BinaryJedisCluster$110;->val$offset:I

    iput p8, p0, Lredis/clients/jedis/BinaryJedisCluster$110;->val$count:I

    .line 1183
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedisCluster$110;->execute(Lredis/clients/jedis/Jedis;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)Ljava/util/Set;
    .locals 6
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/Jedis;",
            ")",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1186
    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster$110;->val$key:[B

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster$110;->val$min:[B

    iget-object v3, p0, Lredis/clients/jedis/BinaryJedisCluster$110;->val$max:[B

    iget v4, p0, Lredis/clients/jedis/BinaryJedisCluster$110;->val$offset:I

    iget v5, p0, Lredis/clients/jedis/BinaryJedisCluster$110;->val$count:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrangeByLex([B[B[BII)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

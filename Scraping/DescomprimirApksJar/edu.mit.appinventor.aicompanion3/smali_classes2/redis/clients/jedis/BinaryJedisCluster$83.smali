.class Lredis/clients/jedis/BinaryJedisCluster$83;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->zrevrangeByScore([B[B[B)Ljava/util/Set;
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

.field private final synthetic val$key:[B

.field private final synthetic val$max:[B

.field private final synthetic val$min:[B


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[B[B)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$83;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/BinaryJedisCluster$83;->val$key:[B

    iput-object p5, p0, Lredis/clients/jedis/BinaryJedisCluster$83;->val$max:[B

    iput-object p6, p0, Lredis/clients/jedis/BinaryJedisCluster$83;->val$min:[B

    .line 903
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedisCluster$83;->execute(Lredis/clients/jedis/Jedis;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)Ljava/util/Set;
    .locals 3
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
    .line 906
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster$83;->val$key:[B

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster$83;->val$max:[B

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster$83;->val$min:[B

    invoke-virtual {p1, v0, v1, v2}, Lredis/clients/jedis/Jedis;->zrevrangeByScore([B[B[B)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

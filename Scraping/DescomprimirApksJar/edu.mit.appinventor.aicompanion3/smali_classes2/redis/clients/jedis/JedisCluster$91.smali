.class Lredis/clients/jedis/JedisCluster$91;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "JedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/JedisCluster;->zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
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
.field final synthetic this$0:Lredis/clients/jedis/JedisCluster;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$max:Ljava/lang/String;

.field private final synthetic val$min:Ljava/lang/String;


# direct methods
.method constructor <init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/JedisCluster$91;->this$0:Lredis/clients/jedis/JedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/JedisCluster$91;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lredis/clients/jedis/JedisCluster$91;->val$max:Ljava/lang/String;

    iput-object p6, p0, Lredis/clients/jedis/JedisCluster$91;->val$min:Ljava/lang/String;

    .line 1019
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisCluster$91;->execute(Lredis/clients/jedis/Jedis;)Ljava/util/Set;

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
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1022
    iget-object v0, p0, Lredis/clients/jedis/JedisCluster$91;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster$91;->val$max:Ljava/lang/String;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster$91;->val$min:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lredis/clients/jedis/Jedis;->zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
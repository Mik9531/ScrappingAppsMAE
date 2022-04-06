.class Lredis/clients/jedis/BinaryJedisCluster$66;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->zincrby([BD[B)Ljava/lang/Double;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/JedisClusterCommand",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/BinaryJedisCluster;

.field private final synthetic val$key:[B

.field private final synthetic val$member:[B

.field private final synthetic val$score:D


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[BD[B)V
    .locals 1
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$66;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/BinaryJedisCluster$66;->val$key:[B

    iput-wide p5, p0, Lredis/clients/jedis/BinaryJedisCluster$66;->val$score:D

    iput-object p7, p0, Lredis/clients/jedis/BinaryJedisCluster$66;->val$member:[B

    .line 731
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Double;
    .locals 4
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 734
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster$66;->val$key:[B

    iget-wide v2, p0, Lredis/clients/jedis/BinaryJedisCluster$66;->val$score:D

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster$66;->val$member:[B

    invoke-virtual {p1, v0, v2, v3, v1}, Lredis/clients/jedis/Jedis;->zincrby([BD[B)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedisCluster$66;->execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

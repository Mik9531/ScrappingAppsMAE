.class Lredis/clients/jedis/JedisCluster$144;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "JedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/JedisCluster;->psubscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/JedisClusterCommand",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/JedisCluster;

.field private final synthetic val$jedisPubSub:Lredis/clients/jedis/JedisPubSub;

.field private final synthetic val$patterns:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/JedisCluster$144;->this$0:Lredis/clients/jedis/JedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/JedisCluster$144;->val$jedisPubSub:Lredis/clients/jedis/JedisPubSub;

    iput-object p5, p0, Lredis/clients/jedis/JedisCluster$144;->val$patterns:[Ljava/lang/String;

    .line 1598
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Integer;
    .locals 2
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 1601
    iget-object v0, p0, Lredis/clients/jedis/JedisCluster$144;->val$jedisPubSub:Lredis/clients/jedis/JedisPubSub;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster$144;->val$patterns:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lredis/clients/jedis/Jedis;->psubscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V

    .line 1602
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisCluster$144;->execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

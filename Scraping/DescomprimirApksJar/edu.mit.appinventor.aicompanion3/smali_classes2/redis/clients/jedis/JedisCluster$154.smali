.class Lredis/clients/jedis/JedisCluster$154;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "JedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/JedisCluster;->scriptExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/JedisClusterCommand",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/JedisCluster;

.field private final synthetic val$sha1:Ljava/lang/String;


# direct methods
.method constructor <init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/JedisCluster$154;->this$0:Lredis/clients/jedis/JedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/JedisCluster$154;->val$sha1:Ljava/lang/String;

    .line 1703
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 1706
    iget-object v0, p0, Lredis/clients/jedis/JedisCluster$154;->val$sha1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lredis/clients/jedis/Jedis;->scriptExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisCluster$154;->execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
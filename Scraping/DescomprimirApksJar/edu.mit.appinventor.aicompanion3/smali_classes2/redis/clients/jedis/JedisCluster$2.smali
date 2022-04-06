.class Lredis/clients/jedis/JedisCluster$2;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "JedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/JedisCluster;->set(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/JedisClusterCommand",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/JedisCluster;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$params:Lredis/clients/jedis/params/set/SetParams;

.field private final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/JedisCluster$2;->this$0:Lredis/clients/jedis/JedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/JedisCluster$2;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lredis/clients/jedis/JedisCluster$2;->val$value:Ljava/lang/String;

    iput-object p6, p0, Lredis/clients/jedis/JedisCluster$2;->val$params:Lredis/clients/jedis/params/set/SetParams;

    .line 122
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisCluster$2;->execute(Lredis/clients/jedis/Jedis;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)Ljava/lang/String;
    .locals 3
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 125
    iget-object v0, p0, Lredis/clients/jedis/JedisCluster$2;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster$2;->val$value:Ljava/lang/String;

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster$2;->val$params:Lredis/clients/jedis/params/set/SetParams;

    invoke-virtual {p1, v0, v1, v2}, Lredis/clients/jedis/Jedis;->set(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lredis/clients/jedis/JedisCluster$157;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "JedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/JedisCluster;->geoadd(Ljava/lang/String;DDLjava/lang/String;)Ljava/lang/Long;
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
.field final synthetic this$0:Lredis/clients/jedis/JedisCluster;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$latitude:D

.field private final synthetic val$longitude:D

.field private final synthetic val$member:Ljava/lang/String;


# direct methods
.method constructor <init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;DDLjava/lang/String;)V
    .locals 1
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/JedisCluster$157;->this$0:Lredis/clients/jedis/JedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/JedisCluster$157;->val$key:Ljava/lang/String;

    iput-wide p5, p0, Lredis/clients/jedis/JedisCluster$157;->val$longitude:D

    iput-wide p7, p0, Lredis/clients/jedis/JedisCluster$157;->val$latitude:D

    iput-object p9, p0, Lredis/clients/jedis/JedisCluster$157;->val$member:Ljava/lang/String;

    .line 1734
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Long;
    .locals 7
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 1737
    iget-object v1, p0, Lredis/clients/jedis/JedisCluster$157;->val$key:Ljava/lang/String;

    iget-wide v2, p0, Lredis/clients/jedis/JedisCluster$157;->val$longitude:D

    iget-wide v4, p0, Lredis/clients/jedis/JedisCluster$157;->val$latitude:D

    iget-object v6, p0, Lredis/clients/jedis/JedisCluster$157;->val$member:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lredis/clients/jedis/Jedis;->geoadd(Ljava/lang/String;DDLjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisCluster$157;->execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

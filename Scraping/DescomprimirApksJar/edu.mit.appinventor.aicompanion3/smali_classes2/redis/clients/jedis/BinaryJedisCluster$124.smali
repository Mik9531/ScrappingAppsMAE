.class Lredis/clients/jedis/BinaryJedisCluster$124;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->scriptKill([B)Ljava/lang/String;
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
.field final synthetic this$0:Lredis/clients/jedis/BinaryJedisCluster;


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$124;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    .line 1324
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedisCluster$124;->execute(Lredis/clients/jedis/Jedis;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)Ljava/lang/String;
    .locals 1
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 1327
    invoke-virtual {p1}, Lredis/clients/jedis/Jedis;->scriptKill()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

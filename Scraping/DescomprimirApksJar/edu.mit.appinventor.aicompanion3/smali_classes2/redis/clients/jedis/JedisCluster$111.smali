.class Lredis/clients/jedis/JedisCluster$111;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "JedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/JedisCluster;->scan(Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/JedisClusterCommand",
        "<",
        "Lredis/clients/jedis/ScanResult",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/JedisCluster;

.field private final synthetic val$cursor:Ljava/lang/String;

.field private final synthetic val$params:Lredis/clients/jedis/ScanParams;


# direct methods
.method constructor <init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;Lredis/clients/jedis/ScanParams;)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/JedisCluster$111;->this$0:Lredis/clients/jedis/JedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/JedisCluster$111;->val$cursor:Ljava/lang/String;

    iput-object p5, p0, Lredis/clients/jedis/JedisCluster$111;->val$params:Lredis/clients/jedis/ScanParams;

    .line 1235
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisCluster$111;->execute(Lredis/clients/jedis/Jedis;)Lredis/clients/jedis/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)Lredis/clients/jedis/ScanResult;
    .locals 2
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/Jedis;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1239
    iget-object v0, p0, Lredis/clients/jedis/JedisCluster$111;->val$cursor:Ljava/lang/String;

    iget-object v1, p0, Lredis/clients/jedis/JedisCluster$111;->val$params:Lredis/clients/jedis/ScanParams;

    invoke-virtual {p1, v0, v1}, Lredis/clients/jedis/Jedis;->scan(Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v0

    return-object v0
.end method
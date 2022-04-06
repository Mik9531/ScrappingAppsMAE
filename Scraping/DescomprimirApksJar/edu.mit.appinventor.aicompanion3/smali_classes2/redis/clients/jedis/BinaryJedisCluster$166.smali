.class Lredis/clients/jedis/BinaryJedisCluster$166;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->hscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
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
        "Ljava/util/Map$Entry",
        "<[B[B>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/BinaryJedisCluster;

.field private final synthetic val$cursor:[B

.field private final synthetic val$key:[B

.field private final synthetic val$params:Lredis/clients/jedis/ScanParams;


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[BLredis/clients/jedis/ScanParams;)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$166;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/BinaryJedisCluster$166;->val$key:[B

    iput-object p5, p0, Lredis/clients/jedis/BinaryJedisCluster$166;->val$cursor:[B

    iput-object p6, p0, Lredis/clients/jedis/BinaryJedisCluster$166;->val$params:Lredis/clients/jedis/ScanParams;

    .line 1797
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedisCluster$166;->execute(Lredis/clients/jedis/Jedis;)Lredis/clients/jedis/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)Lredis/clients/jedis/ScanResult;
    .locals 3
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/Jedis;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 1801
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster$166;->val$key:[B

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster$166;->val$cursor:[B

    iget-object v2, p0, Lredis/clients/jedis/BinaryJedisCluster$166;->val$params:Lredis/clients/jedis/ScanParams;

    invoke-virtual {p1, v0, v1, v2}, Lredis/clients/jedis/Jedis;->hscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v0

    return-object v0
.end method

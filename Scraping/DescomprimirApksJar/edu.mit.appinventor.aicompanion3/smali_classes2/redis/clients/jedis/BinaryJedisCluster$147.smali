.class Lredis/clients/jedis/BinaryJedisCluster$147;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->brpoplpush([B[BI)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/JedisClusterCommand",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/BinaryJedisCluster;

.field private final synthetic val$destination:[B

.field private final synthetic val$source:[B

.field private final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;I[B[BI)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$147;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/BinaryJedisCluster$147;->val$source:[B

    iput-object p5, p0, Lredis/clients/jedis/BinaryJedisCluster$147;->val$destination:[B

    iput p6, p0, Lredis/clients/jedis/BinaryJedisCluster$147;->val$timeout:I

    .line 1580
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedisCluster$147;->execute(Lredis/clients/jedis/Jedis;)[B

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)[B
    .locals 3
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 1583
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisCluster$147;->val$source:[B

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster$147;->val$destination:[B

    iget v2, p0, Lredis/clients/jedis/BinaryJedisCluster$147;->val$timeout:I

    invoke-virtual {p1, v0, v1, v2}, Lredis/clients/jedis/Jedis;->brpoplpush([B[BI)[B

    move-result-object v0

    return-object v0
.end method

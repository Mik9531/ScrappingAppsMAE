.class Lredis/clients/jedis/BinaryJedisCluster$127;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "BinaryJedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/BinaryJedisCluster;->brpop(I[[B)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/JedisClusterCommand",
        "<",
        "Ljava/util/List",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/BinaryJedisCluster;

.field private final synthetic val$keys:[[B

.field private final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lredis/clients/jedis/BinaryJedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;II[[B)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisCluster$127;->this$0:Lredis/clients/jedis/BinaryJedisCluster;

    iput p4, p0, Lredis/clients/jedis/BinaryJedisCluster$127;->val$timeout:I

    iput-object p5, p0, Lredis/clients/jedis/BinaryJedisCluster$127;->val$keys:[[B

    .line 1354
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedisCluster$127;->execute(Lredis/clients/jedis/Jedis;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)Ljava/util/List;
    .locals 2
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/Jedis;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1357
    iget v0, p0, Lredis/clients/jedis/BinaryJedisCluster$127;->val$timeout:I

    iget-object v1, p0, Lredis/clients/jedis/BinaryJedisCluster$127;->val$keys:[[B

    invoke-virtual {p1, v0, v1}, Lredis/clients/jedis/Jedis;->brpop(I[[B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

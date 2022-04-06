.class Lredis/clients/jedis/JedisCluster$27;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "JedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/JedisCluster;->substr(Ljava/lang/String;II)Ljava/lang/String;
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

.field private final synthetic val$end:I

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$start:I


# direct methods
.method constructor <init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;II)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/JedisCluster$27;->this$0:Lredis/clients/jedis/JedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/JedisCluster$27;->val$key:Ljava/lang/String;

    iput p5, p0, Lredis/clients/jedis/JedisCluster$27;->val$start:I

    iput p6, p0, Lredis/clients/jedis/JedisCluster$27;->val$end:I

    .line 372
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisCluster$27;->execute(Lredis/clients/jedis/Jedis;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lredis/clients/jedis/Jedis;)Ljava/lang/String;
    .locals 3
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 375
    iget-object v0, p0, Lredis/clients/jedis/JedisCluster$27;->val$key:Ljava/lang/String;

    iget v1, p0, Lredis/clients/jedis/JedisCluster$27;->val$start:I

    iget v2, p0, Lredis/clients/jedis/JedisCluster$27;->val$end:I

    invoke-virtual {p1, v0, v1, v2}, Lredis/clients/jedis/Jedis;->substr(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

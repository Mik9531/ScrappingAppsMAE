.class Lredis/clients/jedis/JedisCluster$148;
.super Lredis/clients/jedis/JedisClusterCommand;
.source "JedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/JedisCluster;->eval(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/JedisClusterCommand",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lredis/clients/jedis/JedisCluster;

.field private final synthetic val$keyCount:I

.field private final synthetic val$params:[Ljava/lang/String;

.field private final synthetic val$script:Ljava/lang/String;


# direct methods
.method constructor <init>(Lredis/clients/jedis/JedisCluster;Lredis/clients/jedis/JedisClusterConnectionHandler;ILjava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Lredis/clients/jedis/JedisClusterConnectionHandler;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/JedisCluster$148;->this$0:Lredis/clients/jedis/JedisCluster;

    iput-object p4, p0, Lredis/clients/jedis/JedisCluster$148;->val$script:Ljava/lang/String;

    iput p5, p0, Lredis/clients/jedis/JedisCluster$148;->val$keyCount:I

    iput-object p6, p0, Lredis/clients/jedis/JedisCluster$148;->val$params:[Ljava/lang/String;

    .line 1643
    invoke-direct {p0, p2, p3}, Lredis/clients/jedis/JedisClusterCommand;-><init>(Lredis/clients/jedis/JedisClusterConnectionHandler;I)V

    return-void
.end method


# virtual methods
.method public execute(Lredis/clients/jedis/Jedis;)Ljava/lang/Object;
    .locals 3
    .param p1, "connection"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 1646
    iget-object v0, p0, Lredis/clients/jedis/JedisCluster$148;->val$script:Ljava/lang/String;

    iget v1, p0, Lredis/clients/jedis/JedisCluster$148;->val$keyCount:I

    iget-object v2, p0, Lredis/clients/jedis/JedisCluster$148;->val$params:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lredis/clients/jedis/Jedis;->eval(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

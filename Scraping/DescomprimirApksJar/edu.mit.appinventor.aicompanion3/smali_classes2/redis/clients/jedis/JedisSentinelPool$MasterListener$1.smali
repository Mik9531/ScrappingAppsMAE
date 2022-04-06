.class Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;
.super Lredis/clients/jedis/JedisPubSub;
.source "JedisSentinelPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lredis/clients/jedis/JedisSentinelPool$MasterListener;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lredis/clients/jedis/JedisSentinelPool$MasterListener;


# direct methods
.method constructor <init>(Lredis/clients/jedis/JedisSentinelPool$MasterListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;->this$1:Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    .line 278
    invoke-direct {p0}, Lredis/clients/jedis/JedisPubSub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 281
    iget-object v1, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;->this$1:Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    invoke-static {v1}, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->access$0(Lredis/clients/jedis/JedisSentinelPool$MasterListener;)Lredis/clients/jedis/JedisSentinelPool;

    move-result-object v1

    iget-object v1, v1, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sentinel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;->this$1:Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    iget-object v3, v3, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;->this$1:Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    iget v3, v3, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " published: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 283
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "switchMasterMsg":[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v4, :cond_1

    .line 287
    iget-object v1, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;->this$1:Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    iget-object v1, v1, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->masterName:Ljava/lang/String;

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;->this$1:Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    invoke-static {v1}, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->access$0(Lredis/clients/jedis/JedisSentinelPool$MasterListener;)Lredis/clients/jedis/JedisSentinelPool;

    move-result-object v1

    iget-object v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;->this$1:Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    invoke-static {v2}, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->access$0(Lredis/clients/jedis/JedisSentinelPool$MasterListener;)Lredis/clients/jedis/JedisSentinelPool;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aget-object v4, v0, v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const/4 v5, 0x4

    aget-object v5, v0, v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lredis/clients/jedis/JedisSentinelPool;->access$1(Lredis/clients/jedis/JedisSentinelPool;Ljava/util/List;)Lredis/clients/jedis/HostAndPort;

    move-result-object v2

    invoke-static {v1, v2}, Lredis/clients/jedis/JedisSentinelPool;->access$2(Lredis/clients/jedis/JedisSentinelPool;Lredis/clients/jedis/HostAndPort;)V

    .line 298
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;->this$1:Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    invoke-static {v1}, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->access$0(Lredis/clients/jedis/JedisSentinelPool$MasterListener;)Lredis/clients/jedis/JedisSentinelPool;

    move-result-object v1

    iget-object v1, v1, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring message on +switch-master for master name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", our master name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;->this$1:Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    iget-object v3, v3, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->masterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_1
    iget-object v1, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;->this$1:Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    invoke-static {v1}, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->access$0(Lredis/clients/jedis/JedisSentinelPool$MasterListener;)Lredis/clients/jedis/JedisSentinelPool;

    move-result-object v1

    iget-object v1, v1, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid message received on Sentinel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;->this$1:Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    iget-object v3, v3, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;->this$1:Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    iget v3, v3, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 296
    const-string v3, " on channel +switch-master: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

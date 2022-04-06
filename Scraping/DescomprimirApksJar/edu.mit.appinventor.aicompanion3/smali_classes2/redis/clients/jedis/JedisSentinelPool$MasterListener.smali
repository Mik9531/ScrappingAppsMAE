.class public Lredis/clients/jedis/JedisSentinelPool$MasterListener;
.super Ljava/lang/Thread;
.source "JedisSentinelPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/jedis/JedisSentinelPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MasterListener"
.end annotation


# instance fields
.field protected host:Ljava/lang/String;

.field protected volatile j:Lredis/clients/jedis/Jedis;

.field protected masterName:Ljava/lang/String;

.field protected port:I

.field protected running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected subscribeRetryWaitTimeMillis:J

.field final synthetic this$0:Lredis/clients/jedis/JedisSentinelPool;


# direct methods
.method protected constructor <init>(Lredis/clients/jedis/JedisSentinelPool;)V
    .locals 2

    .prologue
    .line 247
    iput-object p1, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->this$0:Lredis/clients/jedis/JedisSentinelPool;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 243
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->subscribeRetryWaitTimeMillis:J

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 248
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/JedisSentinelPool;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p2, "masterName"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    const/4 v4, 0x0

    .line 250
    iput-object p1, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->this$0:Lredis/clients/jedis/JedisSentinelPool;

    .line 251
    const-string v0, "MasterListener-%s-[%s:%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 243
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->subscribeRetryWaitTimeMillis:J

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 252
    iput-object p2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->masterName:Ljava/lang/String;

    .line 253
    iput-object p3, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->host:Ljava/lang/String;

    .line 254
    iput p4, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->port:I

    .line 255
    return-void
.end method

.method public constructor <init>(Lredis/clients/jedis/JedisSentinelPool;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 1
    .param p2, "masterName"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "subscribeRetryWaitTimeMillis"    # J

    .prologue
    .line 259
    invoke-direct {p0, p1, p2, p3, p4}, Lredis/clients/jedis/JedisSentinelPool$MasterListener;-><init>(Lredis/clients/jedis/JedisSentinelPool;Ljava/lang/String;Ljava/lang/String;I)V

    .line 260
    iput-wide p5, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->subscribeRetryWaitTimeMillis:J

    .line 261
    return-void
.end method

.method static synthetic access$0(Lredis/clients/jedis/JedisSentinelPool$MasterListener;)Lredis/clients/jedis/JedisSentinelPool;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->this$0:Lredis/clients/jedis/JedisSentinelPool;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 266
    iget-object v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 268
    :goto_0
    iget-object v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    :goto_1
    return-void

    .line 270
    :cond_0
    new-instance v2, Lredis/clients/jedis/Jedis;

    iget-object v3, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->host:Ljava/lang/String;

    iget v4, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->port:I

    invoke-direct {v2, v3, v4}, Lredis/clients/jedis/Jedis;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->j:Lredis/clients/jedis/Jedis;

    .line 274
    :try_start_0
    iget-object v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 315
    iget-object v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->j:Lredis/clients/jedis/Jedis;

    invoke-virtual {v2}, Lredis/clients/jedis/Jedis;->close()V

    goto :goto_1

    .line 278
    :cond_1
    :try_start_1
    iget-object v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->j:Lredis/clients/jedis/Jedis;

    new-instance v3, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;

    invoke-direct {v3, p0}, Lredis/clients/jedis/JedisSentinelPool$MasterListener$1;-><init>(Lredis/clients/jedis/JedisSentinelPool$MasterListener;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 299
    const-string v6, "+switch-master"

    aput-object v6, v4, v5

    .line 278
    invoke-virtual {v2, v3, v4}, Lredis/clients/jedis/Jedis;->subscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
    :try_end_1
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    iget-object v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->j:Lredis/clients/jedis/Jedis;

    invoke-virtual {v2}, Lredis/clients/jedis/Jedis;->close()V

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Lredis/clients/jedis/exceptions/JedisConnectionException;
    :try_start_2
    iget-object v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    iget-object v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->this$0:Lredis/clients/jedis/JedisSentinelPool;

    iget-object v2, v2, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Lost connection to Sentinel at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 305
    const-string v5, ". Sleeping 5000ms and retrying."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :try_start_3
    iget-wide v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->subscribeRetryWaitTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    :goto_2
    iget-object v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->j:Lredis/clients/jedis/Jedis;

    invoke-virtual {v2}, Lredis/clients/jedis/Jedis;->close()V

    goto :goto_0

    .line 308
    :catch_1
    move-exception v1

    .line 309
    .local v1, "e1":Ljava/lang/InterruptedException;
    :try_start_4
    iget-object v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->this$0:Lredis/clients/jedis/JedisSentinelPool;

    iget-object v2, v2, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Sleep interrupted: "

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 314
    .end local v0    # "e":Lredis/clients/jedis/exceptions/JedisConnectionException;
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    .line 315
    iget-object v3, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->j:Lredis/clients/jedis/Jedis;

    invoke-virtual {v3}, Lredis/clients/jedis/Jedis;->close()V

    .line 316
    throw v2

    .line 312
    .restart local v0    # "e":Lredis/clients/jedis/exceptions/JedisConnectionException;
    :cond_2
    :try_start_5
    iget-object v2, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->this$0:Lredis/clients/jedis/JedisSentinelPool;

    iget-object v2, v2, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsubscribing from Sentinel at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->this$0:Lredis/clients/jedis/JedisSentinelPool;

    iget-object v1, v1, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Shutting down listener on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 325
    iget-object v1, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->j:Lredis/clients/jedis/Jedis;

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->j:Lredis/clients/jedis/Jedis;

    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->this$0:Lredis/clients/jedis/JedisSentinelPool;

    iget-object v1, v1, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Caught exception while shutting down: "

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

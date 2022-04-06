.class public interface abstract Lredis/clients/jedis/commands/BasicCommands;
.super Ljava/lang/Object;
.source "BasicCommands.java"


# virtual methods
.method public abstract auth(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract bgrewriteaof()Ljava/lang/String;
.end method

.method public abstract bgsave()Ljava/lang/String;
.end method

.method public abstract configResetStat()Ljava/lang/String;
.end method

.method public abstract dbSize()Ljava/lang/Long;
.end method

.method public abstract debug(Lredis/clients/jedis/DebugParams;)Ljava/lang/String;
.end method

.method public abstract flushAll()Ljava/lang/String;
.end method

.method public abstract flushDB()Ljava/lang/String;
.end method

.method public abstract getDB()I
.end method

.method public abstract info()Ljava/lang/String;
.end method

.method public abstract info(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract lastsave()Ljava/lang/Long;
.end method

.method public abstract ping()Ljava/lang/String;
.end method

.method public abstract quit()Ljava/lang/String;
.end method

.method public abstract save()Ljava/lang/String;
.end method

.method public abstract select(I)Ljava/lang/String;
.end method

.method public abstract shutdown()Ljava/lang/String;
.end method

.method public abstract slaveof(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract slaveofNoOne()Ljava/lang/String;
.end method

.method public abstract waitReplicas(IJ)Ljava/lang/Long;
.end method

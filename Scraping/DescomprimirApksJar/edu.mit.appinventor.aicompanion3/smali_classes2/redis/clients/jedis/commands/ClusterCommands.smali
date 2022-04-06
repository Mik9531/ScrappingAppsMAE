.class public interface abstract Lredis/clients/jedis/commands/ClusterCommands;
.super Ljava/lang/Object;
.source "ClusterCommands.java"


# virtual methods
.method public varargs abstract clusterAddSlots([I)Ljava/lang/String;
.end method

.method public abstract clusterCountKeysInSlot(I)Ljava/lang/Long;
.end method

.method public varargs abstract clusterDelSlots([I)Ljava/lang/String;
.end method

.method public abstract clusterFailover()Ljava/lang/String;
.end method

.method public abstract clusterFlushSlots()Ljava/lang/String;
.end method

.method public abstract clusterForget(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract clusterGetKeysInSlot(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract clusterInfo()Ljava/lang/String;
.end method

.method public abstract clusterKeySlot(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract clusterMeet(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract clusterNodes()Ljava/lang/String;
.end method

.method public abstract clusterReplicate(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract clusterReset(Lredis/clients/jedis/JedisCluster$Reset;)Ljava/lang/String;
.end method

.method public abstract clusterSaveConfig()Ljava/lang/String;
.end method

.method public abstract clusterSetSlotImporting(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract clusterSetSlotMigrating(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract clusterSetSlotNode(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract clusterSetSlotStable(I)Ljava/lang/String;
.end method

.method public abstract clusterSlaves(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract clusterSlots()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readonly()Ljava/lang/String;
.end method

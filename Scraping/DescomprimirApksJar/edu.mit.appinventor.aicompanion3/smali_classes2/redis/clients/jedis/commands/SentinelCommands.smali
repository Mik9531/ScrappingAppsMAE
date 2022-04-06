.class public interface abstract Lredis/clients/jedis/commands/SentinelCommands;
.super Ljava/lang/Object;
.source "SentinelCommands.java"


# virtual methods
.method public abstract sentinelFailover(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sentinelGetMasterAddrByName(Ljava/lang/String;)Ljava/util/List;
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

.method public abstract sentinelMasters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract sentinelMonitor(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public abstract sentinelRemove(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sentinelReset(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract sentinelSet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract sentinelSlaves(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.class public interface abstract Lredis/clients/jedis/commands/AdvancedJedisCommands;
.super Ljava/lang/Object;
.source "AdvancedJedisCommands.java"


# virtual methods
.method public abstract configGet(Ljava/lang/String;)Ljava/util/List;
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

.method public abstract configSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract objectEncoding(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract objectIdletime(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract objectRefcount(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract slowlogGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lredis/clients/util/Slowlog;",
            ">;"
        }
    .end annotation
.end method

.method public abstract slowlogGet(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lredis/clients/util/Slowlog;",
            ">;"
        }
    .end annotation
.end method

.method public abstract slowlogLen()Ljava/lang/Long;
.end method

.method public abstract slowlogReset()Ljava/lang/String;
.end method

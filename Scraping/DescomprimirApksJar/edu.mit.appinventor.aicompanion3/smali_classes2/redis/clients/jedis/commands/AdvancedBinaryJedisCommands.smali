.class public interface abstract Lredis/clients/jedis/commands/AdvancedBinaryJedisCommands;
.super Ljava/lang/Object;
.source "AdvancedBinaryJedisCommands.java"


# virtual methods
.method public abstract configGet([B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract configSet([B[B)[B
.end method

.method public abstract objectEncoding([B)[B
.end method

.method public abstract objectIdletime([B)Ljava/lang/Long;
.end method

.method public abstract objectRefcount([B)Ljava/lang/Long;
.end method

.method public abstract slowlogGetBinary()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract slowlogGetBinary(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract slowlogLen()Ljava/lang/Long;
.end method

.method public abstract slowlogReset()Ljava/lang/String;
.end method

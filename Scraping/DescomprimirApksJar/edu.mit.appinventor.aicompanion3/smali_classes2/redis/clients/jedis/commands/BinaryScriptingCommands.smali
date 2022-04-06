.class public interface abstract Lredis/clients/jedis/commands/BinaryScriptingCommands;
.super Ljava/lang/Object;
.source "BinaryScriptingCommands.java"


# virtual methods
.method public abstract eval([B)Ljava/lang/Object;
.end method

.method public varargs abstract eval([BI[[B)Ljava/lang/Object;
.end method

.method public abstract eval([BLjava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public varargs abstract eval([B[B[[B)Ljava/lang/Object;
.end method

.method public abstract evalsha([B)Ljava/lang/Object;
.end method

.method public varargs abstract evalsha([BI[[B)Ljava/lang/Object;
.end method

.method public abstract evalsha([BLjava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public varargs abstract scriptExists([[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract scriptFlush()Ljava/lang/String;
.end method

.method public abstract scriptKill()Ljava/lang/String;
.end method

.method public abstract scriptLoad([B)[B
.end method

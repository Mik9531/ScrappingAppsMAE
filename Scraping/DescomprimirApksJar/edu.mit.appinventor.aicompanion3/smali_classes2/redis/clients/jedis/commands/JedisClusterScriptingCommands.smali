.class public interface abstract Lredis/clients/jedis/commands/JedisClusterScriptingCommands;
.super Ljava/lang/Object;
.source "JedisClusterScriptingCommands.java"


# virtual methods
.method public varargs abstract eval(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract eval(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract eval(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public varargs abstract evalsha(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract evalsha(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract evalsha(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract scriptExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public varargs abstract scriptExists(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract scriptLoad(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.class public interface abstract Lredis/clients/jedis/commands/BinaryScriptingCommandsPipeline;
.super Ljava/lang/Object;
.source "BinaryScriptingCommandsPipeline.java"


# virtual methods
.method public abstract eval([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract eval([BI[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract eval([BLjava/util/List;Ljava/util/List;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract eval([B[B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract evalsha([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract evalsha([BI[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract evalsha([BLjava/util/List;Ljava/util/List;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

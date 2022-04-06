.class public interface abstract Lredis/clients/jedis/commands/ModuleCommands;
.super Ljava/lang/Object;
.source "ModuleCommands.java"


# virtual methods
.method public abstract moduleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/Module;",
            ">;"
        }
    .end annotation
.end method

.method public abstract moduleLoad(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract moduleUnload(Ljava/lang/String;)Ljava/lang/String;
.end method

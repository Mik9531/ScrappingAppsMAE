.class Lredis/clients/jedis/BuilderFactory$4;
.super Lredis/clients/jedis/Builder;
.source "BuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/jedis/BuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/jedis/Builder",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lredis/clients/jedis/Builder;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "data":Ljava/lang/Object;
    return-object p1
.end method

.method public bridge synthetic build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BuilderFactory$4;->build(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "long"

    return-object v0
.end method

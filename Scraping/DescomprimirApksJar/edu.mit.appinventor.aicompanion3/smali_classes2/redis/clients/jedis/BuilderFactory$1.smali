.class Lredis/clients/jedis/BuilderFactory$1;
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
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lredis/clients/jedis/Builder;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 20
    sget-object v1, Lredis/clients/jedis/BuilderFactory;->STRING:Lredis/clients/jedis/Builder;

    invoke-virtual {v1, p1}, Lredis/clients/jedis/Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    .local v0, "asString":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BuilderFactory$1;->build(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "double"

    return-object v0
.end method

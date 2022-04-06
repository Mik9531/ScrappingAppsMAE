.class Lredis/clients/jedis/BuilderFactory$10;
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
        "Ljava/util/List",
        "<[B>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lredis/clients/jedis/Builder;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BuilderFactory$10;->build(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    .line 168
    check-cast v0, Ljava/util/List;

    .line 170
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const-string v0, "List<byte[]>"

    return-object v0
.end method

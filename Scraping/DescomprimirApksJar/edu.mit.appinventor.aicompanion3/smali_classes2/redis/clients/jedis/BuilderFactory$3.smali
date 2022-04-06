.class Lredis/clients/jedis/BuilderFactory$3;
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
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lredis/clients/jedis/Builder;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BuilderFactory$3;->build(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/lang/Object;)[B
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, [B

    .end local p1    # "data":Ljava/lang/Object;
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "byte[]"

    return-object v0
.end method

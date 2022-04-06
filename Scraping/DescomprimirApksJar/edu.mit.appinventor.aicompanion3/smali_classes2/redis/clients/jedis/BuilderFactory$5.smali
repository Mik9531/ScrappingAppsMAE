.class Lredis/clients/jedis/BuilderFactory$5;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lredis/clients/jedis/Builder;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BuilderFactory$5;->build(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 63
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .end local p1    # "data":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local p1    # "data":Ljava/lang/Object;
    :cond_0
    check-cast p1, [B

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "string"

    return-object v0
.end method

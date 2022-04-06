.class final Lredis/clients/util/JedisByteHashMap$JedisByteEntry;
.super Ljava/lang/Object;
.source "JedisByteHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/util/JedisByteHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JedisByteEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<[B[B>;"
    }
.end annotation


# instance fields
.field private key:[B

.field private value:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lredis/clients/util/JedisByteHashMap$JedisByteEntry;->key:[B

    .line 127
    iput-object p2, p0, Lredis/clients/util/JedisByteHashMap$JedisByteEntry;->value:[B

    .line 128
    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lredis/clients/util/JedisByteHashMap$JedisByteEntry;->getKey()[B

    move-result-object v0

    return-object v0
.end method

.method public getKey()[B
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap$JedisByteEntry;->key:[B

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lredis/clients/util/JedisByteHashMap$JedisByteEntry;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap$JedisByteEntry;->value:[B

    return-object v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lredis/clients/util/JedisByteHashMap$JedisByteEntry;->setValue([B)[B

    move-result-object v0

    return-object v0
.end method

.method public setValue([B)[B
    .locals 0
    .param p1, "value"    # [B

    .prologue
    .line 142
    iput-object p1, p0, Lredis/clients/util/JedisByteHashMap$JedisByteEntry;->value:[B

    .line 143
    return-object p1
.end method

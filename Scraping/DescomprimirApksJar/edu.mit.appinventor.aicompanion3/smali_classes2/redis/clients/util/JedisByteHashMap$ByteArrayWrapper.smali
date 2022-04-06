.class final Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;
.super Ljava/lang/Object;
.source "JedisByteHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/util/JedisByteHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteArrayWrapper"
.end annotation


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 104
    :cond_0
    iput-object p1, p0, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;->data:[B

    .line 105
    return-void
.end method

.method static synthetic access$0(Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;)[B
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;->data:[B

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 109
    instance-of v0, p1, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 112
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;->data:[B

    check-cast p1, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;->data:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.class public Lredis/clients/jedis/ScanParams;
.super Ljava/lang/Object;
.source "ScanParams.java"


# static fields
.field public static final SCAN_POINTER_START:Ljava/lang/String;

.field public static final SCAN_POINTER_START_BINARY:[B


# instance fields
.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lredis/clients/jedis/Protocol$Keyword;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lredis/clients/jedis/ScanParams;->SCAN_POINTER_START:Ljava/lang/String;

    .line 22
    sget-object v0, Lredis/clients/jedis/ScanParams;->SCAN_POINTER_START:Ljava/lang/String;

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lredis/clients/jedis/ScanParams;->SCAN_POINTER_START_BINARY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lredis/clients/jedis/Protocol$Keyword;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lredis/clients/jedis/ScanParams;->params:Ljava/util/Map;

    .line 17
    return-void
.end method


# virtual methods
.method count()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lredis/clients/jedis/ScanParams;->params:Ljava/util/Map;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->COUNT:Lredis/clients/jedis/Protocol$Keyword;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lredis/clients/jedis/ScanParams;->params:Ljava/util/Map;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->COUNT:Lredis/clients/jedis/Protocol$Keyword;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public count(Ljava/lang/Integer;)Lredis/clients/jedis/ScanParams;
    .locals 3
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 35
    iget-object v0, p0, Lredis/clients/jedis/ScanParams;->params:Ljava/util/Map;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->COUNT:Lredis/clients/jedis/Protocol$Keyword;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-object p0
.end method

.method public getParams()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lredis/clients/jedis/ScanParams;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .local v1, "paramsList":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v2, p0, Lredis/clients/jedis/ScanParams;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2

    .line 41
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 42
    .local v0, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lredis/clients/jedis/Protocol$Keyword;Ljava/nio/ByteBuffer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lredis/clients/jedis/Protocol$Keyword;

    iget-object v2, v2, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method match()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lredis/clients/jedis/ScanParams;->params:Ljava/util/Map;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->MATCH:Lredis/clients/jedis/Protocol$Keyword;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lredis/clients/jedis/ScanParams;->params:Ljava/util/Map;

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->MATCH:Lredis/clients/jedis/Protocol$Keyword;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public match(Ljava/lang/String;)Lredis/clients/jedis/ScanParams;
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lredis/clients/jedis/ScanParams;->params:Ljava/util/Map;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->MATCH:Lredis/clients/jedis/Protocol$Keyword;

    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object p0
.end method

.method public match([B)Lredis/clients/jedis/ScanParams;
    .locals 3
    .param p1, "pattern"    # [B

    .prologue
    .line 25
    iget-object v0, p0, Lredis/clients/jedis/ScanParams;->params:Ljava/util/Map;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->MATCH:Lredis/clients/jedis/Protocol$Keyword;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-object p0
.end method

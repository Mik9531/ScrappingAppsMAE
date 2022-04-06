.class public Lredis/clients/util/JedisByteHashMap;
.super Ljava/lang/Object;
.source "JedisByteHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;,
        Lredis/clients/util/JedisByteHashMap$JedisByteEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<[B[B>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60bf7fe35969afd8L


# instance fields
.field private transient internalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    .line 12
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 19
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 23
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    new-instance v1, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;

    check-cast p1, [B

    .end local p1    # "key":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 24
    :goto_0
    return v0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 29
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v3, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 35
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 36
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;[B>;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 37
    .local v1, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Map$Entry<[B[B>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    return-object v1

    .line 38
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;[B>;"
    new-instance v4, Lredis/clients/util/JedisByteHashMap$JedisByteEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;

    invoke-static {v3}, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;->access$0(Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;)[B

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v4, v5, v3}, Lredis/clients/util/JedisByteHashMap$JedisByteEntry;-><init>([B[B)V

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/util/JedisByteHashMap;->get(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 46
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    new-instance v1, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;

    check-cast p1, [B

    .end local p1    # "key":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 47
    :goto_0
    return-object v0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 58
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<[B>;"
    iget-object v2, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 59
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    return-object v1

    .line 60
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;

    invoke-static {v2}, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;->access$0(Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lredis/clients/util/JedisByteHashMap;->put([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public put([B[B)[B
    .locals 2
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 67
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    new-instance v1, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;

    invoke-direct {v1, p1}, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;-><init>([B)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+[B+[B>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+[B+[B>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 74
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    return-void

    .line 76
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    .local v1, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+[B+[B>;"
    iget-object v3, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    new-instance v4, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v4, v2}, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;-><init>([B)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lredis/clients/util/JedisByteHashMap;->remove(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 83
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    new-instance v1, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;

    check-cast p1, [B

    .end local p1    # "key":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lredis/clients/util/JedisByteHashMap$ByteArrayWrapper;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 84
    :goto_0
    return-object v0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lredis/clients/util/JedisByteHashMap;->internalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

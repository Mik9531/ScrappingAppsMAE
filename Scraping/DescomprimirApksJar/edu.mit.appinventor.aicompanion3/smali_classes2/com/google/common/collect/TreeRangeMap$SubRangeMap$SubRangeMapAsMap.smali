.class Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;
.super Ljava/util/AbstractMap;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap$SubRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubRangeMapAsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Lcom/google/common/collect/Range",
        "<TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)V
    .locals 0

    .prologue
    .line 435
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Lcom/google/common/base/Predicate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;
    .param p1, "x1"    # Lcom/google/common/base/Predicate;

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->removeIf(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method private removeIf(Lcom/google/common/base/Predicate;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<Lcom/google/common/collect/Range<TK;>;TV;>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 493
    .local v3, "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/Range<TK;>;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 494
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Range<TK;>;TV;>;"
    invoke-interface {p1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 495
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Range<TK;>;TV;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 499
    .local v2, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    iget-object v4, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v4, v4, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v4, v2}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    goto :goto_1

    .line 501
    .end local v2    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 488
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->clear()V

    .line 489
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 439
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    const/4 v5, 0x0

    .line 445
    :try_start_0
    instance-of v6, p1, Lcom/google/common/collect/Range;

    if-eqz v6, :cond_0

    .line 447
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Range;

    move-object v4, v0

    .line 448
    .local v4, "r":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v6}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 471
    .end local v4    # "r":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    :cond_0
    :goto_0
    return-object v5

    .line 451
    .restart local v4    # "r":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    :cond_1
    const/4 v1, 0x0

    .line 452
    .local v1, "candidate":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    iget-object v6, v4, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v7, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v7}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v7

    iget-object v7, v7, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v6, v7}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v6

    if-nez v6, :cond_3

    .line 454
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v6, v6, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {v6}, Lcom/google/common/collect/TreeRangeMap;->access$100(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v6

    iget-object v7, v4, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v6, v7}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 456
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TK;>;Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    if-eqz v3, :cond_2

    .line 457
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "candidate":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    check-cast v1, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    .line 463
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TK;>;Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    .restart local v1    # "candidate":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object v6

    iget-object v7, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v7}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object v6

    iget-object v7, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v7}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 465
    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 460
    :cond_3
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v6, v6, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {v6}, Lcom/google/common/collect/TreeRangeMap;->access$100(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v6

    iget-object v7, v4, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v6, v7}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "candidate":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    check-cast v1, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "candidate":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    goto :goto_1

    .line 468
    .end local v1    # "candidate":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    .end local v4    # "r":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    :catch_0
    move-exception v2

    .line 469
    .local v2, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 477
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 479
    check-cast v0, Lcom/google/common/collect/Range;

    .line 480
    .local v0, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    .line 483
    .end local v0    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v1

    .restart local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 580
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;)V

    return-object v0
.end method

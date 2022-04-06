.class public Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;
.super Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;
.source "GenericKeyedObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool2/KeyedObjectPool;
.implements Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolMXBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool",
        "<TT;>;",
        "Lorg/apache/commons/pool2/KeyedObjectPool",
        "<TK;TT;>;",
        "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolMXBean",
        "<TK;>;"
    }
.end annotation


# static fields
.field private static final ONAME_BASE:Ljava/lang/String; = "org.apache.commons.pool2:type=GenericKeyedObjectPool,name="


# instance fields
.field private evictionKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private evictionKeyIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final factory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/KeyedPooledObjectFactory",
            "<TK;TT;>;"
        }
    .end annotation
.end field

.field private final fairness:Z

.field private final keyLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private volatile maxIdlePerKey:I

.field private volatile maxTotalPerKey:I

.field private volatile minIdlePerKey:I

.field private final numTotal:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final poolKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final poolMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool",
            "<TK;TT;>.ObjectDeque<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/KeyedPooledObjectFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/KeyedPooledObjectFactory",
            "<TK;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool2/KeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/KeyedPooledObjectFactory<TK;TT;>;"
    new-instance v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;

    invoke-direct {v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool2/KeyedPooledObjectFactory;Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/KeyedPooledObjectFactory;Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;)V
    .locals 5
    .param p2, "config"    # Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/KeyedPooledObjectFactory",
            "<TK;TT;>;",
            "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool2/KeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/KeyedPooledObjectFactory<TK;TT;>;"
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 103
    const-string v0, "org.apache.commons.pool2:type=GenericKeyedObjectPool,name="

    invoke-virtual {p2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getJmxNamePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;-><init>(Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    iput v3, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->maxIdlePerKey:I

    .line 1505
    iput v2, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->minIdlePerKey:I

    .line 1507
    iput v3, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->maxTotalPerKey:I

    .line 1520
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    .line 1528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolKeyList:Ljava/util/List;

    .line 1529
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->keyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 1536
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->numTotal:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1537
    iput-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKeyIterator:Ljava/util/Iterator;

    .line 1538
    iput-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKey:Ljava/lang/Object;

    .line 105
    if-nez p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->jmxUnregister()V

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->factory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    .line 110
    invoke-virtual {p2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getFairness()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->fairness:Z

    .line 112
    invoke-virtual {p0, p2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setConfig(Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;)V

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getTimeBetweenEvictionRunsMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->startEvictor(J)V

    .line 115
    return-void
.end method

.method private addIdleObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1238
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    if-eqz p2, :cond_0

    .line 1239
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->factory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->passivateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V

    .line 1240
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    .line 1241
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v0

    .line 1242
    .local v0, "idleObjects":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getLifo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1243
    invoke-virtual {v0, p2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 1248
    .end local v0    # "idleObjects":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 1245
    .restart local v0    # "idleObjects":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    :cond_1
    invoke-virtual {v0, p2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private calculateDeficit(Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool",
            "<TK;TT;>.ObjectDeque<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    const/4 v6, 0x0

    .line 1292
    if-nez p1, :cond_1

    .line 1293
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMinIdlePerKey()I

    move-result v3

    .line 1317
    :cond_0
    :goto_0
    return v3

    .line 1297
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMaxTotal()I

    move-result v1

    .line 1298
    .local v1, "maxTotal":I
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMaxTotalPerKey()I

    move-result v2

    .line 1300
    .local v2, "maxTotalPerKeySave":I
    const/4 v3, 0x0

    .line 1304
    .local v3, "objectDefecit":I
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMinIdlePerKey()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v5

    sub-int v3, v4, v5

    .line 1305
    if-lez v2, :cond_2

    .line 1307
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v4

    sub-int v4, v2, v4

    .line 1306
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1308
    .local v0, "growLimit":I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1312
    .end local v0    # "growLimit":I
    :cond_2
    if-lez v1, :cond_0

    .line 1313
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getNumActive()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getNumIdle()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1314
    .restart local v0    # "growLimit":I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0
.end method

.method private create(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v8, 0x0

    const/4 v10, -0x1

    .line 1007
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMaxTotalPerKey()I

    move-result v3

    .line 1008
    .local v3, "maxTotalPerKeySave":I
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMaxTotal()I

    move-result v2

    .line 1011
    .local v2, "maxTotal":I
    const/4 v1, 0x1

    .line 1013
    .local v1, "loop":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1014
    iget-object v9, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->numTotal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    .line 1015
    .local v6, "newNumTotal":I
    if-le v2, v10, :cond_1

    if-le v6, v2, :cond_1

    .line 1016
    iget-object v9, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->numTotal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1017
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getNumIdle()I

    move-result v9

    if-nez v9, :cond_0

    .line 1050
    .end local v6    # "newNumTotal":I
    :goto_1
    return-object v8

    .line 1020
    .restart local v6    # "newNumTotal":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->clearOldest()V

    goto :goto_0

    .line 1023
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1027
    .end local v6    # "newNumTotal":I
    :cond_2
    iget-object v9, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 1028
    .local v7, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    invoke-virtual {v7}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getCreateCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v9

    int-to-long v4, v9

    .line 1031
    .local v4, "newCreateCount":J
    if-le v3, v10, :cond_3

    int-to-long v10, v3

    cmp-long v9, v4, v10

    if-gtz v9, :cond_4

    :cond_3
    const-wide/32 v10, 0x7fffffff

    cmp-long v9, v4, v10

    if-lez v9, :cond_5

    .line 1033
    :cond_4
    iget-object v9, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->numTotal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1034
    invoke-virtual {v7}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getCreateCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1

    .line 1039
    :cond_5
    const/4 v8, 0x0

    .line 1041
    .local v8, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :try_start_0
    iget-object v9, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->factory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    invoke-interface {v9, p1}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->makeObject(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1048
    iget-object v9, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->createdCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1049
    invoke-virtual {v7}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getAllObjects()Ljava/util/Map;

    move-result-object v9

    new-instance v10, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;

    invoke-interface {v8}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->numTotal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1044
    invoke-virtual {v7}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getCreateCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1045
    throw v0
.end method

.method private deregister(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    const-wide/16 v6, 0x0

    .line 1145
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 1146
    .local v2, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getNumInterested()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    .line 1147
    .local v0, "numInterested":J
    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getCreateCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_1

    .line 1149
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->keyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    .line 1150
    .local v3, "writeLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1152
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getCreateCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_0

    .line 1153
    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getNumInterested()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1157
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolKeyList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    :cond_0
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1164
    .end local v3    # "writeLock":Ljava/util/concurrent/locks/Lock;
    :cond_1
    return-void

    .line 1161
    .restart local v3    # "writeLock":Ljava/util/concurrent/locks/Lock;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method private destroy(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;Z)Z
    .locals 5
    .param p3, "always"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1066
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "toDestroy":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->register(Ljava/lang/Object;)Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    move-result-object v1

    .line 1069
    .local v1, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1071
    .local v0, "isIdle":Z
    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    .line 1072
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getAllObjects()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;

    invoke-interface {p2}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    invoke-interface {p2}, Lorg/apache/commons/pool2/PooledObject;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1076
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->factory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->destroyObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getCreateCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1079
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroyedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1080
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->numTotal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1082
    const/4 v2, 0x1

    .line 1087
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->deregister(Ljava/lang/Object;)V

    :goto_0
    return v2

    .line 1078
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getCreateCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1079
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroyedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1080
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->numTotal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1087
    .end local v0    # "isIdle":Z
    :catchall_1
    move-exception v2

    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->deregister(Ljava/lang/Object;)V

    throw v2

    .line 1084
    .restart local v0    # "isIdle":Z
    :cond_1
    const/4 v2, 0x0

    .line 1087
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->deregister(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private ensureMinIdle(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1188
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 1198
    .local v2, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    invoke-direct {p0, v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->calculateDeficit(Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;)I

    move-result v0

    .line 1200
    .local v0, "deficit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0, v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->calculateDeficit(Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;)I

    move-result v3

    if-lez v3, :cond_0

    .line 1201
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->addObject(Ljava/lang/Object;)V

    .line 1200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1203
    :cond_0
    return-void
.end method

.method private getNumTests()I
    .locals 6

    .prologue
    .line 1273
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getNumIdle()I

    move-result v1

    .line 1274
    .local v1, "totalIdle":I
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getNumTestsPerEvictionRun()I

    move-result v0

    .line 1275
    .local v0, "numTests":I
    if-ltz v0, :cond_0

    .line 1276
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1278
    :goto_0
    return v2

    :cond_0
    int-to-double v2, v1

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_0
.end method

.method private hasBorrowWaiters()Z
    .locals 5

    .prologue
    .line 853
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 854
    .local v1, "k":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 855
    .local v0, "deque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v2

    .line 858
    .local v2, "pool":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->hasTakeWaiters()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 859
    const/4 v3, 0x1

    .line 863
    .end local v0    # "deque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v2    # "pool":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private register(Ljava/lang/Object;)Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool",
            "<TK;TT;>.ObjectDeque<TT;>;"
        }
    .end annotation

    .prologue
    .line 1104
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->keyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 1105
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    const/4 v2, 0x0

    .line 1107
    .local v2, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1108
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    move-object v2, v0

    .line 1109
    if-nez v2, :cond_1

    .line 1111
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1112
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->keyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 1113
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1114
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    move-object v2, v0

    .line 1115
    if-nez v2, :cond_0

    .line 1116
    new-instance v3, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    iget-boolean v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->fairness:Z

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;-><init>(Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    .end local v2    # "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    .local v3, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :try_start_1
    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getNumInterested()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1121
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolKeyList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 1130
    .end local v3    # "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    .restart local v2    # "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1132
    return-object v2

    .line 1124
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getNumInterested()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1130
    :catchall_0
    move-exception v4

    :goto_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 1127
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getNumInterested()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1130
    .end local v2    # "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    .restart local v3    # "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    .restart local v2    # "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    goto :goto_1
.end method

.method private reuseCapacity()V
    .locals 12

    .prologue
    .line 810
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMaxTotalPerKey()I

    move-result v5

    .line 813
    .local v5, "maxTotalPerKeySave":I
    const/4 v4, 0x0

    .line 814
    .local v4, "maxQueueLength":I
    const/4 v6, 0x0

    .line 815
    .local v6, "mostLoaded":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    const/4 v3, 0x0

    .line 816
    .local v3, "loadedKey":Ljava/lang/Object;, "TK;"
    iget-object v10, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v3    # "loadedKey":Ljava/lang/Object;, "TK;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 817
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget-object v11, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 818
    .local v0, "deque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v8

    .line 820
    .local v8, "pool":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    invoke-virtual {v8}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->getTakeQueueLength()I

    move-result v9

    .line 821
    .local v9, "queueLength":I
    invoke-virtual {p0, v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getNumActive(Ljava/lang/Object;)I

    move-result v11

    if-ge v11, v5, :cond_0

    if-le v9, v4, :cond_0

    .line 822
    move v4, v9

    .line 823
    move-object v6, v8

    .line 824
    move-object v3, v2

    .restart local v3    # "loadedKey":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 830
    .end local v0    # "deque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "loadedKey":Ljava/lang/Object;, "TK;"
    .end local v8    # "pool":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    .end local v9    # "queueLength":I
    :cond_1
    if-eqz v6, :cond_3

    .line 831
    invoke-direct {p0, v3}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->register(Ljava/lang/Object;)Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 833
    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->create(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;

    move-result-object v7

    .line 834
    .local v7, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    if-eqz v7, :cond_2

    .line 835
    invoke-direct {p0, v3, v7}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->addIdleObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :cond_2
    invoke-direct {p0, v3}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->deregister(Ljava/lang/Object;)V

    .line 843
    .end local v7    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_3
    :goto_1
    return-void

    .line 837
    :catch_0
    move-exception v1

    .line 838
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->swallowException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 840
    invoke-direct {p0, v3}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->deregister(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-direct {p0, v3}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->deregister(Ljava/lang/Object;)V

    throw v10
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1218
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->assertOpen()V

    .line 1219
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->register(Ljava/lang/Object;)Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 1221
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->create(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;

    move-result-object v0

    .line 1222
    .local v0, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->addIdleObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->deregister(Ljava/lang/Object;)V

    .line 1226
    return-void

    .line 1224
    .end local v0    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :catchall_0
    move-exception v1

    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->deregister(Ljava/lang/Object;)V

    throw v1
.end method

.method public borrowObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMaxWaitMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->borrowObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public borrowObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 16
    .param p2, "borrowMaxWaitMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->assertOpen()V

    .line 341
    const/4 v7, 0x0

    .line 345
    .local v7, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getBlockWhenExhausted()Z

    move-result v2

    .line 348
    .local v2, "blockWhenExhausted":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 349
    .local v12, "waitTime":J
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->register(Ljava/lang/Object;)Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    move-result-object v6

    .line 352
    .local v6, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :cond_0
    if-nez v7, :cond_b

    .line 353
    const/4 v3, 0x0

    .line 354
    .local v3, "create":Z
    if-eqz v2, :cond_8

    .line 355
    :try_start_0
    invoke-virtual {v6}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lorg/apache/commons/pool2/PooledObject;

    move-object v7, v0

    .line 356
    if-nez v7, :cond_1

    .line 357
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->create(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;

    move-result-object v7

    .line 358
    if-eqz v7, :cond_1

    .line 359
    const/4 v3, 0x1

    .line 362
    :cond_1
    if-nez v7, :cond_2

    .line 363
    const-wide/16 v14, 0x0

    cmp-long v11, p2, v14

    if-gez v11, :cond_3

    .line 364
    invoke-virtual {v6}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lorg/apache/commons/pool2/PooledObject;

    move-object v7, v0

    .line 370
    :cond_2
    :goto_0
    if-nez v7, :cond_4

    .line 371
    new-instance v11, Ljava/util/NoSuchElementException;

    const-string v14, "Timeout waiting for idle object"

    invoke-direct {v11, v14}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :catchall_0
    move-exception v11

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->deregister(Ljava/lang/Object;)V

    throw v11

    .line 366
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v11

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1, v14}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lorg/apache/commons/pool2/PooledObject;

    move-object v7, v0

    goto :goto_0

    .line 374
    :cond_4
    invoke-interface {v7}, Lorg/apache/commons/pool2/PooledObject;->allocate()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-nez v11, :cond_5

    .line 375
    const/4 v7, 0x0

    .line 393
    :cond_5
    :goto_1
    if-eqz v7, :cond_0

    .line 395
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->factory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v7}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->activateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    :cond_6
    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getTestOnBorrow()Z

    move-result v11

    if-nez v11, :cond_7

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getTestOnCreate()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    if-eqz v11, :cond_0

    .line 411
    :cond_7
    const/4 v9, 0x0

    .line 412
    .local v9, "validate":Z
    const/4 v10, 0x0

    .line 414
    .local v10, "validationThrowable":Ljava/lang/Throwable;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->factory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v7}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->validateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    .line 419
    :goto_2
    if-nez v9, :cond_0

    .line 421
    const/4 v11, 0x1

    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v11}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroy(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;Z)Z

    .line 422
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroyedByBorrowValidationCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 426
    :goto_3
    const/4 v7, 0x0

    .line 427
    if-eqz v3, :cond_0

    .line 428
    :try_start_6
    new-instance v5, Ljava/util/NoSuchElementException;

    const-string v11, "Unable to validate object"

    invoke-direct {v5, v11}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 430
    .local v5, "nsee":Ljava/util/NoSuchElementException;
    invoke-virtual {v5, v10}, Ljava/util/NoSuchElementException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 431
    throw v5

    .line 378
    .end local v5    # "nsee":Ljava/util/NoSuchElementException;
    .end local v9    # "validate":Z
    .end local v10    # "validationThrowable":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v6}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lorg/apache/commons/pool2/PooledObject;

    move-object v7, v0

    .line 379
    if-nez v7, :cond_9

    .line 380
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->create(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;

    move-result-object v7

    .line 381
    if-eqz v7, :cond_9

    .line 382
    const/4 v3, 0x1

    .line 385
    :cond_9
    if-nez v7, :cond_a

    .line 386
    new-instance v11, Ljava/util/NoSuchElementException;

    const-string v14, "Pool exhausted"

    invoke-direct {v11, v14}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 388
    :cond_a
    invoke-interface {v7}, Lorg/apache/commons/pool2/PooledObject;->allocate()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v11

    if-nez v11, :cond_5

    .line 389
    const/4 v7, 0x0

    goto :goto_1

    .line 396
    :catch_0
    move-exception v4

    .line 398
    .local v4, "e":Ljava/lang/Exception;
    const/4 v11, 0x1

    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v11}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroy(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;Z)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 402
    :goto_4
    const/4 v7, 0x0

    .line 403
    if-eqz v3, :cond_6

    .line 404
    :try_start_8
    new-instance v5, Ljava/util/NoSuchElementException;

    const-string v11, "Unable to activate object"

    invoke-direct {v5, v11}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 406
    .restart local v5    # "nsee":Ljava/util/NoSuchElementException;
    invoke-virtual {v5, v4}, Ljava/util/NoSuchElementException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 407
    throw v5

    .line 415
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "nsee":Ljava/util/NoSuchElementException;
    .restart local v9    # "validate":Z
    .restart local v10    # "validationThrowable":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    .line 416
    .local v8, "t":Ljava/lang/Throwable;
    invoke-static {v8}, Lorg/apache/commons/pool2/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 417
    move-object v10, v8

    goto :goto_2

    .line 438
    .end local v3    # "create":Z
    .end local v8    # "t":Ljava/lang/Throwable;
    .end local v9    # "validate":Z
    .end local v10    # "validationThrowable":Ljava/lang/Throwable;
    :cond_b
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->deregister(Ljava/lang/Object;)V

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14, v15}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->updateStatsBorrow(Lorg/apache/commons/pool2/PooledObject;J)V

    .line 443
    invoke-interface {v7}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v11

    return-object v11

    .line 399
    .restart local v3    # "create":Z
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    goto :goto_4

    .line 423
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v9    # "validate":Z
    .restart local v10    # "validationThrowable":Ljava/lang/Throwable;
    :catch_3
    move-exception v11

    goto :goto_3
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 624
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 626
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->clear(Ljava/lang/Object;)V

    goto :goto_0

    .line 629
    :cond_0
    return-void
.end method

.method public clear(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->register(Ljava/lang/Object;)Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    move-result-object v2

    .line 647
    .local v2, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v1

    .line 649
    .local v1, "idleObjects":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/pool2/PooledObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    .local v3, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :goto_0
    if-eqz v3, :cond_0

    .line 653
    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroy(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    check-cast v3, Lorg/apache/commons/pool2/PooledObject;

    .restart local v3    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    goto :goto_0

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->swallowException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 660
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "idleObjects":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    .end local v3    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :catchall_0
    move-exception v4

    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->deregister(Ljava/lang/Object;)V

    throw v4

    .restart local v1    # "idleObjects":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    .restart local v3    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->deregister(Ljava/lang/Object;)V

    .line 662
    return-void
.end method

.method public clearOldest()V
    .locals 18

    .prologue
    .line 752
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 754
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/pool2/PooledObject<TT;>;TK;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 755
    .local v8, "k":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 758
    .local v12, "queue":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    if-eqz v12, :cond_0

    .line 760
    invoke-virtual {v12}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v5

    .line 761
    .local v5, "idleObjects":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    invoke-virtual {v5}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/pool2/PooledObject;

    .line 764
    .local v11, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 771
    .end local v5    # "idleObjects":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    .end local v8    # "k":Ljava/lang/Object;, "TK;"
    .end local v11    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    .end local v12    # "queue":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :cond_1
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v13

    int-to-double v14, v13

    const-wide v16, 0x3fc3333333333333L    # 0.15

    mul-double v14, v14, v16

    double-to-int v13, v14

    add-int/lit8 v6, v13, 0x1

    .line 773
    .local v6, "itemsToRemove":I
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 775
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/commons/pool2/PooledObject<TT;>;TK;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    if-lez v6, :cond_3

    .line 776
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 781
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/pool2/PooledObject<TT;>;TK;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 782
    .local v9, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/pool2/PooledObject;

    .line 784
    .restart local v11    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    const/4 v2, 0x1

    .line 786
    .local v2, "destroyed":Z
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v13}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroy(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 790
    :goto_2
    if-eqz v2, :cond_2

    .line 791
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 787
    :catch_0
    move-exception v3

    .line 788
    .local v3, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 794
    .end local v2    # "destroyed":Z
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/pool2/PooledObject<TT;>;TK;>;"
    .end local v9    # "key":Ljava/lang/Object;, "TK;"
    .end local v11    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_3
    return-void
.end method

.method public close()V
    .locals 6

    .prologue
    .line 714
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->closeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 719
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 720
    monitor-exit v2

    goto :goto_0

    .line 741
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 725
    :cond_1
    const-wide/16 v4, -0x1

    :try_start_1
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->startEvictor(J)V

    .line 727
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->closed:Z

    .line 729
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->clear()V

    .line 731
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->jmxUnregister()V

    .line 734
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 735
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->interuptTakeWaiters()V

    goto :goto_1

    .line 740
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->clear()V

    .line 741
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method ensureMinIdle()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1168
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMinIdlePerKey()I

    move-result v1

    .line 1169
    .local v1, "minIdlePerKeySave":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 1176
    :cond_0
    return-void

    .line 1173
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1174
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->ensureMinIdle(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public evict()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 876
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->assertOpen()V

    .line 878
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getNumIdle()I

    move-result v4

    if-nez v4, :cond_0

    .line 995
    :goto_0
    return-void

    .line 882
    :cond_0
    const/16 v21, 0x0

    .line 883
    .local v21, "underTest":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getEvictionPolicy()Lorg/apache/commons/pool2/impl/EvictionPolicy;

    move-result-object v11

    .line 885
    .local v11, "evictionPolicy":Lorg/apache/commons/pool2/impl/EvictionPolicy;, "Lorg/apache/commons/pool2/impl/EvictionPolicy<TT;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 886
    :try_start_0
    new-instance v3, Lorg/apache/commons/pool2/impl/EvictionConfig;

    .line 887
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMinEvictableIdleTimeMillis()J

    move-result-wide v4

    .line 888
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getSoftMinEvictableIdleTimeMillis()J

    move-result-wide v6

    .line 889
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMinIdlePerKey()I

    move-result v8

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/pool2/impl/EvictionConfig;-><init>(JJI)V

    .line 891
    .local v3, "evictionConfig":Lorg/apache/commons/pool2/impl/EvictionConfig;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getTestWhileIdle()Z

    move-result v20

    .line 893
    .local v20, "testWhileIdle":Z
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getNumTests()I

    move-result v15

    .local v15, "m":I
    :goto_1
    if-ge v12, v15, :cond_c

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 895
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKeyIterator:Ljava/util/Iterator;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKeyIterator:Ljava/util/Iterator;

    .line 896
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 897
    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 898
    .local v14, "keyCopy":Ljava/util/List;, "Ljava/util/List<TK;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->keyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    .line 899
    .local v18, "readLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolKeyList:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 903
    :try_start_2
    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 905
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKeyIterator:Ljava/util/Iterator;

    .line 907
    .end local v14    # "keyCopy":Ljava/util/List;, "Ljava/util/List<TK;>;"
    .end local v18    # "readLock":Ljava/util/concurrent/locks/Lock;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKeyIterator:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 908
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKeyIterator:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKey:Ljava/lang/Object;

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKey:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 910
    .local v17, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    if-eqz v17, :cond_3

    .line 914
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v13

    .line 915
    .local v13, "idleObjects":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    new-instance v4, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;-><init>(Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;Ljava/util/Deque;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    .line 916
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 922
    .end local v13    # "idleObjects":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    .end local v17    # "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    if-nez v4, :cond_6

    .line 924
    monitor-exit v22

    goto/16 :goto_0

    .line 994
    .end local v3    # "evictionConfig":Lorg/apache/commons/pool2/impl/EvictionConfig;
    .end local v12    # "i":I
    .end local v15    # "m":I
    .end local v20    # "testWhileIdle":Z
    :catchall_0
    move-exception v4

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 903
    .restart local v3    # "evictionConfig":Lorg/apache/commons/pool2/impl/EvictionConfig;
    .restart local v12    # "i":I
    .restart local v14    # "keyCopy":Ljava/util/List;, "Ljava/util/List<TK;>;"
    .restart local v15    # "m":I
    .restart local v18    # "readLock":Ljava/util/concurrent/locks/Lock;
    .restart local v20    # "testWhileIdle":Z
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 919
    .end local v14    # "keyCopy":Ljava/util/List;, "Ljava/util/List<TK;>;"
    .end local v18    # "readLock":Ljava/util/concurrent/locks/Lock;
    .restart local v13    # "idleObjects":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    .restart local v17    # "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 928
    .end local v13    # "idleObjects":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    .end local v17    # "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->next()Lorg/apache/commons/pool2/PooledObject;

    move-result-object v21

    .line 929
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->getIdleObjects()Ljava/util/Deque;
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v13

    .line 938
    .restart local v13    # "idleObjects":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    :try_start_5
    invoke-interface/range {v21 .. v21}, Lorg/apache/commons/pool2/PooledObject;->startEvictionTest()Z

    move-result v4

    if-nez v4, :cond_8

    .line 941
    add-int/lit8 v12, v12, -0x1

    .line 893
    .end local v13    # "idleObjects":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    :cond_7
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 930
    :catch_0
    move-exception v16

    .line 933
    .local v16, "nsee":Ljava/util/NoSuchElementException;
    add-int/lit8 v12, v12, -0x1

    .line 934
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 950
    .end local v16    # "nsee":Ljava/util/NoSuchElementException;
    .restart local v13    # "idleObjects":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKey:Ljava/lang/Object;

    .line 951
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v4

    .line 950
    move-object/from16 v0, v21

    invoke-interface {v11, v3, v0, v4}, Lorg/apache/commons/pool2/impl/EvictionPolicy;->evict(Lorg/apache/commons/pool2/impl/EvictionConfig;Lorg/apache/commons/pool2/PooledObject;I)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v10

    .line 961
    .local v10, "evict":Z
    :goto_4
    if-eqz v10, :cond_9

    .line 962
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKey:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1, v5}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroy(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;Z)Z

    .line 963
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroyedByEvictorCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_3

    .line 952
    .end local v10    # "evict":Z
    :catch_1
    move-exception v19

    .line 955
    .local v19, "t":Ljava/lang/Throwable;
    invoke-static/range {v19 .. v19}, Lorg/apache/commons/pool2/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V

    .line 956
    new-instance v4, Ljava/lang/Exception;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->swallowException(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 958
    const/4 v10, 0x0

    .restart local v10    # "evict":Z
    goto :goto_4

    .line 965
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_9
    if-eqz v20, :cond_a

    .line 966
    const/4 v2, 0x0

    .line 968
    .local v2, "active":Z
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->factory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKey:Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-interface {v4, v5, v0}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->activateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 969
    const/4 v2, 0x1

    .line 974
    :goto_5
    if-eqz v2, :cond_a

    .line 975
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->factory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKey:Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-interface {v4, v5, v0}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->validateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 976
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKey:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1, v5}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroy(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;Z)Z

    .line 977
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroyedByEvictorCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 988
    .end local v2    # "active":Z
    :cond_a
    :goto_6
    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Lorg/apache/commons/pool2/PooledObject;->endEvictionTest(Ljava/util/Deque;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_3

    .line 970
    .restart local v2    # "active":Z
    :catch_2
    move-exception v9

    .line 971
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKey:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1, v5}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroy(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;Z)Z

    .line 972
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroyedByEvictorCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 980
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->factory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKey:Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-interface {v4, v5, v0}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->passivateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    .line 981
    :catch_3
    move-exception v9

    .line 982
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->evictionKey:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1, v5}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroy(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;Z)Z

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroyedByEvictorCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_6

    .line 994
    .end local v2    # "active":Z
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "evict":Z
    .end local v13    # "idleObjects":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    :cond_c
    monitor-exit v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0
.end method

.method public getFactory()Lorg/apache/commons/pool2/KeyedPooledObjectFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool2/KeyedPooledObjectFactory",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->factory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    return-object v0
.end method

.method public getMaxIdlePerKey()I
    .locals 1

    .prologue
    .line 162
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    iget v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->maxIdlePerKey:I

    return v0
.end method

.method public getMaxTotalPerKey()I
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    iget v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->maxTotalPerKey:I

    return v0
.end method

.method public getMinIdlePerKey()I
    .locals 2

    .prologue
    .line 225
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMaxIdlePerKey()I

    move-result v0

    .line 226
    .local v0, "maxIdlePerKeySave":I
    iget v1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->minIdlePerKey:I

    if-le v1, v0, :cond_0

    .line 229
    .end local v0    # "maxIdlePerKeySave":I
    :goto_0
    return v0

    .restart local v0    # "maxIdlePerKeySave":I
    :cond_0
    iget v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->minIdlePerKey:I

    goto :goto_0
.end method

.method public getNumActive()I
    .locals 2

    .prologue
    .line 667
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->numTotal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getNumIdle()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNumActive(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 687
    .local v0, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getAllObjects()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 689
    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 691
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNumActivePerKey()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1325
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1327
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1328
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1329
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1330
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;>;"
    if-eqz v0, :cond_0

    .line 1331
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1332
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 1333
    .local v3, "objectDequeue":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1334
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1335
    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getAllObjects()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    .line 1336
    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1334
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1340
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "objectDequeue":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :cond_1
    return-object v4
.end method

.method public getNumIdle()I
    .locals 3

    .prologue
    .line 673
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 674
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;>;"
    const/4 v1, 0x0

    .line 676
    .local v1, "result":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 680
    :cond_0
    return v1
.end method

.method public getNumIdle(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 698
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 699
    .local v0, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNumWaiters()I
    .locals 3

    .prologue
    .line 1353
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    const/4 v1, 0x0

    .line 1355
    .local v1, "result":I
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getBlockWhenExhausted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1356
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1358
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1360
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->getTakeQueueLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 1364
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;>;"
    :cond_0
    return v1
.end method

.method public getNumWaitersByKey()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1377
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1379
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1380
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 1381
    .local v1, "queue":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    if-eqz v1, :cond_0

    .line 1382
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getBlockWhenExhausted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1383
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1384
    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->getTakeQueueLength()I

    move-result v5

    .line 1383
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1386
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1390
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v1    # "queue":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :cond_2
    return-object v2
.end method

.method public invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 588
    .local v0, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getAllObjects()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;

    invoke-direct {v3, p2}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool2/PooledObject;

    .line 589
    .local v1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    if-nez v1, :cond_0

    .line 590
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Object not currently part of this pool"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 593
    :cond_0
    monitor-enter v1

    .line 594
    :try_start_0
    invoke-interface {v1}, Lorg/apache/commons/pool2/PooledObject;->getState()Lorg/apache/commons/pool2/PooledObjectState;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/pool2/PooledObjectState;->INVALID:Lorg/apache/commons/pool2/PooledObjectState;

    if-eq v2, v3, :cond_1

    .line 595
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroy(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;Z)Z

    .line 597
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-static {v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->access$000(Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;)Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->hasTakeWaiters()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 599
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->addObject(Ljava/lang/Object;)V

    .line 601
    :cond_2
    return-void

    .line 597
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public listAllObjects()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1406
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1409
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;>;>;"
    iget-object v5, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1410
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v6, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 1411
    .local v3, "queue":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    if-eqz v3, :cond_0

    .line 1412
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getAllObjects()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool2/PooledObject;

    .line 1416
    .local v2, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    new-instance v7, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;

    invoke-direct {v7, v2}, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;-><init>(Lorg/apache/commons/pool2/PooledObject;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1420
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;>;"
    .end local v2    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    .end local v3    # "queue":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    :cond_1
    return-object v4
.end method

.method public preparePool(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1259
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMinIdlePerKey()I

    move-result v0

    .line 1260
    .local v0, "minIdlePerKeySave":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1264
    :goto_0
    return-void

    .line 1263
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->ensureMinIdle(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    iget-object v9, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->poolMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .line 474
    .local v6, "objectDeque":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TT;>;"
    invoke-virtual {v6}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getAllObjects()Ljava/util/Map;

    move-result-object v9

    new-instance v10, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;

    invoke-direct {v10, p2}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/pool2/PooledObject;

    .line 476
    .local v7, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    if-nez v7, :cond_0

    .line 477
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Returned object not currently part of this pool"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 481
    :cond_0
    monitor-enter v7

    .line 482
    :try_start_0
    invoke-interface {v7}, Lorg/apache/commons/pool2/PooledObject;->getState()Lorg/apache/commons/pool2/PooledObjectState;

    move-result-object v8

    .line 483
    .local v8, "state":Lorg/apache/commons/pool2/PooledObjectState;
    sget-object v9, Lorg/apache/commons/pool2/PooledObjectState;->ALLOCATED:Lorg/apache/commons/pool2/PooledObjectState;

    if-eq v8, v9, :cond_1

    .line 484
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Object has already been returned to this pool or is invalid"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 489
    .end local v8    # "state":Lorg/apache/commons/pool2/PooledObjectState;
    :catchall_0
    move-exception v9

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 487
    .restart local v8    # "state":Lorg/apache/commons/pool2/PooledObjectState;
    :cond_1
    :try_start_1
    invoke-interface {v7}, Lorg/apache/commons/pool2/PooledObject;->markReturning()V

    .line 489
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    invoke-interface {v7}, Lorg/apache/commons/pool2/PooledObject;->getActiveTimeMillis()J

    move-result-wide v0

    .line 493
    .local v0, "activeTime":J
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getTestOnReturn()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 494
    iget-object v9, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->factory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    invoke-interface {v9, p1, v7}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->validateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 496
    const/4 v9, 0x1

    :try_start_2
    invoke-direct {p0, p1, v7, v9}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroy(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 500
    :goto_0
    invoke-static {v6}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->access$000(Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;)Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->hasTakeWaiters()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 502
    :try_start_3
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->addObject(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 507
    :cond_2
    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->updateStatsReturn(J)V

    .line 566
    :goto_2
    return-void

    .line 497
    :catch_0
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 503
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 504
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 513
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_4
    iget-object v9, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->factory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    invoke-interface {v9, p1, v7}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->passivateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 532
    invoke-interface {v7}, Lorg/apache/commons/pool2/PooledObject;->deallocate()Z

    move-result v9

    if-nez v9, :cond_5

    .line 533
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Object has already been returned to this pool"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 514
    :catch_2
    move-exception v3

    .line 515
    .local v3, "e1":Ljava/lang/Exception;
    invoke-virtual {p0, v3}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->swallowException(Ljava/lang/Exception;)V

    .line 517
    const/4 v9, 0x1

    :try_start_5
    invoke-direct {p0, p1, v7, v9}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroy(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 521
    :goto_3
    invoke-static {v6}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->access$000(Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;)Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->hasTakeWaiters()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 523
    :try_start_6
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->addObject(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 528
    :cond_4
    :goto_4
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->updateStatsReturn(J)V

    goto :goto_2

    .line 518
    :catch_3
    move-exception v2

    .line 519
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_3

    .line 524
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 525
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_4

    .line 537
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e1":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getMaxIdlePerKey()I

    move-result v5

    .line 539
    .local v5, "maxIdle":I
    invoke-virtual {v6}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-result-object v4

    .line 541
    .local v4, "idleObjects":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->isClosed()Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, -0x1

    if-le v5, v9, :cond_9

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v9

    if-gt v5, v9, :cond_9

    .line 543
    :cond_6
    const/4 v9, 0x1

    :try_start_7
    invoke-direct {p0, p1, v7, v9}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->destroy(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;Z)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 561
    :cond_7
    :goto_5
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->hasBorrowWaiters()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 562
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->reuseCapacity()V

    .line 565
    :cond_8
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->updateStatsReturn(J)V

    goto :goto_2

    .line 544
    :catch_5
    move-exception v2

    .line 545
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_5

    .line 548
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->getLifo()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 549
    invoke-virtual {v4, v7}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 553
    :goto_6
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->isClosed()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 557
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->clear(Ljava/lang/Object;)V

    goto :goto_5

    .line 551
    :cond_a
    invoke-virtual {v4, v7}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public setConfig(Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;)V
    .locals 2
    .param p1, "conf"    # Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;

    .prologue
    .line 241
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getLifo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setLifo(Z)V

    .line 242
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getMaxIdlePerKey()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setMaxIdlePerKey(I)V

    .line 243
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getMaxTotalPerKey()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setMaxTotalPerKey(I)V

    .line 244
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getMaxTotal()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setMaxTotal(I)V

    .line 245
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getMinIdlePerKey()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setMinIdlePerKey(I)V

    .line 246
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getMaxWaitMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setMaxWaitMillis(J)V

    .line 247
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getBlockWhenExhausted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setBlockWhenExhausted(Z)V

    .line 248
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getTestOnCreate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setTestOnCreate(Z)V

    .line 249
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getTestOnBorrow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setTestOnBorrow(Z)V

    .line 250
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getTestOnReturn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setTestOnReturn(Z)V

    .line 251
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getTestWhileIdle()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setTestWhileIdle(Z)V

    .line 252
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getNumTestsPerEvictionRun()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setNumTestsPerEvictionRun(I)V

    .line 253
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getMinEvictableIdleTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setMinEvictableIdleTimeMillis(J)V

    .line 255
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getSoftMinEvictableIdleTimeMillis()J

    move-result-wide v0

    .line 254
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setSoftMinEvictableIdleTimeMillis(J)V

    .line 257
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getTimeBetweenEvictionRunsMillis()J

    move-result-wide v0

    .line 256
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setTimeBetweenEvictionRunsMillis(J)V

    .line 258
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->getEvictionPolicyClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->setEvictionPolicyClassName(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public setMaxIdlePerKey(I)V
    .locals 0
    .param p1, "maxIdlePerKey"    # I

    .prologue
    .line 182
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    iput p1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->maxIdlePerKey:I

    .line 183
    return-void
.end method

.method public setMaxTotalPerKey(I)V
    .locals 0
    .param p1, "maxTotalPerKey"    # I

    .prologue
    .line 141
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    iput p1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->maxTotalPerKey:I

    .line 142
    return-void
.end method

.method public setMinIdlePerKey(I)V
    .locals 0
    .param p1, "minIdlePerKey"    # I

    .prologue
    .line 204
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>;"
    iput p1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;->minIdlePerKey:I

    .line 205
    return-void
.end method

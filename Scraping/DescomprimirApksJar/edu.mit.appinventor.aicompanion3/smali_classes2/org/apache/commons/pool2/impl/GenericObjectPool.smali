.class public Lorg/apache/commons/pool2/impl/GenericObjectPool;
.super Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;
.source "GenericObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool2/ObjectPool;
.implements Lorg/apache/commons/pool2/impl/GenericObjectPoolMXBean;
.implements Lorg/apache/commons/pool2/UsageTracking;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool",
        "<TT;>;",
        "Lorg/apache/commons/pool2/ObjectPool",
        "<TT;>;",
        "Lorg/apache/commons/pool2/impl/GenericObjectPoolMXBean;",
        "Lorg/apache/commons/pool2/UsageTracking",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final ONAME_BASE:Ljava/lang/String; = "org.apache.commons.pool2:type=GenericObjectPool,name="


# instance fields
.field private volatile abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

.field private final allObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper",
            "<TT;>;",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final createCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final factory:Lorg/apache/commons/pool2/PooledObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile factoryType:Ljava/lang/String;

.field private final idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque",
            "<",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private volatile maxIdle:I

.field private volatile minIdle:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/PooledObjectFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool2/PooledObjectFactory;, "Lorg/apache/commons/pool2/PooledObjectFactory<TT;>;"
    new-instance v0, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v0}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool2/PooledObjectFactory;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/PooledObjectFactory;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 5
    .param p2, "config"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool2/PooledObjectFactory;, "Lorg/apache/commons/pool2/PooledObjectFactory<TT;>;"
    const/4 v4, 0x0

    .line 107
    const-string v0, "org.apache.commons.pool2:type=GenericObjectPool,name="

    invoke-virtual {p2}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getJmxNamePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;-><init>(Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    iput-object v4, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factoryType:Ljava/lang/String;

    .line 1119
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->maxIdle:I

    .line 1120
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->minIdle:I

    .line 1133
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->allObjects:Ljava/util/Map;

    .line 1142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->createCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1150
    iput-object v4, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    .line 109
    if-nez p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->jmxUnregister()V

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    .line 115
    new-instance v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {p2}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getFairness()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    .line 117
    invoke-virtual {p0, p2}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setConfig(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getTimeBetweenEvictionRunsMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->startEvictor(J)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/PooledObjectFactory;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Lorg/apache/commons/pool2/impl/AbandonedConfig;)V
    .locals 0
    .param p2, "config"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p3, "abandonedConfig"    # Lorg/apache/commons/pool2/impl/AbandonedConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "Lorg/apache/commons/pool2/impl/AbandonedConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool2/PooledObjectFactory;, "Lorg/apache/commons/pool2/PooledObjectFactory<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/pool2/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool2/PooledObjectFactory;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    .line 138
    invoke-virtual {p0, p3}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setAbandonedConfig(Lorg/apache/commons/pool2/impl/AbandonedConfig;)V

    .line 139
    return-void
.end method

.method private addIdleObject(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 975
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    .local p1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    if-eqz p1, :cond_0

    .line 976
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/PooledObjectFactory;->passivateObject(Lorg/apache/commons/pool2/PooledObject;)V

    .line 977
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getLifo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private create()Lorg/apache/commons/pool2/PooledObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 858
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getMaxTotal()I

    move-result v2

    .line 859
    .local v2, "localMaxTotal":I
    iget-object v6, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->createCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 860
    .local v4, "newCreateCount":J
    const/4 v6, -0x1

    if-le v2, v6, :cond_0

    int-to-long v6, v2

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    :cond_0
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 862
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->createCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 863
    const/4 v3, 0x0

    .line 881
    :goto_0
    return-object v3

    .line 868
    :cond_2
    :try_start_0
    iget-object v6, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v6}, Lorg/apache/commons/pool2/PooledObjectFactory;->makeObject()Lorg/apache/commons/pool2/PooledObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 874
    .local v3, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    .line 875
    .local v0, "ac":Lorg/apache/commons/pool2/impl/AbandonedConfig;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getLogAbandoned()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 876
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Lorg/apache/commons/pool2/PooledObject;->setLogAbandoned(Z)V

    .line 879
    :cond_3
    iget-object v6, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->createdCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 880
    iget-object v6, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->allObjects:Ljava/util/Map;

    new-instance v7, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;

    invoke-interface {v3}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 869
    .end local v0    # "ac":Lorg/apache/commons/pool2/impl/AbandonedConfig;
    .end local v3    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :catch_0
    move-exception v1

    .line 870
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->createCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 871
    throw v1
.end method

.method private destroy(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 893
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    .local p1, "toDestory":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    invoke-interface {p1}, Lorg/apache/commons/pool2/PooledObject;->invalidate()V

    .line 894
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 895
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->allObjects:Ljava/util/Map;

    new-instance v1, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;

    invoke-interface {p1}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/PooledObjectFactory;->destroyObject(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroyedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 900
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->createCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 902
    return-void

    .line 899
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroyedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 900
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->createCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    throw v0
.end method

.method private ensureIdle(IZ)V
    .locals 2
    .param p1, "idleCount"    # I
    .param p2, "always"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 922
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_2

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->hasTakeWaiters()Z

    move-result v1

    if-nez v1, :cond_2

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 933
    .local v0, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getLifo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 934
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v1, v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 926
    .end local v0    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v1

    if-ge v1, p1, :cond_3

    .line 927
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->create()Lorg/apache/commons/pool2/PooledObject;

    move-result-object v0

    .line 928
    .restart local v0    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    if-nez v0, :cond_1

    .line 939
    .end local v0    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->clear()V

    goto :goto_0

    .line 936
    .restart local v0    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v1, v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getNumTests()I
    .locals 6

    .prologue
    .line 992
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getNumTestsPerEvictionRun()I

    move-result v0

    .line 993
    .local v0, "numTestsPerEvictionRun":I
    if-ltz v0, :cond_0

    .line 994
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 996
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v1

    int-to-double v2, v1

    int-to-double v4, v0

    .line 997
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 996
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    goto :goto_0
.end method

.method private removeAbandoned(Lorg/apache/commons/pool2/impl/AbandonedConfig;)V
    .locals 14
    .param p1, "ac"    # Lorg/apache/commons/pool2/impl/AbandonedConfig;

    .prologue
    .line 1009
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1011
    .local v4, "now":J
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getRemoveAbandonedTimeout()I

    move-result v7

    int-to-long v10, v7

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    sub-long v8, v4, v10

    .line 1012
    .local v8, "timeout":J
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    .local v6, "remove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    iget-object v7, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->allObjects:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1014
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1015
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/pool2/PooledObject;

    .line 1016
    .local v3, "pooledObject":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    monitor-enter v3

    .line 1017
    :try_start_0
    invoke-interface {v3}, Lorg/apache/commons/pool2/PooledObject;->getState()Lorg/apache/commons/pool2/PooledObjectState;

    move-result-object v7

    sget-object v10, Lorg/apache/commons/pool2/PooledObjectState;->ALLOCATED:Lorg/apache/commons/pool2/PooledObjectState;

    if-ne v7, v10, :cond_0

    .line 1018
    invoke-interface {v3}, Lorg/apache/commons/pool2/PooledObject;->getLastUsedTime()J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-gtz v7, :cond_0

    .line 1019
    invoke-interface {v3}, Lorg/apache/commons/pool2/PooledObject;->markAbandoned()V

    .line 1020
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1026
    .end local v3    # "pooledObject":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1027
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1028
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/pool2/PooledObject;

    .line 1029
    .restart local v3    # "pooledObject":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getLogAbandoned()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1030
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/apache/commons/pool2/PooledObject;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1033
    :cond_2
    :try_start_1
    invoke-interface {v3}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->invalidateObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1038
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "pooledObject":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public addObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 956
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->assertOpen()V

    .line 957
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    if-nez v1, :cond_0

    .line 958
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add objects without a factory."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 961
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->create()Lorg/apache/commons/pool2/PooledObject;

    move-result-object v0

    .line 962
    .local v0, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    invoke-direct {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->addIdleObject(Lorg/apache/commons/pool2/PooledObject;)V

    .line 963
    return-void
.end method

.method public borrowObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getMaxWaitMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->borrowObject(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public borrowObject(J)Ljava/lang/Object;
    .locals 17
    .param p1, "borrowMaxWaitMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->assertOpen()V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    .line 415
    .local v2, "ac":Lorg/apache/commons/pool2/impl/AbandonedConfig;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getRemoveAbandonedOnBorrow()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 416
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getNumIdle()I

    move-result v11

    const/4 v14, 0x2

    if-ge v11, v14, :cond_0

    .line 417
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getNumActive()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getMaxTotal()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    if-le v11, v14, :cond_0

    .line 418
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->removeAbandoned(Lorg/apache/commons/pool2/impl/AbandonedConfig;)V

    .line 421
    :cond_0
    const/4 v7, 0x0

    .line 425
    .local v7, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getBlockWhenExhausted()Z

    move-result v3

    .line 428
    .local v3, "blockWhenExhausted":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 430
    .local v12, "waitTime":J
    :cond_1
    if-nez v7, :cond_c

    .line 431
    const/4 v4, 0x0

    .line 432
    .local v4, "create":Z
    if-eqz v3, :cond_9

    .line 433
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v11}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    check-cast v7, Lorg/apache/commons/pool2/PooledObject;

    .line 434
    .restart local v7    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    if-nez v7, :cond_2

    .line 435
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->create()Lorg/apache/commons/pool2/PooledObject;

    move-result-object v7

    .line 436
    if-eqz v7, :cond_2

    .line 437
    const/4 v4, 0x1

    .line 440
    :cond_2
    if-nez v7, :cond_3

    .line 441
    const-wide/16 v14, 0x0

    cmp-long v11, p1, v14

    if-gez v11, :cond_4

    .line 442
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v11}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    check-cast v7, Lorg/apache/commons/pool2/PooledObject;

    .line 448
    .restart local v7    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_3
    :goto_0
    if-nez v7, :cond_5

    .line 449
    new-instance v11, Ljava/util/NoSuchElementException;

    const-string v14, "Timeout waiting for idle object"

    invoke-direct {v11, v14}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 444
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p1

    invoke-virtual {v11, v0, v1, v14}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    check-cast v7, Lorg/apache/commons/pool2/PooledObject;

    .restart local v7    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    goto :goto_0

    .line 452
    :cond_5
    invoke-interface {v7}, Lorg/apache/commons/pool2/PooledObject;->allocate()Z

    move-result v11

    if-nez v11, :cond_6

    .line 453
    const/4 v7, 0x0

    .line 471
    :cond_6
    :goto_1
    if-eqz v7, :cond_1

    .line 473
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v11, v7}, Lorg/apache/commons/pool2/PooledObjectFactory;->activateObject(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :cond_7
    if-eqz v7, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getTestOnBorrow()Z

    move-result v11

    if-nez v11, :cond_8

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getTestOnCreate()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 489
    :cond_8
    const/4 v9, 0x0

    .line 490
    .local v9, "validate":Z
    const/4 v10, 0x0

    .line 492
    .local v10, "validationThrowable":Ljava/lang/Throwable;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v11, v7}, Lorg/apache/commons/pool2/PooledObjectFactory;->validateObject(Lorg/apache/commons/pool2/PooledObject;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 497
    :goto_2
    if-nez v9, :cond_1

    .line 499
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroy(Lorg/apache/commons/pool2/PooledObject;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroyedByBorrowValidationCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 504
    :goto_3
    const/4 v7, 0x0

    .line 505
    if-eqz v4, :cond_1

    .line 506
    new-instance v6, Ljava/util/NoSuchElementException;

    const-string v11, "Unable to validate object"

    invoke-direct {v6, v11}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 508
    .local v6, "nsee":Ljava/util/NoSuchElementException;
    invoke-virtual {v6, v10}, Ljava/util/NoSuchElementException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 509
    throw v6

    .line 456
    .end local v6    # "nsee":Ljava/util/NoSuchElementException;
    .end local v9    # "validate":Z
    .end local v10    # "validationThrowable":Ljava/lang/Throwable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v11}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    check-cast v7, Lorg/apache/commons/pool2/PooledObject;

    .line 457
    .restart local v7    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    if-nez v7, :cond_a

    .line 458
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->create()Lorg/apache/commons/pool2/PooledObject;

    move-result-object v7

    .line 459
    if-eqz v7, :cond_a

    .line 460
    const/4 v4, 0x1

    .line 463
    :cond_a
    if-nez v7, :cond_b

    .line 464
    new-instance v11, Ljava/util/NoSuchElementException;

    const-string v14, "Pool exhausted"

    invoke-direct {v11, v14}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 466
    :cond_b
    invoke-interface {v7}, Lorg/apache/commons/pool2/PooledObject;->allocate()Z

    move-result v11

    if-nez v11, :cond_6

    .line 467
    const/4 v7, 0x0

    goto :goto_1

    .line 474
    :catch_0
    move-exception v5

    .line 476
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroy(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 480
    :goto_4
    const/4 v7, 0x0

    .line 481
    if-eqz v4, :cond_7

    .line 482
    new-instance v6, Ljava/util/NoSuchElementException;

    const-string v11, "Unable to activate object"

    invoke-direct {v6, v11}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 484
    .restart local v6    # "nsee":Ljava/util/NoSuchElementException;
    invoke-virtual {v6, v5}, Ljava/util/NoSuchElementException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 485
    throw v6

    .line 493
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "nsee":Ljava/util/NoSuchElementException;
    .restart local v9    # "validate":Z
    .restart local v10    # "validationThrowable":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    .line 494
    .local v8, "t":Ljava/lang/Throwable;
    invoke-static {v8}, Lorg/apache/commons/pool2/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V

    .line 495
    move-object v10, v8

    goto :goto_2

    .line 516
    .end local v4    # "create":Z
    .end local v8    # "t":Ljava/lang/Throwable;
    .end local v9    # "validate":Z
    .end local v10    # "validationThrowable":Ljava/lang/Throwable;
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14, v15}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->updateStatsBorrow(Lorg/apache/commons/pool2/PooledObject;J)V

    .line 518
    invoke-interface {v7}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v11

    return-object v11

    .line 477
    .restart local v4    # "create":Z
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    goto :goto_4

    .line 501
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v9    # "validate":Z
    .restart local v10    # "validationThrowable":Ljava/lang/Throwable;
    :catch_3
    move-exception v11

    goto :goto_3
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 671
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool2/PooledObject;

    .line 673
    .local v1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 675
    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroy(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    check-cast v1, Lorg/apache/commons/pool2/PooledObject;

    .restart local v1    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 681
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 703
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 708
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    monitor-exit v1

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 714
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->startEvictor(J)V

    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->closed:Z

    .line 718
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->clear()V

    .line 720
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->jmxUnregister()V

    .line 723
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->interuptTakeWaiters()V

    .line 724
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method ensureMinIdle()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 906
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getMinIdle()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->ensureIdle(IZ)V

    .line 907
    return-void
.end method

.method public evict()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->assertOpen()V

    .line 737
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 739
    const/16 v18, 0x0

    .line 740
    .local v18, "underTest":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getEvictionPolicy()Lorg/apache/commons/pool2/impl/EvictionPolicy;

    move-result-object v12

    .line 742
    .local v12, "evictionPolicy":Lorg/apache/commons/pool2/impl/EvictionPolicy;, "Lorg/apache/commons/pool2/impl/EvictionPolicy<TT;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->evictionLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 743
    :try_start_0
    new-instance v3, Lorg/apache/commons/pool2/impl/EvictionConfig;

    .line 744
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getMinEvictableIdleTimeMillis()J

    move-result-wide v4

    .line 745
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getSoftMinEvictableIdleTimeMillis()J

    move-result-wide v6

    .line 746
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getMinIdle()I

    move-result v8

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/pool2/impl/EvictionConfig;-><init>(JJI)V

    .line 748
    .local v3, "evictionConfig":Lorg/apache/commons/pool2/impl/EvictionConfig;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getTestWhileIdle()Z

    move-result v17

    .line 750
    .local v17, "testWhileIdle":Z
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getNumTests()I

    move-result v14

    .local v14, "m":I
    :goto_0
    if-ge v13, v14, :cond_9

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 752
    :cond_0
    new-instance v4, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;-><init>(Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;Ljava/util/Deque;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    .line 754
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 756
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    .end local v3    # "evictionConfig":Lorg/apache/commons/pool2/impl/EvictionConfig;
    .end local v12    # "evictionPolicy":Lorg/apache/commons/pool2/impl/EvictionPolicy;, "Lorg/apache/commons/pool2/impl/EvictionPolicy<TT;>;"
    .end local v13    # "i":I
    .end local v14    # "m":I
    .end local v17    # "testWhileIdle":Z
    .end local v18    # "underTest":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_2
    :goto_1
    return-void

    .line 760
    .restart local v3    # "evictionConfig":Lorg/apache/commons/pool2/impl/EvictionConfig;
    .restart local v12    # "evictionPolicy":Lorg/apache/commons/pool2/impl/EvictionPolicy;, "Lorg/apache/commons/pool2/impl/EvictionPolicy<TT;>;"
    .restart local v13    # "i":I
    .restart local v14    # "m":I
    .restart local v17    # "testWhileIdle":Z
    .restart local v18    # "underTest":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->next()Lorg/apache/commons/pool2/PooledObject;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    .line 769
    :try_start_2
    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/pool2/PooledObject;->startEvictionTest()Z

    move-result v4

    if-nez v4, :cond_5

    .line 772
    add-int/lit8 v13, v13, -0x1

    .line 750
    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 761
    :catch_0
    move-exception v15

    .line 764
    .local v15, "nsee":Ljava/util/NoSuchElementException;
    add-int/lit8 v13, v13, -0x1

    .line 765
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    goto :goto_2

    .line 825
    .end local v3    # "evictionConfig":Lorg/apache/commons/pool2/impl/EvictionConfig;
    .end local v13    # "i":I
    .end local v14    # "m":I
    .end local v15    # "nsee":Ljava/util/NoSuchElementException;
    .end local v17    # "testWhileIdle":Z
    :catchall_0
    move-exception v4

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 781
    .restart local v3    # "evictionConfig":Lorg/apache/commons/pool2/impl/EvictionConfig;
    .restart local v13    # "i":I
    .restart local v14    # "m":I
    .restart local v17    # "testWhileIdle":Z
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    .line 782
    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v4

    .line 781
    move-object/from16 v0, v18

    invoke-interface {v12, v3, v0, v4}, Lorg/apache/commons/pool2/impl/EvictionPolicy;->evict(Lorg/apache/commons/pool2/impl/EvictionConfig;Lorg/apache/commons/pool2/PooledObject;I)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    .line 792
    .local v11, "evict":Z
    :goto_3
    if-eqz v11, :cond_6

    .line 793
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroy(Lorg/apache/commons/pool2/PooledObject;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroyedByEvictorCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_2

    .line 783
    .end local v11    # "evict":Z
    :catch_1
    move-exception v16

    .line 786
    .local v16, "t":Ljava/lang/Throwable;
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/pool2/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V

    .line 787
    new-instance v4, Ljava/lang/Exception;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->swallowException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 789
    const/4 v11, 0x0

    .restart local v11    # "evict":Z
    goto :goto_3

    .line 796
    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_6
    if-eqz v17, :cond_7

    .line 797
    const/4 v9, 0x0

    .line 799
    .local v9, "active":Z
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/apache/commons/pool2/PooledObjectFactory;->activateObject(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 800
    const/4 v9, 0x1

    .line 805
    :goto_4
    if-eqz v9, :cond_7

    .line 806
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/apache/commons/pool2/PooledObjectFactory;->validateObject(Lorg/apache/commons/pool2/PooledObject;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 807
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroy(Lorg/apache/commons/pool2/PooledObject;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroyedByEvictorCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 819
    .end local v9    # "active":Z
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/apache/commons/pool2/PooledObject;->endEvictionTest(Ljava/util/Deque;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 801
    .restart local v9    # "active":Z
    :catch_2
    move-exception v10

    .line 802
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroy(Lorg/apache/commons/pool2/PooledObject;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroyedByEvictorCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 811
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/apache/commons/pool2/PooledObjectFactory;->passivateObject(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 812
    :catch_3
    move-exception v10

    .line 813
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroy(Lorg/apache/commons/pool2/PooledObject;)V

    .line 814
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroyedByEvictorCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_5

    .line 825
    .end local v9    # "active":Z
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "evict":Z
    :cond_9
    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 827
    .end local v3    # "evictionConfig":Lorg/apache/commons/pool2/impl/EvictionConfig;
    .end local v12    # "evictionPolicy":Lorg/apache/commons/pool2/impl/EvictionPolicy;, "Lorg/apache/commons/pool2/impl/EvictionPolicy<TT;>;"
    .end local v13    # "i":I
    .end local v14    # "m":I
    .end local v17    # "testWhileIdle":Z
    .end local v18    # "underTest":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    .line 828
    .local v2, "ac":Lorg/apache/commons/pool2/impl/AbandonedConfig;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getRemoveAbandonedOnMaintenance()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 829
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->removeAbandoned(Lorg/apache/commons/pool2/impl/AbandonedConfig;)V

    goto/16 :goto_1
.end method

.method public getFactory()Lorg/apache/commons/pool2/PooledObjectFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    return-object v0
.end method

.method public getFactoryType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1083
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factoryType:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1085
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1087
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    .line 1088
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/pool2/impl/PoolImplUtils;->getFactoryType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 1089
    .local v0, "pooledObjectType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factoryType:Ljava/lang/String;

    .line 1093
    .end local v0    # "pooledObjectType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "result":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factoryType:Ljava/lang/String;

    return-object v2
.end method

.method public getLogAbandoned()Z
    .locals 2

    .prologue
    .line 248
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    .line 249
    .local v0, "ac":Lorg/apache/commons/pool2/impl/AbandonedConfig;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getLogAbandoned()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxIdle()I
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    iget v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->maxIdle:I

    return v0
.end method

.method public getMinIdle()I
    .locals 2

    .prologue
    .line 219
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getMaxIdle()I

    move-result v0

    .line 220
    .local v0, "maxIdleSave":I
    iget v1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->minIdle:I

    if-le v1, v0, :cond_0

    .line 223
    .end local v0    # "maxIdleSave":I
    :goto_0
    return v0

    .restart local v0    # "maxIdleSave":I
    :cond_0
    iget v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->minIdle:I

    goto :goto_0
.end method

.method public getNumActive()I
    .locals 2

    .prologue
    .line 685
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->allObjects:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNumIdle()I
    .locals 1

    .prologue
    .line 690
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v0

    return v0
.end method

.method public getNumWaiters()I
    .locals 1

    .prologue
    .line 1067
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getBlockWhenExhausted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->getTakeQueueLength()I

    move-result v0

    .line 1070
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemoveAbandonedOnBorrow()Z
    .locals 2

    .prologue
    .line 263
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    .line 264
    .local v0, "ac":Lorg/apache/commons/pool2/impl/AbandonedConfig;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getRemoveAbandonedOnBorrow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRemoveAbandonedOnMaintenance()Z
    .locals 2

    .prologue
    .line 277
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    .line 278
    .local v0, "ac":Lorg/apache/commons/pool2/impl/AbandonedConfig;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getRemoveAbandonedOnMaintenance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRemoveAbandonedTimeout()I
    .locals 2

    .prologue
    .line 292
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    .line 293
    .local v0, "ac":Lorg/apache/commons/pool2/impl/AbandonedConfig;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getRemoveAbandonedTimeout()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const v1, 0x7fffffff

    goto :goto_0
.end method

.method public invalidateObject(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 635
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->allObjects:Ljava/util/Map;

    new-instance v2, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;

    invoke-direct {v2, p1}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool2/PooledObject;

    .line 636
    .local v0, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    if-nez v0, :cond_1

    .line 637
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->isAbandonedConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    :goto_0
    return-void

    .line 640
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalidated object not currently part of this pool"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 644
    :cond_1
    monitor-enter v0

    .line 645
    :try_start_0
    invoke-interface {v0}, Lorg/apache/commons/pool2/PooledObject;->getState()Lorg/apache/commons/pool2/PooledObjectState;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/pool2/PooledObjectState;->INVALID:Lorg/apache/commons/pool2/PooledObjectState;

    if-eq v1, v2, :cond_2

    .line 646
    invoke-direct {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroy(Lorg/apache/commons/pool2/PooledObject;)V

    .line 648
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->ensureIdle(IZ)V

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isAbandonedConfig()Z
    .locals 1

    .prologue
    .line 235
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listAllObjects()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1109
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->allObjects:Ljava/util/Map;

    .line 1110
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 1111
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;>;"
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->allObjects:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool2/PooledObject;

    .line 1112
    .local v0, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    new-instance v3, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;

    invoke-direct {v3, v0}, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;-><init>(Lorg/apache/commons/pool2/PooledObject;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1114
    .end local v0    # "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_0
    return-object v1
.end method

.method public preparePool()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 841
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getMinIdle()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 845
    :goto_0
    return-void

    .line 844
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->ensureMinIdle()V

    goto :goto_0
.end method

.method public returnObject(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v7, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->allObjects:Ljava/util/Map;

    new-instance v8, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;

    invoke-direct {v8, p1}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/pool2/PooledObject;

    .line 539
    .local v5, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    if-nez v5, :cond_0

    .line 540
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->isAbandonedConfig()Z

    move-result v7

    if-nez v7, :cond_2

    .line 541
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Returned object not currently part of this pool"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 548
    :cond_0
    monitor-enter v5

    .line 549
    :try_start_0
    invoke-interface {v5}, Lorg/apache/commons/pool2/PooledObject;->getState()Lorg/apache/commons/pool2/PooledObjectState;

    move-result-object v6

    .line 550
    .local v6, "state":Lorg/apache/commons/pool2/PooledObjectState;
    sget-object v7, Lorg/apache/commons/pool2/PooledObjectState;->ALLOCATED:Lorg/apache/commons/pool2/PooledObjectState;

    if-eq v6, v7, :cond_1

    .line 551
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Object has already been returned to this pool or is invalid"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 556
    .end local v6    # "state":Lorg/apache/commons/pool2/PooledObjectState;
    :catchall_0
    move-exception v7

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 554
    .restart local v6    # "state":Lorg/apache/commons/pool2/PooledObjectState;
    :cond_1
    :try_start_1
    invoke-interface {v5}, Lorg/apache/commons/pool2/PooledObject;->markReturning()V

    .line 556
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    invoke-interface {v5}, Lorg/apache/commons/pool2/PooledObject;->getActiveTimeMillis()J

    move-result-wide v0

    .line 560
    .local v0, "activeTime":J
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getTestOnReturn()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 561
    iget-object v7, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v7, v5}, Lorg/apache/commons/pool2/PooledObjectFactory;->validateObject(Lorg/apache/commons/pool2/PooledObject;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 563
    :try_start_2
    invoke-direct {p0, v5}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroy(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 568
    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_3
    invoke-direct {p0, v7, v8}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->ensureIdle(IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 572
    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->updateStatsReturn(J)V

    .line 621
    .end local v0    # "activeTime":J
    .end local v6    # "state":Lorg/apache/commons/pool2/PooledObjectState;
    :cond_2
    :goto_2
    return-void

    .line 564
    .restart local v0    # "activeTime":J
    .restart local v6    # "state":Lorg/apache/commons/pool2/PooledObjectState;
    :catch_0
    move-exception v2

    .line 565
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 569
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 570
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 578
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_4
    iget-object v7, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v7, v5}, Lorg/apache/commons/pool2/PooledObjectFactory;->passivateObject(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 595
    invoke-interface {v5}, Lorg/apache/commons/pool2/PooledObject;->deallocate()Z

    move-result v7

    if-nez v7, :cond_4

    .line 596
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Object has already been returned to this pool or is invalid"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 579
    :catch_2
    move-exception v3

    .line 580
    .local v3, "e1":Ljava/lang/Exception;
    invoke-virtual {p0, v3}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->swallowException(Ljava/lang/Exception;)V

    .line 582
    :try_start_5
    invoke-direct {p0, v5}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroy(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 587
    :goto_3
    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_6
    invoke-direct {p0, v7, v8}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->ensureIdle(IZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 591
    :goto_4
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->updateStatsReturn(J)V

    goto :goto_2

    .line 583
    :catch_3
    move-exception v2

    .line 584
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_3

    .line 588
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 589
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_4

    .line 600
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e1":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getMaxIdle()I

    move-result v4

    .line 601
    .local v4, "maxIdleSave":I
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->isClosed()Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, -0x1

    if-le v4, v7, :cond_7

    iget-object v7, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v7}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I

    move-result v7

    if-gt v4, v7, :cond_7

    .line 603
    :cond_5
    :try_start_7
    invoke-direct {p0, v5}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->destroy(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 620
    :cond_6
    :goto_5
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->updateStatsReturn(J)V

    goto :goto_2

    .line 604
    :catch_5
    move-exception v2

    .line 605
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_5

    .line 608
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getLifo()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 609
    iget-object v7, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v7, v5}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 613
    :goto_6
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 617
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->clear()V

    goto :goto_5

    .line 611
    :cond_8
    iget-object v7, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v7, v5}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public setAbandonedConfig(Lorg/apache/commons/pool2/impl/AbandonedConfig;)V
    .locals 2
    .param p1, "abandonedConfig"    # Lorg/apache/commons/pool2/impl/AbandonedConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    if-nez p1, :cond_0

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    .line 343
    :goto_0
    return-void

    .line 335
    :cond_0
    new-instance v0, Lorg/apache/commons/pool2/impl/AbandonedConfig;

    invoke-direct {v0}, Lorg/apache/commons/pool2/impl/AbandonedConfig;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    .line 336
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getLogAbandoned()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->setLogAbandoned(Z)V

    .line 337
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->setLogWriter(Ljava/io/PrintWriter;)V

    .line 338
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getRemoveAbandonedOnBorrow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->setRemoveAbandonedOnBorrow(Z)V

    .line 339
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getRemoveAbandonedOnMaintenance()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->setRemoveAbandonedOnMaintenance(Z)V

    .line 340
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getRemoveAbandonedTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->setRemoveAbandonedTimeout(I)V

    .line 341
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getUseUsageTracking()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->setUseUsageTracking(Z)V

    goto :goto_0
.end method

.method public setConfig(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 2
    .param p1, "conf"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    .prologue
    .line 305
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getLifo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setLifo(Z)V

    .line 306
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getMaxIdle()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setMaxIdle(I)V

    .line 307
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getMinIdle()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setMinIdle(I)V

    .line 308
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getMaxTotal()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setMaxTotal(I)V

    .line 309
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getMaxWaitMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setMaxWaitMillis(J)V

    .line 310
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getBlockWhenExhausted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setBlockWhenExhausted(Z)V

    .line 311
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getTestOnCreate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setTestOnCreate(Z)V

    .line 312
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getTestOnBorrow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setTestOnBorrow(Z)V

    .line 313
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getTestOnReturn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setTestOnReturn(Z)V

    .line 314
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getTestWhileIdle()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setTestWhileIdle(Z)V

    .line 315
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getNumTestsPerEvictionRun()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setNumTestsPerEvictionRun(I)V

    .line 316
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getMinEvictableIdleTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setMinEvictableIdleTimeMillis(J)V

    .line 318
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getTimeBetweenEvictionRunsMillis()J

    move-result-wide v0

    .line 317
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setTimeBetweenEvictionRunsMillis(J)V

    .line 320
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getSoftMinEvictableIdleTimeMillis()J

    move-result-wide v0

    .line 319
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setSoftMinEvictableIdleTimeMillis(J)V

    .line 321
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->getEvictionPolicyClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->setEvictionPolicyClassName(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public setMaxIdle(I)V
    .locals 0
    .param p1, "maxIdle"    # I

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    iput p1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->maxIdle:I

    .line 178
    return-void
.end method

.method public setMinIdle(I)V
    .locals 0
    .param p1, "minIdle"    # I

    .prologue
    .line 198
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    iput p1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->minIdle:I

    .line 199
    return-void
.end method

.method public use(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1045
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericObjectPool;, "Lorg/apache/commons/pool2/impl/GenericObjectPool<TT;>;"
    .local p1, "pooledObject":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->abandonedConfig:Lorg/apache/commons/pool2/impl/AbandonedConfig;

    .line 1046
    .local v0, "ac":Lorg/apache/commons/pool2/impl/AbandonedConfig;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/AbandonedConfig;->getUseUsageTracking()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1047
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/GenericObjectPool;->allObjects:Ljava/util/Map;

    new-instance v3, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;

    invoke-direct {v3, p1}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool2/PooledObject;

    .line 1048
    .local v1, "wrapper":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    invoke-interface {v1}, Lorg/apache/commons/pool2/PooledObject;->use()V

    .line 1050
    .end local v1    # "wrapper":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    :cond_0
    return-void
.end method

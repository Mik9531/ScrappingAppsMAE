.class public final Lorg/apache/commons/pool2/PoolUtils;
.super Ljava/lang/Object;
.source "PoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;,
        Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;,
        Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;,
        Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;,
        Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;,
        Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;,
        Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;,
        Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;,
        Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;,
        Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;,
        Lorg/apache/commons/pool2/PoolUtils$TimerHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static checkMinIdle(Lorg/apache/commons/pool2/KeyedObjectPool;Ljava/util/Collection;IJ)Ljava/util/Map;
    .locals 7
    .param p2, "minIdle"    # I
    .param p3, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<TK;>;IJ)",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/TimerTask;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "keyedPool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    if-nez p1, :cond_0

    .line 193
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "keys must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 196
    .local v3, "tasks":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/TimerTask;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 197
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 199
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, v1, p2, p3, p4}, Lorg/apache/commons/pool2/PoolUtils;->checkMinIdle(Lorg/apache/commons/pool2/KeyedObjectPool;Ljava/lang/Object;IJ)Ljava/util/TimerTask;

    move-result-object v2

    .line 200
    .local v2, "task":Ljava/util/TimerTask;
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "task":Ljava/util/TimerTask;
    :cond_1
    return-object v3
.end method

.method public static checkMinIdle(Lorg/apache/commons/pool2/KeyedObjectPool;Ljava/lang/Object;IJ)Ljava/util/TimerTask;
    .locals 7
    .param p2, "minIdle"    # I
    .param p3, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;TK;IJ)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "keyedPool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyedPool must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    if-nez p1, :cond_1

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "key must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    if-gez p2, :cond_2

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "minIdle must be non-negative."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    new-instance v1, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;-><init>(Lorg/apache/commons/pool2/KeyedObjectPool;Ljava/lang/Object;I)V

    .line 157
    .local v1, "task":Ljava/util/TimerTask;
    invoke-static {}, Lorg/apache/commons/pool2/PoolUtils;->getMinIdleTimer()Ljava/util/Timer;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 158
    return-object v1
.end method

.method public static checkMinIdle(Lorg/apache/commons/pool2/ObjectPool;IJ)Ljava/util/TimerTask;
    .locals 6
    .param p1, "minIdle"    # I
    .param p2, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;IJ)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "pool":Lorg/apache/commons/pool2/ObjectPool;, "Lorg/apache/commons/pool2/ObjectPool<TT;>;"
    if-nez p0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyedPool must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    if-gez p1, :cond_1

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "minIdle must be non-negative."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-instance v1, Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;-><init>(Lorg/apache/commons/pool2/ObjectPool;I)V

    .line 112
    .local v1, "task":Ljava/util/TimerTask;
    invoke-static {}, Lorg/apache/commons/pool2/PoolUtils;->getMinIdleTimer()Ljava/util/Timer;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 113
    return-object v1
.end method

.method public static checkRethrow(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-eqz v0, :cond_0

    .line 73
    check-cast p0, Ljava/lang/ThreadDeath;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 75
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-eqz v0, :cond_1

    .line 76
    check-cast p0, Ljava/lang/VirtualMachineError;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 79
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public static erodingPool(Lorg/apache/commons/pool2/KeyedObjectPool;)Lorg/apache/commons/pool2/KeyedObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;)",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "keyedPool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lorg/apache/commons/pool2/PoolUtils;->erodingPool(Lorg/apache/commons/pool2/KeyedObjectPool;F)Lorg/apache/commons/pool2/KeyedObjectPool;

    move-result-object v0

    return-object v0
.end method

.method public static erodingPool(Lorg/apache/commons/pool2/KeyedObjectPool;F)Lorg/apache/commons/pool2/KeyedObjectPool;
    .locals 1
    .param p1, "factor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;F)",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "keyedPool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/pool2/PoolUtils;->erodingPool(Lorg/apache/commons/pool2/KeyedObjectPool;FZ)Lorg/apache/commons/pool2/KeyedObjectPool;

    move-result-object v0

    return-object v0
.end method

.method public static erodingPool(Lorg/apache/commons/pool2/KeyedObjectPool;FZ)Lorg/apache/commons/pool2/KeyedObjectPool;
    .locals 2
    .param p1, "factor"    # F
    .param p2, "perKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;FZ)",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 542
    .local p0, "keyedPool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    if-nez p0, :cond_0

    .line 543
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factor must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_1
    if-eqz p2, :cond_2

    .line 549
    new-instance v0, Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;-><init>(Lorg/apache/commons/pool2/KeyedObjectPool;F)V

    .line 551
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;-><init>(Lorg/apache/commons/pool2/KeyedObjectPool;F)V

    goto :goto_0
.end method

.method public static erodingPool(Lorg/apache/commons/pool2/ObjectPool;)Lorg/apache/commons/pool2/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;)",
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "pool":Lorg/apache/commons/pool2/ObjectPool;, "Lorg/apache/commons/pool2/ObjectPool<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lorg/apache/commons/pool2/PoolUtils;->erodingPool(Lorg/apache/commons/pool2/ObjectPool;F)Lorg/apache/commons/pool2/ObjectPool;

    move-result-object v0

    return-object v0
.end method

.method public static erodingPool(Lorg/apache/commons/pool2/ObjectPool;F)Lorg/apache/commons/pool2/ObjectPool;
    .locals 2
    .param p1, "factor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;F)",
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "pool":Lorg/apache/commons/pool2/ObjectPool;, "Lorg/apache/commons/pool2/ObjectPool<TT;>;"
    if-nez p0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factor must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_1
    new-instance v0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;-><init>(Lorg/apache/commons/pool2/ObjectPool;F)V

    return-object v0
.end method

.method private static getMinIdleTimer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 560
    sget-object v0, Lorg/apache/commons/pool2/PoolUtils$TimerHolder;->MIN_IDLE_TIMER:Ljava/util/Timer;

    return-object v0
.end method

.method public static prefill(Lorg/apache/commons/pool2/KeyedObjectPool;Ljava/lang/Object;I)V
    .locals 3
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;TK;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "keyedPool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p0, :cond_0

    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyedPool must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_0
    if-nez p1, :cond_1

    .line 254
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "key must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 257
    invoke-interface {p0, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->addObject(Ljava/lang/Object;)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_2
    return-void
.end method

.method public static prefill(Lorg/apache/commons/pool2/KeyedObjectPool;Ljava/util/Collection;I)V
    .locals 3
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<TK;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "keyedPool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    if-nez p1, :cond_0

    .line 286
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keys must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 289
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/apache/commons/pool2/PoolUtils;->prefill(Lorg/apache/commons/pool2/KeyedObjectPool;Ljava/lang/Object;I)V

    goto :goto_0

    .line 292
    :cond_1
    return-void
.end method

.method public static prefill(Lorg/apache/commons/pool2/ObjectPool;I)V
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "pool":Lorg/apache/commons/pool2/ObjectPool;, "Lorg/apache/commons/pool2/ObjectPool<TT;>;"
    if-nez p0, :cond_0

    .line 222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pool must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 225
    invoke-interface {p0}, Lorg/apache/commons/pool2/ObjectPool;->addObject()V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_1
    return-void
.end method

.method public static synchronizedKeyedPooledFactory(Lorg/apache/commons/pool2/KeyedPooledObjectFactory;)Lorg/apache/commons/pool2/KeyedPooledObjectFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/KeyedPooledObjectFactory",
            "<TK;TV;>;)",
            "Lorg/apache/commons/pool2/KeyedPooledObjectFactory",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "keyedFactory":Lorg/apache/commons/pool2/KeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/KeyedPooledObjectFactory<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;

    invoke-direct {v0, p0}, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;-><init>(Lorg/apache/commons/pool2/KeyedPooledObjectFactory;)V

    return-object v0
.end method

.method public static synchronizedPool(Lorg/apache/commons/pool2/KeyedObjectPool;)Lorg/apache/commons/pool2/KeyedObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;)",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "keyedPool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;

    invoke-direct {v0, p0}, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;-><init>(Lorg/apache/commons/pool2/KeyedObjectPool;)V

    return-object v0
.end method

.method public static synchronizedPool(Lorg/apache/commons/pool2/ObjectPool;)Lorg/apache/commons/pool2/ObjectPool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;)",
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "pool":Lorg/apache/commons/pool2/ObjectPool;, "Lorg/apache/commons/pool2/ObjectPool<TT;>;"
    if-nez p0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    new-instance v0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;

    invoke-direct {v0, p0}, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;-><init>(Lorg/apache/commons/pool2/ObjectPool;)V

    return-object v0
.end method

.method public static synchronizedPooledFactory(Lorg/apache/commons/pool2/PooledObjectFactory;)Lorg/apache/commons/pool2/PooledObjectFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;)",
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "factory":Lorg/apache/commons/pool2/PooledObjectFactory;, "Lorg/apache/commons/pool2/PooledObjectFactory<TT;>;"
    new-instance v0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;

    invoke-direct {v0, p0}, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;-><init>(Lorg/apache/commons/pool2/PooledObjectFactory;)V

    return-object v0
.end method

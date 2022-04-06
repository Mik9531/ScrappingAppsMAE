.class public Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;
.super Lorg/apache/commons/pool2/BaseObjectPool;
.source "SoftReferenceObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/pool2/BaseObjectPool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final allReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/commons/pool2/impl/PooledSoftReference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private createCount:J

.field private destroyCount:J

.field private final factory:Lorg/apache/commons/pool2/PooledObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final idleReferences:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque",
            "<",
            "Lorg/apache/commons/pool2/impl/PooledSoftReference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private numActive:I

.field private final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/PooledObjectFactory;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool2/PooledObjectFactory;, "Lorg/apache/commons/pool2/PooledObjectFactory<TT;>;"
    const-wide/16 v2, 0x0

    .line 78
    invoke-direct {p0}, Lorg/apache/commons/pool2/BaseObjectPool;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->numActive:I

    .line 59
    iput-wide v2, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->destroyCount:J

    .line 63
    iput-wide v2, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->createCount:J

    .line 66
    new-instance v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-direct {v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->idleReferences:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->allReferences:Ljava/util/ArrayList;

    .line 79
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    .line 80
    return-void
.end method

.method private destroy(Lorg/apache/commons/pool2/impl/PooledSoftReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/impl/PooledSoftReference",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    .local p1, "toDestroy":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    const-wide/16 v4, 0x1

    .line 411
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->invalidate()V

    .line 412
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->idleReferences:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 413
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->allReferences:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 415
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/PooledObjectFactory;->destroyObject(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->destroyCount:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->destroyCount:J

    .line 418
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->getReference()Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 420
    return-void

    .line 417
    :catchall_0
    move-exception v0

    iget-wide v2, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->destroyCount:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->destroyCount:J

    .line 418
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->getReference()Ljava/lang/ref/SoftReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    throw v0
.end method

.method private findReference(Ljava/lang/Object;)Lorg/apache/commons/pool2/impl/PooledSoftReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/pool2/impl/PooledSoftReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->allReferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 393
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool2/impl/PooledSoftReference;

    .line 395
    .local v1, "reference":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->getObject()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    .end local v1    # "reference":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pruneClearedReferences()V
    .locals 1

    .prologue
    .line 380
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->idleReferences:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->removeClearedReferences(Ljava/util/Iterator;)V

    .line 381
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->allReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->removeClearedReferences(Ljava/util/Iterator;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 383
    return-void
.end method

.method private removeClearedReferences(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/commons/pool2/impl/PooledSoftReference",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool2/impl/PooledSoftReference;

    .line 430
    .local v0, "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->getReference()Ljava/lang/ref/SoftReference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->getReference()Ljava/lang/ref/SoftReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->isEnqueued()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 434
    .end local v0    # "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized addObject()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->assertOpen()V

    .line 273
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    if-nez v4, :cond_0

    .line 274
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot add objects without a factory."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 277
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v4}, Lorg/apache/commons/pool2/PooledObjectFactory;->makeObject()Lorg/apache/commons/pool2/PooledObject;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 278
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    iget-wide v4, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->createCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->createCount:J

    .line 280
    new-instance v1, Lorg/apache/commons/pool2/impl/PooledSoftReference;

    new-instance v4, Ljava/lang/ref/SoftReference;

    iget-object v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v0, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-direct {v1, v4}, Lorg/apache/commons/pool2/impl/PooledSoftReference;-><init>(Ljava/lang/ref/SoftReference;)V

    .line 282
    .local v1, "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->allReferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    const/4 v3, 0x1

    .line 285
    .local v3, "success":Z
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v4, v1}, Lorg/apache/commons/pool2/PooledObjectFactory;->validateObject(Lorg/apache/commons/pool2/PooledObject;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 286
    const/4 v3, 0x0

    .line 291
    :goto_0
    if-nez v3, :cond_4

    const/4 v2, 0x1

    .line 292
    .local v2, "shouldDestroy":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 293
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->idleReferences:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v4, v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :cond_1
    if-eqz v2, :cond_2

    .line 299
    :try_start_2
    invoke-direct {p0, v1}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->destroy(Lorg/apache/commons/pool2/impl/PooledSoftReference;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 288
    .end local v2    # "shouldDestroy":Z
    :cond_3
    :try_start_3
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v4, v1}, Lorg/apache/commons/pool2/PooledObjectFactory;->passivateObject(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 291
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 300
    .restart local v2    # "shouldDestroy":Z
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public declared-synchronized borrowObject()Ljava/lang/Object;
    .locals 10
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
    .line 119
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->assertOpen()V

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 122
    .local v0, "newlyCreated":Z
    const/4 v2, 0x0

    .line 123
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    .local v2, "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    :cond_0
    if-nez v1, :cond_3

    .line 124
    iget-object v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->idleReferences:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v5}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    iget-object v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    if-nez v5, :cond_1

    .line 126
    new-instance v5, Ljava/util/NoSuchElementException;

    invoke-direct {v5}, Ljava/util/NoSuchElementException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v0    # "newlyCreated":Z
    .end local v2    # "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 128
    .restart local v0    # "newlyCreated":Z
    .restart local v2    # "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    :cond_1
    const/4 v0, 0x1

    .line 129
    :try_start_1
    iget-object v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v5}, Lorg/apache/commons/pool2/PooledObjectFactory;->makeObject()Lorg/apache/commons/pool2/PooledObject;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v1

    .line 130
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    iget-wide v6, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->createCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->createCount:J

    .line 132
    new-instance v2, Lorg/apache/commons/pool2/impl/PooledSoftReference;

    .end local v2    # "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v5}, Lorg/apache/commons/pool2/impl/PooledSoftReference;-><init>(Ljava/lang/ref/SoftReference;)V

    .line 133
    .restart local v2    # "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    iget-object v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->allReferences:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 146
    :try_start_2
    iget-object v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v5, v2}, Lorg/apache/commons/pool2/PooledObjectFactory;->activateObject(Lorg/apache/commons/pool2/PooledObject;)V

    .line 147
    iget-object v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v5, v2}, Lorg/apache/commons/pool2/PooledObjectFactory;->validateObject(Lorg/apache/commons/pool2/PooledObject;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "ValidateObject failed"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :catch_0
    move-exception v3

    .line 151
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v3}, Lorg/apache/commons/pool2/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    :try_start_4
    invoke-direct {p0, v2}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->destroy(Lorg/apache/commons/pool2/impl/PooledSoftReference;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    const/4 v1, 0x0

    .line 160
    :goto_1
    if-eqz v0, :cond_0

    .line 161
    :try_start_5
    new-instance v5, Ljava/util/NoSuchElementException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not create a validated object, cause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 163
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 136
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->idleReferences:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v5}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    check-cast v2, Lorg/apache/commons/pool2/impl/PooledSoftReference;

    .line 137
    .restart local v2    # "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->getObject()Ljava/lang/Object;

    move-result-object v1

    .line 141
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->getReference()Ljava/lang/ref/SoftReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->clear()V

    .line 142
    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->setReference(Ljava/lang/ref/SoftReference;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 154
    .restart local v3    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 155
    .local v4, "t2":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {v4}, Lorg/apache/commons/pool2/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 158
    const/4 v1, 0x0

    .line 159
    goto :goto_1

    .line 158
    .end local v4    # "t2":Ljava/lang/Throwable;
    :catchall_1
    move-exception v5

    const/4 v1, 0x0

    :try_start_7
    throw v5

    .line 168
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_3
    iget v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->numActive:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->numActive:I

    .line 169
    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->allocate()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 170
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 333
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    if-eqz v2, :cond_1

    .line 334
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->idleReferences:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 335
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool2/impl/PooledSoftReference;

    .line 338
    .local v1, "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->getObject()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v2, v1}, Lorg/apache/commons/pool2/PooledObjectFactory;->destroyObject(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 341
    .end local v1    # "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    :catch_0
    move-exception v2

    goto :goto_0

    .line 346
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;>;"
    :cond_1
    :try_start_2
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->idleReferences:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->clear()V

    .line 347
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->pruneClearedReferences()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public close()V
    .locals 0

    .prologue
    .line 360
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    invoke-super {p0}, Lorg/apache/commons/pool2/BaseObjectPool;->close()V

    .line 361
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->clear()V

    .line 362
    return-void
.end method

.method public declared-synchronized getFactory()Lorg/apache/commons/pool2/PooledObjectFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumActive()I
    .locals 1

    .prologue
    .line 325
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->numActive:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumIdle()I
    .locals 1

    .prologue
    .line 314
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->pruneClearedReferences()V

    .line 315
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->idleReferences:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidateObject(Ljava/lang/Object;)V
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
    .line 236
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->findReference(Ljava/lang/Object;)Lorg/apache/commons/pool2/impl/PooledSoftReference;

    move-result-object v0

    .line 237
    .local v0, "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    if-nez v0, :cond_0

    .line 238
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Object to invalidate is not currently part of this pool"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v0    # "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 241
    .restart local v0    # "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    if-eqz v1, :cond_1

    .line 242
    invoke-direct {p0, v0}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->destroy(Lorg/apache/commons/pool2/impl/PooledSoftReference;)V

    .line 244
    :cond_1
    iget v1, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->numActive:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->numActive:I

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized returnObject(Ljava/lang/Object;)V
    .locals 6
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
    .local p0, "this":Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 194
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v2

    .line 195
    .local v3, "success":Z
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->findReference(Ljava/lang/Object;)Lorg/apache/commons/pool2/impl/PooledSoftReference;

    move-result-object v1

    .line 196
    .local v1, "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    if-nez v1, :cond_1

    .line 197
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Returned object not currently part of this pool"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v1    # "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    .end local v3    # "success":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_0
    move v3, v4

    goto :goto_0

    .line 200
    .restart local v1    # "ref":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    .restart local v3    # "success":Z
    :cond_1
    :try_start_1
    iget-object v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    if-eqz v5, :cond_2

    .line 201
    iget-object v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v5, v1}, Lorg/apache/commons/pool2/PooledObjectFactory;->validateObject(Lorg/apache/commons/pool2/PooledObject;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 202
    const/4 v3, 0x0

    .line 212
    :cond_2
    :goto_1
    if-nez v3, :cond_6

    .line 213
    .local v2, "shouldDestroy":Z
    :goto_2
    iget v4, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->numActive:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->numActive:I

    .line 214
    if-eqz v3, :cond_3

    .line 217
    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->deallocate()Z

    .line 218
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->idleReferences:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-virtual {v4, v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 222
    if-eqz v2, :cond_4

    iget-object v4, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_4

    .line 224
    :try_start_2
    invoke-direct {p0, v1}, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->destroy(Lorg/apache/commons/pool2/impl/PooledSoftReference;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 205
    .end local v2    # "shouldDestroy":Z
    :cond_5
    :try_start_3
    iget-object v5, p0, Lorg/apache/commons/pool2/impl/SoftReferenceObjectPool;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v5, v1}, Lorg/apache/commons/pool2/PooledObjectFactory;->passivateObject(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    move v2, v4

    .line 212
    goto :goto_2

    .line 225
    .restart local v2    # "shouldDestroy":Z
    :catch_1
    move-exception v4

    goto :goto_3
.end method

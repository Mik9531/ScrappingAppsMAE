.class public Lorg/apache/commons/pool2/impl/DefaultPooledObject;
.super Ljava/lang/Object;
.source "DefaultPooledObject.java"

# interfaces
.implements Lorg/apache/commons/pool2/PooledObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/pool2/impl/DefaultPooledObject$AbandonedObjectCreatedException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool2/PooledObject",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile borrowedBy:Ljava/lang/Exception;

.field private volatile borrowedCount:J

.field private final createTime:J

.field private volatile lastBorrowTime:J

.field private volatile lastReturnTime:J

.field private volatile lastUseTime:J

.field private volatile logAbandoned:Z

.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Lorg/apache/commons/pool2/PooledObjectState;

.field private volatile usedBy:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lorg/apache/commons/pool2/PooledObjectState;->IDLE:Lorg/apache/commons/pool2/PooledObjectState;

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->createTime:J

    .line 45
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->createTime:J

    iput-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastBorrowTime:J

    .line 46
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->createTime:J

    iput-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastUseTime:J

    .line 47
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->createTime:J

    iput-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastReturnTime:J

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->logAbandoned:Z

    .line 49
    iput-object v2, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->borrowedBy:Ljava/lang/Exception;

    .line 50
    iput-object v2, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->usedBy:Ljava/lang/Exception;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->borrowedCount:J

    .line 60
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->object:Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Z
    .locals 4

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    const/4 v0, 0x0

    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;

    sget-object v2, Lorg/apache/commons/pool2/PooledObjectState;->IDLE:Lorg/apache/commons/pool2/PooledObjectState;

    if-ne v1, v2, :cond_2

    .line 193
    sget-object v0, Lorg/apache/commons/pool2/PooledObjectState;->ALLOCATED:Lorg/apache/commons/pool2/PooledObjectState;

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastBorrowTime:J

    .line 195
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastBorrowTime:J

    iput-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastUseTime:J

    .line 196
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->borrowedCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->borrowedCount:J

    .line 197
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->logAbandoned:Z

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Lorg/apache/commons/pool2/impl/DefaultPooledObject$AbandonedObjectCreatedException;

    invoke-direct {v0}, Lorg/apache/commons/pool2/impl/DefaultPooledObject$AbandonedObjectCreatedException;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->borrowedBy:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    const/4 v0, 0x1

    .line 208
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 201
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;

    sget-object v2, Lorg/apache/commons/pool2/PooledObjectState;->EVICTION:Lorg/apache/commons/pool2/PooledObjectState;

    if-ne v1, v2, :cond_1

    .line 203
    sget-object v1, Lorg/apache/commons/pool2/PooledObjectState;->EVICTION_RETURN_TO_HEAD:Lorg/apache/commons/pool2/PooledObjectState;

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    check-cast p1, Lorg/apache/commons/pool2/PooledObject;

    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->compareTo(Lorg/apache/commons/pool2/PooledObject;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/pool2/PooledObject;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    .local p1, "other":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->getLastReturnTime()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/apache/commons/pool2/PooledObject;->getLastReturnTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 135
    .local v0, "lastActiveDiff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 140
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 143
    :goto_0
    return v2

    :cond_0
    const-wide/32 v2, -0x80000000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0
.end method

.method public declared-synchronized deallocate()Z
    .locals 2

    .prologue
    .line 219
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;

    sget-object v1, Lorg/apache/commons/pool2/PooledObjectState;->ALLOCATED:Lorg/apache/commons/pool2/PooledObjectState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;

    sget-object v1, Lorg/apache/commons/pool2/PooledObjectState;->RETURNING:Lorg/apache/commons/pool2/PooledObjectState;

    if-ne v0, v1, :cond_1

    .line 221
    :cond_0
    sget-object v0, Lorg/apache/commons/pool2/PooledObjectState;->IDLE:Lorg/apache/commons/pool2/PooledObjectState;

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastReturnTime:J

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->borrowedBy:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    const/4 v0, 0x1

    .line 227
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endEvictionTest(Ljava/util/Deque;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    .local p1, "idleQueue":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;

    sget-object v1, Lorg/apache/commons/pool2/PooledObjectState;->EVICTION:Lorg/apache/commons/pool2/PooledObjectState;

    if-ne v0, v1, :cond_0

    .line 173
    sget-object v0, Lorg/apache/commons/pool2/PooledObjectState;->IDLE:Lorg/apache/commons/pool2/PooledObjectState;

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    const/4 v0, 0x1

    .line 182
    :goto_0
    monitor-exit p0

    return v0

    .line 175
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;

    sget-object v1, Lorg/apache/commons/pool2/PooledObjectState;->EVICTION_RETURN_TO_HEAD:Lorg/apache/commons/pool2/PooledObjectState;

    if-ne v0, v1, :cond_1

    .line 176
    sget-object v0, Lorg/apache/commons/pool2/PooledObjectState;->IDLE:Lorg/apache/commons/pool2/PooledObjectState;

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;

    .line 177
    invoke-interface {p1, p0}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getActiveTimeMillis()J
    .locals 6

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    iget-wide v2, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastReturnTime:J

    .line 77
    .local v2, "rTime":J
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastBorrowTime:J

    .line 79
    .local v0, "bTime":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 80
    sub-long v4, v2, v0

    .line 82
    :goto_0
    return-wide v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    goto :goto_0
.end method

.method public getBorrowedCount()J
    .locals 2

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->borrowedCount:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->createTime:J

    return-wide v0
.end method

.method public getIdleTimeMillis()J
    .locals 8

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    const-wide/16 v2, 0x0

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastReturnTime:J

    sub-long v0, v4, v6

    .line 92
    .local v0, "elapsed":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .end local v0    # "elapsed":J
    :goto_0
    return-wide v0

    .restart local v0    # "elapsed":J
    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getLastBorrowTime()J
    .locals 2

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastBorrowTime:J

    return-wide v0
.end method

.method public getLastReturnTime()J
    .locals 2

    .prologue
    .line 102
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastReturnTime:J

    return-wide v0
.end method

.method public getLastUsedTime()J
    .locals 4

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->object:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/commons/pool2/TrackedUse;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->object:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/pool2/TrackedUse;

    invoke-interface {v0}, Lorg/apache/commons/pool2/TrackedUse;->getLastUsed()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastUseTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 128
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastUseTime:J

    goto :goto_0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized getState()Lorg/apache/commons/pool2/PooledObjectState;
    .locals 1

    .prologue
    .line 268
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .locals 1

    .prologue
    .line 235
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/commons/pool2/PooledObjectState;->INVALID:Lorg/apache/commons/pool2/PooledObjectState;

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markAbandoned()V
    .locals 1

    .prologue
    .line 276
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/commons/pool2/PooledObjectState;->ABANDONED:Lorg/apache/commons/pool2/PooledObjectState;

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markReturning()V
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/commons/pool2/PooledObjectState;->RETURNING:Lorg/apache/commons/pool2/PooledObjectState;

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 246
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    const/4 v2, 0x0

    .line 247
    .local v2, "written":Z
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->borrowedBy:Ljava/lang/Exception;

    .line 248
    .local v0, "borrowedByCopy":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 250
    const/4 v2, 0x1

    .line 252
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->usedBy:Ljava/lang/Exception;

    .line 253
    .local v1, "usedByCopy":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {v1, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 255
    const/4 v2, 0x1

    .line 257
    :cond_1
    if-eqz v2, :cond_2

    .line 258
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 260
    :cond_2
    return-void
.end method

.method public setLogAbandoned(Z)V
    .locals 0
    .param p1, "logAbandoned"    # Z

    .prologue
    .line 289
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->logAbandoned:Z

    .line 290
    return-void
.end method

.method public declared-synchronized startEvictionTest()Z
    .locals 2

    .prologue
    .line 161
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;

    sget-object v1, Lorg/apache/commons/pool2/PooledObjectState;->IDLE:Lorg/apache/commons/pool2/PooledObjectState;

    if-ne v0, v1, :cond_0

    .line 162
    sget-object v0, Lorg/apache/commons/pool2/PooledObjectState;->EVICTION:Lorg/apache/commons/pool2/PooledObjectState;

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    const/4 v0, 0x1

    .line 166
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "Object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->object:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->state:Lorg/apache/commons/pool2/PooledObjectState;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/PooledObjectState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 154
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public use()V
    .locals 2

    .prologue
    .line 240
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultPooledObject;, "Lorg/apache/commons/pool2/impl/DefaultPooledObject<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->lastUseTime:J

    .line 241
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The last code to use this object was:"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->usedBy:Ljava/lang/Exception;

    .line 242
    return-void
.end method

.class public Lorg/apache/commons/pool2/impl/PooledSoftReference;
.super Lorg/apache/commons/pool2/impl/DefaultPooledObject;
.source "PooledSoftReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/pool2/impl/DefaultPooledObject",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile reference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/SoftReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    .local p1, "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/pool2/impl/DefaultPooledObject;-><init>(Ljava/lang/Object;)V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/PooledSoftReference;->reference:Ljava/lang/ref/SoftReference;

    .line 46
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/PooledSoftReference;->reference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getReference()Ljava/lang/ref/SoftReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/PooledSoftReference;->reference:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReference(Ljava/lang/ref/SoftReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    .local p1, "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/PooledSoftReference;->reference:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    .local p0, "this":Lorg/apache/commons/pool2/impl/PooledSoftReference;, "Lorg/apache/commons/pool2/impl/PooledSoftReference<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "Referenced Object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/PooledSoftReference;->getState()Lorg/apache/commons/pool2/PooledObjectState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/pool2/PooledObjectState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 72
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

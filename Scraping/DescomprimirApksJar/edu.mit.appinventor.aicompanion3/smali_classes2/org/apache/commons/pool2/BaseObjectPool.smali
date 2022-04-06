.class public abstract Lorg/apache/commons/pool2/BaseObjectPool;
.super Ljava/lang/Object;
.source "BaseObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool2/ObjectPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool2/ObjectPool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile closed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/commons/pool2/BaseObjectPool;, "Lorg/apache/commons/pool2/BaseObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/pool2/BaseObjectPool;->closed:Z

    return-void
.end method


# virtual methods
.method public addObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/commons/pool2/BaseObjectPool;, "Lorg/apache/commons/pool2/BaseObjectPool<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final assertOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/commons/pool2/BaseObjectPool;, "Lorg/apache/commons/pool2/BaseObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/BaseObjectPool;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pool not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    return-void
.end method

.method public abstract borrowObject()Ljava/lang/Object;
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
.end method

.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/commons/pool2/BaseObjectPool;, "Lorg/apache/commons/pool2/BaseObjectPool<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/commons/pool2/BaseObjectPool;, "Lorg/apache/commons/pool2/BaseObjectPool<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/pool2/BaseObjectPool;->closed:Z

    .line 95
    return-void
.end method

.method public getNumActive()I
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lorg/apache/commons/pool2/BaseObjectPool;, "Lorg/apache/commons/pool2/BaseObjectPool<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getNumIdle()I
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/commons/pool2/BaseObjectPool;, "Lorg/apache/commons/pool2/BaseObjectPool<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public abstract invalidateObject(Ljava/lang/Object;)V
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
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lorg/apache/commons/pool2/BaseObjectPool;, "Lorg/apache/commons/pool2/BaseObjectPool<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool2/BaseObjectPool;->closed:Z

    return v0
.end method

.method public abstract returnObject(Ljava/lang/Object;)V
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
.end method

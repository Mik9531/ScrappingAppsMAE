.class public interface abstract Lorg/apache/commons/pool2/PooledObject;
.super Ljava/lang/Object;
.source "PooledObject.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/pool2/PooledObject",
        "<TT;>;>;"
    }
.end annotation


# virtual methods
.method public abstract allocate()Z
.end method

.method public abstract compareTo(Lorg/apache/commons/pool2/PooledObject;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;)I"
        }
    .end annotation
.end method

.method public abstract deallocate()Z
.end method

.method public abstract endEvictionTest(Ljava/util/Deque;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;>;)Z"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getActiveTimeMillis()J
.end method

.method public abstract getCreateTime()J
.end method

.method public abstract getIdleTimeMillis()J
.end method

.method public abstract getLastBorrowTime()J
.end method

.method public abstract getLastReturnTime()J
.end method

.method public abstract getLastUsedTime()J
.end method

.method public abstract getObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getState()Lorg/apache/commons/pool2/PooledObjectState;
.end method

.method public abstract hashCode()I
.end method

.method public abstract invalidate()V
.end method

.method public abstract markAbandoned()V
.end method

.method public abstract markReturning()V
.end method

.method public abstract printStackTrace(Ljava/io/PrintWriter;)V
.end method

.method public abstract setLogAbandoned(Z)V
.end method

.method public abstract startEvictionTest()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract use()V
.end method

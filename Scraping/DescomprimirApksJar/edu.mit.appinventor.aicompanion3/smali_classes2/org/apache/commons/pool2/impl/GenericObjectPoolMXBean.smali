.class public interface abstract Lorg/apache/commons/pool2/impl/GenericObjectPoolMXBean;
.super Ljava/lang/Object;
.source "GenericObjectPoolMXBean.java"


# virtual methods
.method public abstract getBlockWhenExhausted()Z
.end method

.method public abstract getBorrowedCount()J
.end method

.method public abstract getCreatedCount()J
.end method

.method public abstract getCreationStackTrace()Ljava/lang/String;
.end method

.method public abstract getDestroyedByBorrowValidationCount()J
.end method

.method public abstract getDestroyedByEvictorCount()J
.end method

.method public abstract getDestroyedCount()J
.end method

.method public abstract getFactoryType()Ljava/lang/String;
.end method

.method public abstract getFairness()Z
.end method

.method public abstract getLifo()Z
.end method

.method public abstract getLogAbandoned()Z
.end method

.method public abstract getMaxBorrowWaitTimeMillis()J
.end method

.method public abstract getMaxIdle()I
.end method

.method public abstract getMaxTotal()I
.end method

.method public abstract getMaxWaitMillis()J
.end method

.method public abstract getMeanActiveTimeMillis()J
.end method

.method public abstract getMeanBorrowWaitTimeMillis()J
.end method

.method public abstract getMeanIdleTimeMillis()J
.end method

.method public abstract getMinEvictableIdleTimeMillis()J
.end method

.method public abstract getMinIdle()I
.end method

.method public abstract getNumActive()I
.end method

.method public abstract getNumIdle()I
.end method

.method public abstract getNumTestsPerEvictionRun()I
.end method

.method public abstract getNumWaiters()I
.end method

.method public abstract getRemoveAbandonedOnBorrow()Z
.end method

.method public abstract getRemoveAbandonedOnMaintenance()Z
.end method

.method public abstract getRemoveAbandonedTimeout()I
.end method

.method public abstract getReturnedCount()J
.end method

.method public abstract getTestOnBorrow()Z
.end method

.method public abstract getTestOnCreate()Z
.end method

.method public abstract getTestOnReturn()Z
.end method

.method public abstract getTestWhileIdle()Z
.end method

.method public abstract getTimeBetweenEvictionRunsMillis()J
.end method

.method public abstract isAbandonedConfig()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract listAllObjects()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;",
            ">;"
        }
    .end annotation
.end method

.class public interface abstract Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolMXBean;
.super Ljava/lang/Object;
.source "GenericKeyedObjectPoolMXBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


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

.method public abstract getFairness()Z
.end method

.method public abstract getLifo()Z
.end method

.method public abstract getMaxBorrowWaitTimeMillis()J
.end method

.method public abstract getMaxIdlePerKey()I
.end method

.method public abstract getMaxTotal()I
.end method

.method public abstract getMaxTotalPerKey()I
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

.method public abstract getMinIdlePerKey()I
.end method

.method public abstract getNumActive()I
.end method

.method public abstract getNumActivePerKey()Ljava/util/Map;
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
.end method

.method public abstract getNumIdle()I
.end method

.method public abstract getNumTestsPerEvictionRun()I
.end method

.method public abstract getNumWaiters()I
.end method

.method public abstract getNumWaitersByKey()Ljava/util/Map;
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

.method public abstract isClosed()Z
.end method

.method public abstract listAllObjects()Ljava/util/Map;
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
.end method

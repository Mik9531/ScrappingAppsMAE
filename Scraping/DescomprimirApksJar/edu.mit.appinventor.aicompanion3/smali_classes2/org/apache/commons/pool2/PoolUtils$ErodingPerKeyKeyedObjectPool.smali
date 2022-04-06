.class Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;
.super Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;
.source "PoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErodingPerKeyKeyedObjectPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final factor:F

.field private final factors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/KeyedObjectPool;F)V
    .locals 1
    .param p2, "factor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;F)V"
        }
    .end annotation

    .prologue
    .line 1775
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool<TK;TV;>;"
    .local p1, "keyedPool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;-><init>(Lorg/apache/commons/pool2/KeyedObjectPool;Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;)V

    .line 1762
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;->factors:Ljava/util/Map;

    .line 1776
    iput p2, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;->factor:F

    .line 1777
    return-void
.end method


# virtual methods
.method protected getErodingFactor(Ljava/lang/Object;)Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;"
        }
    .end annotation

    .prologue
    .line 1784
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;->factors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

    .line 1787
    .local v0, "eFactor":Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;
    if-nez v0, :cond_0

    .line 1788
    new-instance v0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

    .end local v0    # "eFactor":Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;
    iget v1, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;->factor:F

    invoke-direct {v0, v1}, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;-><init>(F)V

    .line 1789
    .restart local v0    # "eFactor":Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;->factors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1799
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErodingPerKeyKeyedObjectPool{factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;->factor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyedPool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1800
    invoke-virtual {p0}, Lorg/apache/commons/pool2/PoolUtils$ErodingPerKeyKeyedObjectPool;->getKeyedPool()Lorg/apache/commons/pool2/KeyedObjectPool;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;
.super Ljava/lang/Object;
.source "ProxiedKeyedObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool2/KeyedObjectPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool2/KeyedObjectPool",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final pool:Lorg/apache/commons/pool2/KeyedObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final proxySource:Lorg/apache/commons/pool2/proxy/ProxySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/proxy/ProxySource",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/KeyedObjectPool;Lorg/apache/commons/pool2/proxy/ProxySource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;",
            "Lorg/apache/commons/pool2/proxy/ProxySource",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool<TK;TV;>;"
    .local p1, "pool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    .local p2, "proxySource":Lorg/apache/commons/pool2/proxy/ProxySource;, "Lorg/apache/commons/pool2/proxy/ProxySource<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    .line 50
    iput-object p2, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->proxySource:Lorg/apache/commons/pool2/proxy/ProxySource;

    .line 51
    return-void
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->addObject(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public borrowObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 59
    .local v2, "usageTracking":Lorg/apache/commons/pool2/UsageTracking;, "Lorg/apache/commons/pool2/UsageTracking<TV;>;"
    iget-object v3, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    instance-of v3, v3, Lorg/apache/commons/pool2/UsageTracking;

    if-eqz v3, :cond_0

    .line 60
    iget-object v2, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    .end local v2    # "usageTracking":Lorg/apache/commons/pool2/UsageTracking;, "Lorg/apache/commons/pool2/UsageTracking<TV;>;"
    check-cast v2, Lorg/apache/commons/pool2/UsageTracking;

    .line 62
    .restart local v2    # "usageTracking":Lorg/apache/commons/pool2/UsageTracking;, "Lorg/apache/commons/pool2/UsageTracking<TV;>;"
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->borrowObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "pooledObject":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->proxySource:Lorg/apache/commons/pool2/proxy/ProxySource;

    invoke-interface {v3, v0, v2}, Lorg/apache/commons/pool2/proxy/ProxySource;->createProxy(Ljava/lang/Object;Lorg/apache/commons/pool2/UsageTracking;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, "proxy":Ljava/lang/Object;, "TV;"
    return-object v1
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
    .line 107
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/KeyedObjectPool;->clear()V

    .line 108
    return-void
.end method

.method public clear(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->clear(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/KeyedObjectPool;->close()V

    .line 118
    return-void
.end method

.method public getNumActive()I
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/KeyedObjectPool;->getNumActive()I

    move-result v0

    return v0
.end method

.method public getNumActive(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->getNumActive(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getNumIdle()I
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/KeyedObjectPool;->getNumIdle()I

    move-result v0

    return v0
.end method

.method public getNumIdle(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->getNumIdle(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "proxy":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->proxySource:Lorg/apache/commons/pool2/proxy/ProxySource;

    invoke-interface {v1, p2}, Lorg/apache/commons/pool2/proxy/ProxySource;->resolveProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "pooledObject":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v1, p1, v0}, Lorg/apache/commons/pool2/KeyedObjectPool;->invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "proxy":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->proxySource:Lorg/apache/commons/pool2/proxy/ProxySource;

    invoke-interface {v1, p2}, Lorg/apache/commons/pool2/proxy/ProxySource;->resolveProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "pooledObject":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/commons/pool2/proxy/ProxiedKeyedObjectPool;->pool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v1, p1, v0}, Lorg/apache/commons/pool2/KeyedObjectPool;->returnObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

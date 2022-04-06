.class public Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;
.super Ljava/lang/Object;
.source "ProxiedObjectPool.java"

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
.field private final pool:Lorg/apache/commons/pool2/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final proxySource:Lorg/apache/commons/pool2/proxy/ProxySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/proxy/ProxySource",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/ObjectPool;Lorg/apache/commons/pool2/proxy/ProxySource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;",
            "Lorg/apache/commons/pool2/proxy/ProxySource",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedObjectPool<TT;>;"
    .local p1, "pool":Lorg/apache/commons/pool2/ObjectPool;, "Lorg/apache/commons/pool2/ObjectPool<TT;>;"
    .local p2, "proxySource":Lorg/apache/commons/pool2/proxy/ProxySource;, "Lorg/apache/commons/pool2/proxy/ProxySource<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    .line 48
    iput-object p2, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->proxySource:Lorg/apache/commons/pool2/proxy/ProxySource;

    .line 49
    return-void
.end method


# virtual methods
.method public addObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/ObjectPool;->addObject()V

    .line 86
    return-void
.end method

.method public borrowObject()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
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
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedObjectPool<TT;>;"
    const/4 v2, 0x0

    .line 59
    .local v2, "usageTracking":Lorg/apache/commons/pool2/UsageTracking;, "Lorg/apache/commons/pool2/UsageTracking<TT;>;"
    iget-object v3, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    instance-of v3, v3, Lorg/apache/commons/pool2/UsageTracking;

    if-eqz v3, :cond_0

    .line 60
    iget-object v2, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    .end local v2    # "usageTracking":Lorg/apache/commons/pool2/UsageTracking;, "Lorg/apache/commons/pool2/UsageTracking<TT;>;"
    check-cast v2, Lorg/apache/commons/pool2/UsageTracking;

    .line 62
    .restart local v2    # "usageTracking":Lorg/apache/commons/pool2/UsageTracking;, "Lorg/apache/commons/pool2/UsageTracking<TT;>;"
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v3}, Lorg/apache/commons/pool2/ObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "pooledObject":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->proxySource:Lorg/apache/commons/pool2/proxy/ProxySource;

    invoke-interface {v3, v0, v2}, Lorg/apache/commons/pool2/proxy/ProxySource;->createProxy(Ljava/lang/Object;Lorg/apache/commons/pool2/UsageTracking;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, "proxy":Ljava/lang/Object;, "TT;"
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
    .line 103
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/ObjectPool;->clear()V

    .line 104
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/ObjectPool;->close()V

    .line 110
    return-void
.end method

.method public getNumActive()I
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/ObjectPool;->getNumActive()I

    move-result v0

    return v0
.end method

.method public getNumIdle()I
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/ObjectPool;->getNumIdle()I

    move-result v0

    return v0
.end method

.method public invalidateObject(Ljava/lang/Object;)V
    .locals 2
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
    .line 77
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedObjectPool<TT;>;"
    .local p1, "proxy":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->proxySource:Lorg/apache/commons/pool2/proxy/ProxySource;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool2/proxy/ProxySource;->resolveProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "pooledObject":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v1, v0}, Lorg/apache/commons/pool2/ObjectPool;->invalidateObject(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public returnObject(Ljava/lang/Object;)V
    .locals 2
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
    .line 70
    .local p0, "this":Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;, "Lorg/apache/commons/pool2/proxy/ProxiedObjectPool<TT;>;"
    .local p1, "proxy":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->proxySource:Lorg/apache/commons/pool2/proxy/ProxySource;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool2/proxy/ProxySource;->resolveProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "pooledObject":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/pool2/proxy/ProxiedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v1, v0}, Lorg/apache/commons/pool2/ObjectPool;->returnObject(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

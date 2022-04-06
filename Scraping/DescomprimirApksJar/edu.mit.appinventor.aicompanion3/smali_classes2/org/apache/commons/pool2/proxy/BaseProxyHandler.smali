.class Lorg/apache/commons/pool2/proxy/BaseProxyHandler;
.super Ljava/lang/Object;
.source "BaseProxyHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile pooledObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final usageTracking:Lorg/apache/commons/pool2/UsageTracking;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/UsageTracking",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/apache/commons/pool2/UsageTracking;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/pool2/UsageTracking",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/commons/pool2/proxy/BaseProxyHandler;, "Lorg/apache/commons/pool2/proxy/BaseProxyHandler<TT;>;"
    .local p1, "pooledObject":Ljava/lang/Object;, "TT;"
    .local p2, "usageTracking":Lorg/apache/commons/pool2/UsageTracking;, "Lorg/apache/commons/pool2/UsageTracking<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/commons/pool2/proxy/BaseProxyHandler;->pooledObject:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lorg/apache/commons/pool2/proxy/BaseProxyHandler;->usageTracking:Lorg/apache/commons/pool2/UsageTracking;

    .line 48
    return-void
.end method


# virtual methods
.method disableProxy()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/commons/pool2/proxy/BaseProxyHandler;, "Lorg/apache/commons/pool2/proxy/BaseProxyHandler<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/BaseProxyHandler;->pooledObject:Ljava/lang/Object;

    .line 70
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/pool2/proxy/BaseProxyHandler;->pooledObject:Ljava/lang/Object;

    .line 71
    return-object v0
.end method

.method doInvoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lorg/apache/commons/pool2/proxy/BaseProxyHandler;, "Lorg/apache/commons/pool2/proxy/BaseProxyHandler<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/proxy/BaseProxyHandler;->validateProxiedObject()V

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/pool2/proxy/BaseProxyHandler;->getPooledObject()Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/pool2/proxy/BaseProxyHandler;->usageTracking:Lorg/apache/commons/pool2/UsageTracking;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/apache/commons/pool2/proxy/BaseProxyHandler;->usageTracking:Lorg/apache/commons/pool2/UsageTracking;

    invoke-interface {v1, v0}, Lorg/apache/commons/pool2/UsageTracking;->use(Ljava/lang/Object;)V

    .line 103
    :cond_0
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method getPooledObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/commons/pool2/proxy/BaseProxyHandler;, "Lorg/apache/commons/pool2/proxy/BaseProxyHandler<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/BaseProxyHandler;->pooledObject:Ljava/lang/Object;

    return-object v0
.end method

.method validateProxiedObject()V
    .locals 2

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/commons/pool2/proxy/BaseProxyHandler;, "Lorg/apache/commons/pool2/proxy/BaseProxyHandler<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/BaseProxyHandler;->pooledObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object may no longer be used as it has been returned to the Object Pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    return-void
.end method

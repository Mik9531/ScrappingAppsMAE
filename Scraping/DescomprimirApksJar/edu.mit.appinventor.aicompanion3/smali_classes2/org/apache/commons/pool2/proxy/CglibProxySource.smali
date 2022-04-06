.class public Lorg/apache/commons/pool2/proxy/CglibProxySource;
.super Ljava/lang/Object;
.source "CglibProxySource.java"

# interfaces
.implements Lorg/apache/commons/pool2/proxy/ProxySource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool2/proxy/ProxySource",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final superclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/commons/pool2/proxy/CglibProxySource;, "Lorg/apache/commons/pool2/proxy/CglibProxySource<TT;>;"
    .local p1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/commons/pool2/proxy/CglibProxySource;->superclass:Ljava/lang/Class;

    .line 42
    return-void
.end method


# virtual methods
.method public createProxy(Ljava/lang/Object;Lorg/apache/commons/pool2/UsageTracking;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/pool2/UsageTracking",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/commons/pool2/proxy/CglibProxySource;, "Lorg/apache/commons/pool2/proxy/CglibProxySource<TT;>;"
    .local p1, "pooledObject":Ljava/lang/Object;, "TT;"
    .local p2, "usageTracking":Lorg/apache/commons/pool2/UsageTracking;, "Lorg/apache/commons/pool2/UsageTracking<TT;>;"
    new-instance v0, Lnet/sf/cglib/proxy/Enhancer;

    invoke-direct {v0}, Lnet/sf/cglib/proxy/Enhancer;-><init>()V

    .line 48
    .local v0, "enhancer":Lnet/sf/cglib/proxy/Enhancer;
    iget-object v3, p0, Lorg/apache/commons/pool2/proxy/CglibProxySource;->superclass:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lnet/sf/cglib/proxy/Enhancer;->setSuperclass(Ljava/lang/Class;)V

    .line 50
    new-instance v2, Lorg/apache/commons/pool2/proxy/CglibProxyHandler;

    invoke-direct {v2, p1, p2}, Lorg/apache/commons/pool2/proxy/CglibProxyHandler;-><init>(Ljava/lang/Object;Lorg/apache/commons/pool2/UsageTracking;)V

    .line 52
    .local v2, "proxyInterceptor":Lorg/apache/commons/pool2/proxy/CglibProxyHandler;, "Lorg/apache/commons/pool2/proxy/CglibProxyHandler<TT;>;"
    invoke-virtual {v0, v2}, Lnet/sf/cglib/proxy/Enhancer;->setCallback(Lnet/sf/cglib/proxy/Callback;)V

    .line 55
    invoke-virtual {v0}, Lnet/sf/cglib/proxy/Enhancer;->create()Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "proxy":Ljava/lang/Object;, "TT;"
    return-object v1
.end method

.method public resolveProxy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/commons/pool2/proxy/CglibProxySource;, "Lorg/apache/commons/pool2/proxy/CglibProxySource<TT;>;"
    .local p1, "proxy":Ljava/lang/Object;, "TT;"
    check-cast p1, Lnet/sf/cglib/proxy/Factory;

    .end local p1    # "proxy":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 65
    invoke-interface {p1, v2}, Lnet/sf/cglib/proxy/Factory;->getCallback(I)Lnet/sf/cglib/proxy/Callback;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool2/proxy/CglibProxyHandler;

    .line 66
    .local v0, "cglibProxyHandler":Lorg/apache/commons/pool2/proxy/CglibProxyHandler;, "Lorg/apache/commons/pool2/proxy/CglibProxyHandler<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/pool2/proxy/CglibProxyHandler;->disableProxy()Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "pooledObject":Ljava/lang/Object;, "TT;"
    return-object v1
.end method

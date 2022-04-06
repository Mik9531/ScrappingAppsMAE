.class public Lorg/apache/commons/pool2/proxy/JdkProxySource;
.super Ljava/lang/Object;
.source "JdkProxySource.java"

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
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final interfaces:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V
    .locals 3
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/proxy/JdkProxySource;, "Lorg/apache/commons/pool2/proxy/JdkProxySource<TT;>;"
    .local p2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/commons/pool2/proxy/JdkProxySource;->classLoader:Ljava/lang/ClassLoader;

    .line 45
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/commons/pool2/proxy/JdkProxySource;->interfaces:[Ljava/lang/Class;

    .line 46
    iget-object v0, p0, Lorg/apache/commons/pool2/proxy/JdkProxySource;->interfaces:[Ljava/lang/Class;

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
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
    .line 53
    .local p0, "this":Lorg/apache/commons/pool2/proxy/JdkProxySource;, "Lorg/apache/commons/pool2/proxy/JdkProxySource<TT;>;"
    .local p1, "pooledObject":Ljava/lang/Object;, "TT;"
    .local p2, "usageTracking":Lorg/apache/commons/pool2/UsageTracking;, "Lorg/apache/commons/pool2/UsageTracking<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/proxy/JdkProxySource;->classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lorg/apache/commons/pool2/proxy/JdkProxySource;->interfaces:[Ljava/lang/Class;

    new-instance v3, Lorg/apache/commons/pool2/proxy/JdkProxyHandler;

    invoke-direct {v3, p1, p2}, Lorg/apache/commons/pool2/proxy/JdkProxyHandler;-><init>(Ljava/lang/Object;Lorg/apache/commons/pool2/UsageTracking;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "proxy":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public resolveProxy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 62
    .line 63
    .local p0, "this":Lorg/apache/commons/pool2/proxy/JdkProxySource;, "Lorg/apache/commons/pool2/proxy/JdkProxySource<TT;>;"
    .local p1, "proxy":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool2/proxy/JdkProxyHandler;

    .line 64
    .local v0, "jdkProxyHandler":Lorg/apache/commons/pool2/proxy/JdkProxyHandler;, "Lorg/apache/commons/pool2/proxy/JdkProxyHandler<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/pool2/proxy/JdkProxyHandler;->disableProxy()Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "pooledObject":Ljava/lang/Object;, "TT;"
    return-object v1
.end method

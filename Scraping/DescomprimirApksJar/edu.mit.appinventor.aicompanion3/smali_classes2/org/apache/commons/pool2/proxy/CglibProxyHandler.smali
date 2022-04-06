.class Lorg/apache/commons/pool2/proxy/CglibProxyHandler;
.super Lorg/apache/commons/pool2/proxy/BaseProxyHandler;
.source "CglibProxyHandler.java"

# interfaces
.implements Lnet/sf/cglib/proxy/MethodInterceptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/pool2/proxy/BaseProxyHandler",
        "<TT;>;",
        "Lnet/sf/cglib/proxy/MethodInterceptor;"
    }
.end annotation


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
    .line 46
    .local p0, "this":Lorg/apache/commons/pool2/proxy/CglibProxyHandler;, "Lorg/apache/commons/pool2/proxy/CglibProxyHandler<TT;>;"
    .local p1, "pooledObject":Ljava/lang/Object;, "TT;"
    .local p2, "usageTracking":Lorg/apache/commons/pool2/UsageTracking;, "Lorg/apache/commons/pool2/UsageTracking<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/pool2/proxy/BaseProxyHandler;-><init>(Ljava/lang/Object;Lorg/apache/commons/pool2/UsageTracking;)V

    .line 47
    return-void
.end method


# virtual methods
.method public intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lnet/sf/cglib/proxy/MethodProxy;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "methodProxy"    # Lnet/sf/cglib/proxy/MethodProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/commons/pool2/proxy/CglibProxyHandler;, "Lorg/apache/commons/pool2/proxy/CglibProxyHandler<TT;>;"
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/pool2/proxy/CglibProxyHandler;->doInvoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

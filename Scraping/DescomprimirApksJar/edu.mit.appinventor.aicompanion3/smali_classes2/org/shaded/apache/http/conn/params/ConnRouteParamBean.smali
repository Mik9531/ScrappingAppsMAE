.class public Lorg/shaded/apache/http/conn/params/ConnRouteParamBean;
.super Lorg/shaded/apache/http/params/HttpAbstractParamBean;
.source "ConnRouteParamBean.java"


# annotations
.annotation build Lorg/shaded/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/shaded/apache/http/params/HttpParams;)V

    .line 51
    return-void
.end method


# virtual methods
.method public setDefaultProxy(Lorg/shaded/apache/http/HttpHost;)V
    .locals 2
    .param p1, "defaultProxy"    # Lorg/shaded/apache/http/HttpHost;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/shaded/apache/http/conn/params/ConnRouteParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1, p1}, Lorg/shaded/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/shaded/apache/http/params/HttpParams;

    .line 56
    return-void
.end method

.method public setForcedRoute(Lorg/shaded/apache/http/conn/routing/HttpRoute;)V
    .locals 2
    .param p1, "route"    # Lorg/shaded/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/shaded/apache/http/conn/params/ConnRouteParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    const-string v1, "http.route.forced-route"

    invoke-interface {v0, v1, p1}, Lorg/shaded/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/shaded/apache/http/params/HttpParams;

    .line 66
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/shaded/apache/http/conn/params/ConnRouteParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    const-string v1, "http.route.local-address"

    invoke-interface {v0, v1, p1}, Lorg/shaded/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/shaded/apache/http/params/HttpParams;

    .line 61
    return-void
.end method

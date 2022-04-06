.class public final Lorg/shaded/apache/http/conn/params/ConnManagerParams;
.super Ljava/lang/Object;
.source "ConnManagerParams.java"

# interfaces
.implements Lorg/shaded/apache/http/conn/params/ConnManagerPNames;


# annotations
.annotation build Lorg/shaded/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final DEFAULT_CONN_PER_ROUTE:Lorg/shaded/apache/http/conn/params/ConnPerRoute;

.field public static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lorg/shaded/apache/http/conn/params/ConnManagerParams$1;

    invoke-direct {v0}, Lorg/shaded/apache/http/conn/params/ConnManagerParams$1;-><init>()V

    sput-object v0, Lorg/shaded/apache/http/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lorg/shaded/apache/http/conn/params/ConnPerRoute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxConnectionsPerRoute(Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/conn/params/ConnPerRoute;
    .locals 3
    .param p0, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 113
    if-nez p0, :cond_0

    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP parameters must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    const-string v1, "http.conn-manager.max-per-route"

    invoke-interface {p0, v1}, Lorg/shaded/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/http/conn/params/ConnPerRoute;

    .line 118
    .local v0, "connPerRoute":Lorg/shaded/apache/http/conn/params/ConnPerRoute;
    if-nez v0, :cond_1

    .line 119
    sget-object v0, Lorg/shaded/apache/http/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lorg/shaded/apache/http/conn/params/ConnPerRoute;

    .line 121
    :cond_1
    return-object v0
.end method

.method public static getMaxTotalConnections(Lorg/shaded/apache/http/params/HttpParams;)I
    .locals 2
    .param p0, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    const-string v0, "http.conn-manager.max-total"

    const/16 v1, 0x14

    invoke-interface {p0, v0, v1}, Lorg/shaded/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTimeout(Lorg/shaded/apache/http/params/HttpParams;)J
    .locals 4
    .param p0, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    const-string v0, "http.conn-manager.timeout"

    const-wide/16 v2, 0x0

    invoke-interface {p0, v0, v2, v3}, Lorg/shaded/apache/http/params/HttpParams;->getLongParameter(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static setMaxConnectionsPerRoute(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/conn/params/ConnPerRoute;)V
    .locals 2
    .param p0, "params"    # Lorg/shaded/apache/http/params/HttpParams;
    .param p1, "connPerRoute"    # Lorg/shaded/apache/http/conn/params/ConnPerRoute;

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    const-string v0, "http.conn-manager.max-per-route"

    invoke-interface {p0, v0, p1}, Lorg/shaded/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/shaded/apache/http/params/HttpParams;

    .line 101
    return-void
.end method

.method public static setMaxTotalConnections(Lorg/shaded/apache/http/params/HttpParams;I)V
    .locals 2
    .param p0, "params"    # Lorg/shaded/apache/http/params/HttpParams;
    .param p1, "maxTotalConnections"    # I

    .prologue
    .line 136
    if-nez p0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    const-string v0, "http.conn-manager.max-total"

    invoke-interface {p0, v0, p1}, Lorg/shaded/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/shaded/apache/http/params/HttpParams;

    .line 141
    return-void
.end method

.method public static setTimeout(Lorg/shaded/apache/http/params/HttpParams;J)V
    .locals 3
    .param p0, "params"    # Lorg/shaded/apache/http/params/HttpParams;
    .param p1, "timeout"    # J

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    const-string v0, "http.conn-manager.timeout"

    invoke-interface {p0, v0, p1, p2}, Lorg/shaded/apache/http/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lorg/shaded/apache/http/params/HttpParams;

    .line 74
    return-void
.end method

.class public Lorg/shaded/apache/http/protocol/ResponseConnControl;
.super Ljava/lang/Object;
.source "ResponseConnControl.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpResponseInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public process(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 10
    .param p1, "response"    # Lorg/shaded/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP response may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 68
    :cond_0
    if-nez p2, :cond_1

    .line 69
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP context may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 72
    :cond_1
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 73
    .local v3, "status":I
    const/16 v5, 0x190

    if-eq v3, v5, :cond_2

    const/16 v5, 0x198

    if-eq v3, v5, :cond_2

    const/16 v5, 0x19b

    if-eq v3, v5, :cond_2

    const/16 v5, 0x19d

    if-eq v3, v5, :cond_2

    const/16 v5, 0x19e

    if-eq v3, v5, :cond_2

    const/16 v5, 0x1f7

    if-eq v3, v5, :cond_2

    const/16 v5, 0x1f5

    if-ne v3, v5, :cond_4

    .line 80
    :cond_2
    const-string v5, "Connection"

    const-string v6, "Close"

    invoke-interface {p1, v5, v6}, Lorg/shaded/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_3
    :goto_0
    return-void

    .line 85
    :cond_4
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object v0

    .line 86
    .local v0, "entity":Lorg/shaded/apache/http/HttpEntity;
    if-eqz v0, :cond_6

    .line 87
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/shaded/apache/http/StatusLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v4

    .line 88
    .local v4, "ver":Lorg/shaded/apache/http/ProtocolVersion;
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_6

    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->isChunked()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    invoke-virtual {v4, v5}, Lorg/shaded/apache/http/ProtocolVersion;->lessEquals(Lorg/shaded/apache/http/ProtocolVersion;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 90
    :cond_5
    const-string v5, "Connection"

    const-string v6, "Close"

    invoke-interface {p1, v5, v6}, Lorg/shaded/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v4    # "ver":Lorg/shaded/apache/http/ProtocolVersion;
    :cond_6
    const-string v5, "http.request"

    invoke-interface {p2, v5}, Lorg/shaded/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/shaded/apache/http/HttpRequest;

    .line 97
    .local v2, "request":Lorg/shaded/apache/http/HttpRequest;
    if-eqz v2, :cond_3

    .line 98
    const-string v5, "Connection"

    invoke-interface {v2, v5}, Lorg/shaded/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/shaded/apache/http/Header;

    move-result-object v1

    .line 99
    .local v1, "header":Lorg/shaded/apache/http/Header;
    if-eqz v1, :cond_3

    .line 100
    const-string v5, "Connection"

    invoke-interface {v1}, Lorg/shaded/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/shaded/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

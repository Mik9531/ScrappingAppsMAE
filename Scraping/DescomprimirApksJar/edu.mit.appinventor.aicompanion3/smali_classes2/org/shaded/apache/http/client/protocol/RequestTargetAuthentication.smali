.class public Lorg/shaded/apache/http/client/protocol/RequestTargetAuthentication;
.super Ljava/lang/Object;
.source "RequestTargetAuthentication.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpRequestInterceptor;


# annotations
.annotation build Lorg/shaded/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final log:Lorg/shaded/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/shaded/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/shaded/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/client/protocol/RequestTargetAuthentication;->log:Lorg/shaded/apache/commons/logging/Log;

    .line 59
    return-void
.end method


# virtual methods
.method public process(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP request may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP context may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 70
    :cond_1
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/shaded/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "method":Ljava/lang/String;
    const-string v5, "CONNECT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 106
    :cond_2
    :goto_0
    return-void

    .line 75
    :cond_3
    const-string v5, "Authorization"

    invoke-interface {p1, v5}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 80
    const-string v5, "http.auth.target-scope"

    invoke-interface {p2, v5}, Lorg/shaded/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/shaded/apache/http/auth/AuthState;

    .line 82
    .local v1, "authState":Lorg/shaded/apache/http/auth/AuthState;
    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {v1}, Lorg/shaded/apache/http/auth/AuthState;->getAuthScheme()Lorg/shaded/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 87
    .local v0, "authScheme":Lorg/shaded/apache/http/auth/AuthScheme;
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v1}, Lorg/shaded/apache/http/auth/AuthState;->getCredentials()Lorg/shaded/apache/http/auth/Credentials;

    move-result-object v2

    .line 92
    .local v2, "creds":Lorg/shaded/apache/http/auth/Credentials;
    if-nez v2, :cond_4

    .line 93
    iget-object v5, p0, Lorg/shaded/apache/http/client/protocol/RequestTargetAuthentication;->log:Lorg/shaded/apache/commons/logging/Log;

    const-string v6, "User credentials not available"

    invoke-interface {v5, v6}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {v1}, Lorg/shaded/apache/http/auth/AuthState;->getAuthScope()Lorg/shaded/apache/http/auth/AuthScope;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-interface {v0}, Lorg/shaded/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v5

    if-nez v5, :cond_2

    .line 99
    :cond_5
    :try_start_0
    invoke-interface {v0, v2, p1}, Lorg/shaded/apache/http/auth/AuthScheme;->authenticate(Lorg/shaded/apache/http/auth/Credentials;Lorg/shaded/apache/http/HttpRequest;)Lorg/shaded/apache/http/Header;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Lorg/shaded/apache/http/Header;)V
    :try_end_0
    .catch Lorg/shaded/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v3

    .line 101
    .local v3, "ex":Lorg/shaded/apache/http/auth/AuthenticationException;
    iget-object v5, p0, Lorg/shaded/apache/http/client/protocol/RequestTargetAuthentication;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/shaded/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 102
    iget-object v5, p0, Lorg/shaded/apache/http/client/protocol/RequestTargetAuthentication;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Authentication error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/shaded/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/shaded/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0
.end method

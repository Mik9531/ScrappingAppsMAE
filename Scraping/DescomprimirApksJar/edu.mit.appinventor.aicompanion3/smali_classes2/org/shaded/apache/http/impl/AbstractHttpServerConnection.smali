.class public abstract Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;
.super Ljava/lang/Object;
.source "AbstractHttpServerConnection.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpServerConnection;


# instance fields
.field private final entitydeserializer:Lorg/shaded/apache/http/impl/entity/EntityDeserializer;

.field private final entityserializer:Lorg/shaded/apache/http/impl/entity/EntitySerializer;

.field private eofSensor:Lorg/shaded/apache/http/io/EofSensor;

.field private inbuffer:Lorg/shaded/apache/http/io/SessionInputBuffer;

.field private metrics:Lorg/shaded/apache/http/impl/HttpConnectionMetricsImpl;

.field private outbuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;

.field private requestParser:Lorg/shaded/apache/http/io/HttpMessageParser;

.field private responseWriter:Lorg/shaded/apache/http/io/HttpMessageWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->inbuffer:Lorg/shaded/apache/http/io/SessionInputBuffer;

    .line 76
    iput-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->outbuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;

    .line 77
    iput-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->eofSensor:Lorg/shaded/apache/http/io/EofSensor;

    .line 78
    iput-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->requestParser:Lorg/shaded/apache/http/io/HttpMessageParser;

    .line 79
    iput-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->responseWriter:Lorg/shaded/apache/http/io/HttpMessageWriter;

    .line 80
    iput-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->metrics:Lorg/shaded/apache/http/impl/HttpConnectionMetricsImpl;

    .line 92
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->createEntitySerializer()Lorg/shaded/apache/http/impl/entity/EntitySerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->entityserializer:Lorg/shaded/apache/http/impl/entity/EntitySerializer;

    .line 93
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->createEntityDeserializer()Lorg/shaded/apache/http/impl/entity/EntityDeserializer;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->entitydeserializer:Lorg/shaded/apache/http/impl/entity/EntityDeserializer;

    .line 94
    return-void
.end method


# virtual methods
.method protected abstract assertOpen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method protected createEntityDeserializer()Lorg/shaded/apache/http/impl/entity/EntityDeserializer;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lorg/shaded/apache/http/impl/entity/EntityDeserializer;

    new-instance v1, Lorg/shaded/apache/http/impl/entity/LaxContentLengthStrategy;

    invoke-direct {v1}, Lorg/shaded/apache/http/impl/entity/LaxContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lorg/shaded/apache/http/impl/entity/EntityDeserializer;-><init>(Lorg/shaded/apache/http/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createEntitySerializer()Lorg/shaded/apache/http/impl/entity/EntitySerializer;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lorg/shaded/apache/http/impl/entity/EntitySerializer;

    new-instance v1, Lorg/shaded/apache/http/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v1}, Lorg/shaded/apache/http/impl/entity/StrictContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lorg/shaded/apache/http/impl/entity/EntitySerializer;-><init>(Lorg/shaded/apache/http/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createHttpRequestFactory()Lorg/shaded/apache/http/HttpRequestFactory;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lorg/shaded/apache/http/impl/DefaultHttpRequestFactory;

    invoke-direct {v0}, Lorg/shaded/apache/http/impl/DefaultHttpRequestFactory;-><init>()V

    return-object v0
.end method

.method protected createRequestParser(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/HttpRequestFactory;Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/HttpMessageParser;
    .locals 2
    .param p1, "buffer"    # Lorg/shaded/apache/http/io/SessionInputBuffer;
    .param p2, "requestFactory"    # Lorg/shaded/apache/http/HttpRequestFactory;
    .param p3, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 165
    new-instance v0, Lorg/shaded/apache/http/impl/io/HttpRequestParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/shaded/apache/http/impl/io/HttpRequestParser;-><init>(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/message/LineParser;Lorg/shaded/apache/http/HttpRequestFactory;Lorg/shaded/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected createResponseWriter(Lorg/shaded/apache/http/io/SessionOutputBuffer;Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/HttpMessageWriter;
    .locals 2
    .param p1, "buffer"    # Lorg/shaded/apache/http/io/SessionOutputBuffer;
    .param p2, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 184
    new-instance v0, Lorg/shaded/apache/http/impl/io/HttpResponseWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lorg/shaded/apache/http/impl/io/HttpResponseWriter;-><init>(Lorg/shaded/apache/http/io/SessionOutputBuffer;Lorg/shaded/apache/http/message/LineFormatter;Lorg/shaded/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected doFlush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->outbuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/shaded/apache/http/io/SessionOutputBuffer;->flush()V

    .line 249
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 253
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->doFlush()V

    .line 254
    return-void
.end method

.method public getMetrics()Lorg/shaded/apache/http/HttpConnectionMetrics;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->metrics:Lorg/shaded/apache/http/impl/HttpConnectionMetricsImpl;

    return-object v0
.end method

.method protected init(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/io/SessionOutputBuffer;Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "inbuffer"    # Lorg/shaded/apache/http/io/SessionInputBuffer;
    .param p2, "outbuffer"    # Lorg/shaded/apache/http/io/SessionOutputBuffer;
    .param p3, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input session buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    if-nez p2, :cond_1

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output session buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    iput-object p1, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->inbuffer:Lorg/shaded/apache/http/io/SessionInputBuffer;

    .line 214
    iput-object p2, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->outbuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;

    .line 215
    instance-of v0, p1, Lorg/shaded/apache/http/io/EofSensor;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 216
    check-cast v0, Lorg/shaded/apache/http/io/EofSensor;

    iput-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->eofSensor:Lorg/shaded/apache/http/io/EofSensor;

    .line 218
    :cond_2
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->createHttpRequestFactory()Lorg/shaded/apache/http/HttpRequestFactory;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->createRequestParser(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/HttpRequestFactory;Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/HttpMessageParser;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->requestParser:Lorg/shaded/apache/http/io/HttpMessageParser;

    .line 222
    invoke-virtual {p0, p2, p3}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->createResponseWriter(Lorg/shaded/apache/http/io/SessionOutputBuffer;Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/HttpMessageWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->responseWriter:Lorg/shaded/apache/http/io/HttpMessageWriter;

    .line 224
    new-instance v0, Lorg/shaded/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-interface {p1}, Lorg/shaded/apache/http/io/SessionInputBuffer;->getMetrics()Lorg/shaded/apache/http/io/HttpTransportMetrics;

    move-result-object v1

    invoke-interface {p2}, Lorg/shaded/apache/http/io/SessionOutputBuffer;->getMetrics()Lorg/shaded/apache/http/io/HttpTransportMetrics;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/shaded/apache/http/impl/HttpConnectionMetricsImpl;-><init>(Lorg/shaded/apache/http/io/HttpTransportMetrics;Lorg/shaded/apache/http/io/HttpTransportMetrics;)V

    iput-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->metrics:Lorg/shaded/apache/http/impl/HttpConnectionMetricsImpl;

    .line 227
    return-void
.end method

.method protected isEof()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->eofSensor:Lorg/shaded/apache/http/io/EofSensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->eofSensor:Lorg/shaded/apache/http/io/EofSensor;

    invoke-interface {v0}, Lorg/shaded/apache/http/io/EofSensor;->isEof()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStale()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 284
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v1

    .line 287
    :cond_1
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->isEof()Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    :try_start_0
    iget-object v2, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->inbuffer:Lorg/shaded/apache/http/io/SessionInputBuffer;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/shaded/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z

    .line 292
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->isEof()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public receiveRequestEntity(Lorg/shaded/apache/http/HttpEntityEnclosingRequest;)V
    .locals 3
    .param p1, "request"    # Lorg/shaded/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 240
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP request may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 243
    iget-object v1, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->entitydeserializer:Lorg/shaded/apache/http/impl/entity/EntityDeserializer;

    iget-object v2, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->inbuffer:Lorg/shaded/apache/http/io/SessionInputBuffer;

    invoke-virtual {v1, v2, p1}, Lorg/shaded/apache/http/impl/entity/EntityDeserializer;->deserialize(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/HttpMessage;)Lorg/shaded/apache/http/HttpEntity;

    move-result-object v0

    .line 244
    .local v0, "entity":Lorg/shaded/apache/http/HttpEntity;
    invoke-interface {p1, v0}, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/shaded/apache/http/HttpEntity;)V

    .line 245
    return-void
.end method

.method public receiveRequestHeader()Lorg/shaded/apache/http/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 232
    iget-object v1, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->requestParser:Lorg/shaded/apache/http/io/HttpMessageParser;

    invoke-interface {v1}, Lorg/shaded/apache/http/io/HttpMessageParser;->parse()Lorg/shaded/apache/http/HttpMessage;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/http/HttpRequest;

    .line 233
    .local v0, "request":Lorg/shaded/apache/http/HttpRequest;
    iget-object v1, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->metrics:Lorg/shaded/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v1}, Lorg/shaded/apache/http/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    .line 234
    return-object v0
.end method

.method public sendResponseEntity(Lorg/shaded/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lorg/shaded/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->entityserializer:Lorg/shaded/apache/http/impl/entity/EntitySerializer;

    iget-object v1, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->outbuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;

    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/shaded/apache/http/impl/entity/EntitySerializer;->serialize(Lorg/shaded/apache/http/io/SessionOutputBuffer;Lorg/shaded/apache/http/HttpMessage;Lorg/shaded/apache/http/HttpEntity;)V

    goto :goto_0
.end method

.method public sendResponseHeader(Lorg/shaded/apache/http/HttpResponse;)V
    .locals 2
    .param p1, "response"    # Lorg/shaded/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 262
    iget-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->responseWriter:Lorg/shaded/apache/http/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lorg/shaded/apache/http/io/HttpMessageWriter;->write(Lorg/shaded/apache/http/HttpMessage;)V

    .line 263
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    .line 264
    iget-object v0, p0, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;->metrics:Lorg/shaded/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lorg/shaded/apache/http/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    .line 266
    :cond_1
    return-void
.end method

.class public final Lcom/google/api/services/fusiontables/Fusiontables$Builder;
.super Lcom/google/api/client/googleapis/services/GoogleClient$Builder;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3547
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;)V

    .line 3548
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 6

    .prologue
    .line 3560
    const-string v3, "https://www.googleapis.com/"

    const-string v4, "fusiontables/v1/"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 3561
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/api/client/googleapis/services/GoogleClient;
    .locals 1

    .prologue
    .line 3536
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->build()Lcom/google/api/services/fusiontables/Fusiontables;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/api/client/http/json/JsonHttpClient;
    .locals 1

    .prologue
    .line 3536
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->build()Lcom/google/api/services/fusiontables/Fusiontables;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/api/services/fusiontables/Fusiontables;
    .locals 9

    .prologue
    .line 3567
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->isBaseUrlUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3568
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getHttpRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getObjectParser()Lcom/google/api/client/json/JsonObjectParser;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getBaseUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getApplicationName()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/api/services/fusiontables/Fusiontables;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 3577
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getHttpRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getObjectParser()Lcom/google/api/client/json/JsonObjectParser;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getRootUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getServicePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->getApplicationName()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/api/services/fusiontables/Fusiontables;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 1

    .prologue
    .line 3536
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;
    .locals 0

    .prologue
    .line 3622
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;

    .line 3623
    return-object p0
.end method

.method public bridge synthetic setBaseUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 1

    .prologue
    .line 3536
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setBaseUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBaseUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3591
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->setBaseUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;

    .line 3592
    return-object p0
.end method

.method public bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 1

    .prologue
    .line 3536
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;
    .locals 0

    .prologue
    .line 3616
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;

    .line 3617
    return-object p0
.end method

.method public bridge synthetic setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 1

    .prologue
    .line 3536
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;
    .locals 0

    .prologue
    .line 3610
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;

    .line 3611
    return-object p0
.end method

.method public bridge synthetic setObjectParser(Lcom/google/api/client/json/JsonObjectParser;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 1

    .prologue
    .line 3536
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setObjectParser(Lcom/google/api/client/json/JsonObjectParser;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setObjectParser(Lcom/google/api/client/json/JsonObjectParser;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;
    .locals 0

    .prologue
    .line 3628
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->setObjectParser(Lcom/google/api/client/json/JsonObjectParser;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;

    .line 3629
    return-object p0
.end method

.method public bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 1

    .prologue
    .line 3536
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRootUrl(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;
    .locals 0

    .prologue
    .line 3597
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;

    .line 3598
    return-object p0
.end method

.method public bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 1

    .prologue
    .line 3536
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setServicePath(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;
    .locals 0

    .prologue
    .line 3603
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;

    .line 3604
    return-object p0
.end method

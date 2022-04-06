.class public Lcom/google/api/services/fusiontables/Fusiontables$Template$List;
.super Lcom/google/api/services/fusiontables/FusiontablesRequest;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables$Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "tables/{tableId}/templates"


# instance fields
.field private maxResults:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private tableId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/fusiontables/Fusiontables$Template;


# direct methods
.method constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables$Template;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2331
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$List;->this$1:Lcom/google/api/services/fusiontables/Fusiontables$Template;

    .line 2332
    iget-object v0, p1, Lcom/google/api/services/fusiontables/Fusiontables$Template;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "tables/{tableId}/templates"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/api/services/fusiontables/FusiontablesRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2333
    const-string v0, "Required parameter tableId must be specified."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$List;->tableId:Ljava/lang/String;

    .line 2334
    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/services/fusiontables/model/TemplateList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2345
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Template$List;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 2346
    const-class v0, Lcom/google/api/services/fusiontables/model/TemplateList;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fusiontables/model/TemplateList;

    .line 2348
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/fusiontables/model/TemplateList;->setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 2349
    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$List;->tableId:Ljava/lang/String;

    return-object v0
.end method

.method public queue(Lcom/google/api/client/googleapis/batch/BatchRequest;Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/batch/BatchRequest;",
            "Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback",
            "<",
            "Lcom/google/api/services/fusiontables/model/TemplateList;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2379
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Template$List;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    const-class v1, Lcom/google/api/services/fusiontables/model/TemplateList;

    const-class v2, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/api/client/googleapis/batch/BatchRequest;->queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 2381
    return-void
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Template$List;
    .locals 0

    .prologue
    .line 2388
    invoke-super {p0, p1}, Lcom/google/api/services/fusiontables/FusiontablesRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;

    .line 2389
    return-object p0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 1

    .prologue
    .line 2324
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Template$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Template$List;

    move-result-object v0

    return-object v0
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/fusiontables/Fusiontables$Template$List;
    .locals 0

    .prologue
    .line 2438
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$List;->maxResults:Ljava/lang/Long;

    .line 2439
    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Template$List;
    .locals 0

    .prologue
    .line 2420
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$List;->pageToken:Ljava/lang/String;

    .line 2421
    return-object p0
.end method

.method public setTableId(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Template$List;
    .locals 0

    .prologue
    .line 2404
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$List;->tableId:Ljava/lang/String;

    .line 2405
    return-object p0
.end method

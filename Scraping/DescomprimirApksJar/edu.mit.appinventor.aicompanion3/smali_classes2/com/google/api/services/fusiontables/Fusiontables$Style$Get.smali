.class public Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;
.super Lcom/google/api/services/fusiontables/FusiontablesRequest;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Get"
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "tables/{tableId}/styles/{styleId}"


# instance fields
.field private styleId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private tableId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/fusiontables/Fusiontables$Style;


# direct methods
.method constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables$Style;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;->this$1:Lcom/google/api/services/fusiontables/Fusiontables$Style;

    .line 1444
    iget-object v0, p1, Lcom/google/api/services/fusiontables/Fusiontables$Style;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "tables/{tableId}/styles/{styleId}"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/api/services/fusiontables/FusiontablesRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1445
    const-string v0, "Required parameter tableId must be specified."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;->tableId:Ljava/lang/String;

    .line 1446
    const-string v0, "Required parameter styleId must be specified."

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;->styleId:Ljava/lang/Integer;

    .line 1447
    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/services/fusiontables/model/StyleSetting;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 1459
    const-class v0, Lcom/google/api/services/fusiontables/model/StyleSetting;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fusiontables/model/StyleSetting;

    .line 1461
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/fusiontables/model/StyleSetting;->setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 1462
    return-object v0
.end method

.method public getStyleId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;->styleId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;->tableId:Ljava/lang/String;

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
            "Lcom/google/api/services/fusiontables/model/StyleSetting;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1492
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    const-class v1, Lcom/google/api/services/fusiontables/model/StyleSetting;

    const-class v2, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/api/client/googleapis/batch/BatchRequest;->queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 1494
    return-void
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;
    .locals 0

    .prologue
    .line 1501
    invoke-super {p0, p1}, Lcom/google/api/services/fusiontables/FusiontablesRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;

    .line 1502
    return-object p0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 1

    .prologue
    .line 1436
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;

    move-result-object v0

    return-object v0
.end method

.method public setStyleId(Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;
    .locals 0

    .prologue
    .line 1533
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;->styleId:Ljava/lang/Integer;

    .line 1534
    return-object p0
.end method

.method public setTableId(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;
    .locals 0

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;->tableId:Ljava/lang/String;

    .line 1518
    return-object p0
.end method

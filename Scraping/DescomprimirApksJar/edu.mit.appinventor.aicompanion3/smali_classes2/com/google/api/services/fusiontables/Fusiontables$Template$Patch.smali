.class public Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;
.super Lcom/google/api/services/fusiontables/FusiontablesRequest;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables$Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Patch"
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "tables/{tableId}/templates/{templateId}"


# instance fields
.field private tableId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private templateId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/fusiontables/Fusiontables$Template;


# direct methods
.method constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables$Template;Ljava/lang/String;Ljava/lang/Integer;Lcom/google/api/services/fusiontables/model/Template;)V
    .locals 3

    .prologue
    .line 2599
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;->this$1:Lcom/google/api/services/fusiontables/Fusiontables$Template;

    .line 2600
    iget-object v0, p1, Lcom/google/api/services/fusiontables/Fusiontables$Template;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "tables/{tableId}/templates/{templateId}"

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/google/api/services/fusiontables/FusiontablesRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2601
    const-string v0, "Required parameter tableId must be specified."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;->tableId:Ljava/lang/String;

    .line 2602
    const-string v0, "Required parameter templateId must be specified."

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;->templateId:Ljava/lang/Integer;

    .line 2603
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2604
    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/services/fusiontables/model/Template;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2615
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 2616
    const-class v0, Lcom/google/api/services/fusiontables/model/Template;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fusiontables/model/Template;

    .line 2618
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/fusiontables/model/Template;->setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 2619
    return-object v0
.end method

.method public getTableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;->tableId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;->templateId:Ljava/lang/Integer;

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
            "Lcom/google/api/services/fusiontables/model/Template;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    const-class v1, Lcom/google/api/services/fusiontables/model/Template;

    const-class v2, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/api/client/googleapis/batch/BatchRequest;->queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 2651
    return-void
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;
    .locals 0

    .prologue
    .line 2658
    invoke-super {p0, p1}, Lcom/google/api/services/fusiontables/FusiontablesRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;

    .line 2659
    return-object p0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 1

    .prologue
    .line 2592
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;

    move-result-object v0

    return-object v0
.end method

.method public setTableId(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;
    .locals 0

    .prologue
    .line 2674
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;->tableId:Ljava/lang/String;

    .line 2675
    return-object p0
.end method

.method public setTemplateId(Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;
    .locals 0

    .prologue
    .line 2690
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;->templateId:Ljava/lang/Integer;

    .line 2691
    return-object p0
.end method

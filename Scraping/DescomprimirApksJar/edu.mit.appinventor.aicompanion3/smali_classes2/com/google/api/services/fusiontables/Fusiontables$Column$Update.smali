.class public Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;
.super Lcom/google/api/services/fusiontables/FusiontablesRequest;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "tables/{tableId}/columns/{columnId}"


# instance fields
.field private columnId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private tableId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/fusiontables/Fusiontables$Column;


# direct methods
.method constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables$Column;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Column;)V
    .locals 3

    .prologue
    .line 632
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;->this$1:Lcom/google/api/services/fusiontables/Fusiontables$Column;

    .line 633
    iget-object v0, p1, Lcom/google/api/services/fusiontables/Fusiontables$Column;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "tables/{tableId}/columns/{columnId}"

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/google/api/services/fusiontables/FusiontablesRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 634
    const-string v0, "Required parameter tableId must be specified."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;->tableId:Ljava/lang/String;

    .line 635
    const-string v0, "Required parameter columnId must be specified."

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;->columnId:Ljava/lang/String;

    .line 636
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/services/fusiontables/model/Column;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 649
    const-class v0, Lcom/google/api/services/fusiontables/model/Column;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fusiontables/model/Column;

    .line 651
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/fusiontables/model/Column;->setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 652
    return-object v0
.end method

.method public getColumnId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;->columnId:Ljava/lang/String;

    return-object v0
.end method

.method public getTableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;->tableId:Ljava/lang/String;

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
            "Lcom/google/api/services/fusiontables/model/Column;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    const-class v1, Lcom/google/api/services/fusiontables/model/Column;

    const-class v2, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/api/client/googleapis/batch/BatchRequest;->queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 684
    return-void
.end method

.method public setColumnId(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;->columnId:Ljava/lang/String;

    .line 724
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;
    .locals 0

    .prologue
    .line 691
    invoke-super {p0, p1}, Lcom/google/api/services/fusiontables/FusiontablesRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;

    .line 692
    return-object p0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;

    move-result-object v0

    return-object v0
.end method

.method public setTableId(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;->tableId:Ljava/lang/String;

    .line 708
    return-object p0
.end method

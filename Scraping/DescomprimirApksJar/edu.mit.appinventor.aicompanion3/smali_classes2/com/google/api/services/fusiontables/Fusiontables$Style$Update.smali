.class public Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;
.super Lcom/google/api/services/fusiontables/FusiontablesRequest;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
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
.method constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables$Style;Ljava/lang/String;Ljava/lang/Integer;Lcom/google/api/services/fusiontables/model/StyleSetting;)V
    .locals 3

    .prologue
    .line 1708
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;->this$1:Lcom/google/api/services/fusiontables/Fusiontables$Style;

    .line 1709
    iget-object v0, p1, Lcom/google/api/services/fusiontables/Fusiontables$Style;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "tables/{tableId}/styles/{styleId}"

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/google/api/services/fusiontables/FusiontablesRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1710
    const-string v0, "Required parameter tableId must be specified."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;->tableId:Ljava/lang/String;

    .line 1711
    const-string v0, "Required parameter styleId must be specified."

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;->styleId:Ljava/lang/Integer;

    .line 1712
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
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
    .line 1724
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 1725
    const-class v0, Lcom/google/api/services/fusiontables/model/StyleSetting;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fusiontables/model/StyleSetting;

    .line 1727
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/fusiontables/model/StyleSetting;->setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 1728
    return-object v0
.end method

.method public getStyleId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;->styleId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;->tableId:Ljava/lang/String;

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
    .line 1758
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    const-class v1, Lcom/google/api/services/fusiontables/model/StyleSetting;

    const-class v2, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/api/client/googleapis/batch/BatchRequest;->queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 1760
    return-void
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;
    .locals 0

    .prologue
    .line 1767
    invoke-super {p0, p1}, Lcom/google/api/services/fusiontables/FusiontablesRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;

    .line 1768
    return-object p0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;

    move-result-object v0

    return-object v0
.end method

.method public setStyleId(Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;
    .locals 0

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;->styleId:Ljava/lang/Integer;

    .line 1800
    return-object p0
.end method

.method public setTableId(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;
    .locals 0

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;->tableId:Ljava/lang/String;

    .line 1784
    return-object p0
.end method

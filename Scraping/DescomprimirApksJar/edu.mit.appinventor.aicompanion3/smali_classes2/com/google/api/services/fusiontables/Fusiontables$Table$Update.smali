.class public Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;
.super Lcom/google/api/services/fusiontables/FusiontablesRequest;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables$Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "tables/{tableId}"


# instance fields
.field private replaceViewDefinition:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private tableId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/fusiontables/Fusiontables$Table;


# direct methods
.method constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables$Table;Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Table;)V
    .locals 3

    .prologue
    .line 3184
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;->this$1:Lcom/google/api/services/fusiontables/Fusiontables$Table;

    .line 3185
    iget-object v0, p1, Lcom/google/api/services/fusiontables/Fusiontables$Table;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "tables/{tableId}"

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/google/api/services/fusiontables/FusiontablesRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3186
    const-string v0, "Required parameter tableId must be specified."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;->tableId:Ljava/lang/String;

    .line 3187
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3188
    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/services/fusiontables/model/Table;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3199
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 3200
    const-class v0, Lcom/google/api/services/fusiontables/model/Table;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fusiontables/model/Table;

    .line 3202
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/fusiontables/model/Table;->setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 3203
    return-object v0
.end method

.method public getReplaceViewDefinition()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 3273
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;->replaceViewDefinition:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3253
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;->tableId:Ljava/lang/String;

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
            "Lcom/google/api/services/fusiontables/model/Table;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3233
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    const-class v1, Lcom/google/api/services/fusiontables/model/Table;

    const-class v2, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/api/client/googleapis/batch/BatchRequest;->queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 3235
    return-void
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;
    .locals 0

    .prologue
    .line 3242
    invoke-super {p0, p1}, Lcom/google/api/services/fusiontables/FusiontablesRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;

    .line 3243
    return-object p0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 1

    .prologue
    .line 3177
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;

    move-result-object v0

    return-object v0
.end method

.method public setReplaceViewDefinition(Ljava/lang/Boolean;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;
    .locals 0

    .prologue
    .line 3281
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;->replaceViewDefinition:Ljava/lang/Boolean;

    .line 3282
    return-object p0
.end method

.method public setTableId(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;
    .locals 0

    .prologue
    .line 3258
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;->tableId:Ljava/lang/String;

    .line 3259
    return-object p0
.end method

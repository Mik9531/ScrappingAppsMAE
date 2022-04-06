.class public Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;
.super Lcom/google/api/services/fusiontables/FusiontablesRequest;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables$Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Delete"
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "tables/{tableId}"


# instance fields
.field private tableId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/fusiontables/Fusiontables$Table;


# direct methods
.method constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables$Table;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3446
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;->this$1:Lcom/google/api/services/fusiontables/Fusiontables$Table;

    .line 3447
    iget-object v0, p1, Lcom/google/api/services/fusiontables/Fusiontables$Table;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->DELETE:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "tables/{tableId}"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/api/services/fusiontables/FusiontablesRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3448
    const-string v0, "Required parameter tableId must be specified."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;->tableId:Ljava/lang/String;

    .line 3449
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3459
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 3460
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 3461
    return-void
.end method

.method public getTableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3510
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;->tableId:Ljava/lang/String;

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3490
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/api/client/googleapis/batch/BatchRequest;->queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 3492
    return-void
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;
    .locals 0

    .prologue
    .line 3499
    invoke-super {p0, p1}, Lcom/google/api/services/fusiontables/FusiontablesRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;

    .line 3500
    return-object p0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 1

    .prologue
    .line 3439
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setTableId(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;
    .locals 0

    .prologue
    .line 3515
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;->tableId:Ljava/lang/String;

    .line 3516
    return-object p0
.end method

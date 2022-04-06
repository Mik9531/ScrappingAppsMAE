.class public Lcom/google/api/services/fusiontables/Fusiontables$Table$Insert;
.super Lcom/google/api/services/fusiontables/FusiontablesRequest;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables$Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Insert"
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "tables"


# instance fields
.field final synthetic this$1:Lcom/google/api/services/fusiontables/Fusiontables$Table;


# direct methods
.method constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables$Table;Lcom/google/api/services/fusiontables/model/Table;)V
    .locals 3

    .prologue
    .line 2864
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Insert;->this$1:Lcom/google/api/services/fusiontables/Fusiontables$Table;

    .line 2865
    iget-object v0, p1, Lcom/google/api/services/fusiontables/Fusiontables$Table;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "tables"

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/google/api/services/fusiontables/FusiontablesRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2866
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2867
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
    .line 2878
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Insert;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 2879
    const-class v0, Lcom/google/api/services/fusiontables/model/Table;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fusiontables/model/Table;

    .line 2881
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/fusiontables/model/Table;->setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 2882
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
    .line 2912
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Insert;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    const-class v1, Lcom/google/api/services/fusiontables/model/Table;

    const-class v2, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/api/client/googleapis/batch/BatchRequest;->queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 2914
    return-void
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Insert;
    .locals 0

    .prologue
    .line 2921
    invoke-super {p0, p1}, Lcom/google/api/services/fusiontables/FusiontablesRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;

    .line 2922
    return-object p0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Insert;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Insert;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;
.super Lcom/google/api/services/fusiontables/FusiontablesRequest;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables$Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SqlGet"
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "query"


# instance fields
.field private hdrs:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private sql:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/fusiontables/Fusiontables$Query;

.field private typed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables$Query;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;->this$1:Lcom/google/api/services/fusiontables/Fusiontables$Query;

    .line 1024
    iget-object v0, p1, Lcom/google/api/services/fusiontables/Fusiontables$Query;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "query"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/api/services/fusiontables/FusiontablesRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1025
    const-string v0, "Required parameter sql must be specified."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;->sql:Ljava/lang/String;

    .line 1026
    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/services/fusiontables/model/Sqlresponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 1038
    const-class v0, Lcom/google/api/services/fusiontables/model/Sqlresponse;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fusiontables/model/Sqlresponse;

    .line 1040
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/fusiontables/model/Sqlresponse;->setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 1041
    return-object v0
.end method

.method public getHdrs()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;->hdrs:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public getTyped()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;->typed:Ljava/lang/Boolean;

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
            "Lcom/google/api/services/fusiontables/model/Sqlresponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    const-class v1, Lcom/google/api/services/fusiontables/model/Sqlresponse;

    const-class v2, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/api/client/googleapis/batch/BatchRequest;->queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 1073
    return-void
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;
    .locals 0

    .prologue
    .line 1080
    invoke-super {p0, p1}, Lcom/google/api/services/fusiontables/FusiontablesRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;

    .line 1081
    return-object p0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 1

    .prologue
    .line 1016
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;

    move-result-object v0

    return-object v0
.end method

.method public setHdrs(Ljava/lang/Boolean;)Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;
    .locals 0

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;->hdrs:Ljava/lang/Boolean;

    .line 1136
    return-object p0
.end method

.method public setSql(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;
    .locals 0

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;->sql:Ljava/lang/String;

    .line 1097
    return-object p0
.end method

.method public setTyped(Ljava/lang/Boolean;)Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;
    .locals 0

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;->typed:Ljava/lang/Boolean;

    .line 1120
    return-object p0
.end method

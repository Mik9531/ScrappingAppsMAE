.class public Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
.super Lcom/google/api/services/fusiontables/FusiontablesRequest;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables$Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sql"
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
    .line 1168
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->this$1:Lcom/google/api/services/fusiontables/Fusiontables$Query;

    .line 1169
    iget-object v0, p1, Lcom/google/api/services/fusiontables/Fusiontables$Query;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "query"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/api/services/fusiontables/FusiontablesRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1170
    const-string v0, "Required parameter sql must be specified."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->sql:Ljava/lang/String;

    .line 1171
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
    .line 1182
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 1183
    const-class v0, Lcom/google/api/services/fusiontables/model/Sqlresponse;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fusiontables/model/Sqlresponse;

    .line 1185
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/fusiontables/model/Sqlresponse;->setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 1186
    return-object v0
.end method

.method public getHdrs()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->hdrs:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public getTyped()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->typed:Ljava/lang/Boolean;

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
    .line 1216
    invoke-virtual {p0}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    const-class v1, Lcom/google/api/services/fusiontables/model/Sqlresponse;

    const-class v2, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/api/client/googleapis/batch/BatchRequest;->queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 1218
    return-void
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    .locals 0

    .prologue
    .line 1225
    invoke-super {p0, p1}, Lcom/google/api/services/fusiontables/FusiontablesRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;

    .line 1226
    return-object p0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 1

    .prologue
    .line 1161
    invoke-virtual {p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;

    move-result-object v0

    return-object v0
.end method

.method public setHdrs(Ljava/lang/Boolean;)Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->hdrs:Ljava/lang/Boolean;

    .line 1281
    return-object p0
.end method

.method public setSql(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    .locals 0

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->sql:Ljava/lang/String;

    .line 1242
    return-object p0
.end method

.method public setTyped(Ljava/lang/Boolean;)Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    .locals 0

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->typed:Ljava/lang/Boolean;

    .line 1265
    return-object p0
.end method

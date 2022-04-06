.class public final Lcom/google/api/services/fusiontables/model/TableList;
.super Lcom/google/api/client/json/GenericJson;
.source "TableList.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/Table;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/google/api/services/fusiontables/model/Table;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/Table;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/TableList;->items:Ljava/util/List;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/TableList;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/TableList;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/TableList;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)Lcom/google/api/services/fusiontables/model/TableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/Table;",
            ">;)",
            "Lcom/google/api/services/fusiontables/model/TableList;"
        }
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/TableList;->items:Ljava/util/List;

    .line 104
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/TableList;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/TableList;->kind:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public setNextPageToken(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/TableList;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/TableList;->nextPageToken:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/TableList;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 137
    return-void
.end method

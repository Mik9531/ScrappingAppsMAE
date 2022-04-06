.class public final Lcom/google/api/services/fusiontables/model/Sqlresponse;
.super Lcom/google/api/client/json/GenericJson;
.source "Sqlresponse.java"


# instance fields
.field private columns:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private rows:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Sqlresponse;->columns:Ljava/util/List;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Sqlresponse;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Sqlresponse;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Sqlresponse;->rows:Ljava/util/List;

    return-object v0
.end method

.method public setColumns(Ljava/util/List;)Lcom/google/api/services/fusiontables/model/Sqlresponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/fusiontables/model/Sqlresponse;"
        }
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Sqlresponse;->columns:Ljava/util/List;

    .line 117
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Sqlresponse;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Sqlresponse;->kind:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Sqlresponse;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 133
    return-void
.end method

.method public setRows(Ljava/util/List;)Lcom/google/api/services/fusiontables/model/Sqlresponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;>;)",
            "Lcom/google/api/services/fusiontables/model/Sqlresponse;"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Sqlresponse;->rows:Ljava/util/List;

    .line 100
    return-object p0
.end method

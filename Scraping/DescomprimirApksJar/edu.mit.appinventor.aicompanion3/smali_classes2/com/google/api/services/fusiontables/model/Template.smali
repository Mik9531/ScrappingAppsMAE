.class public final Lcom/google/api/services/fusiontables/model/Template;
.super Lcom/google/api/client/json/GenericJson;
.source "Template.java"


# instance fields
.field private automaticColumnNames:Ljava/util/List;
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

.field private body:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isDefaultForTable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private tableId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private templateId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
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
.method public getAutomaticColumnNames()Ljava/util/List;
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
    .line 169
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Template;->automaticColumnNames:Ljava/util/List;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Template;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDefaultForTable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Template;->isDefaultForTable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Template;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Template;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Template;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getTableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Template;->tableId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Template;->templateId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAutomaticColumnNames(Ljava/util/List;)Lcom/google/api/services/fusiontables/model/Template;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/fusiontables/model/Template;"
        }
    .end annotation

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Template;->automaticColumnNames:Ljava/util/List;

    .line 179
    return-object p0
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Template;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Template;->body:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public setIsDefaultForTable(Ljava/lang/Boolean;)Lcom/google/api/services/fusiontables/model/Template;
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Template;->isDefaultForTable:Ljava/lang/Boolean;

    .line 196
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Template;
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Template;->kind:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Template;
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Template;->name:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Template;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 246
    return-void
.end method

.method public setTableId(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Template;
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Template;->tableId:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public setTemplateId(Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/model/Template;
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Template;->templateId:Ljava/lang/Integer;

    .line 230
    return-object p0
.end method

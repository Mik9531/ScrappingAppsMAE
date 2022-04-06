.class public final Lcom/google/api/services/fusiontables/model/TemplateList;
.super Lcom/google/api/client/json/GenericJson;
.source "TemplateList.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/Template;",
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

.field private totalItems:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/google/api/services/fusiontables/model/Template;

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
            "Lcom/google/api/services/fusiontables/model/Template;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/TemplateList;->items:Ljava/util/List;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/TemplateList;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/TemplateList;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/TemplateList;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getTotalItems()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/TemplateList;->totalItems:Ljava/lang/Integer;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)Lcom/google/api/services/fusiontables/model/TemplateList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/Template;",
            ">;)",
            "Lcom/google/api/services/fusiontables/model/TemplateList;"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/TemplateList;->items:Ljava/util/List;

    .line 113
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/TemplateList;
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/TemplateList;->kind:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public setNextPageToken(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/TemplateList;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/TemplateList;->nextPageToken:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/TemplateList;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 163
    return-void
.end method

.method public setTotalItems(Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/model/TemplateList;
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/TemplateList;->totalItems:Ljava/lang/Integer;

    .line 147
    return-object p0
.end method

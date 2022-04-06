.class public final Lcom/google/api/services/fusiontables/model/Column;
.super Lcom/google/api/client/json/GenericJson;
.source "Column.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fusiontables/model/Column$BaseColumn;
    }
.end annotation


# instance fields
.field private baseColumn:Lcom/google/api/services/fusiontables/model/Column$BaseColumn;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private columnId:Ljava/lang/Integer;
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

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 203
    return-void
.end method


# virtual methods
.method public getBaseColumn()Lcom/google/api/services/fusiontables/model/Column$BaseColumn;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Column;->baseColumn:Lcom/google/api/services/fusiontables/model/Column$BaseColumn;

    return-object v0
.end method

.method public getColumnId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Column;->columnId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Column;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Column;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Column;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Column;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseColumn(Lcom/google/api/services/fusiontables/model/Column$BaseColumn;)Lcom/google/api/services/fusiontables/model/Column;
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Column;->baseColumn:Lcom/google/api/services/fusiontables/model/Column$BaseColumn;

    .line 169
    return-object p0
.end method

.method public setColumnId(Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/model/Column;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Column;->columnId:Ljava/lang/Integer;

    .line 133
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Column;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Column;->kind:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Column;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Column;->name:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Column;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 185
    return-void
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Column;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Column;->type:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.class public final Lcom/google/api/services/fusiontables/model/Table;
.super Lcom/google/api/client/json/GenericJson;
.source "Table.java"


# instance fields
.field private attribution:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private attributionLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private baseTableIds:Ljava/util/List;
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

.field private columns:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/Column;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isExportable:Ljava/lang/Boolean;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-class v0, Lcom/google/api/services/fusiontables/model/Column;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Table;->attribution:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributionLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Table;->attributionLink:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseTableIds()Ljava/util/List;
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
    .line 198
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Table;->baseTableIds:Ljava/util/List;

    return-object v0
.end method

.method public getColumns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/Column;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Table;->columns:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Table;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIsExportable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Table;->isExportable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Table;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Table;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Table;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getTableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Table;->tableId:Ljava/lang/String;

    return-object v0
.end method

.method public setAttribution(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Table;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Table;->attribution:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public setAttributionLink(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Table;
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Table;->attributionLink:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public setBaseTableIds(Ljava/util/List;)Lcom/google/api/services/fusiontables/model/Table;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/fusiontables/model/Table;"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Table;->baseTableIds:Ljava/util/List;

    .line 207
    return-object p0
.end method

.method public setColumns(Ljava/util/List;)Lcom/google/api/services/fusiontables/model/Table;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/Column;",
            ">;)",
            "Lcom/google/api/services/fusiontables/model/Table;"
        }
    .end annotation

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Table;->columns:Ljava/util/List;

    .line 258
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Table;
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Table;->description:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public setIsExportable(Ljava/lang/Boolean;)Lcom/google/api/services/fusiontables/model/Table;
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Table;->isExportable:Ljava/lang/Boolean;

    .line 190
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Table;
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Table;->kind:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Table;
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Table;->name:Ljava/lang/String;

    .line 275
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Table;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 291
    return-void
.end method

.method public setTableId(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Table;
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Table;->tableId:Ljava/lang/String;

    .line 241
    return-object p0
.end method

.class public final Lcom/google/api/services/fusiontables/model/StyleSetting;
.super Lcom/google/api/client/json/GenericJson;
.source "StyleSetting.java"


# instance fields
.field private isDefaultForTable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private markerOptions:Lcom/google/api/services/fusiontables/model/PointStyle;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private polygonOptions:Lcom/google/api/services/fusiontables/model/PolygonStyle;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private polylineOptions:Lcom/google/api/services/fusiontables/model/LineStyle;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private styleId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private tableId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsDefaultForTable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->isDefaultForTable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkerOptions()Lcom/google/api/services/fusiontables/model/PointStyle;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->markerOptions:Lcom/google/api/services/fusiontables/model/PointStyle;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPolygonOptions()Lcom/google/api/services/fusiontables/model/PolygonStyle;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->polygonOptions:Lcom/google/api/services/fusiontables/model/PolygonStyle;

    return-object v0
.end method

.method public getPolylineOptions()Lcom/google/api/services/fusiontables/model/LineStyle;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->polylineOptions:Lcom/google/api/services/fusiontables/model/LineStyle;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getStyleId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->styleId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->tableId:Ljava/lang/String;

    return-object v0
.end method

.method public setIsDefaultForTable(Ljava/lang/Boolean;)Lcom/google/api/services/fusiontables/model/StyleSetting;
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->isDefaultForTable:Ljava/lang/Boolean;

    .line 200
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/StyleSetting;
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->kind:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public setMarkerOptions(Lcom/google/api/services/fusiontables/model/PointStyle;)Lcom/google/api/services/fusiontables/model/StyleSetting;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->markerOptions:Lcom/google/api/services/fusiontables/model/PointStyle;

    .line 128
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/StyleSetting;
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->name:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public setPolygonOptions(Lcom/google/api/services/fusiontables/model/PolygonStyle;)Lcom/google/api/services/fusiontables/model/StyleSetting;
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->polygonOptions:Lcom/google/api/services/fusiontables/model/PolygonStyle;

    .line 183
    return-object p0
.end method

.method public setPolylineOptions(Lcom/google/api/services/fusiontables/model/LineStyle;)Lcom/google/api/services/fusiontables/model/StyleSetting;
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->polylineOptions:Lcom/google/api/services/fusiontables/model/LineStyle;

    .line 217
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 267
    return-void
.end method

.method public setStyleId(Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/model/StyleSetting;
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->styleId:Ljava/lang/Integer;

    .line 251
    return-object p0
.end method

.method public setTableId(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/StyleSetting;
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleSetting;->tableId:Ljava/lang/String;

    .line 234
    return-object p0
.end method

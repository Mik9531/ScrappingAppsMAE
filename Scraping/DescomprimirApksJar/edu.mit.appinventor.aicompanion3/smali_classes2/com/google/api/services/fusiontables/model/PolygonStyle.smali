.class public final Lcom/google/api/services/fusiontables/model/PolygonStyle;
.super Lcom/google/api/client/json/GenericJson;
.source "PolygonStyle.java"


# instance fields
.field private fillColor:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fillColorStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fillOpacity:Ljava/lang/Double;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private strokeColor:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private strokeColorStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private strokeOpacity:Ljava/lang/Double;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private strokeWeight:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private strokeWeightStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;
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
.method public getFillColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->fillColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFillColorStyler()Lcom/google/api/services/fusiontables/model/StyleFunction;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->fillColorStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;

    return-object v0
.end method

.method public getFillOpacity()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->fillOpacity:Ljava/lang/Double;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getStrokeColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->strokeColor:Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeColorStyler()Lcom/google/api/services/fusiontables/model/StyleFunction;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->strokeColorStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;

    return-object v0
.end method

.method public getStrokeOpacity()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->strokeOpacity:Ljava/lang/Double;

    return-object v0
.end method

.method public getStrokeWeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->strokeWeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStrokeWeightStyler()Lcom/google/api/services/fusiontables/model/StyleFunction;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->strokeWeightStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;

    return-object v0
.end method

.method public setFillColor(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/PolygonStyle;
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->fillColor:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public setFillColorStyler(Lcom/google/api/services/fusiontables/model/StyleFunction;)Lcom/google/api/services/fusiontables/model/PolygonStyle;
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->fillColorStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;

    .line 199
    return-object p0
.end method

.method public setFillOpacity(Ljava/lang/Double;)Lcom/google/api/services/fusiontables/model/PolygonStyle;
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->fillOpacity:Ljava/lang/Double;

    .line 250
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 266
    return-void
.end method

.method public setStrokeColor(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/PolygonStyle;
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->strokeColor:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public setStrokeColorStyler(Lcom/google/api/services/fusiontables/model/StyleFunction;)Lcom/google/api/services/fusiontables/model/PolygonStyle;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->strokeColorStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;

    .line 129
    return-object p0
.end method

.method public setStrokeOpacity(Ljava/lang/Double;)Lcom/google/api/services/fusiontables/model/PolygonStyle;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->strokeOpacity:Ljava/lang/Double;

    .line 163
    return-object p0
.end method

.method public setStrokeWeight(Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/model/PolygonStyle;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->strokeWeight:Ljava/lang/Integer;

    .line 146
    return-object p0
.end method

.method public setStrokeWeightStyler(Lcom/google/api/services/fusiontables/model/StyleFunction;)Lcom/google/api/services/fusiontables/model/PolygonStyle;
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/PolygonStyle;->strokeWeightStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;

    .line 180
    return-object p0
.end method

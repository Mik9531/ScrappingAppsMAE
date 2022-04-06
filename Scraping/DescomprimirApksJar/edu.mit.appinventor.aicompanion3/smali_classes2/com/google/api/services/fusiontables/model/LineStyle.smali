.class public final Lcom/google/api/services/fusiontables/model/LineStyle;
.super Lcom/google/api/client/json/GenericJson;
.source "LineStyle.java"


# instance fields
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
.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/LineStyle;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getStrokeColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/LineStyle;->strokeColor:Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeColorStyler()Lcom/google/api/services/fusiontables/model/StyleFunction;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/LineStyle;->strokeColorStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;

    return-object v0
.end method

.method public getStrokeOpacity()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/LineStyle;->strokeOpacity:Ljava/lang/Double;

    return-object v0
.end method

.method public getStrokeWeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/LineStyle;->strokeWeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStrokeWeightStyler()Lcom/google/api/services/fusiontables/model/StyleFunction;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/LineStyle;->strokeWeightStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;

    return-object v0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/LineStyle;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 182
    return-void
.end method

.method public setStrokeColor(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/LineStyle;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/LineStyle;->strokeColor:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public setStrokeColorStyler(Lcom/google/api/services/fusiontables/model/StyleFunction;)Lcom/google/api/services/fusiontables/model/LineStyle;
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/LineStyle;->strokeColorStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;

    .line 166
    return-object p0
.end method

.method public setStrokeOpacity(Ljava/lang/Double;)Lcom/google/api/services/fusiontables/model/LineStyle;
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/LineStyle;->strokeOpacity:Ljava/lang/Double;

    .line 149
    return-object p0
.end method

.method public setStrokeWeight(Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/model/LineStyle;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/LineStyle;->strokeWeight:Ljava/lang/Integer;

    .line 98
    return-object p0
.end method

.method public setStrokeWeightStyler(Lcom/google/api/services/fusiontables/model/StyleFunction;)Lcom/google/api/services/fusiontables/model/LineStyle;
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/LineStyle;->strokeWeightStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;

    .line 115
    return-object p0
.end method

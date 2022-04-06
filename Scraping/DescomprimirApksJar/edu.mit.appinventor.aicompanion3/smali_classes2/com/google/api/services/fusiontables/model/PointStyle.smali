.class public final Lcom/google/api/services/fusiontables/model/PointStyle;
.super Lcom/google/api/client/json/GenericJson;
.source "PointStyle.java"


# instance fields
.field private iconName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private iconStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/PointStyle;->iconName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconStyler()Lcom/google/api/services/fusiontables/model/StyleFunction;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/PointStyle;->iconStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/PointStyle;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public setIconName(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/PointStyle;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/PointStyle;->iconName:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public setIconStyler(Lcom/google/api/services/fusiontables/model/StyleFunction;)Lcom/google/api/services/fusiontables/model/PointStyle;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/PointStyle;->iconStyler:Lcom/google/api/services/fusiontables/model/StyleFunction;

    .line 72
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/PointStyle;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 107
    return-void
.end method

.class public final Lcom/google/api/services/fusiontables/model/Line;
.super Lcom/google/api/client/json/GenericJson;
.source "Line.java"


# instance fields
.field private coordinates:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
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

    return-void
.end method


# virtual methods
.method public getCoordinates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Line;->coordinates:Ljava/util/List;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Line;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Line;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCoordinates(Ljava/util/List;)Lcom/google/api/services/fusiontables/model/Line;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;)",
            "Lcom/google/api/services/fusiontables/model/Line;"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Line;->coordinates:Ljava/util/List;

    .line 88
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Line;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 104
    return-void
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Line;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Line;->type:Ljava/lang/String;

    .line 71
    return-object p0
.end method
.class public final Lcom/google/api/services/fusiontables/model/Geometry;
.super Lcom/google/api/client/json/GenericJson;
.source "Geometry.java"


# instance fields
.field private geometries:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private geometry:Ljava/lang/Object;
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

    return-void
.end method


# virtual methods
.method public getGeometries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Geometry;->geometries:Ljava/util/List;

    return-object v0
.end method

.method public getGeometry()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Geometry;->geometry:Ljava/lang/Object;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Geometry;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Geometry;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setGeometries(Ljava/util/List;)Lcom/google/api/services/fusiontables/model/Geometry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/api/services/fusiontables/model/Geometry;"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Geometry;->geometries:Ljava/util/List;

    .line 113
    return-object p0
.end method

.method public setGeometry(Ljava/lang/Object;)Lcom/google/api/services/fusiontables/model/Geometry;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Geometry;->geometry:Ljava/lang/Object;

    .line 79
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Geometry;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 129
    return-void
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Geometry;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Geometry;->type:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.class public final Lcom/google/api/services/fusiontables/model/StyleFunction;
.super Lcom/google/api/client/json/GenericJson;
.source "StyleFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;
    }
.end annotation


# instance fields
.field private buckets:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private columnName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private gradient:Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/google/api/services/fusiontables/model/Bucket;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 185
    return-void
.end method


# virtual methods
.method public getBuckets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleFunction;->buckets:Ljava/util/List;

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleFunction;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getGradient()Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleFunction;->gradient:Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleFunction;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleFunction;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public setBuckets(Ljava/util/List;)Lcom/google/api/services/fusiontables/model/StyleFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/Bucket;",
            ">;)",
            "Lcom/google/api/services/fusiontables/model/StyleFunction;"
        }
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleFunction;->buckets:Ljava/util/List;

    .line 131
    return-object p0
.end method

.method public setColumnName(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/StyleFunction;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleFunction;->columnName:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setGradient(Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;)Lcom/google/api/services/fusiontables/model/StyleFunction;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleFunction;->gradient:Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;

    .line 97
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/StyleFunction;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleFunction;->kind:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleFunction;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 172
    return-void
.end method

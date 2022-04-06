.class public final Lcom/google/api/services/fusiontables/model/Bucket;
.super Lcom/google/api/client/json/GenericJson;
.source "Bucket.java"


# instance fields
.field private color:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private icon:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private max:Ljava/lang/Double;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private min:Ljava/lang/Double;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private opacity:Ljava/lang/Double;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private weight:Ljava/lang/Integer;
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
.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Bucket;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Bucket;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Bucket;->max:Ljava/lang/Double;

    return-object v0
.end method

.method public getMin()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Bucket;->min:Ljava/lang/Double;

    return-object v0
.end method

.method public getOpacity()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Bucket;->opacity:Ljava/lang/Double;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Bucket;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getWeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Bucket;->weight:Ljava/lang/Integer;

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Bucket;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Bucket;->color:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public setIcon(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/Bucket;
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Bucket;->icon:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public setMax(Ljava/lang/Double;)Lcom/google/api/services/fusiontables/model/Bucket;
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Bucket;->max:Ljava/lang/Double;

    .line 182
    return-object p0
.end method

.method public setMin(Ljava/lang/Double;)Lcom/google/api/services/fusiontables/model/Bucket;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Bucket;->min:Ljava/lang/Double;

    .line 146
    return-object p0
.end method

.method public setOpacity(Ljava/lang/Double;)Lcom/google/api/services/fusiontables/model/Bucket;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Bucket;->opacity:Ljava/lang/Double;

    .line 110
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Bucket;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 215
    return-void
.end method

.method public setWeight(Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/model/Bucket;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Bucket;->weight:Ljava/lang/Integer;

    .line 127
    return-object p0
.end method

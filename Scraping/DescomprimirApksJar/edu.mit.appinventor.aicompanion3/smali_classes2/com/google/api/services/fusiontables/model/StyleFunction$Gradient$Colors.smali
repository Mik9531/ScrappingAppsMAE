.class public final Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient$Colors;
.super Lcom/google/api/client/json/GenericJson;
.source "StyleFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Colors"
.end annotation


# instance fields
.field private color:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private opacity:Ljava/lang/Double;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient$Colors;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient$Colors;->opacity:Ljava/lang/Double;

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient$Colors;
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient$Colors;->color:Ljava/lang/String;

    .line 310
    return-object p0
.end method

.method public setOpacity(Ljava/lang/Double;)Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient$Colors;
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient$Colors;->opacity:Ljava/lang/Double;

    .line 327
    return-object p0
.end method

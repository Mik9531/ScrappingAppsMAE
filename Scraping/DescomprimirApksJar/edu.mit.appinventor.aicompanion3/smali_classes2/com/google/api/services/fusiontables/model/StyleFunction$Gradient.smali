.class public final Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;
.super Lcom/google/api/client/json/GenericJson;
.source "StyleFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/model/StyleFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gradient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient$Colors;
    }
.end annotation


# instance fields
.field private colors:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient$Colors;",
            ">;"
        }
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    const-class v0, Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient$Colors;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 274
    return-void
.end method


# virtual methods
.method public getColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient$Colors;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;->colors:Ljava/util/List;

    return-object v0
.end method

.method public getMax()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;->max:Ljava/lang/Double;

    return-object v0
.end method

.method public getMin()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;->min:Ljava/lang/Double;

    return-object v0
.end method

.method public setColors(Ljava/util/List;)Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient$Colors;",
            ">;)",
            "Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;"
        }
    .end annotation

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;->colors:Ljava/util/List;

    .line 251
    return-object p0
.end method

.method public setMax(Ljava/lang/Double;)Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;->max:Ljava/lang/Double;

    .line 234
    return-object p0
.end method

.method public setMin(Ljava/lang/Double;)Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/StyleFunction$Gradient;->min:Ljava/lang/Double;

    .line 268
    return-object p0
.end method

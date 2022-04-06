.class public final Lcom/google/api/services/fusiontables/model/Column$BaseColumn;
.super Lcom/google/api/client/json/GenericJson;
.source "Column.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/model/Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BaseColumn"
.end annotation


# instance fields
.field private columnId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private tableIndex:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Column$BaseColumn;->columnId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableIndex()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/api/services/fusiontables/model/Column$BaseColumn;->tableIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public setColumnId(Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/model/Column$BaseColumn;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Column$BaseColumn;->columnId:Ljava/lang/Integer;

    .line 256
    return-object p0
.end method

.method public setTableIndex(Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/model/Column$BaseColumn;
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/api/services/fusiontables/model/Column$BaseColumn;->tableIndex:Ljava/lang/Integer;

    .line 239
    return-object p0
.end method

.class Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2$1;
.super Ljava/lang/Object;
.source "RBTreeSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;",
        ">;"
    }
.end annotation


# instance fields
.field private current:I

.field final synthetic this$0:Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;


# direct methods
.method constructor <init>(Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;)V
    .locals 1

    .prologue
    .line 216
    iput-object p1, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2$1;->this$0:Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2$1;->this$0:Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;

    invoke-static {v0}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;->access$000(Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 227
    iget-object v4, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2$1;->this$0:Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;

    invoke-static {v4}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;->access$100(Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;)J

    move-result-wide v4

    iget v6, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    shl-int v6, v1, v6

    int-to-long v6, v6

    and-long v2, v4, v6

    .line 228
    .local v2, "result":J
    new-instance v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;

    invoke-direct {v0}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;-><init>()V

    .line 229
    .local v0, "next":Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->isOne:Z

    .line 230
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    .line 231
    iget v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    .line 232
    return-object v0

    .line 229
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2$1;->next()Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

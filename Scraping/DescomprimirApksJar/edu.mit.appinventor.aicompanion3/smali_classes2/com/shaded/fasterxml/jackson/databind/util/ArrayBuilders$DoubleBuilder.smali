.class public final Lcom/shaded/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;
.super Lcom/shaded/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/util/ArrayBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/util/PrimitiveArrayBuilder",
        "<[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic _constructArray(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;->_constructArray(I)[D

    move-result-object v0

    return-object v0
.end method

.method public final _constructArray(I)[D
    .locals 1

    .prologue
    .line 136
    new-array v0, p1, [D

    return-object v0
.end method

.class Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;
.super Ljava/lang/Object;
.source "MessageBuilderFactory.java"

# interfaces
.implements Lcom/firebase/tubesock/MessageBuilderFactory$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/tubesock/MessageBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryBuilder"
.end annotation


# instance fields
.field private pendingByteCount:I

.field private pendingBytes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingByteCount:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingBytes:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public appendBytes([B)Z
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 36
    iget-object v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingBytes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingByteCount:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingByteCount:I

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public toMessage()Lcom/firebase/tubesock/WebSocketMessage;
    .locals 6

    .prologue
    .line 42
    iget v4, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingByteCount:I

    new-array v2, v4, [B

    .line 43
    .local v2, "payload":[B
    const/4 v1, 0x0

    .line 44
    .local v1, "offset":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingBytes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 45
    iget-object v4, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingBytes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 46
    .local v3, "segment":[B
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    array-length v4, v3

    add-int/2addr v1, v4

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v3    # "segment":[B
    :cond_0
    new-instance v4, Lcom/firebase/tubesock/WebSocketMessage;

    invoke-direct {v4, v2}, Lcom/firebase/tubesock/WebSocketMessage;-><init>([B)V

    return-object v4
.end method

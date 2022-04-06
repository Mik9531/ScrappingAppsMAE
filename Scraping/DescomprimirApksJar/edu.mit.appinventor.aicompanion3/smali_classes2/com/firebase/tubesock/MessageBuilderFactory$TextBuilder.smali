.class Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;
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
    name = "TextBuilder"
.end annotation


# static fields
.field private static localDecoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private static localEncoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private carryOver:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder$1;

    invoke-direct {v0}, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder$1;-><init>()V

    sput-object v0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->localDecoder:Ljava/lang/ThreadLocal;

    .line 64
    new-instance v0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder$2;

    invoke-direct {v0}, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder$2;-><init>()V

    sput-object v0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->localEncoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->builder:Ljava/lang/StringBuilder;

    .line 80
    return-void
.end method

.method private decodeString([B)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    .line 108
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 109
    .local v2, "input":Ljava/nio/ByteBuffer;
    sget-object v4, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->localDecoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 110
    .local v0, "buf":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 113
    .end local v0    # "buf":Ljava/nio/CharBuffer;
    .end local v2    # "input":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v3

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/nio/charset/CharacterCodingException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private decodeStringStreaming([B)Ljava/lang/String;
    .locals 10
    .param p1, "bytes"    # [B

    .prologue
    const/4 v7, 0x0

    .line 126
    :try_start_0
    invoke-direct {p0, p1}, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->getBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 127
    .local v2, "input":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    int-to-float v9, v8

    sget-object v8, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->localDecoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v8}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v8

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 128
    .local v0, "bufSize":I
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 130
    .local v4, "output":Ljava/nio/CharBuffer;
    :cond_0
    :goto_0
    sget-object v8, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->localDecoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/charset/CharsetDecoder;

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v4, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 131
    .local v5, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 156
    .end local v0    # "bufSize":I
    .end local v2    # "input":Ljava/nio/ByteBuffer;
    .end local v4    # "output":Ljava/nio/CharBuffer;
    .end local v5    # "result":Ljava/nio/charset/CoderResult;
    :goto_1
    return-object v7

    .line 134
    .restart local v0    # "bufSize":I
    .restart local v2    # "input":Ljava/nio/ByteBuffer;
    .restart local v4    # "output":Ljava/nio/CharBuffer;
    .restart local v5    # "result":Ljava/nio/charset/CoderResult;
    :cond_1
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 146
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-lez v8, :cond_2

    .line 147
    iput-object v2, p0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    .line 150
    :cond_2
    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 151
    .local v6, "test":Ljava/nio/CharBuffer;
    sget-object v8, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->localEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v8, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 153
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "text":Ljava/lang/String;
    goto :goto_1

    .line 137
    .end local v6    # "test":Ljava/nio/CharBuffer;
    .end local v7    # "text":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 139
    mul-int/lit8 v8, v0, 0x2

    add-int/lit8 v0, v8, 0x1

    .line 140
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 141
    .local v3, "o":Ljava/nio/CharBuffer;
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 142
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    move-object v4, v3

    goto :goto_0

    .line 155
    .end local v0    # "bufSize":I
    .end local v2    # "input":Ljava/nio/ByteBuffer;
    .end local v3    # "o":Ljava/nio/CharBuffer;
    .end local v4    # "output":Ljava/nio/CharBuffer;
    .end local v5    # "result":Ljava/nio/charset/CoderResult;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/nio/charset/CharacterCodingException;
    goto :goto_1
.end method

.method private getBuffer([B)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 161
    iget-object v1, p0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 162
    array-length v1, p1

    iget-object v2, p0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 169
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public appendBytes([B)Z
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->decodeString([B)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "nextFrame":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const/4 v1, 0x1

    .line 91
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toMessage()Lcom/firebase/tubesock/WebSocketMessage;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/firebase/tubesock/WebSocketMessage;

    iget-object v1, p0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/tubesock/WebSocketMessage;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

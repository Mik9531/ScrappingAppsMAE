.class public abstract Lcom/shaded/fasterxml/jackson/databind/node/BaseJsonNode;
.super Lcom/shaded/fasterxml/jackson/databind/JsonNode;
.source "BaseJsonNode.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/JsonSerializable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/JsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;
.end method

.method public final findPath(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/BaseJsonNode;->findValue(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/shaded/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/shaded/fasterxml/jackson/databind/node/MissingNode;

    move-result-object v0

    .line 37
    :cond_0
    return-object v0
.end method

.method public numberType()Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract serialize(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract serializeWithType(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method

.method public traverse()Lcom/shaded/fasterxml/jackson/core/JsonParser;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/node/TreeTraversingParser;

    invoke-direct {v0, p0}, Lcom/shaded/fasterxml/jackson/databind/node/TreeTraversingParser;-><init>(Lcom/shaded/fasterxml/jackson/databind/JsonNode;)V

    return-object v0
.end method

.method public traverse(Lcom/shaded/fasterxml/jackson/core/ObjectCodec;)Lcom/shaded/fasterxml/jackson/core/JsonParser;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/node/TreeTraversingParser;

    invoke-direct {v0, p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/TreeTraversingParser;-><init>(Lcom/shaded/fasterxml/jackson/databind/JsonNode;Lcom/shaded/fasterxml/jackson/core/ObjectCodec;)V

    return-object v0
.end method

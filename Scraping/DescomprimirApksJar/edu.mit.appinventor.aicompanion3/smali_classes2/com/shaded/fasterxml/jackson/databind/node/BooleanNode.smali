.class public final Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;
.super Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
.source "BooleanNode.java"


# static fields
.field public static final FALSE:Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

.field public static final TRUE:Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;


# instance fields
.field private final _value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;-><init>(Z)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    .line 20
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;-><init>(Z)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->FALSE:Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    iput-boolean p1, p0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    return-void
.end method

.method public static getFalse()Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->FALSE:Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    return-object v0
.end method

.method public static getTrue()Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    return-object v0
.end method

.method public static valueOf(Z)Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;
    .locals 1

    .prologue
    .line 29
    if-eqz p0, :cond_0

    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->FALSE:Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    goto :goto_0
.end method


# virtual methods
.method public asBoolean()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    return v0
.end method

.method public asBoolean(Z)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    return v0
.end method

.method public asDouble(D)D
    .locals 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public asInt(I)I
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asLong(J)J
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public asToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0
.end method

.method public booleanValue()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p1, p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_3
    iget-boolean v2, p0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    iget-boolean v3, p1, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getNodeType()Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeType;->BOOLEAN:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method

.method public final serialize(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    invoke-virtual {p1, v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    .line 78
    return-void
.end method

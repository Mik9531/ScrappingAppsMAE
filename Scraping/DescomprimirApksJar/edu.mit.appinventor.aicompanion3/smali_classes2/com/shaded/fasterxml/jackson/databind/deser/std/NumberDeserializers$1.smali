.class synthetic Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;
.super Ljava/lang/Object;
.source "NumberDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I

.field static final synthetic $SwitchMap$com$fasterxml$jackson$core$JsonToken:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 533
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;->values()[Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I

    :try_start_0
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    .line 493
    :goto_1
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->values()[Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    :try_start_2
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    .line 533
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

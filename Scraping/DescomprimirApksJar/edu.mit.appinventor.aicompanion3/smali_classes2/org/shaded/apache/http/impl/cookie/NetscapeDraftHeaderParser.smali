.class public Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;
.super Ljava/lang/Object;
.source "NetscapeDraftHeaderParser.java"


# annotations
.annotation build Lorg/shaded/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;

.field private static final DELIMITERS:[C


# instance fields
.field private final nvpParser:Lorg/shaded/apache/http/message/BasicHeaderValueParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    invoke-direct {v0}, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;-><init>()V

    sput-object v0, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x3b

    aput-char v2, v0, v1

    sput-object v0, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DELIMITERS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lorg/shaded/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/shaded/apache/http/message/BasicHeaderValueParser;

    iput-object v0, p0, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->nvpParser:Lorg/shaded/apache/http/message/BasicHeaderValueParser;

    .line 59
    return-void
.end method


# virtual methods
.method public parseHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)Lorg/shaded/apache/http/HeaderElement;
    .locals 7
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/shaded/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Char array buffer may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_0
    if-nez p2, :cond_1

    .line 68
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Parser cursor may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    :cond_1
    iget-object v3, p0, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->nvpParser:Lorg/shaded/apache/http/message/BasicHeaderValueParser;

    sget-object v4, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DELIMITERS:[C

    invoke-virtual {v3, p1, p2, v4}, Lorg/shaded/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;[C)Lorg/shaded/apache/http/NameValuePair;

    move-result-object v0

    .line 71
    .local v0, "nvp":Lorg/shaded/apache/http/NameValuePair;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/shaded/apache/http/NameValuePair;>;"
    :goto_0
    invoke-virtual {p2}, Lorg/shaded/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_2

    .line 73
    iget-object v3, p0, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->nvpParser:Lorg/shaded/apache/http/message/BasicHeaderValueParser;

    sget-object v4, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DELIMITERS:[C

    invoke-virtual {v3, p1, p2, v4}, Lorg/shaded/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;[C)Lorg/shaded/apache/http/NameValuePair;

    move-result-object v1

    .line 74
    .local v1, "param":Lorg/shaded/apache/http/NameValuePair;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    .end local v1    # "param":Lorg/shaded/apache/http/NameValuePair;
    :cond_2
    new-instance v4, Lorg/shaded/apache/http/message/BasicHeaderElement;

    invoke-interface {v0}, Lorg/shaded/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/shaded/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/shaded/apache/http/NameValuePair;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/shaded/apache/http/NameValuePair;

    invoke-direct {v4, v5, v6, v3}, Lorg/shaded/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/shaded/apache/http/NameValuePair;)V

    return-object v4
.end method
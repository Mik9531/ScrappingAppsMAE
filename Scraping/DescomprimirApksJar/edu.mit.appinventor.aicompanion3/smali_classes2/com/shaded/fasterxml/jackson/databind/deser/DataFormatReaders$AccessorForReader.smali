.class public Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;
.super Lcom/shaded/fasterxml/jackson/core/format/InputAccessor$Std;
.source "DataFormatReaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AccessorForReader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders;


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders;Ljava/io/InputStream;[B)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->this$0:Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders;

    .line 254
    invoke-direct {p0, p2, p3}, Lcom/shaded/fasterxml/jackson/core/format/InputAccessor$Std;-><init>(Ljava/io/InputStream;[B)V

    .line 255
    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders;[B)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->this$0:Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders;

    .line 257
    invoke-direct {p0, p2}, Lcom/shaded/fasterxml/jackson/core/format/InputAccessor$Std;-><init>([B)V

    .line 258
    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders;[BII)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->this$0:Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders;

    .line 260
    invoke-direct {p0, p2, p3, p4}, Lcom/shaded/fasterxml/jackson/core/format/InputAccessor$Std;-><init>([BII)V

    .line 261
    return-void
.end method


# virtual methods
.method public createMatcher(Lcom/shaded/fasterxml/jackson/databind/ObjectReader;Lcom/shaded/fasterxml/jackson/core/format/MatchStrength;)Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .locals 7

    .prologue
    .line 265
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_buffer:[B

    iget v3, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_bufferedStart:I

    iget v4, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_bufferedEnd:I

    iget v5, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_bufferedStart:I

    sub-int/2addr v4, v5

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/shaded/fasterxml/jackson/databind/deser/DataFormatReaders$Match;-><init>(Ljava/io/InputStream;[BIILcom/shaded/fasterxml/jackson/databind/ObjectReader;Lcom/shaded/fasterxml/jackson/core/format/MatchStrength;)V

    return-object v0
.end method

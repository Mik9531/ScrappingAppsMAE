.class public Lcom/firebase/client/realtime/util/StringListReader;
.super Ljava/io/Reader;
.source "StringListReader.java"


# instance fields
.field private charPos:I

.field private closed:Z

.field private frozen:Z

.field private markedCharPos:I

.field private markedStringListPos:I

.field private stringListPos:I

.field private strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    .line 12
    iput-boolean v1, p0, Lcom/firebase/client/realtime/util/StringListReader;->closed:Z

    .line 17
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    iput v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->markedCharPos:I

    .line 18
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    iput v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->markedStringListPos:I

    .line 20
    iput-boolean v1, p0, Lcom/firebase/client/realtime/util/StringListReader;->frozen:Z

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    .line 24
    return-void
.end method

.method private advance(J)J
    .locals 9
    .param p1, "numChars"    # J

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .local v0, "advanced":J
    :goto_0
    iget v5, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    iget-object v6, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    cmp-long v5, v0, p1

    if-gez v5, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentStringRemainingChars()I

    move-result v4

    .line 78
    .local v4, "remainingStringChars":I
    sub-long v2, p1, v0

    .line 79
    .local v2, "remainingChars":J
    int-to-long v6, v4

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    .line 80
    iget v5, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    int-to-long v6, v5

    add-long/2addr v6, v2

    long-to-int v5, v6

    iput v5, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    .line 81
    add-long/2addr v0, v2

    goto :goto_0

    .line 83
    :cond_0
    int-to-long v6, v4

    add-long/2addr v0, v6

    .line 84
    const/4 v5, 0x0

    iput v5, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    .line 85
    iget v5, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    goto :goto_0

    .line 88
    .end local v2    # "remainingChars":J
    .end local v4    # "remainingStringChars":I
    :cond_1
    return-wide v0
.end method

.method private checkState()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->closed:Z

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->frozen:Z

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reader needs to be frozen before read operations can be called"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    return-void
.end method

.method private currentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    iget-object v1, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    iget v1, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private currentStringRemainingChars()I
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "current":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method


# virtual methods
.method public addString(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->frozen:Z

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to add string after reading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->closed:Z

    .line 172
    return-void
.end method

.method public freeze()V
    .locals 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->frozen:Z

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to freeze frozen StringListReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->frozen:Z

    .line 40
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 145
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    iput v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->markedCharPos:I

    .line 146
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    iput v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->markedStringListPos:I

    .line 147
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 115
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "current":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 117
    const/4 v0, -0x1

    .line 121
    :goto_0
    return v0

    .line 119
    :cond_0
    iget v2, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 120
    .local v0, "c":C
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/firebase/client/realtime/util/StringListReader;->advance(J)J

    goto :goto_0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 7
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 94
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    .line 95
    .local v1, "remaining":I
    const/4 v3, 0x0

    .line 96
    .local v3, "total":I
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "current":Ljava/lang/String;
    :goto_0
    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    sub-int/2addr v4, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 99
    .local v2, "strLength":I
    iget-object v4, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    iget v5, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v5, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    iget v6, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    add-int/2addr v6, v2

    invoke-virtual {p1, v4, v5, v6}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    .line 100
    sub-int/2addr v1, v2

    .line 101
    add-int/2addr v3, v2

    .line 102
    int-to-long v4, v2

    invoke-direct {p0, v4, v5}, Lcom/firebase/client/realtime/util/StringListReader;->advance(J)J

    .line 103
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    .line 104
    goto :goto_0

    .line 105
    .end local v2    # "strLength":I
    :cond_0
    if-gtz v3, :cond_1

    if-eqz v0, :cond_2

    .line 108
    .end local v3    # "total":I
    :cond_1
    :goto_1
    return v3

    .restart local v3    # "total":I
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public read([CII)I
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "charsCopied":I
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "current":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    if-ge v0, p3, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentStringRemainingChars()I

    move-result v3

    sub-int v4, p3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 156
    .local v1, "copyLength":I
    iget v3, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    iget v4, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    add-int/2addr v4, v1

    add-int v5, p2, v0

    invoke-virtual {v2, v3, v4, p1, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 157
    add-int/2addr v0, v1

    .line 158
    int-to-long v4, v1

    invoke-direct {p0, v4, v5}, Lcom/firebase/client/realtime/util/StringListReader;->advance(J)J

    .line 159
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v2

    .line 160
    goto :goto_0

    .line 161
    .end local v1    # "copyLength":I
    :cond_0
    if-gtz v0, :cond_1

    if-eqz v2, :cond_2

    .line 164
    .end local v0    # "charsCopied":I
    :cond_1
    :goto_1
    return v0

    .restart local v0    # "charsCopied":I
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->markedCharPos:I

    iput v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    .line 53
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->markedStringListPos:I

    iput v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    .line 54
    return-void
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/realtime/util/StringListReader;->advance(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

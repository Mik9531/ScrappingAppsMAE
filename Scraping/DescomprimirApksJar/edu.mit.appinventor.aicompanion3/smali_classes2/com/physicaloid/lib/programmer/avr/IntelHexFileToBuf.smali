.class public Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;
.super Ljava/lang/Object;
.source "IntelHexFileToBuf.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field ihp:Lcz/jaybee/intelhex/IntelHexParser;

.field ihpd:Lcz/jaybee/intelhex/IntelHexParserRun;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public getByteLength()J
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->ihpd:Lcz/jaybee/intelhex/IntelHexParserRun;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->ihpd:Lcz/jaybee/intelhex/IntelHexParserRun;

    invoke-virtual {v0}, Lcz/jaybee/intelhex/IntelHexParserRun;->getTotalBufLength()J

    move-result-wide v0

    .line 42
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getHexData([B)V
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    .line 47
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->ihpd:Lcz/jaybee/intelhex/IntelHexParserRun;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->ihpd:Lcz/jaybee/intelhex/IntelHexParserRun;

    invoke-virtual {v0, p1}, Lcz/jaybee/intelhex/IntelHexParserRun;->getBufData([B)V

    .line 50
    :cond_0
    return-void
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcz/jaybee/intelhex/IntelHexParser;

    invoke-direct {v0, p1}, Lcz/jaybee/intelhex/IntelHexParser;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->ihp:Lcz/jaybee/intelhex/IntelHexParser;

    .line 61
    new-instance v0, Lcz/jaybee/intelhex/IntelHexParserRun;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xffff

    invoke-direct {v0, v2, v3, v4, v5}, Lcz/jaybee/intelhex/IntelHexParserRun;-><init>(JJ)V

    iput-object v0, p0, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->ihpd:Lcz/jaybee/intelhex/IntelHexParserRun;

    .line 62
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->ihp:Lcz/jaybee/intelhex/IntelHexParser;

    iget-object v1, p0, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->ihpd:Lcz/jaybee/intelhex/IntelHexParserRun;

    invoke-virtual {v0, v1}, Lcz/jaybee/intelhex/IntelHexParser;->setDataListener(Lcz/jaybee/intelhex/IntelHexDataListener;)V

    .line 64
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->ihp:Lcz/jaybee/intelhex/IntelHexParser;

    invoke-virtual {v0}, Lcz/jaybee/intelhex/IntelHexParser;->parse()V

    .line 66
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 68
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/FileInputStream;

    .end local v0    # "is":Ljava/io/InputStream;
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 55
    .restart local v0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0, v0}, Lcom/physicaloid/lib/programmer/avr/IntelHexFileToBuf;->parse(Ljava/io/InputStream;)V

    .line 56
    return-void
.end method

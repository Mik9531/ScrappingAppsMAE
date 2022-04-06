.class public Lcz/jaybee/intelhex/IntelHexParserRun;
.super Ljava/lang/Object;
.source "IntelHexParserRun.java"

# interfaces
.implements Lcz/jaybee/intelhex/IntelHexDataListener;


# instance fields
.field private addressStart:J

.field private addressStop:J

.field private buffer:[B

.field private eofDone:Z

.field private length:J

.field private totalLength:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 5
    .param p1, "addressStart"    # J
    .param p3, "addressStop"    # J

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v4, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->eofDone:Z

    .line 47
    iput-wide p1, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->addressStart:J

    .line 48
    iput-wide p3, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->addressStop:J

    .line 49
    sub-long v0, p3, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->length:J

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->totalLength:J

    .line 51
    iget-wide v0, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->length:J

    long-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->buffer:[B

    .line 52
    iget-object v0, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->buffer:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 53
    iput-boolean v4, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->eofDone:Z

    .line 54
    return-void
.end method


# virtual methods
.method public data(J[B)V
    .locals 7
    .param p1, "address"    # J
    .param p3, "data"    # [B

    .prologue
    .line 74
    iget-wide v2, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->addressStart:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    iget-wide v2, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->addressStop:J

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 75
    array-length v0, p3

    .line 76
    .local v0, "length":I
    int-to-long v2, v0

    add-long/2addr v2, p1

    iget-wide v4, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->addressStop:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 77
    iget-wide v2, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->addressStop:J

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 79
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->buffer:[B

    iget-wide v4, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->addressStart:J

    sub-long v4, p1, v4

    long-to-int v3, v4

    invoke-static {p3, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget-wide v2, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->totalLength:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->totalLength:J

    .line 82
    .end local v0    # "length":I
    :cond_1
    return-void
.end method

.method public eof()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->eofDone:Z

    .line 87
    return-void
.end method

.method public getBufData([B)V
    .locals 5
    .param p1, "buf"    # [B

    .prologue
    const/4 v4, 0x0

    .line 57
    iget-wide v2, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->length:J

    long-to-int v0, v2

    .line 58
    .local v0, "copyLen":I
    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 59
    array-length v0, p1

    .line 61
    :cond_0
    iget-object v1, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->buffer:[B

    invoke-static {v1, v4, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    return-void
.end method

.method public getTotalBufLength()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->totalLength:J

    return-wide v0
.end method

.method public isEOF()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcz/jaybee/intelhex/IntelHexParserRun;->eofDone:Z

    return v0
.end method

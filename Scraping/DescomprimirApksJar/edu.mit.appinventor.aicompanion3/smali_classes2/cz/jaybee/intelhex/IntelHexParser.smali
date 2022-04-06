.class public Lcz/jaybee/intelhex/IntelHexParser;
.super Ljava/lang/Object;
.source "IntelHexParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/jaybee/intelhex/IntelHexParser$Record;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cz$jaybee$intelhex$IntelHexRecordType:[I = null

.field private static final HEX:I = 0x10


# instance fields
.field private dataListener:Lcz/jaybee/intelhex/IntelHexDataListener;

.field private eof:Z

.field private reader:Ljava/io/BufferedReader;

.field private recordIdx:I

.field private upperAddress:J


# direct methods
.method static synthetic $SWITCH_TABLE$cz$jaybee$intelhex$IntelHexRecordType()[I
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcz/jaybee/intelhex/IntelHexParser;->$SWITCH_TABLE$cz$jaybee$intelhex$IntelHexRecordType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcz/jaybee/intelhex/IntelHexRecordType;->values()[Lcz/jaybee/intelhex/IntelHexRecordType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcz/jaybee/intelhex/IntelHexRecordType;->DATA:Lcz/jaybee/intelhex/IntelHexRecordType;

    invoke-virtual {v1}, Lcz/jaybee/intelhex/IntelHexRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcz/jaybee/intelhex/IntelHexRecordType;->EOF:Lcz/jaybee/intelhex/IntelHexRecordType;

    invoke-virtual {v1}, Lcz/jaybee/intelhex/IntelHexRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcz/jaybee/intelhex/IntelHexRecordType;->EXT_LIN:Lcz/jaybee/intelhex/IntelHexRecordType;

    invoke-virtual {v1}, Lcz/jaybee/intelhex/IntelHexRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcz/jaybee/intelhex/IntelHexRecordType;->EXT_SEG:Lcz/jaybee/intelhex/IntelHexRecordType;

    invoke-virtual {v1}, Lcz/jaybee/intelhex/IntelHexRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcz/jaybee/intelhex/IntelHexRecordType;->START_LIN:Lcz/jaybee/intelhex/IntelHexRecordType;

    invoke-virtual {v1}, Lcz/jaybee/intelhex/IntelHexRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcz/jaybee/intelhex/IntelHexRecordType;->START_SEG:Lcz/jaybee/intelhex/IntelHexRecordType;

    invoke-virtual {v1}, Lcz/jaybee/intelhex/IntelHexRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcz/jaybee/intelhex/IntelHexRecordType;->UNKNOWN:Lcz/jaybee/intelhex/IntelHexRecordType;

    invoke-virtual {v1}, Lcz/jaybee/intelhex/IntelHexRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcz/jaybee/intelhex/IntelHexParser;->$SWITCH_TABLE$cz$jaybee$intelhex$IntelHexRecordType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcz/jaybee/intelhex/IntelHexParser;->reader:Ljava/io/BufferedReader;

    .line 40
    iput-object v1, p0, Lcz/jaybee/intelhex/IntelHexParser;->dataListener:Lcz/jaybee/intelhex/IntelHexDataListener;

    .line 42
    iput-boolean v0, p0, Lcz/jaybee/intelhex/IntelHexParser;->eof:Z

    .line 43
    iput v0, p0, Lcz/jaybee/intelhex/IntelHexParser;->recordIdx:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcz/jaybee/intelhex/IntelHexParser;->upperAddress:J

    .line 63
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcz/jaybee/intelhex/IntelHexParser;->reader:Ljava/io/BufferedReader;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcz/jaybee/intelhex/IntelHexParser;->reader:Ljava/io/BufferedReader;

    .line 40
    iput-object v1, p0, Lcz/jaybee/intelhex/IntelHexParser;->dataListener:Lcz/jaybee/intelhex/IntelHexDataListener;

    .line 42
    iput-boolean v0, p0, Lcz/jaybee/intelhex/IntelHexParser;->eof:Z

    .line 43
    iput v0, p0, Lcz/jaybee/intelhex/IntelHexParser;->recordIdx:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcz/jaybee/intelhex/IntelHexParser;->upperAddress:J

    .line 55
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Ljava/io/BufferedReader;

    .end local p1    # "reader":Ljava/io/Reader;
    iput-object p1, p0, Lcz/jaybee/intelhex/IntelHexParser;->reader:Ljava/io/BufferedReader;

    .line 60
    :goto_0
    return-void

    .line 58
    .restart local p1    # "reader":Ljava/io/Reader;
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcz/jaybee/intelhex/IntelHexParser;->reader:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method private parseRecord(Ljava/lang/String;)Lcz/jaybee/intelhex/IntelHexParser$Record;
    .locals 11
    .param p1, "record"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 71
    new-instance v4, Lcz/jaybee/intelhex/IntelHexParser$Record;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcz/jaybee/intelhex/IntelHexParser$Record;-><init>(Lcz/jaybee/intelhex/IntelHexParser;Lcz/jaybee/intelhex/IntelHexParser$Record;)V

    .line 73
    .local v4, "result":Lcz/jaybee/intelhex/IntelHexParser$Record;
    iget-boolean v6, p0, Lcz/jaybee/intelhex/IntelHexParser;->eof:Z

    if-eqz v6, :cond_0

    .line 74
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Data after eof ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcz/jaybee/intelhex/IntelHexParser;->recordIdx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 78
    :cond_0
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 79
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid Intel HEX record ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcz/jaybee/intelhex/IntelHexParser;->recordIdx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 82
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 83
    .local v2, "lineLength":I
    div-int/lit8 v6, v2, 0x2

    new-array v0, v6, [B

    .line 86
    .local v0, "hexRecord":[B
    const/4 v5, 0x0

    .line 87
    .local v5, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-lt v1, v6, :cond_2

    .line 92
    and-int/lit16 v5, v5, 0xff

    .line 94
    if-eqz v5, :cond_3

    .line 95
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid checksum ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcz/jaybee/intelhex/IntelHexParser;->recordIdx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 88
    :cond_2
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "num":Ljava/lang/String;
    const/16 v6, 0x10

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 90
    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v3    # "num":Ljava/lang/String;
    :cond_3
    aget-byte v6, v0, v9

    iput v6, v4, Lcz/jaybee/intelhex/IntelHexParser$Record;->length:I

    .line 100
    iget v6, v4, Lcz/jaybee/intelhex/IntelHexParser$Record;->length:I

    add-int/lit8 v6, v6, 0x5

    array-length v7, v0

    if-eq v6, v7, :cond_4

    .line 101
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid record length ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcz/jaybee/intelhex/IntelHexParser;->recordIdx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 104
    :cond_4
    iget v6, v4, Lcz/jaybee/intelhex/IntelHexParser$Record;->length:I

    new-array v6, v6, [B

    iput-object v6, v4, Lcz/jaybee/intelhex/IntelHexParser$Record;->data:[B

    .line 105
    const/4 v6, 0x4

    iget-object v7, v4, Lcz/jaybee/intelhex/IntelHexParser$Record;->data:[B

    iget v8, v4, Lcz/jaybee/intelhex/IntelHexParser$Record;->length:I

    invoke-static {v0, v6, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    const/4 v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x2

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    iput v6, v4, Lcz/jaybee/intelhex/IntelHexParser$Record;->address:I

    .line 111
    aget-byte v6, v0, v10

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Lcz/jaybee/intelhex/IntelHexRecordType;->fromInt(I)Lcz/jaybee/intelhex/IntelHexRecordType;

    move-result-object v6

    iput-object v6, v4, Lcz/jaybee/intelhex/IntelHexParser$Record;->type:Lcz/jaybee/intelhex/IntelHexRecordType;

    .line 112
    iget-object v6, v4, Lcz/jaybee/intelhex/IntelHexParser$Record;->type:Lcz/jaybee/intelhex/IntelHexRecordType;

    sget-object v7, Lcz/jaybee/intelhex/IntelHexRecordType;->UNKNOWN:Lcz/jaybee/intelhex/IntelHexRecordType;

    if-ne v6, v7, :cond_5

    .line 113
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unsupported record type "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v8, v0, v10

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcz/jaybee/intelhex/IntelHexParser;->recordIdx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 116
    :cond_5
    return-object v4
.end method

.method private processRecord(Lcz/jaybee/intelhex/IntelHexParser$Record;)V
    .locals 9
    .param p1, "record"    # Lcz/jaybee/intelhex/IntelHexParser$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 121
    iget v2, p1, Lcz/jaybee/intelhex/IntelHexParser$Record;->address:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcz/jaybee/intelhex/IntelHexParser;->upperAddress:J

    or-long v0, v2, v4

    .line 122
    .local v0, "addr":J
    invoke-static {}, Lcz/jaybee/intelhex/IntelHexParser;->$SWITCH_TABLE$cz$jaybee$intelhex$IntelHexRecordType()[I

    move-result-object v2

    iget-object v3, p1, Lcz/jaybee/intelhex/IntelHexParser$Record;->type:Lcz/jaybee/intelhex/IntelHexRecordType;

    invoke-virtual {v3}, Lcz/jaybee/intelhex/IntelHexRecordType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->dataListener:Lcz/jaybee/intelhex/IntelHexDataListener;

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->dataListener:Lcz/jaybee/intelhex/IntelHexDataListener;

    iget-object v3, p1, Lcz/jaybee/intelhex/IntelHexParser$Record;->data:[B

    invoke-interface {v2, v0, v1, v3}, Lcz/jaybee/intelhex/IntelHexDataListener;->data(J[B)V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->dataListener:Lcz/jaybee/intelhex/IntelHexDataListener;

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->dataListener:Lcz/jaybee/intelhex/IntelHexDataListener;

    invoke-interface {v2}, Lcz/jaybee/intelhex/IntelHexDataListener;->eof()V

    .line 132
    :cond_1
    iput-boolean v6, p0, Lcz/jaybee/intelhex/IntelHexParser;->eof:Z

    goto :goto_0

    .line 135
    :pswitch_2
    iget v2, p1, Lcz/jaybee/intelhex/IntelHexParser$Record;->length:I

    if-ne v2, v8, :cond_2

    .line 136
    iget-object v2, p1, Lcz/jaybee/intelhex/IntelHexParser$Record;->data:[B

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p1, Lcz/jaybee/intelhex/IntelHexParser$Record;->data:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->upperAddress:J

    .line 137
    iget-wide v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->upperAddress:J

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    iput-wide v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->upperAddress:J

    goto :goto_0

    .line 139
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid EXT_LIN record ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcz/jaybee/intelhex/IntelHexParser;->recordIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :pswitch_3
    iget v2, p1, Lcz/jaybee/intelhex/IntelHexParser$Record;->length:I

    if-ne v2, v8, :cond_3

    .line 145
    iget-object v2, p1, Lcz/jaybee/intelhex/IntelHexParser$Record;->data:[B

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p1, Lcz/jaybee/intelhex/IntelHexParser$Record;->data:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->upperAddress:J

    .line 146
    iget-wide v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->upperAddress:J

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    iput-wide v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->upperAddress:J

    goto :goto_0

    .line 148
    :cond_3
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid EXT_SEG record ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcz/jaybee/intelhex/IntelHexParser;->recordIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :pswitch_4
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcz/jaybee/intelhex/IntelHexParser$Record;->type:Lcz/jaybee/intelhex/IntelHexRecordType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " record not implemented ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcz/jaybee/intelhex/IntelHexParser;->recordIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public parse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v2, 0x1

    iput v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->recordIdx:I

    .line 162
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->upperAddress:J

    .line 165
    :goto_0
    iget-object v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "recordStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 171
    iget-boolean v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->eof:Z

    if-nez v2, :cond_1

    .line 172
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "No eof at the end of file"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_0
    invoke-direct {p0, v1}, Lcz/jaybee/intelhex/IntelHexParser;->parseRecord(Ljava/lang/String;)Lcz/jaybee/intelhex/IntelHexParser$Record;

    move-result-object v0

    .line 167
    .local v0, "record":Lcz/jaybee/intelhex/IntelHexParser$Record;
    invoke-direct {p0, v0}, Lcz/jaybee/intelhex/IntelHexParser;->processRecord(Lcz/jaybee/intelhex/IntelHexParser$Record;)V

    .line 168
    iget v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->recordIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcz/jaybee/intelhex/IntelHexParser;->recordIdx:I

    goto :goto_0

    .line 174
    .end local v0    # "record":Lcz/jaybee/intelhex/IntelHexParser$Record;
    :cond_1
    return-void
.end method

.method public setDataListener(Lcz/jaybee/intelhex/IntelHexDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcz/jaybee/intelhex/IntelHexDataListener;

    .prologue
    .line 67
    iput-object p1, p0, Lcz/jaybee/intelhex/IntelHexParser;->dataListener:Lcz/jaybee/intelhex/IntelHexDataListener;

    .line 68
    return-void
.end method

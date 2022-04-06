.class public final enum Lcz/jaybee/intelhex/IntelHexRecordType;
.super Ljava/lang/Enum;
.source "IntelHexRecordType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcz/jaybee/intelhex/IntelHexRecordType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DATA:Lcz/jaybee/intelhex/IntelHexRecordType;

.field private static final synthetic ENUM$VALUES:[Lcz/jaybee/intelhex/IntelHexRecordType;

.field public static final enum EOF:Lcz/jaybee/intelhex/IntelHexRecordType;

.field public static final enum EXT_LIN:Lcz/jaybee/intelhex/IntelHexRecordType;

.field public static final enum EXT_SEG:Lcz/jaybee/intelhex/IntelHexRecordType;

.field public static final enum START_LIN:Lcz/jaybee/intelhex/IntelHexRecordType;

.field public static final enum START_SEG:Lcz/jaybee/intelhex/IntelHexRecordType;

.field public static final enum UNKNOWN:Lcz/jaybee/intelhex/IntelHexRecordType;


# instance fields
.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    new-instance v0, Lcz/jaybee/intelhex/IntelHexRecordType;

    const-string v1, "DATA"

    invoke-direct {v0, v1, v4, v4}, Lcz/jaybee/intelhex/IntelHexRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcz/jaybee/intelhex/IntelHexRecordType;->DATA:Lcz/jaybee/intelhex/IntelHexRecordType;

    .line 38
    new-instance v0, Lcz/jaybee/intelhex/IntelHexRecordType;

    const-string v1, "EOF"

    invoke-direct {v0, v1, v5, v5}, Lcz/jaybee/intelhex/IntelHexRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcz/jaybee/intelhex/IntelHexRecordType;->EOF:Lcz/jaybee/intelhex/IntelHexRecordType;

    .line 39
    new-instance v0, Lcz/jaybee/intelhex/IntelHexRecordType;

    const-string v1, "EXT_SEG"

    invoke-direct {v0, v1, v6, v6}, Lcz/jaybee/intelhex/IntelHexRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcz/jaybee/intelhex/IntelHexRecordType;->EXT_SEG:Lcz/jaybee/intelhex/IntelHexRecordType;

    .line 40
    new-instance v0, Lcz/jaybee/intelhex/IntelHexRecordType;

    const-string v1, "START_SEG"

    invoke-direct {v0, v1, v7, v7}, Lcz/jaybee/intelhex/IntelHexRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcz/jaybee/intelhex/IntelHexRecordType;->START_SEG:Lcz/jaybee/intelhex/IntelHexRecordType;

    .line 41
    new-instance v0, Lcz/jaybee/intelhex/IntelHexRecordType;

    const-string v1, "EXT_LIN"

    invoke-direct {v0, v1, v8, v8}, Lcz/jaybee/intelhex/IntelHexRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcz/jaybee/intelhex/IntelHexRecordType;->EXT_LIN:Lcz/jaybee/intelhex/IntelHexRecordType;

    .line 42
    new-instance v0, Lcz/jaybee/intelhex/IntelHexRecordType;

    const-string v1, "START_LIN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcz/jaybee/intelhex/IntelHexRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcz/jaybee/intelhex/IntelHexRecordType;->START_LIN:Lcz/jaybee/intelhex/IntelHexRecordType;

    .line 43
    new-instance v0, Lcz/jaybee/intelhex/IntelHexRecordType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lcz/jaybee/intelhex/IntelHexRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcz/jaybee/intelhex/IntelHexRecordType;->UNKNOWN:Lcz/jaybee/intelhex/IntelHexRecordType;

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Lcz/jaybee/intelhex/IntelHexRecordType;

    sget-object v1, Lcz/jaybee/intelhex/IntelHexRecordType;->DATA:Lcz/jaybee/intelhex/IntelHexRecordType;

    aput-object v1, v0, v4

    sget-object v1, Lcz/jaybee/intelhex/IntelHexRecordType;->EOF:Lcz/jaybee/intelhex/IntelHexRecordType;

    aput-object v1, v0, v5

    sget-object v1, Lcz/jaybee/intelhex/IntelHexRecordType;->EXT_SEG:Lcz/jaybee/intelhex/IntelHexRecordType;

    aput-object v1, v0, v6

    sget-object v1, Lcz/jaybee/intelhex/IntelHexRecordType;->START_SEG:Lcz/jaybee/intelhex/IntelHexRecordType;

    aput-object v1, v0, v7

    sget-object v1, Lcz/jaybee/intelhex/IntelHexRecordType;->EXT_LIN:Lcz/jaybee/intelhex/IntelHexRecordType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcz/jaybee/intelhex/IntelHexRecordType;->START_LIN:Lcz/jaybee/intelhex/IntelHexRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcz/jaybee/intelhex/IntelHexRecordType;->UNKNOWN:Lcz/jaybee/intelhex/IntelHexRecordType;

    aput-object v2, v0, v1

    sput-object v0, Lcz/jaybee/intelhex/IntelHexRecordType;->ENUM$VALUES:[Lcz/jaybee/intelhex/IntelHexRecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcz/jaybee/intelhex/IntelHexRecordType;->id:I

    .line 48
    return-void
.end method

.method public static fromInt(I)Lcz/jaybee/intelhex/IntelHexRecordType;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 55
    invoke-static {}, Lcz/jaybee/intelhex/IntelHexRecordType;->values()[Lcz/jaybee/intelhex/IntelHexRecordType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 60
    sget-object v0, Lcz/jaybee/intelhex/IntelHexRecordType;->UNKNOWN:Lcz/jaybee/intelhex/IntelHexRecordType;

    :cond_0
    return-object v0

    .line 55
    :cond_1
    aget-object v0, v2, v1

    .line 56
    .local v0, "d":Lcz/jaybee/intelhex/IntelHexRecordType;
    iget v4, v0, Lcz/jaybee/intelhex/IntelHexRecordType;->id:I

    if-eq v4, p0, :cond_0

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcz/jaybee/intelhex/IntelHexRecordType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcz/jaybee/intelhex/IntelHexRecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcz/jaybee/intelhex/IntelHexRecordType;

    return-object v0
.end method

.method public static values()[Lcz/jaybee/intelhex/IntelHexRecordType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcz/jaybee/intelhex/IntelHexRecordType;->ENUM$VALUES:[Lcz/jaybee/intelhex/IntelHexRecordType;

    array-length v1, v0

    new-array v2, v1, [Lcz/jaybee/intelhex/IntelHexRecordType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcz/jaybee/intelhex/IntelHexRecordType;->id:I

    return v0
.end method

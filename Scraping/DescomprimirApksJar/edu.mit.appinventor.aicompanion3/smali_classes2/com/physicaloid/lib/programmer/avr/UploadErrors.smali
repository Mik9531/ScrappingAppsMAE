.class public final enum Lcom/physicaloid/lib/programmer/avr/UploadErrors;
.super Ljava/lang/Enum;
.source "UploadErrors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/physicaloid/lib/programmer/avr/UploadErrors;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AVR_CHIPTYPE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

.field public static final enum CHIP_INIT:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

.field private static final synthetic ENUM$VALUES:[Lcom/physicaloid/lib/programmer/avr/UploadErrors;

.field public static final enum FILE_OPEN:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

.field public static final enum HEX_FILE_OPEN:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

.field public static final enum NO_ERROR:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

.field public static final enum OPEN_DEVICE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

.field public static final enum PAGE_WRITE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

.field public static final enum SIGNATURE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;


# instance fields
.field private final code:I

.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    new-instance v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    const-string v1, "AVR_CHIPTYPE"

    .line 33
    const-string v2, "Unexpected AVR chip type."

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/physicaloid/lib/programmer/avr/UploadErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->AVR_CHIPTYPE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    .line 34
    new-instance v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    const-string v1, "FILE_OPEN"

    const-string v2, "Cannot open file."

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/physicaloid/lib/programmer/avr/UploadErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->FILE_OPEN:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    .line 35
    new-instance v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    const-string v1, "HEX_FILE_OPEN"

    const-string v2, "Illegal .hex file."

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/physicaloid/lib/programmer/avr/UploadErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->HEX_FILE_OPEN:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    .line 36
    new-instance v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    const-string v1, "CHIP_INIT"

    const-string v2, "Cannot initialize a chip."

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/physicaloid/lib/programmer/avr/UploadErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->CHIP_INIT:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    .line 37
    new-instance v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    const-string v1, "SIGNATURE"

    const/4 v2, 0x5

    const-string v3, "Incorrect chip type."

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/physicaloid/lib/programmer/avr/UploadErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->SIGNATURE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    .line 38
    new-instance v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    const-string v1, "PAGE_WRITE"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "An unexpected error occurred while writing"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/physicaloid/lib/programmer/avr/UploadErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->PAGE_WRITE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    .line 39
    new-instance v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    const-string v1, "OPEN_DEVICE"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "Cannot open device."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/physicaloid/lib/programmer/avr/UploadErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->OPEN_DEVICE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    .line 40
    new-instance v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x7

    const-string v3, ""

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/physicaloid/lib/programmer/avr/UploadErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->NO_ERROR:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    sget-object v1, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->AVR_CHIPTYPE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    aput-object v1, v0, v5

    sget-object v1, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->FILE_OPEN:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    aput-object v1, v0, v6

    sget-object v1, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->HEX_FILE_OPEN:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    aput-object v1, v0, v7

    sget-object v1, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->CHIP_INIT:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    aput-object v1, v0, v8

    sget-object v1, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->SIGNATURE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->PAGE_WRITE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->OPEN_DEVICE:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->NO_ERROR:Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    aput-object v2, v0, v1

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->ENUM$VALUES:[Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->code:I

    .line 47
    iput-object p4, p0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->description:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/physicaloid/lib/programmer/avr/UploadErrors;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    return-object v0
.end method

.method public static values()[Lcom/physicaloid/lib/programmer/avr/UploadErrors;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->ENUM$VALUES:[Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    array-length v1, v0

    new-array v2, v1, [Lcom/physicaloid/lib/programmer/avr/UploadErrors;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->description:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/physicaloid/lib/programmer/avr/UploadErrors;->description:Ljava/lang/String;

    return-object v0
.end method

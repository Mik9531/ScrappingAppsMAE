.class public final enum Lcom/physicaloid/lib/UsbVidList;
.super Ljava/lang/Enum;
.source "UsbVidList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/physicaloid/lib/UsbVidList;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARDUINO:Lcom/physicaloid/lib/UsbVidList;

.field public static final enum CP210X:Lcom/physicaloid/lib/UsbVidList;

.field private static final synthetic ENUM$VALUES:[Lcom/physicaloid/lib/UsbVidList;

.field public static final enum FTDI:Lcom/physicaloid/lib/UsbVidList;

.field public static final enum MBED_FRDM_KL25Z_KL25Z_PORT:Lcom/physicaloid/lib/UsbVidList;

.field public static final enum MBED_FRDM_KL25Z_OPENSDA_PORT:Lcom/physicaloid/lib/UsbVidList;

.field public static final enum MBED_LPC11U24:Lcom/physicaloid/lib/UsbVidList;

.field public static final enum MBED_LPC1768:Lcom/physicaloid/lib/UsbVidList;


# instance fields
.field vid:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v0, Lcom/physicaloid/lib/UsbVidList;

    const-string v1, "ARDUINO"

    const/16 v2, 0x2341

    invoke-direct {v0, v1, v4, v2}, Lcom/physicaloid/lib/UsbVidList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/physicaloid/lib/UsbVidList;->ARDUINO:Lcom/physicaloid/lib/UsbVidList;

    .line 21
    new-instance v0, Lcom/physicaloid/lib/UsbVidList;

    const-string v1, "FTDI"

    const/16 v2, 0x403

    invoke-direct {v0, v1, v5, v2}, Lcom/physicaloid/lib/UsbVidList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/physicaloid/lib/UsbVidList;->FTDI:Lcom/physicaloid/lib/UsbVidList;

    .line 22
    new-instance v0, Lcom/physicaloid/lib/UsbVidList;

    const-string v1, "MBED_LPC1768"

    const/16 v2, 0xd28

    invoke-direct {v0, v1, v6, v2}, Lcom/physicaloid/lib/UsbVidList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/physicaloid/lib/UsbVidList;->MBED_LPC1768:Lcom/physicaloid/lib/UsbVidList;

    .line 23
    new-instance v0, Lcom/physicaloid/lib/UsbVidList;

    const-string v1, "MBED_LPC11U24"

    const/16 v2, 0xd28

    invoke-direct {v0, v1, v7, v2}, Lcom/physicaloid/lib/UsbVidList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/physicaloid/lib/UsbVidList;->MBED_LPC11U24:Lcom/physicaloid/lib/UsbVidList;

    .line 24
    new-instance v0, Lcom/physicaloid/lib/UsbVidList;

    const-string v1, "MBED_FRDM_KL25Z_OPENSDA_PORT"

    const/16 v2, 0x1357

    invoke-direct {v0, v1, v8, v2}, Lcom/physicaloid/lib/UsbVidList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/physicaloid/lib/UsbVidList;->MBED_FRDM_KL25Z_OPENSDA_PORT:Lcom/physicaloid/lib/UsbVidList;

    .line 25
    new-instance v0, Lcom/physicaloid/lib/UsbVidList;

    const-string v1, "MBED_FRDM_KL25Z_KL25Z_PORT"

    const/4 v2, 0x5

    const/16 v3, 0x15a2

    invoke-direct {v0, v1, v2, v3}, Lcom/physicaloid/lib/UsbVidList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/physicaloid/lib/UsbVidList;->MBED_FRDM_KL25Z_KL25Z_PORT:Lcom/physicaloid/lib/UsbVidList;

    .line 26
    new-instance v0, Lcom/physicaloid/lib/UsbVidList;

    const-string v1, "CP210X"

    const/4 v2, 0x6

    const/16 v3, 0x10c4

    invoke-direct {v0, v1, v2, v3}, Lcom/physicaloid/lib/UsbVidList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/physicaloid/lib/UsbVidList;->CP210X:Lcom/physicaloid/lib/UsbVidList;

    .line 19
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/physicaloid/lib/UsbVidList;

    sget-object v1, Lcom/physicaloid/lib/UsbVidList;->ARDUINO:Lcom/physicaloid/lib/UsbVidList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/physicaloid/lib/UsbVidList;->FTDI:Lcom/physicaloid/lib/UsbVidList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/physicaloid/lib/UsbVidList;->MBED_LPC1768:Lcom/physicaloid/lib/UsbVidList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/physicaloid/lib/UsbVidList;->MBED_LPC11U24:Lcom/physicaloid/lib/UsbVidList;

    aput-object v1, v0, v7

    sget-object v1, Lcom/physicaloid/lib/UsbVidList;->MBED_FRDM_KL25Z_OPENSDA_PORT:Lcom/physicaloid/lib/UsbVidList;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/physicaloid/lib/UsbVidList;->MBED_FRDM_KL25Z_KL25Z_PORT:Lcom/physicaloid/lib/UsbVidList;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/physicaloid/lib/UsbVidList;->CP210X:Lcom/physicaloid/lib/UsbVidList;

    aput-object v2, v0, v1

    sput-object v0, Lcom/physicaloid/lib/UsbVidList;->ENUM$VALUES:[Lcom/physicaloid/lib/UsbVidList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "vid"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/physicaloid/lib/UsbVidList;->vid:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/physicaloid/lib/UsbVidList;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/physicaloid/lib/UsbVidList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/physicaloid/lib/UsbVidList;

    return-object v0
.end method

.method public static values()[Lcom/physicaloid/lib/UsbVidList;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/physicaloid/lib/UsbVidList;->ENUM$VALUES:[Lcom/physicaloid/lib/UsbVidList;

    array-length v1, v0

    new-array v2, v1, [Lcom/physicaloid/lib/UsbVidList;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getVid()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/physicaloid/lib/UsbVidList;->vid:I

    return v0
.end method

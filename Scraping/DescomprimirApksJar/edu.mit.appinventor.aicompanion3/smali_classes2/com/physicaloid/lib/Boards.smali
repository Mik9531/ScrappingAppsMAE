.class public final enum Lcom/physicaloid/lib/Boards;
.super Ljava/lang/Enum;
.source "Boards.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/physicaloid/lib/Boards$ChipTypes;,
        Lcom/physicaloid/lib/Boards$ComProtocols;,
        Lcom/physicaloid/lib/Boards$UploadProtocols;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/physicaloid/lib/Boards;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARDUINO_BT_168:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_BT_328:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_DUEMILANOVE_168:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_DUEMILANOVE_328:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_ETHERNET:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_FIO:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_LILYPAD_168:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_LILYPAD_328:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_MEGA_1280:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_MEGA_2560_ADK:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_MINI_168:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_MINI_328:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_NANO_168:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_NANO_328:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_NG_168:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_NG_8:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_PRO_33V_168:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_PRO_33V_328:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_PRO_5V_168:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_PRO_5V_328:Lcom/physicaloid/lib/Boards;

.field public static final enum ARDUINO_UNO:Lcom/physicaloid/lib/Boards;

.field public static final enum BALANDUINO:Lcom/physicaloid/lib/Boards;

.field private static final synthetic ENUM$VALUES:[Lcom/physicaloid/lib/Boards;

.field public static final enum NONE:Lcom/physicaloid/lib/Boards;

.field public static final enum PERIDOT:Lcom/physicaloid/lib/Boards;

.field public static final enum POCKETDUINO:Lcom/physicaloid/lib/Boards;


# instance fields
.field public final chipType:I

.field public final comProtocol:I

.field public final idText:Ljava/lang/String;

.field public final support:I

.field public final text:Ljava/lang/String;

.field public final uploadBaudrate:I

.field public final uploadProtocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 20
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_UNO"

    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    const-string v4, "auno"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const v7, 0x1c200

    const/4 v8, 0x1

    const-string v9, "Arduino Uno"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_UNO:Lcom/physicaloid/lib/Boards;

    .line 22
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_DUEMILANOVE_328"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-string v4, "duem"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const v7, 0xe100

    const/4 v8, 0x1

    const-string v9, "Arduino Duemilanove ATmega328"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_DUEMILANOVE_328:Lcom/physicaloid/lib/Boards;

    .line 23
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_DUEMILANOVE_168"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "diec"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x4b00

    const/4 v8, 0x1

    const-string v9, "Arduino Diecimila or Duemilanove ATmega168"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_DUEMILANOVE_168:Lcom/physicaloid/lib/Boards;

    .line 24
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_NANO_328"

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "na32"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const v7, 0xe100

    const/4 v8, 0x1

    const-string v9, "Arduino Nano ATmega328"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_NANO_328:Lcom/physicaloid/lib/Boards;

    .line 25
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_NANO_168"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "na16"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const v7, 0xe100

    const/4 v8, 0x1

    const-string v9, "Arduino Nano ATmega168"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_NANO_168:Lcom/physicaloid/lib/Boards;

    .line 26
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_MEGA_2560_ADK"

    const/4 v2, 0x5

    const/4 v3, 0x1

    const-string v4, "mg25"

    const/4 v5, 0x5

    const/4 v6, 0x2

    const v7, 0x1c200

    const/4 v8, 0x1

    const-string v9, "Arduino Mega 2560 or ADK"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_MEGA_2560_ADK:Lcom/physicaloid/lib/Boards;

    .line 27
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_MEGA_1280"

    const/4 v2, 0x6

    const/4 v3, 0x0

    const-string v4, "mg16"

    const/4 v5, 0x4

    const/4 v6, 0x1

    const v7, 0xe100

    const/4 v8, 0x1

    const-string v9, "Arduino Mega (ATmega1280)"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_MEGA_1280:Lcom/physicaloid/lib/Boards;

    .line 28
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_MINI_328"

    const/4 v2, 0x7

    .line 31
    const/4 v3, 0x0

    const-string v4, "mn32"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const v7, 0xe100

    const/4 v8, 0x1

    const-string v9, "Arduino Mini ATmega328"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_MINI_328:Lcom/physicaloid/lib/Boards;

    .line 32
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_MINI_168"

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v4, "mn16"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const v7, 0xe100

    const/4 v8, 0x1

    const-string v9, "Arduino Mini ATmega168"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_MINI_168:Lcom/physicaloid/lib/Boards;

    .line 33
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_ETHERNET"

    const/16 v2, 0x9

    const/4 v3, 0x0

    const-string v4, "ethe"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const v7, 0x1c200

    const/4 v8, 0x1

    const-string v9, "Arduino Ethernet"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_ETHERNET:Lcom/physicaloid/lib/Boards;

    .line 34
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_FIO"

    const/16 v2, 0xa

    const/4 v3, 0x0

    const-string v4, "afio"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const v7, 0xe100

    const/4 v8, 0x1

    const-string v9, "Arduino Fio"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_FIO:Lcom/physicaloid/lib/Boards;

    .line 35
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_BT_328"

    const/16 v2, 0xb

    const/4 v3, 0x0

    const-string v4, "bt32"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/16 v7, 0x4b00

    const/4 v8, 0x1

    const-string v9, "Arduino BT ATmega328"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_BT_328:Lcom/physicaloid/lib/Boards;

    .line 36
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_BT_168"

    const/16 v2, 0xc

    const/4 v3, 0x0

    const-string v4, "bt16"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x4b00

    const/4 v8, 0x1

    const-string v9, "Arduino BT ATmega168"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_BT_168:Lcom/physicaloid/lib/Boards;

    .line 37
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_LILYPAD_328"

    const/16 v2, 0xd

    .line 38
    const/4 v3, 0x0

    const-string v4, "lp32"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const v7, 0xe100

    const/4 v8, 0x1

    const-string v9, "LilyPad Arduino ATmega328"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_LILYPAD_328:Lcom/physicaloid/lib/Boards;

    .line 39
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_LILYPAD_168"

    const/16 v2, 0xe

    const/4 v3, 0x0

    const-string v4, "lp16"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x4b00

    const/4 v8, 0x1

    const-string v9, "LilyPad Arduino ATmega168"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_LILYPAD_168:Lcom/physicaloid/lib/Boards;

    .line 40
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_PRO_5V_328"

    const/16 v2, 0xf

    const/4 v3, 0x1

    const-string v4, "pm53"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const v7, 0xe100

    const/4 v8, 0x1

    const-string v9, "Arduino Pro or Pro Mini (5V, 16MHz) ATmega328"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_PRO_5V_328:Lcom/physicaloid/lib/Boards;

    .line 41
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_PRO_5V_168"

    const/16 v2, 0x10

    const/4 v3, 0x1

    const-string v4, "pm51"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x4b00

    const/4 v8, 0x1

    const-string v9, "Arduino Pro or Pro Mini (5V, 16MHz) ATmega168"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_PRO_5V_168:Lcom/physicaloid/lib/Boards;

    .line 42
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_PRO_33V_328"

    const/16 v2, 0x11

    const/4 v3, 0x1

    const-string v4, "pm33"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const v7, 0xe100

    const/4 v8, 0x1

    const-string v9, "Arduino Pro or Pro Mini (3.3V, 8MHz) ATmega328"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_PRO_33V_328:Lcom/physicaloid/lib/Boards;

    .line 43
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_PRO_33V_168"

    const/16 v2, 0x12

    const/4 v3, 0x1

    const-string v4, "pm31"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x4b00

    const/4 v8, 0x1

    const-string v9, "Arduino Pro or Pro Mini (3.3V, 8MHz) ATmega168"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_PRO_33V_168:Lcom/physicaloid/lib/Boards;

    .line 44
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_NG_168"

    const/16 v2, 0x13

    const/4 v3, 0x0

    const-string v4, "ng16"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x4b00

    const/4 v8, 0x1

    const-string v9, "Arduino NG or older ATmega168"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_NG_168:Lcom/physicaloid/lib/Boards;

    .line 45
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "ARDUINO_NG_8"

    const/16 v2, 0x14

    const/4 v3, 0x0

    const-string v4, "ng08"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v7, 0x4b00

    const/4 v8, 0x1

    const-string v9, "Arduino NG or older ATmega8"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->ARDUINO_NG_8:Lcom/physicaloid/lib/Boards;

    .line 47
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "BALANDUINO"

    const/16 v2, 0x15

    const/4 v3, 0x1

    const-string v4, "bala"

    const/4 v5, 0x7

    const/4 v6, 0x1

    const v7, 0x1c200

    const/4 v8, 0x1

    const-string v9, "Balanduino"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->BALANDUINO:Lcom/physicaloid/lib/Boards;

    .line 48
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "POCKETDUINO"

    const/16 v2, 0x16

    const/4 v3, 0x1

    const-string v4, "podu"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const v7, 0xe100

    const/4 v8, 0x1

    const-string v9, "PocketDuino"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->POCKETDUINO:Lcom/physicaloid/lib/Boards;

    .line 50
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "PERIDOT"

    const/16 v2, 0x17

    .line 56
    const/4 v3, 0x1

    const-string v4, "fp01"

    const/16 v5, 0x3d

    const/16 v6, 0x3d

    const/4 v7, 0x0

    const/4 v8, 0x4

    const-string v9, "Physicaloid FPGA PERIDOT Board"

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->PERIDOT:Lcom/physicaloid/lib/Boards;

    .line 58
    new-instance v0, Lcom/physicaloid/lib/Boards;

    const-string v1, "NONE"

    const/16 v2, 0x18

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    invoke-direct/range {v0 .. v9}, Lcom/physicaloid/lib/Boards;-><init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/physicaloid/lib/Boards;->NONE:Lcom/physicaloid/lib/Boards;

    .line 19
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/physicaloid/lib/Boards;

    const/4 v1, 0x0

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_UNO:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_DUEMILANOVE_328:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_DUEMILANOVE_168:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_NANO_328:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_NANO_168:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_MEGA_2560_ADK:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_MEGA_1280:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_MINI_328:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_MINI_168:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_ETHERNET:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_FIO:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_BT_328:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_BT_168:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_LILYPAD_328:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_LILYPAD_168:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_PRO_5V_328:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_PRO_5V_168:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_PRO_33V_328:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_PRO_33V_168:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_NG_168:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/physicaloid/lib/Boards;->ARDUINO_NG_8:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/physicaloid/lib/Boards;->BALANDUINO:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/physicaloid/lib/Boards;->POCKETDUINO:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/physicaloid/lib/Boards;->PERIDOT:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/physicaloid/lib/Boards;->NONE:Lcom/physicaloid/lib/Boards;

    aput-object v2, v0, v1

    sput-object v0, Lcom/physicaloid/lib/Boards;->ENUM$VALUES:[Lcom/physicaloid/lib/Boards;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;IIIILjava/lang/String;)V
    .locals 0
    .param p3, "support"    # I
    .param p4, "idText"    # Ljava/lang/String;
    .param p5, "chipType"    # I
    .param p6, "uploadProtocol"    # I
    .param p7, "uploadBaudrate"    # I
    .param p8, "comProtocol"    # I
    .param p9, "text"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/physicaloid/lib/Boards;->support:I

    .line 70
    iput-object p4, p0, Lcom/physicaloid/lib/Boards;->idText:Ljava/lang/String;

    .line 71
    iput p5, p0, Lcom/physicaloid/lib/Boards;->chipType:I

    .line 72
    iput p6, p0, Lcom/physicaloid/lib/Boards;->uploadProtocol:I

    .line 73
    iput p7, p0, Lcom/physicaloid/lib/Boards;->uploadBaudrate:I

    .line 74
    iput p8, p0, Lcom/physicaloid/lib/Boards;->comProtocol:I

    .line 75
    iput-object p9, p0, Lcom/physicaloid/lib/Boards;->text:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/physicaloid/lib/Boards;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/physicaloid/lib/Boards;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/physicaloid/lib/Boards;

    return-object v0
.end method

.method public static values()[Lcom/physicaloid/lib/Boards;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/physicaloid/lib/Boards;->ENUM$VALUES:[Lcom/physicaloid/lib/Boards;

    array-length v1, v0

    new-array v2, v1, [Lcom/physicaloid/lib/Boards;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.class public final enum Lcom/physicaloid/lib/usb/UsbIds;
.super Ljava/lang/Enum;
.source "UsbIds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/physicaloid/lib/usb/UsbIds$DriverType;,
        Lcom/physicaloid/lib/usb/UsbIds$Vid;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/physicaloid/lib/usb/UsbIds;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARDUINO:Lcom/physicaloid/lib/usb/UsbIds;

.field private static final synthetic ENUM$VALUES:[Lcom/physicaloid/lib/usb/UsbIds;

.field public static final enum FTDI:Lcom/physicaloid/lib/usb/UsbIds;

.field public static final enum MBED:Lcom/physicaloid/lib/usb/UsbIds;


# instance fields
.field driverType:I

.field pid:I

.field vid:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/physicaloid/lib/usb/UsbIds;

    const-string v1, "FTDI"

    const/16 v3, 0x403

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/physicaloid/lib/usb/UsbIds;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/physicaloid/lib/usb/UsbIds;->FTDI:Lcom/physicaloid/lib/usb/UsbIds;

    .line 21
    new-instance v3, Lcom/physicaloid/lib/usb/UsbIds;

    const-string v4, "ARDUINO"

    const/16 v6, 0x2341

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/physicaloid/lib/usb/UsbIds;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/physicaloid/lib/usb/UsbIds;->ARDUINO:Lcom/physicaloid/lib/usb/UsbIds;

    .line 22
    new-instance v6, Lcom/physicaloid/lib/usb/UsbIds;

    const-string v7, "MBED"

    const/16 v9, 0xd28

    move v10, v2

    move v11, v8

    invoke-direct/range {v6 .. v11}, Lcom/physicaloid/lib/usb/UsbIds;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/physicaloid/lib/usb/UsbIds;->MBED:Lcom/physicaloid/lib/usb/UsbIds;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/physicaloid/lib/usb/UsbIds;

    sget-object v1, Lcom/physicaloid/lib/usb/UsbIds;->FTDI:Lcom/physicaloid/lib/usb/UsbIds;

    aput-object v1, v0, v2

    sget-object v1, Lcom/physicaloid/lib/usb/UsbIds;->ARDUINO:Lcom/physicaloid/lib/usb/UsbIds;

    aput-object v1, v0, v5

    sget-object v1, Lcom/physicaloid/lib/usb/UsbIds;->MBED:Lcom/physicaloid/lib/usb/UsbIds;

    aput-object v1, v0, v8

    sput-object v0, Lcom/physicaloid/lib/usb/UsbIds;->ENUM$VALUES:[Lcom/physicaloid/lib/usb/UsbIds;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "vid"    # I
    .param p4, "pid"    # I
    .param p5, "driverType"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/physicaloid/lib/usb/UsbIds;->vid:I

    .line 30
    iput p4, p0, Lcom/physicaloid/lib/usb/UsbIds;->pid:I

    .line 31
    iput p5, p0, Lcom/physicaloid/lib/usb/UsbIds;->driverType:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/physicaloid/lib/usb/UsbIds;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/physicaloid/lib/usb/UsbIds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/physicaloid/lib/usb/UsbIds;

    return-object v0
.end method

.method public static values()[Lcom/physicaloid/lib/usb/UsbIds;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/physicaloid/lib/usb/UsbIds;->ENUM$VALUES:[Lcom/physicaloid/lib/usb/UsbIds;

    array-length v1, v0

    new-array v2, v1, [Lcom/physicaloid/lib/usb/UsbIds;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.class public Lcom/physicaloid/lib/usb/UsbIds$Vid;
.super Ljava/lang/Object;
.source "UsbIds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/physicaloid/lib/usb/UsbIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vid"
.end annotation


# static fields
.field public static final AVR:I = 0x2341

.field public static final FTDI:I = 0x403

.field public static final NXP:I = 0xd28


# instance fields
.field final synthetic this$0:Lcom/physicaloid/lib/usb/UsbIds;


# direct methods
.method public constructor <init>(Lcom/physicaloid/lib/usb/UsbIds;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/physicaloid/lib/usb/UsbIds$Vid;->this$0:Lcom/physicaloid/lib/usb/UsbIds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

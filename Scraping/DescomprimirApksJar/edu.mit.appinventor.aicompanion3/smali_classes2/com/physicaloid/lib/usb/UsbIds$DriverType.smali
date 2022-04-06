.class public Lcom/physicaloid/lib/usb/UsbIds$DriverType;
.super Ljava/lang/Object;
.source "UsbIds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/physicaloid/lib/usb/UsbIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DriverType"
.end annotation


# static fields
.field public static final CDCACM:I = 0x2

.field public static final FTDI:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/physicaloid/lib/usb/UsbIds;


# direct methods
.method public constructor <init>(Lcom/physicaloid/lib/usb/UsbIds;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/physicaloid/lib/usb/UsbIds$DriverType;->this$0:Lcom/physicaloid/lib/usb/UsbIds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;
.super Ljava/lang/Object;
.source "UsbCdcConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/physicaloid/lib/usb/UsbCdcConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbCdcConnectionEp"
.end annotation


# instance fields
.field public connection:Landroid/hardware/usb/UsbDeviceConnection;

.field public endpointIn:Landroid/hardware/usb/UsbEndpoint;

.field public endpointOut:Landroid/hardware/usb/UsbEndpoint;

.field final synthetic this$0:Lcom/physicaloid/lib/usb/UsbCdcConnection;


# direct methods
.method public constructor <init>(Lcom/physicaloid/lib/usb/UsbCdcConnection;Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 0
    .param p2, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .param p3, "endpointIn"    # Landroid/hardware/usb/UsbEndpoint;
    .param p4, "endpointOut"    # Landroid/hardware/usb/UsbEndpoint;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;->this$0:Lcom/physicaloid/lib/usb/UsbCdcConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 185
    iput-object p3, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;->endpointIn:Landroid/hardware/usb/UsbEndpoint;

    .line 186
    iput-object p4, p0, Lcom/physicaloid/lib/usb/UsbCdcConnection$UsbCdcConnectionEp;->endpointOut:Landroid/hardware/usb/UsbEndpoint;

    .line 187
    return-void
.end method

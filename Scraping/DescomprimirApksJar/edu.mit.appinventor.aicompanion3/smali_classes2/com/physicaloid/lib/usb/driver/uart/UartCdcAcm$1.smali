.class Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm$1;
.super Ljava/lang/Object;
.source "UartCdcAcm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;


# direct methods
.method constructor <init>(Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "len":I
    const/16 v3, 0x100

    new-array v2, v3, [B

    .line 147
    .local v2, "rbuf":[B
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;

    invoke-static {v3}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->access$0(Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;

    invoke-static {v4}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->access$1(Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    .line 148
    array-length v5, v2

    const/16 v6, 0x32

    .line 147
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 153
    :goto_1
    if-lez v1, :cond_0

    .line 154
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;

    invoke-static {v3}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->access$3(Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;)Lcom/physicaloid/misc/RingBuffer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/physicaloid/misc/RingBuffer;->add([BI)I

    .line 155
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;

    invoke-static {v3, v1}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->access$4(Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;I)V

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;

    invoke-static {v3}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->access$5(Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/physicaloid/lib/usb/driver/uart/UartCdcAcm;->access$2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-wide/16 v4, 0x32

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 164
    :catch_1
    move-exception v3

    goto :goto_0
.end method

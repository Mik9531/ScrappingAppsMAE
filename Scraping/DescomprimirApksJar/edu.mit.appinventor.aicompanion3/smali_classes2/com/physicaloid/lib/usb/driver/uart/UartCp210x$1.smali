.class Lcom/physicaloid/lib/usb/driver/uart/UartCp210x$1;
.super Ljava/lang/Object;
.source "UartCp210x.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;


# direct methods
.method constructor <init>(Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "len":I
    const/16 v3, 0x100

    new-array v2, v3, [B

    .line 242
    .local v2, "rbuf":[B
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;

    invoke-static {v3}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->access$0(Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;

    invoke-static {v4}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->access$1(Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    .line 243
    array-length v5, v2

    const/16 v6, 0x32

    .line 242
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 248
    :goto_1
    if-lez v1, :cond_0

    .line 249
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;

    invoke-static {v3}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->access$3(Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;)Lcom/physicaloid/misc/RingBuffer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/physicaloid/misc/RingBuffer;->add([BI)I

    .line 250
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;

    invoke-static {v3, v1}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->access$4(Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;I)V

    .line 253
    :cond_0
    iget-object v3, p0, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;

    invoke-static {v3}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->access$5(Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/physicaloid/lib/usb/driver/uart/UartCp210x;->access$2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-wide/16 v4, 0x32

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 259
    :catch_1
    move-exception v3

    goto :goto_0
.end method

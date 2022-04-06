.class Lcom/physicaloid/lib/usb/driver/uart/UartFtdi$1;
.super Ljava/lang/Object;
.source "UartFtdi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;


# direct methods
.method constructor <init>(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x100

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "len":I
    new-array v1, v6, [B

    .line 183
    .local v1, "rbuf":[B
    :goto_0
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;

    invoke-static {v2}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->access$0(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;)Lcom/ftdi/j2xx/FT_Device;

    move-result-object v3

    monitor-enter v3

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;

    invoke-static {v2}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->access$0(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;)Lcom/ftdi/j2xx/FT_Device;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ftdi/j2xx/FT_Device;->getQueueStatus()I

    move-result v0

    .line 183
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    if-lez v0, :cond_1

    .line 188
    if-le v0, v6, :cond_0

    const/16 v0, 0x100

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;

    invoke-static {v2}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->access$0(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;)Lcom/ftdi/j2xx/FT_Device;

    move-result-object v3

    monitor-enter v3

    .line 190
    :try_start_1
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;

    invoke-static {v2}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->access$0(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;)Lcom/ftdi/j2xx/FT_Device;

    move-result-object v2

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v1, v0, v4, v5}, Lcom/ftdi/j2xx/FT_Device;->read([BIJ)I

    move-result v0

    .line 189
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    invoke-static {}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->access$1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "read("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;

    invoke-static {v4, v1, v0}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->access$2(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;[BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;

    invoke-static {v2}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->access$3(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;)Lcom/physicaloid/misc/RingBuffer;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/physicaloid/misc/RingBuffer;->add([BI)I

    .line 195
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;

    invoke-static {v2, v0}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->access$4(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;I)V

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi$1;->this$0:Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;

    invoke-static {v2}, Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;->access$5(Lcom/physicaloid/lib/usb/driver/uart/UartFtdi;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    return-void

    .line 183
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 189
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 204
    :cond_2
    const-wide/16 v2, 0x32

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v2

    goto :goto_0
.end method

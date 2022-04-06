.class public Lcom/physicaloid/lib/Boards$ComProtocols;
.super Ljava/lang/Object;
.source "Boards.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/physicaloid/lib/Boards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComProtocols"
.end annotation


# static fields
.field public static final I2C:I = 0x2

.field public static final SPI:I = 0x3

.field public static final SYNC_FIFO:I = 0x5

.field public static final UART:I = 0x1

.field public static final USYNC_FIFO:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/physicaloid/lib/Boards;


# direct methods
.method public constructor <init>(Lcom/physicaloid/lib/Boards;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/physicaloid/lib/Boards$ComProtocols;->this$0:Lcom/physicaloid/lib/Boards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

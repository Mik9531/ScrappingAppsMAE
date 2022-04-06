.class public Lcom/physicaloid/lib/Boards$UploadProtocols;
.super Ljava/lang/Object;
.source "Boards.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/physicaloid/lib/Boards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadProtocols"
.end annotation


# static fields
.field public static final ALTERA_FPGA_RBF:I = 0x3d

.field public static final AVR109:I = 0x3

.field public static final STK500:I = 0x1

.field public static final STK500V2:I = 0x2

.field public static final USBMEM:I = 0x1f


# instance fields
.field final synthetic this$0:Lcom/physicaloid/lib/Boards;


# direct methods
.method public constructor <init>(Lcom/physicaloid/lib/Boards;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/physicaloid/lib/Boards$UploadProtocols;->this$0:Lcom/physicaloid/lib/Boards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

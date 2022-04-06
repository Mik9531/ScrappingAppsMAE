.class public Lcom/physicaloid/lib/usb/UsbVidPid;
.super Ljava/lang/Object;
.source "UsbVidPid.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private pid:I

.field private vid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/physicaloid/lib/usb/UsbVidPid;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/usb/UsbVidPid;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "vid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/physicaloid/lib/usb/UsbVidPid;->vid:I

    .line 28
    iput p2, p0, Lcom/physicaloid/lib/usb/UsbVidPid;->pid:I

    .line 29
    return-void
.end method


# virtual methods
.method public getPid()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/physicaloid/lib/usb/UsbVidPid;->pid:I

    return v0
.end method

.method public getVid()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/physicaloid/lib/usb/UsbVidPid;->vid:I

    return v0
.end method

.method public setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/physicaloid/lib/usb/UsbVidPid;->pid:I

    return-void
.end method

.method public setVid(I)V
    .locals 0
    .param p1, "vid"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/physicaloid/lib/usb/UsbVidPid;->vid:I

    return-void
.end method

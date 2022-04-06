.class abstract enum Lorg/webrtc/HardwareVideoEncoder$ColorFormat;
.super Ljava/lang/Enum;
.source "HardwareVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/HardwareVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "ColorFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/HardwareVideoEncoder$ColorFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

.field public static final enum I420:Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

.field public static final enum NV12:Lorg/webrtc/HardwareVideoEncoder$ColorFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 523
    new-instance v0, Lorg/webrtc/HardwareVideoEncoder$ColorFormat$1;

    const-string v1, "I420"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/HardwareVideoEncoder$ColorFormat$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;->I420:Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    .line 531
    new-instance v0, Lorg/webrtc/HardwareVideoEncoder$ColorFormat$2;

    const-string v1, "NV12"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/HardwareVideoEncoder$ColorFormat$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;->NV12:Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    .line 522
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    sget-object v1, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;->I420:Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;->NV12:Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;->$VALUES:[Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 522
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/webrtc/HardwareVideoEncoder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/webrtc/HardwareVideoEncoder$1;

    .prologue
    .line 522
    invoke-direct {p0, p1, p2}, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static valueOf(I)Lorg/webrtc/HardwareVideoEncoder$ColorFormat;
    .locals 3
    .param p0, "colorFormat"    # I

    .prologue
    .line 550
    sparse-switch p0, :sswitch_data_0

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported colorFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :sswitch_0
    sget-object v0, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;->I420:Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    .line 556
    :goto_0
    return-object v0

    :sswitch_1
    sget-object v0, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;->NV12:Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    goto :goto_0

    .line 550
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x15 -> :sswitch_1
        0x7fa30c00 -> :sswitch_1
        0x7fa30c04 -> :sswitch_1
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/HardwareVideoEncoder$ColorFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 522
    const-class v0, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/HardwareVideoEncoder$ColorFormat;
    .locals 1

    .prologue
    .line 522
    sget-object v0, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;->$VALUES:[Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    invoke-virtual {v0}, [Lorg/webrtc/HardwareVideoEncoder$ColorFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    return-object v0
.end method


# virtual methods
.method abstract fillBufferFromI420(Ljava/nio/ByteBuffer;Lorg/webrtc/VideoFrame$I420Buffer;)V
.end method

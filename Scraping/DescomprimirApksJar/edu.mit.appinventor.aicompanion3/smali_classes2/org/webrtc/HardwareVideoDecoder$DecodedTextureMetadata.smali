.class Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;
.super Ljava/lang/Object;
.source "HardwareVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/HardwareVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodedTextureMetadata"
.end annotation


# instance fields
.field final decodeTimeMs:Ljava/lang/Integer;

.field final height:I

.field final presentationTimestampUs:J

.field final rotation:I

.field final width:I


# direct methods
.method constructor <init>(IIIJLjava/lang/Integer;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I
    .param p4, "presentationTimestampUs"    # J
    .param p6, "decodeTimeMs"    # Ljava/lang/Integer;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;->width:I

    .line 121
    iput p2, p0, Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;->height:I

    .line 122
    iput p3, p0, Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;->rotation:I

    .line 123
    iput-wide p4, p0, Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;->presentationTimestampUs:J

    .line 124
    iput-object p6, p0, Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;->decodeTimeMs:Ljava/lang/Integer;

    .line 125
    return-void
.end method

.class public Lorg/shaded/apache/http/UnsupportedHttpVersionException;
.super Lorg/shaded/apache/http/ProtocolException;
.source "UnsupportedHttpVersionException.java"


# static fields
.field private static final serialVersionUID:J = -0x12b6a664c6039857L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/shaded/apache/http/ProtocolException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method
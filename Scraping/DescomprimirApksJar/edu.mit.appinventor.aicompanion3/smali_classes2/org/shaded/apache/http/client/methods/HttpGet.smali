.class public Lorg/shaded/apache/http/client/methods/HttpGet;
.super Lorg/shaded/apache/http/client/methods/HttpRequestBase;
.source "HttpGet.java"


# annotations
.annotation build Lorg/shaded/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "GET"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/shaded/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/shaded/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 69
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/shaded/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "GET"

    return-object v0
.end method

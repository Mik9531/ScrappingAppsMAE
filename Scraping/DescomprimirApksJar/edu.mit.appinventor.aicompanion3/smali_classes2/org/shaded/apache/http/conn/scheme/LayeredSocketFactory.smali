.class public interface abstract Lorg/shaded/apache/http/conn/scheme/LayeredSocketFactory;
.super Ljava/lang/Object;
.source "LayeredSocketFactory.java"

# interfaces
.implements Lorg/shaded/apache/http/conn/scheme/SocketFactory;


# virtual methods
.method public abstract createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

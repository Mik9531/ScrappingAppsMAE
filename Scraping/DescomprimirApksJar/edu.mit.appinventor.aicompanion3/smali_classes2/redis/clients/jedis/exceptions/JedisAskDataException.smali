.class public Lredis/clients/jedis/exceptions/JedisAskDataException;
.super Lredis/clients/jedis/exceptions/JedisRedirectionException;
.source "JedisAskDataException.java"


# static fields
.field private static final serialVersionUID:J = 0x35d1df920a5d634bL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lredis/clients/jedis/HostAndPort;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "targetHost"    # Lredis/clients/jedis/HostAndPort;
    .param p4, "slot"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lredis/clients/jedis/exceptions/JedisRedirectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lredis/clients/jedis/HostAndPort;I)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lredis/clients/jedis/HostAndPort;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "targetHost"    # Lredis/clients/jedis/HostAndPort;
    .param p3, "slot"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lredis/clients/jedis/exceptions/JedisRedirectionException;-><init>(Ljava/lang/String;Lredis/clients/jedis/HostAndPort;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lredis/clients/jedis/HostAndPort;I)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "targetHost"    # Lredis/clients/jedis/HostAndPort;
    .param p3, "slot"    # I

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lredis/clients/jedis/exceptions/JedisRedirectionException;-><init>(Ljava/lang/Throwable;Lredis/clients/jedis/HostAndPort;I)V

    .line 10
    return-void
.end method

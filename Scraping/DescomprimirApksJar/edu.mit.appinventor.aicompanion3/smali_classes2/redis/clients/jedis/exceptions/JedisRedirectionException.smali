.class public Lredis/clients/jedis/exceptions/JedisRedirectionException;
.super Lredis/clients/jedis/exceptions/JedisDataException;
.source "JedisRedirectionException.java"


# static fields
.field private static final serialVersionUID:J = 0x35d1df920a5d634bL


# instance fields
.field private slot:I

.field private targetNode:Lredis/clients/jedis/HostAndPort;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lredis/clients/jedis/HostAndPort;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "targetNode"    # Lredis/clients/jedis/HostAndPort;
    .param p4, "slot"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    iput-object p3, p0, Lredis/clients/jedis/exceptions/JedisRedirectionException;->targetNode:Lredis/clients/jedis/HostAndPort;

    .line 26
    iput p4, p0, Lredis/clients/jedis/exceptions/JedisRedirectionException;->slot:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lredis/clients/jedis/HostAndPort;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "targetNode"    # Lredis/clients/jedis/HostAndPort;
    .param p3, "slot"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p2, p0, Lredis/clients/jedis/exceptions/JedisRedirectionException;->targetNode:Lredis/clients/jedis/HostAndPort;

    .line 14
    iput p3, p0, Lredis/clients/jedis/exceptions/JedisRedirectionException;->slot:I

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lredis/clients/jedis/HostAndPort;I)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "targetNode"    # Lredis/clients/jedis/HostAndPort;
    .param p3, "slot"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    iput-object p2, p0, Lredis/clients/jedis/exceptions/JedisRedirectionException;->targetNode:Lredis/clients/jedis/HostAndPort;

    .line 20
    iput p3, p0, Lredis/clients/jedis/exceptions/JedisRedirectionException;->slot:I

    .line 21
    return-void
.end method


# virtual methods
.method public getSlot()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lredis/clients/jedis/exceptions/JedisRedirectionException;->slot:I

    return v0
.end method

.method public getTargetNode()Lredis/clients/jedis/HostAndPort;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lredis/clients/jedis/exceptions/JedisRedirectionException;->targetNode:Lredis/clients/jedis/HostAndPort;

    return-object v0
.end method

.class public Lredis/clients/jedis/exceptions/JedisDataException;
.super Lredis/clients/jedis/exceptions/JedisException;
.source "JedisDataException.java"


# static fields
.field private static final serialVersionUID:J = 0x35d1df920a5d634bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    return-void
.end method

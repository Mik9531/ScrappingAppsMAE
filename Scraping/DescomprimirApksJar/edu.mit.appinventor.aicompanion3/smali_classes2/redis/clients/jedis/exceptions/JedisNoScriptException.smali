.class public Lredis/clients/jedis/exceptions/JedisNoScriptException;
.super Lredis/clients/jedis/exceptions/JedisDataException;
.source "JedisNoScriptException.java"


# static fields
.field private static final serialVersionUID:J = 0x40deba1c176d913bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lredis/clients/jedis/exceptions/JedisDataException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.class public Lredis/clients/jedis/exceptions/InvalidURIException;
.super Lredis/clients/jedis/exceptions/JedisException;
.source "InvalidURIException.java"


# static fields
.field private static final serialVersionUID:J = -0xad920b9f1fc0d2aL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    return-void
.end method

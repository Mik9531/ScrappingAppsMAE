.class public Lredis/clients/jedis/exceptions/JedisClusterCrossSlotException;
.super Lredis/clients/jedis/exceptions/JedisClusterException;
.source "JedisClusterCrossSlotException.java"


# static fields
.field private static final serialVersionUID:J = -0x583356da565d1d83L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lredis/clients/jedis/exceptions/JedisClusterException;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/exceptions/JedisClusterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lredis/clients/jedis/exceptions/JedisClusterException;-><init>(Ljava/lang/Throwable;)V

    .line 8
    return-void
.end method

.class public final enum Lredis/clients/jedis/JedisCluster$Reset;
.super Ljava/lang/Enum;
.source "JedisCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/jedis/JedisCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lredis/clients/jedis/JedisCluster$Reset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lredis/clients/jedis/JedisCluster$Reset;

.field public static final enum HARD:Lredis/clients/jedis/JedisCluster$Reset;

.field public static final enum SOFT:Lredis/clients/jedis/JedisCluster$Reset;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lredis/clients/jedis/JedisCluster$Reset;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/JedisCluster$Reset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/JedisCluster$Reset;->SOFT:Lredis/clients/jedis/JedisCluster$Reset;

    new-instance v0, Lredis/clients/jedis/JedisCluster$Reset;

    const-string v1, "HARD"

    invoke-direct {v0, v1, v3}, Lredis/clients/jedis/JedisCluster$Reset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/JedisCluster$Reset;->HARD:Lredis/clients/jedis/JedisCluster$Reset;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lredis/clients/jedis/JedisCluster$Reset;

    sget-object v1, Lredis/clients/jedis/JedisCluster$Reset;->SOFT:Lredis/clients/jedis/JedisCluster$Reset;

    aput-object v1, v0, v2

    sget-object v1, Lredis/clients/jedis/JedisCluster$Reset;->HARD:Lredis/clients/jedis/JedisCluster$Reset;

    aput-object v1, v0, v3

    sput-object v0, Lredis/clients/jedis/JedisCluster$Reset;->ENUM$VALUES:[Lredis/clients/jedis/JedisCluster$Reset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lredis/clients/jedis/JedisCluster$Reset;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lredis/clients/jedis/JedisCluster$Reset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/JedisCluster$Reset;

    return-object v0
.end method

.method public static values()[Lredis/clients/jedis/JedisCluster$Reset;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lredis/clients/jedis/JedisCluster$Reset;->ENUM$VALUES:[Lredis/clients/jedis/JedisCluster$Reset;

    array-length v1, v0

    new-array v2, v1, [Lredis/clients/jedis/JedisCluster$Reset;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

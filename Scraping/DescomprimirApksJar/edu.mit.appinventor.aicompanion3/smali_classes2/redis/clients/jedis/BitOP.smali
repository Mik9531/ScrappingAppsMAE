.class public final enum Lredis/clients/jedis/BitOP;
.super Ljava/lang/Enum;
.source "BitOP.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lredis/clients/jedis/BitOP;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AND:Lredis/clients/jedis/BitOP;

.field private static final synthetic ENUM$VALUES:[Lredis/clients/jedis/BitOP;

.field public static final enum NOT:Lredis/clients/jedis/BitOP;

.field public static final enum OR:Lredis/clients/jedis/BitOP;

.field public static final enum XOR:Lredis/clients/jedis/BitOP;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lredis/clients/jedis/BitOP;

    const-string v1, "AND"

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/BitOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/BitOP;->AND:Lredis/clients/jedis/BitOP;

    new-instance v0, Lredis/clients/jedis/BitOP;

    const-string v1, "OR"

    invoke-direct {v0, v1, v3}, Lredis/clients/jedis/BitOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/BitOP;->OR:Lredis/clients/jedis/BitOP;

    new-instance v0, Lredis/clients/jedis/BitOP;

    const-string v1, "XOR"

    invoke-direct {v0, v1, v4}, Lredis/clients/jedis/BitOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/BitOP;->XOR:Lredis/clients/jedis/BitOP;

    new-instance v0, Lredis/clients/jedis/BitOP;

    const-string v1, "NOT"

    invoke-direct {v0, v1, v5}, Lredis/clients/jedis/BitOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/BitOP;->NOT:Lredis/clients/jedis/BitOP;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lredis/clients/jedis/BitOP;

    sget-object v1, Lredis/clients/jedis/BitOP;->AND:Lredis/clients/jedis/BitOP;

    aput-object v1, v0, v2

    sget-object v1, Lredis/clients/jedis/BitOP;->OR:Lredis/clients/jedis/BitOP;

    aput-object v1, v0, v3

    sget-object v1, Lredis/clients/jedis/BitOP;->XOR:Lredis/clients/jedis/BitOP;

    aput-object v1, v0, v4

    sget-object v1, Lredis/clients/jedis/BitOP;->NOT:Lredis/clients/jedis/BitOP;

    aput-object v1, v0, v5

    sput-object v0, Lredis/clients/jedis/BitOP;->ENUM$VALUES:[Lredis/clients/jedis/BitOP;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lredis/clients/jedis/BitOP;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lredis/clients/jedis/BitOP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/BitOP;

    return-object v0
.end method

.method public static values()[Lredis/clients/jedis/BitOP;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lredis/clients/jedis/BitOP;->ENUM$VALUES:[Lredis/clients/jedis/BitOP;

    array-length v1, v0

    new-array v2, v1, [Lredis/clients/jedis/BitOP;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

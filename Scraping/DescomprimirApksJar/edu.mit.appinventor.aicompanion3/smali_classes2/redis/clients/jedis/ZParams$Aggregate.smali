.class public final enum Lredis/clients/jedis/ZParams$Aggregate;
.super Ljava/lang/Enum;
.source "ZParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/jedis/ZParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Aggregate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lredis/clients/jedis/ZParams$Aggregate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lredis/clients/jedis/ZParams$Aggregate;

.field public static final enum MAX:Lredis/clients/jedis/ZParams$Aggregate;

.field public static final enum MIN:Lredis/clients/jedis/ZParams$Aggregate;

.field public static final enum SUM:Lredis/clients/jedis/ZParams$Aggregate;


# instance fields
.field public final raw:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lredis/clients/jedis/ZParams$Aggregate;

    const-string v1, "SUM"

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/ZParams$Aggregate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/ZParams$Aggregate;->SUM:Lredis/clients/jedis/ZParams$Aggregate;

    new-instance v0, Lredis/clients/jedis/ZParams$Aggregate;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v3}, Lredis/clients/jedis/ZParams$Aggregate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/ZParams$Aggregate;->MIN:Lredis/clients/jedis/ZParams$Aggregate;

    new-instance v0, Lredis/clients/jedis/ZParams$Aggregate;

    const-string v1, "MAX"

    invoke-direct {v0, v1, v4}, Lredis/clients/jedis/ZParams$Aggregate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/ZParams$Aggregate;->MAX:Lredis/clients/jedis/ZParams$Aggregate;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lredis/clients/jedis/ZParams$Aggregate;

    sget-object v1, Lredis/clients/jedis/ZParams$Aggregate;->SUM:Lredis/clients/jedis/ZParams$Aggregate;

    aput-object v1, v0, v2

    sget-object v1, Lredis/clients/jedis/ZParams$Aggregate;->MIN:Lredis/clients/jedis/ZParams$Aggregate;

    aput-object v1, v0, v3

    sget-object v1, Lredis/clients/jedis/ZParams$Aggregate;->MAX:Lredis/clients/jedis/ZParams$Aggregate;

    aput-object v1, v0, v4

    sput-object v0, Lredis/clients/jedis/ZParams$Aggregate;->ENUM$VALUES:[Lredis/clients/jedis/ZParams$Aggregate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    invoke-virtual {p0}, Lredis/clients/jedis/ZParams$Aggregate;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/ZParams$Aggregate;->raw:[B

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lredis/clients/jedis/ZParams$Aggregate;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lredis/clients/jedis/ZParams$Aggregate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ZParams$Aggregate;

    return-object v0
.end method

.method public static values()[Lredis/clients/jedis/ZParams$Aggregate;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lredis/clients/jedis/ZParams$Aggregate;->ENUM$VALUES:[Lredis/clients/jedis/ZParams$Aggregate;

    array-length v1, v0

    new-array v2, v1, [Lredis/clients/jedis/ZParams$Aggregate;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.class public final enum Lredis/clients/jedis/GeoUnit;
.super Ljava/lang/Enum;
.source "GeoUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lredis/clients/jedis/GeoUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lredis/clients/jedis/GeoUnit;

.field public static final enum FT:Lredis/clients/jedis/GeoUnit;

.field public static final enum KM:Lredis/clients/jedis/GeoUnit;

.field public static final enum M:Lredis/clients/jedis/GeoUnit;

.field public static final enum MI:Lredis/clients/jedis/GeoUnit;


# instance fields
.field public final raw:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lredis/clients/jedis/GeoUnit;

    const-string v1, "M"

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/GeoUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/GeoUnit;->M:Lredis/clients/jedis/GeoUnit;

    new-instance v0, Lredis/clients/jedis/GeoUnit;

    const-string v1, "KM"

    invoke-direct {v0, v1, v3}, Lredis/clients/jedis/GeoUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/GeoUnit;->KM:Lredis/clients/jedis/GeoUnit;

    new-instance v0, Lredis/clients/jedis/GeoUnit;

    const-string v1, "MI"

    invoke-direct {v0, v1, v4}, Lredis/clients/jedis/GeoUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/GeoUnit;->MI:Lredis/clients/jedis/GeoUnit;

    new-instance v0, Lredis/clients/jedis/GeoUnit;

    const-string v1, "FT"

    invoke-direct {v0, v1, v5}, Lredis/clients/jedis/GeoUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/GeoUnit;->FT:Lredis/clients/jedis/GeoUnit;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lredis/clients/jedis/GeoUnit;

    sget-object v1, Lredis/clients/jedis/GeoUnit;->M:Lredis/clients/jedis/GeoUnit;

    aput-object v1, v0, v2

    sget-object v1, Lredis/clients/jedis/GeoUnit;->KM:Lredis/clients/jedis/GeoUnit;

    aput-object v1, v0, v3

    sget-object v1, Lredis/clients/jedis/GeoUnit;->MI:Lredis/clients/jedis/GeoUnit;

    aput-object v1, v0, v4

    sget-object v1, Lredis/clients/jedis/GeoUnit;->FT:Lredis/clients/jedis/GeoUnit;

    aput-object v1, v0, v5

    sput-object v0, Lredis/clients/jedis/GeoUnit;->ENUM$VALUES:[Lredis/clients/jedis/GeoUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {p0}, Lredis/clients/jedis/GeoUnit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/GeoUnit;->raw:[B

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lredis/clients/jedis/GeoUnit;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lredis/clients/jedis/GeoUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/GeoUnit;

    return-object v0
.end method

.method public static values()[Lredis/clients/jedis/GeoUnit;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lredis/clients/jedis/GeoUnit;->ENUM$VALUES:[Lredis/clients/jedis/GeoUnit;

    array-length v1, v0

    new-array v2, v1, [Lredis/clients/jedis/GeoUnit;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

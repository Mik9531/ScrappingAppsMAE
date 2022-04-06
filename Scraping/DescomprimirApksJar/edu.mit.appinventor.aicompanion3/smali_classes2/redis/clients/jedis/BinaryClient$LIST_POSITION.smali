.class public final enum Lredis/clients/jedis/BinaryClient$LIST_POSITION;
.super Ljava/lang/Enum;
.source "BinaryClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/jedis/BinaryClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LIST_POSITION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lredis/clients/jedis/BinaryClient$LIST_POSITION;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFTER:Lredis/clients/jedis/BinaryClient$LIST_POSITION;

.field public static final enum BEFORE:Lredis/clients/jedis/BinaryClient$LIST_POSITION;

.field private static final synthetic ENUM$VALUES:[Lredis/clients/jedis/BinaryClient$LIST_POSITION;


# instance fields
.field public final raw:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lredis/clients/jedis/BinaryClient$LIST_POSITION;

    const-string v1, "BEFORE"

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/BinaryClient$LIST_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/BinaryClient$LIST_POSITION;->BEFORE:Lredis/clients/jedis/BinaryClient$LIST_POSITION;

    new-instance v0, Lredis/clients/jedis/BinaryClient$LIST_POSITION;

    const-string v1, "AFTER"

    invoke-direct {v0, v1, v3}, Lredis/clients/jedis/BinaryClient$LIST_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/BinaryClient$LIST_POSITION;->AFTER:Lredis/clients/jedis/BinaryClient$LIST_POSITION;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lredis/clients/jedis/BinaryClient$LIST_POSITION;

    sget-object v1, Lredis/clients/jedis/BinaryClient$LIST_POSITION;->BEFORE:Lredis/clients/jedis/BinaryClient$LIST_POSITION;

    aput-object v1, v0, v2

    sget-object v1, Lredis/clients/jedis/BinaryClient$LIST_POSITION;->AFTER:Lredis/clients/jedis/BinaryClient$LIST_POSITION;

    aput-object v1, v0, v3

    sput-object v0, Lredis/clients/jedis/BinaryClient$LIST_POSITION;->ENUM$VALUES:[Lredis/clients/jedis/BinaryClient$LIST_POSITION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryClient$LIST_POSITION;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/BinaryClient$LIST_POSITION;->raw:[B

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lredis/clients/jedis/BinaryClient$LIST_POSITION;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lredis/clients/jedis/BinaryClient$LIST_POSITION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/BinaryClient$LIST_POSITION;

    return-object v0
.end method

.method public static values()[Lredis/clients/jedis/BinaryClient$LIST_POSITION;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lredis/clients/jedis/BinaryClient$LIST_POSITION;->ENUM$VALUES:[Lredis/clients/jedis/BinaryClient$LIST_POSITION;

    array-length v1, v0

    new-array v2, v1, [Lredis/clients/jedis/BinaryClient$LIST_POSITION;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

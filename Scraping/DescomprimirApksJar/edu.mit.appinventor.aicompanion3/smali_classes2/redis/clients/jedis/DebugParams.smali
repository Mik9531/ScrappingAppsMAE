.class public Lredis/clients/jedis/DebugParams;
.super Ljava/lang/Object;
.source "DebugParams.java"


# instance fields
.field private command:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static OBJECT(Ljava/lang/String;)Lredis/clients/jedis/DebugParams;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lredis/clients/jedis/DebugParams;

    invoke-direct {v0}, Lredis/clients/jedis/DebugParams;-><init>()V

    .line 22
    .local v0, "debugParams":Lredis/clients/jedis/DebugParams;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "OBJECT"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    iput-object v1, v0, Lredis/clients/jedis/DebugParams;->command:[Ljava/lang/String;

    .line 23
    return-object v0
.end method

.method public static RELOAD()Lredis/clients/jedis/DebugParams;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lredis/clients/jedis/DebugParams;

    invoke-direct {v0}, Lredis/clients/jedis/DebugParams;-><init>()V

    .line 28
    .local v0, "debugParams":Lredis/clients/jedis/DebugParams;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RELOAD"

    aput-object v3, v1, v2

    iput-object v1, v0, Lredis/clients/jedis/DebugParams;->command:[Ljava/lang/String;

    .line 29
    return-object v0
.end method

.method public static SEGFAULT()Lredis/clients/jedis/DebugParams;
    .locals 4

    .prologue
    .line 15
    new-instance v0, Lredis/clients/jedis/DebugParams;

    invoke-direct {v0}, Lredis/clients/jedis/DebugParams;-><init>()V

    .line 16
    .local v0, "debugParams":Lredis/clients/jedis/DebugParams;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "SEGFAULT"

    aput-object v3, v1, v2

    iput-object v1, v0, Lredis/clients/jedis/DebugParams;->command:[Ljava/lang/String;

    .line 17
    return-object v0
.end method


# virtual methods
.method public getCommand()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lredis/clients/jedis/DebugParams;->command:[Ljava/lang/String;

    return-object v0
.end method

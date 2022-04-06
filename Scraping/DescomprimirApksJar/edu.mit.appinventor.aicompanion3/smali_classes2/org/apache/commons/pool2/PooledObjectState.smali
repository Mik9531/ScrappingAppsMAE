.class public final enum Lorg/apache/commons/pool2/PooledObjectState;
.super Ljava/lang/Enum;
.source "PooledObjectState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/pool2/PooledObjectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/pool2/PooledObjectState;

.field public static final enum ABANDONED:Lorg/apache/commons/pool2/PooledObjectState;

.field public static final enum ALLOCATED:Lorg/apache/commons/pool2/PooledObjectState;

.field public static final enum EVICTION:Lorg/apache/commons/pool2/PooledObjectState;

.field public static final enum EVICTION_RETURN_TO_HEAD:Lorg/apache/commons/pool2/PooledObjectState;

.field public static final enum IDLE:Lorg/apache/commons/pool2/PooledObjectState;

.field public static final enum INVALID:Lorg/apache/commons/pool2/PooledObjectState;

.field public static final enum RETURNING:Lorg/apache/commons/pool2/PooledObjectState;

.field public static final enum VALIDATION:Lorg/apache/commons/pool2/PooledObjectState;

.field public static final enum VALIDATION_PREALLOCATED:Lorg/apache/commons/pool2/PooledObjectState;

.field public static final enum VALIDATION_RETURN_TO_HEAD:Lorg/apache/commons/pool2/PooledObjectState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lorg/apache/commons/pool2/PooledObjectState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/pool2/PooledObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/pool2/PooledObjectState;->IDLE:Lorg/apache/commons/pool2/PooledObjectState;

    .line 35
    new-instance v0, Lorg/apache/commons/pool2/PooledObjectState;

    const-string v1, "ALLOCATED"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/pool2/PooledObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/pool2/PooledObjectState;->ALLOCATED:Lorg/apache/commons/pool2/PooledObjectState;

    .line 40
    new-instance v0, Lorg/apache/commons/pool2/PooledObjectState;

    const-string v1, "EVICTION"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/pool2/PooledObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/pool2/PooledObjectState;->EVICTION:Lorg/apache/commons/pool2/PooledObjectState;

    .line 50
    new-instance v0, Lorg/apache/commons/pool2/PooledObjectState;

    const-string v1, "EVICTION_RETURN_TO_HEAD"

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/pool2/PooledObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/pool2/PooledObjectState;->EVICTION_RETURN_TO_HEAD:Lorg/apache/commons/pool2/PooledObjectState;

    .line 55
    new-instance v0, Lorg/apache/commons/pool2/PooledObjectState;

    const-string v1, "VALIDATION"

    invoke-direct {v0, v1, v7}, Lorg/apache/commons/pool2/PooledObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/pool2/PooledObjectState;->VALIDATION:Lorg/apache/commons/pool2/PooledObjectState;

    .line 63
    new-instance v0, Lorg/apache/commons/pool2/PooledObjectState;

    const-string v1, "VALIDATION_PREALLOCATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/pool2/PooledObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/pool2/PooledObjectState;->VALIDATION_PREALLOCATED:Lorg/apache/commons/pool2/PooledObjectState;

    .line 71
    new-instance v0, Lorg/apache/commons/pool2/PooledObjectState;

    const-string v1, "VALIDATION_RETURN_TO_HEAD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/pool2/PooledObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/pool2/PooledObjectState;->VALIDATION_RETURN_TO_HEAD:Lorg/apache/commons/pool2/PooledObjectState;

    .line 77
    new-instance v0, Lorg/apache/commons/pool2/PooledObjectState;

    const-string v1, "INVALID"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/pool2/PooledObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/pool2/PooledObjectState;->INVALID:Lorg/apache/commons/pool2/PooledObjectState;

    .line 82
    new-instance v0, Lorg/apache/commons/pool2/PooledObjectState;

    const-string v1, "ABANDONED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/pool2/PooledObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/pool2/PooledObjectState;->ABANDONED:Lorg/apache/commons/pool2/PooledObjectState;

    .line 87
    new-instance v0, Lorg/apache/commons/pool2/PooledObjectState;

    const-string v1, "RETURNING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/pool2/PooledObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/pool2/PooledObjectState;->RETURNING:Lorg/apache/commons/pool2/PooledObjectState;

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/apache/commons/pool2/PooledObjectState;

    sget-object v1, Lorg/apache/commons/pool2/PooledObjectState;->IDLE:Lorg/apache/commons/pool2/PooledObjectState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/pool2/PooledObjectState;->ALLOCATED:Lorg/apache/commons/pool2/PooledObjectState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/pool2/PooledObjectState;->EVICTION:Lorg/apache/commons/pool2/PooledObjectState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/pool2/PooledObjectState;->EVICTION_RETURN_TO_HEAD:Lorg/apache/commons/pool2/PooledObjectState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/pool2/PooledObjectState;->VALIDATION:Lorg/apache/commons/pool2/PooledObjectState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/pool2/PooledObjectState;->VALIDATION_PREALLOCATED:Lorg/apache/commons/pool2/PooledObjectState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/pool2/PooledObjectState;->VALIDATION_RETURN_TO_HEAD:Lorg/apache/commons/pool2/PooledObjectState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/pool2/PooledObjectState;->INVALID:Lorg/apache/commons/pool2/PooledObjectState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/commons/pool2/PooledObjectState;->ABANDONED:Lorg/apache/commons/pool2/PooledObjectState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/commons/pool2/PooledObjectState;->RETURNING:Lorg/apache/commons/pool2/PooledObjectState;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/pool2/PooledObjectState;->$VALUES:[Lorg/apache/commons/pool2/PooledObjectState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/pool2/PooledObjectState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/apache/commons/pool2/PooledObjectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool2/PooledObjectState;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/pool2/PooledObjectState;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/apache/commons/pool2/PooledObjectState;->$VALUES:[Lorg/apache/commons/pool2/PooledObjectState;

    invoke-virtual {v0}, [Lorg/apache/commons/pool2/PooledObjectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/pool2/PooledObjectState;

    return-object v0
.end method

.class public final enum Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
.super Ljava/lang/Enum;
.source "JsonSerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Inclusion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

.field public static final enum ALWAYS:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

.field public static final enum NON_DEFAULT:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

.field public static final enum NON_EMPTY:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

.field public static final enum NON_NULL:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->ALWAYS:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    .line 170
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    const-string v1, "NON_NULL"

    invoke-direct {v0, v1, v3}, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_NULL:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    .line 180
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    const-string v1, "NON_DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_DEFAULT:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    .line 200
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    const-string v1, "NON_EMPTY"

    invoke-direct {v0, v1, v5}, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_EMPTY:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    .line 158
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    sget-object v1, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->ALWAYS:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_NULL:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_DEFAULT:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    aput-object v1, v0, v4

    sget-object v1, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_EMPTY:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    aput-object v1, v0, v5

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->$VALUES:[Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

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
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
    .locals 1

    .prologue
    .line 158
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    return-object v0
.end method

.method public static values()[Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->$VALUES:[Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    invoke-virtual {v0}, [Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    return-object v0
.end method

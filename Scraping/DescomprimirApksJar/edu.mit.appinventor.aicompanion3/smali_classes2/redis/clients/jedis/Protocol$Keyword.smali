.class public final enum Lredis/clients/jedis/Protocol$Keyword;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/jedis/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Keyword"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lredis/clients/jedis/Protocol$Keyword;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AGGREGATE:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum ALPHA:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum AND:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum ASC:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum BY:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum COUNT:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum DESC:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum ENCODING:Lredis/clients/jedis/Protocol$Keyword;

.field private static final synthetic ENUM$VALUES:[Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum EXISTS:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum FLUSH:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum GET:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum GETNAME:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum IDLETIME:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum KILL:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum LEN:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum LIMIT:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum LIST:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum LOAD:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum MATCH:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum MESSAGE:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum NO:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum NOSORT:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum NOT:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum OK:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum ONE:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum OR:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum PING:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum PMESSAGE:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum PONG:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum PSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum PUNSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum QUEUED:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum REFCOUNT:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum RESET:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum RESETSTAT:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum SET:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum SETNAME:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum STORE:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum SUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum UNLOAD:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum UNSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum WEIGHTS:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

.field public static final enum XOR:Lredis/clients/jedis/Protocol$Keyword;


# instance fields
.field public final raw:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 268
    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "AGGREGATE"

    invoke-direct {v0, v1, v3}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->AGGREGATE:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "ALPHA"

    invoke-direct {v0, v1, v4}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->ALPHA:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "ASC"

    invoke-direct {v0, v1, v5}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->ASC:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "BY"

    invoke-direct {v0, v1, v6}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->BY:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "DESC"

    invoke-direct {v0, v1, v7}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->DESC:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "GET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->GET:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "LIMIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "MESSAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->MESSAGE:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "NO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->NO:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "NOSORT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->NOSORT:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "PMESSAGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->PMESSAGE:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "PSUBSCRIBE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->PSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "PUNSUBSCRIBE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->PUNSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "OK"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->OK:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "ONE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->ONE:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "QUEUED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->QUEUED:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "SET"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->SET:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "STORE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->STORE:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "SUBSCRIBE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->SUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "UNSUBSCRIBE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->UNSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "WEIGHTS"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->WEIGHTS:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "WITHSCORES"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "RESETSTAT"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->RESETSTAT:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "RESET"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->RESET:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "FLUSH"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->FLUSH:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "EXISTS"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->EXISTS:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "LOAD"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->LOAD:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "KILL"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->KILL:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "LEN"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->LEN:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "REFCOUNT"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->REFCOUNT:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "ENCODING"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->ENCODING:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "IDLETIME"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->IDLETIME:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "AND"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->AND:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "OR"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->OR:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "XOR"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->XOR:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "NOT"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->NOT:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "GETNAME"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->GETNAME:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "SETNAME"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->SETNAME:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "LIST"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->LIST:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "MATCH"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->MATCH:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "COUNT"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->COUNT:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "PING"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->PING:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "PONG"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->PONG:Lredis/clients/jedis/Protocol$Keyword;

    new-instance v0, Lredis/clients/jedis/Protocol$Keyword;

    const-string v1, "UNLOAD"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->UNLOAD:Lredis/clients/jedis/Protocol$Keyword;

    .line 267
    const/16 v0, 0x2c

    new-array v0, v0, [Lredis/clients/jedis/Protocol$Keyword;

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->AGGREGATE:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v1, v0, v3

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->ALPHA:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v1, v0, v4

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->ASC:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v1, v0, v5

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->BY:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v1, v0, v6

    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->DESC:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->GET:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->MESSAGE:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->NO:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->NOSORT:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->PMESSAGE:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->PSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->PUNSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->OK:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->ONE:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->QUEUED:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->SET:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->STORE:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->SUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->UNSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->WEIGHTS:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->RESETSTAT:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->RESET:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->FLUSH:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->EXISTS:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->LOAD:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->KILL:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->LEN:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->REFCOUNT:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->ENCODING:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->IDLETIME:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->AND:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->OR:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->XOR:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->NOT:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->GETNAME:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->SETNAME:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->LIST:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->MATCH:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->COUNT:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->PING:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->PONG:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->UNLOAD:Lredis/clients/jedis/Protocol$Keyword;

    aput-object v2, v0, v1

    sput-object v0, Lredis/clients/jedis/Protocol$Keyword;->ENUM$VALUES:[Lredis/clients/jedis/Protocol$Keyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 272
    invoke-virtual {p0}, Lredis/clients/jedis/Protocol$Keyword;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    .line 273
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lredis/clients/jedis/Protocol$Keyword;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lredis/clients/jedis/Protocol$Keyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Protocol$Keyword;

    return-object v0
.end method

.method public static values()[Lredis/clients/jedis/Protocol$Keyword;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lredis/clients/jedis/Protocol$Keyword;->ENUM$VALUES:[Lredis/clients/jedis/Protocol$Keyword;

    array-length v1, v0

    new-array v2, v1, [Lredis/clients/jedis/Protocol$Keyword;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

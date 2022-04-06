.class public Lredis/clients/jedis/BinaryClient;
.super Lredis/clients/jedis/Connection;
.source "BinaryClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lredis/clients/jedis/BinaryClient$LIST_POSITION;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$redis$clients$jedis$BitOP:[I


# instance fields
.field private db:I

.field private isInMulti:Z

.field private isInWatch:Z

.field private password:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$redis$clients$jedis$BitOP()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lredis/clients/jedis/BinaryClient;->$SWITCH_TABLE$redis$clients$jedis$BitOP:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lredis/clients/jedis/BitOP;->values()[Lredis/clients/jedis/BitOP;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lredis/clients/jedis/BitOP;->AND:Lredis/clients/jedis/BitOP;

    invoke-virtual {v1}, Lredis/clients/jedis/BitOP;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lredis/clients/jedis/BitOP;->NOT:Lredis/clients/jedis/BitOP;

    invoke-virtual {v1}, Lredis/clients/jedis/BitOP;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lredis/clients/jedis/BitOP;->OR:Lredis/clients/jedis/BitOP;

    invoke-virtual {v1}, Lredis/clients/jedis/BitOP;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lredis/clients/jedis/BitOP;->XOR:Lredis/clients/jedis/BitOP;

    invoke-virtual {v1}, Lredis/clients/jedis/BitOP;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lredis/clients/jedis/BinaryClient;->$SWITCH_TABLE$redis$clients$jedis$BitOP:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lredis/clients/jedis/Connection;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lredis/clients/jedis/Connection;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/Connection;-><init>(Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "ssl"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lredis/clients/jedis/Connection;-><init>(Ljava/lang/String;IZ)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "ssl"    # Z
    .param p4, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p5, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 70
    invoke-direct/range {p0 .. p6}, Lredis/clients/jedis/Connection;-><init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 71
    return-void
.end method

.method private convertGeoCoordinateMapToByteArrays(Ljava/util/Map;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<[B",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1280
    .local p1, "memberCoordinateMap":Ljava/util/Map;, "Ljava/util/Map<[BLredis/clients/jedis/GeoCoordinate;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1282
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1289
    return-object v0

    .line 1282
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1283
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLredis/clients/jedis/GeoCoordinate;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lredis/clients/jedis/GeoCoordinate;

    .line 1284
    .local v1, "coordinate":Lredis/clients/jedis/GeoCoordinate;
    invoke-virtual {v1}, Lredis/clients/jedis/GeoCoordinate;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    invoke-virtual {v1}, Lredis/clients/jedis/GeoCoordinate;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1286
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private convertScoreMembersToByteArrays(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<[B",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1268
    .local p1, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<[BLjava/lang/Double;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1270
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1275
    return-object v0

    .line 1270
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1271
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLjava/lang/Double;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private joinParameters([B[[B)[[B
    .locals 4
    .param p1, "first"    # [B
    .param p2, "rest"    # [[B

    .prologue
    const/4 v3, 0x0

    .line 82
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [[B

    .line 83
    .local v0, "result":[[B
    aput-object p1, v0, v3

    .line 84
    const/4 v1, 0x1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    return-object v0
.end method

.method private sendEvalCommand(Lredis/clients/jedis/Protocol$Command;[B[B[[B)V
    .locals 4
    .param p1, "command"    # Lredis/clients/jedis/Protocol$Command;
    .param p2, "script"    # [B
    .param p3, "keyCount"    # [B
    .param p4, "params"    # [[B

    .prologue
    .line 965
    array-length v2, p4

    add-int/lit8 v2, v2, 0x2

    new-array v0, v2, [[B

    .line 967
    .local v0, "allArgs":[[B
    const/4 v2, 0x0

    aput-object p2, v0, v2

    .line 968
    const/4 v2, 0x1

    aput-object p3, v0, v2

    .line 970
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p4

    if-lt v1, v2, :cond_0

    .line 973
    invoke-virtual {p0, p1, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 974
    return-void

    .line 971
    :cond_0
    add-int/lit8 v2, v1, 0x2

    aget-object v3, p4, v1

    aput-object v3, v0, v2

    .line 970
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public append([B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 241
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->APPEND:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 242
    return-void
.end method

.method public asking()V
    .locals 1

    .prologue
    .line 1180
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ASKING:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 1181
    return-void
.end method

.method public auth(Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 571
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryClient;->setPassword(Ljava/lang/String;)V

    .line 572
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->AUTH:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[Ljava/lang/String;)Lredis/clients/jedis/Connection;

    .line 573
    return-void
.end method

.method public bgrewriteaof()V
    .locals 1

    .prologue
    .line 835
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->BGREWRITEAOF:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 836
    return-void
.end method

.method public bgsave()V
    .locals 1

    .prologue
    .line 831
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->BGSAVE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 832
    return-void
.end method

.method public bitcount([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 1042
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->BITCOUNT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1043
    return-void
.end method

.method public bitcount([BJJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 1046
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->BITCOUNT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1047
    return-void
.end method

.method public varargs bitfield([B[[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "value"    # [[B

    .prologue
    const/4 v3, 0x0

    .line 1293
    array-length v0, p2

    .line 1294
    .local v0, "argsLength":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [[B

    .line 1295
    .local v1, "bitfieldArgs":[[B
    aput-object p1, v1, v3

    .line 1296
    const/4 v2, 0x1

    invoke-static {p2, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1297
    sget-object v2, Lredis/clients/jedis/Protocol$Command;->BITFIELD:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v2, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1298
    return-void
.end method

.method public varargs bitop(Lredis/clients/jedis/BitOP;[B[[B)V
    .locals 7
    .param p1, "op"    # Lredis/clients/jedis/BitOP;
    .param p2, "destKey"    # [B
    .param p3, "srcKeys"    # [[B

    .prologue
    const/4 v6, 0x1

    .line 1050
    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->AND:Lredis/clients/jedis/Protocol$Keyword;

    .line 1051
    .local v2, "kw":Lredis/clients/jedis/Protocol$Keyword;
    array-length v3, p3

    .line 1052
    .local v3, "len":I
    invoke-static {}, Lredis/clients/jedis/BinaryClient;->$SWITCH_TABLE$redis$clients$jedis$BitOP()[I

    move-result-object v4

    invoke-virtual {p1}, Lredis/clients/jedis/BitOP;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1068
    :goto_0
    add-int/lit8 v4, v3, 0x2

    new-array v0, v4, [[B

    .line 1069
    .local v0, "bargs":[[B
    const/4 v4, 0x0

    iget-object v5, v2, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v5, v0, v4

    .line 1070
    aput-object p2, v0, v6

    .line 1071
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_0

    .line 1075
    sget-object v4, Lredis/clients/jedis/Protocol$Command;->BITOP:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v4, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1076
    return-void

    .line 1054
    .end local v0    # "bargs":[[B
    .end local v1    # "i":I
    :pswitch_0
    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->AND:Lredis/clients/jedis/Protocol$Keyword;

    .line 1055
    goto :goto_0

    .line 1057
    :pswitch_1
    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->OR:Lredis/clients/jedis/Protocol$Keyword;

    .line 1058
    goto :goto_0

    .line 1060
    :pswitch_2
    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->XOR:Lredis/clients/jedis/Protocol$Keyword;

    .line 1061
    goto :goto_0

    .line 1063
    :pswitch_3
    sget-object v2, Lredis/clients/jedis/Protocol$Keyword;->NOT:Lredis/clients/jedis/Protocol$Keyword;

    .line 1064
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 1072
    .restart local v0    # "bargs":[[B
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v4, v1, 0x2

    aget-object v5, p3, v1

    aput-object v5, v0, v4

    .line 1071
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1052
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bitpos([BZLredis/clients/jedis/BitPosParams;)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "value"    # Z
    .param p3, "params"    # Lredis/clients/jedis/BitPosParams;

    .prologue
    .line 928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(Z)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-virtual {p3}, Lredis/clients/jedis/BitPosParams;->getParams()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 932
    sget-object v2, Lredis/clients/jedis/Protocol$Command;->BITPOS:Lredis/clients/jedis/Protocol$Command;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    invoke-virtual {p0, v2, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 933
    return-void
.end method

.method public varargs blpop(I[[B)V
    .locals 4
    .param p1, "timeout"    # I
    .param p2, "keys"    # [[B

    .prologue
    .line 536
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 540
    invoke-static {p1}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[B

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    invoke-virtual {p0, v2}, Lredis/clients/jedis/BinaryClient;->blpop([[B)V

    .line 542
    return-void

    .line 537
    :cond_0
    aget-object v0, p2, v2

    .line 538
    .local v0, "arg":[B
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public blpop([[B)V
    .locals 1
    .param p1, "args"    # [[B

    .prologue
    .line 532
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->BLPOP:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 533
    return-void
.end method

.method public varargs brpop(I[[B)V
    .locals 4
    .param p1, "timeout"    # I
    .param p2, "keys"    # [[B

    .prologue
    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 566
    invoke-static {p1}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[B

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    invoke-virtual {p0, v2}, Lredis/clients/jedis/BinaryClient;->brpop([[B)V

    .line 568
    return-void

    .line 563
    :cond_0
    aget-object v0, p2, v2

    .line 564
    .local v0, "arg":[B
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public brpop([[B)V
    .locals 1
    .param p1, "args"    # [[B

    .prologue
    .line 558
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->BRPOP:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 559
    return-void
.end method

.method public brpoplpush([B[BI)V
    .locals 4
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "timeout"    # I

    .prologue
    .line 908
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->BRPOPLPUSH:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 909
    return-void
.end method

.method public clientGetname()V
    .locals 4

    .prologue
    .line 1115
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->CLIENT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->GETNAME:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1116
    return-void
.end method

.method public clientKill([B)V
    .locals 4
    .param p1, "client"    # [B

    .prologue
    .line 1111
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->CLIENT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->KILL:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1112
    return-void
.end method

.method public clientList()V
    .locals 4

    .prologue
    .line 1119
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->CLIENT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIST:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1120
    return-void
.end method

.method public clientSetname([B)V
    .locals 4
    .param p1, "name"    # [B

    .prologue
    .line 1123
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->CLIENT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->SETNAME:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1124
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 955
    const/4 v0, 0x0

    iput v0, p0, Lredis/clients/jedis/BinaryClient;->db:I

    .line 956
    invoke-super {p0}, Lredis/clients/jedis/Connection;->close()V

    .line 957
    return-void
.end method

.method public varargs cluster([[B)V
    .locals 1
    .param p1, "args"    # [[B

    .prologue
    .line 1176
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->CLUSTER:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1177
    return-void
.end method

.method public configGet([B)V
    .locals 4
    .param p1, "pattern"    # [B

    .prologue
    .line 867
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->CONFIG:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->GET:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 868
    return-void
.end method

.method public configResetStat()V
    .locals 4

    .prologue
    .line 912
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->CONFIG:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->RESETSTAT:Lredis/clients/jedis/Protocol$Keyword;

    invoke-virtual {v3}, Lredis/clients/jedis/Protocol$Keyword;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[Ljava/lang/String;)Lredis/clients/jedis/Connection;

    .line 913
    return-void
.end method

.method public configSet([B[B)V
    .locals 4
    .param p1, "parameter"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 871
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->CONFIG:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->SET:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 872
    return-void
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-super {p0}, Lredis/clients/jedis/Connection;->connect()V

    .line 100
    iget-object v0, p0, Lredis/clients/jedis/BinaryClient;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lredis/clients/jedis/BinaryClient;->password:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->auth(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryClient;->getStatusCodeReply()Ljava/lang/String;

    .line 104
    :cond_0
    iget v0, p0, Lredis/clients/jedis/BinaryClient;->db:I

    if-lez v0, :cond_1

    .line 105
    iget v0, p0, Lredis/clients/jedis/BinaryClient;->db:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->select(I)V

    .line 106
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryClient;->getStatusCodeReply()Ljava/lang/String;

    .line 109
    :cond_1
    return-void
.end method

.method public dbSize()V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->DBSIZE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 170
    return-void
.end method

.method public debug(Lredis/clients/jedis/DebugParams;)V
    .locals 2
    .param p1, "params"    # Lredis/clients/jedis/DebugParams;

    .prologue
    .line 904
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->DEBUG:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p1}, Lredis/clients/jedis/DebugParams;->getCommand()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[Ljava/lang/String;)Lredis/clients/jedis/Connection;

    .line 905
    return-void
.end method

.method public decr([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 225
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->DECR:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 226
    return-void
.end method

.method public decrBy([BJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "integer"    # J

    .prologue
    .line 221
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->DECRBY:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 222
    return-void
.end method

.method public varargs del([[B)V
    .locals 1
    .param p1, "keys"    # [[B

    .prologue
    .line 141
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->DEL:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 142
    return-void
.end method

.method public discard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 499
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->DISCARD:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 500
    iput-boolean v1, p0, Lredis/clients/jedis/BinaryClient;->isInMulti:Z

    .line 501
    iput-boolean v1, p0, Lredis/clients/jedis/BinaryClient;->isInWatch:Z

    .line 502
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 949
    const/4 v0, 0x0

    iput v0, p0, Lredis/clients/jedis/BinaryClient;->db:I

    .line 950
    invoke-super {p0}, Lredis/clients/jedis/Connection;->disconnect()V

    .line 951
    return-void
.end method

.method public dump([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 1083
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->DUMP:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1084
    return-void
.end method

.method public echo([B)V
    .locals 3
    .param p1, "string"    # [B

    .prologue
    .line 895
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ECHO:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 896
    return-void
.end method

.method public varargs eval([BI[[B)V
    .locals 1
    .param p1, "script"    # [B
    .param p2, "keyCount"    # I
    .param p3, "params"    # [[B

    .prologue
    .line 981
    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lredis/clients/jedis/BinaryClient;->eval([B[B[[B)V

    .line 982
    return-void
.end method

.method public eval([B[B[[B)V
    .locals 1
    .param p1, "script"    # [B
    .param p2, "keyCount"    # [B
    .param p3, "params"    # [[B

    .prologue
    .line 977
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->EVAL:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, v0, p1, p2, p3}, Lredis/clients/jedis/BinaryClient;->sendEvalCommand(Lredis/clients/jedis/Protocol$Command;[B[B[[B)V

    .line 978
    return-void
.end method

.method public varargs evalsha([BI[[B)V
    .locals 2
    .param p1, "sha1"    # [B
    .param p2, "keyCount"    # I
    .param p3, "params"    # [[B

    .prologue
    .line 989
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->EVALSHA:Lredis/clients/jedis/Protocol$Command;

    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lredis/clients/jedis/BinaryClient;->sendEvalCommand(Lredis/clients/jedis/Protocol$Command;[B[B[[B)V

    .line 990
    return-void
.end method

.method public varargs evalsha([B[B[[B)V
    .locals 1
    .param p1, "sha1"    # [B
    .param p2, "keyCount"    # [B
    .param p3, "params"    # [[B

    .prologue
    .line 985
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->EVALSHA:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, v0, p1, p2, p3}, Lredis/clients/jedis/BinaryClient;->sendEvalCommand(Lredis/clients/jedis/Protocol$Command;[B[B[[B)V

    .line 986
    return-void
.end method

.method public exec()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 505
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->EXEC:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 506
    iput-boolean v1, p0, Lredis/clients/jedis/BinaryClient;->isInMulti:Z

    .line 507
    iput-boolean v1, p0, Lredis/clients/jedis/BinaryClient;->isInWatch:Z

    .line 508
    return-void
.end method

.method public exists([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 137
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->EXISTS:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 138
    return-void
.end method

.method public varargs exists([[B)V
    .locals 1
    .param p1, "keys"    # [[B

    .prologue
    .line 133
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->EXISTS:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 134
    return-void
.end method

.method public expire([BI)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "seconds"    # I

    .prologue
    .line 173
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->EXPIRE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 174
    return-void
.end method

.method public expireAt([BJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "unixTime"    # J

    .prologue
    .line 177
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->EXPIREAT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 178
    return-void
.end method

.method public flushAll()V
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->FLUSHALL:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 194
    return-void
.end method

.method public flushDB()V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->FLUSHDB:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 150
    return-void
.end method

.method public geoadd([BDD[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "member"    # [B

    .prologue
    .line 1204
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->GEOADD:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p6, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1205
    return-void
.end method

.method public geoadd([BLjava/util/Map;)V
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1208
    .local p2, "memberCoordinateMap":Ljava/util/Map;, "Ljava/util/Map<[BLredis/clients/jedis/GeoCoordinate;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1209
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    invoke-direct {p0, p2}, Lredis/clients/jedis/BinaryClient;->convertGeoCoordinateMapToByteArrays(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [[B

    .line 1213
    .local v1, "argsArray":[[B
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1215
    sget-object v2, Lredis/clients/jedis/Protocol$Command;->GEOADD:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v2, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1216
    return-void
.end method

.method public geodist([B[B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "member1"    # [B
    .param p3, "member2"    # [B

    .prologue
    .line 1219
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->GEODIST:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1220
    return-void
.end method

.method public geodist([B[B[BLredis/clients/jedis/GeoUnit;)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "member1"    # [B
    .param p3, "member2"    # [B
    .param p4, "unit"    # Lredis/clients/jedis/GeoUnit;

    .prologue
    .line 1223
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->GEODIST:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p4, Lredis/clients/jedis/GeoUnit;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1224
    return-void
.end method

.method public varargs geohash([B[[B)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "members"    # [[B

    .prologue
    .line 1227
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->GEOHASH:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryClient;->joinParameters([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1228
    return-void
.end method

.method public geopos([B[[B)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "members"    # [[B

    .prologue
    .line 1231
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->GEOPOS:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryClient;->joinParameters([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1232
    return-void
.end method

.method public georadius([BDDDLredis/clients/jedis/GeoUnit;)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;

    .prologue
    .line 1235
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->GEORADIUS:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x5

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6, p7}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 1236
    iget-object v3, p8, Lredis/clients/jedis/GeoUnit;->raw:[B

    aput-object v3, v1, v2

    .line 1235
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1237
    return-void
.end method

.method public georadius([BDDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p9, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;

    .prologue
    .line 1241
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->GEORADIUS:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x5

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 1242
    invoke-static {p6, p7}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p8, Lredis/clients/jedis/GeoUnit;->raw:[B

    aput-object v3, v1, v2

    .line 1241
    invoke-virtual {p9, v1}, Lredis/clients/jedis/params/geo/GeoRadiusParam;->getByteParams([[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1243
    return-void
.end method

.method public georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;)V
    .locals 5
    .param p1, "key"    # [B
    .param p2, "member"    # [B
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;

    .prologue
    .line 1246
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->GEORADIUSBYMEMBER:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p5, Lredis/clients/jedis/GeoUnit;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1247
    return-void
.end method

.method public georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V
    .locals 5
    .param p1, "key"    # [B
    .param p2, "member"    # [B
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p6, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;

    .prologue
    .line 1251
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->GEORADIUSBYMEMBER:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p5, Lredis/clients/jedis/GeoUnit;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p6, v1}, Lredis/clients/jedis/params/geo/GeoRadiusParam;->getByteParams([[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1252
    return-void
.end method

.method public get([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 124
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->GET:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 125
    return-void
.end method

.method public getDB()I
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Lredis/clients/jedis/BinaryClient;->db:I

    return v0
.end method

.method public getSet([B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 197
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->GETSET:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 198
    return-void
.end method

.method public getbit([BJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "offset"    # J

    .prologue
    .line 924
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->GETBIT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 925
    return-void
.end method

.method public getrange([BJJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "startOffset"    # J
    .param p4, "endOffset"    # J

    .prologue
    .line 940
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->GETRANGE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 941
    return-void
.end method

.method public varargs hdel([B[[B)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "fields"    # [[B

    .prologue
    .line 287
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->HDEL:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryClient;->joinParameters([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 288
    return-void
.end method

.method public hexists([B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "field"    # [B

    .prologue
    .line 283
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->HEXISTS:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 284
    return-void
.end method

.method public hget([B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "field"    # [B

    .prologue
    .line 253
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->HGET:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 254
    return-void
.end method

.method public hgetAll([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 303
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->HGETALL:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 304
    return-void
.end method

.method public hincrBy([B[BJ)V
    .locals 5
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # J

    .prologue
    .line 279
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->HINCRBY:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 280
    return-void
.end method

.method public hincrByFloat([B[BD)V
    .locals 5
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "increment"    # D

    .prologue
    .line 1137
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->HINCRBYFLOAT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1138
    return-void
.end method

.method public hkeys([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 295
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->HKEYS:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 296
    return-void
.end method

.method public hlen([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 291
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->HLEN:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 292
    return-void
.end method

.method public varargs hmget([B[[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "fields"    # [[B

    .prologue
    const/4 v3, 0x0

    .line 272
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [[B

    .line 273
    .local v0, "params":[[B
    aput-object p1, v0, v3

    .line 274
    const/4 v1, 0x1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    sget-object v1, Lredis/clients/jedis/Protocol$Command;->HMGET:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v1, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 276
    return-void
.end method

.method public hmset([BLjava/util/Map;)V
    .locals 4
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B[B>;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p2, "hash":Ljava/util/Map;, "Ljava/util/Map<[B[B>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    sget-object v3, Lredis/clients/jedis/Protocol$Command;->HMSET:Lredis/clients/jedis/Protocol$Command;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[B

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    invoke-virtual {p0, v3, v2}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 269
    return-void

    .line 264
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 265
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[B[B>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hscan([B[BLredis/clients/jedis/ScanParams;)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;

    .prologue
    .line 1148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    invoke-virtual {p3}, Lredis/clients/jedis/ScanParams;->getParams()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1152
    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HSCAN:Lredis/clients/jedis/Protocol$Command;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    invoke-virtual {p0, v2, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1153
    return-void
.end method

.method public hset([B[B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # [B

    .prologue
    .line 249
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->HSET:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 250
    return-void
.end method

.method public hsetnx([B[B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # [B

    .prologue
    .line 257
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->HSETNX:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 258
    return-void
.end method

.method public hstrlen([B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "field"    # [B

    .prologue
    .line 1301
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->HSTRLEN:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1302
    return-void
.end method

.method public hvals([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 299
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->HVALS:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 300
    return-void
.end method

.method public incr([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 237
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->INCR:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 238
    return-void
.end method

.method public incrBy([BJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "integer"    # J

    .prologue
    .line 229
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->INCRBY:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 230
    return-void
.end method

.method public incrByFloat([BD)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "value"    # D

    .prologue
    .line 233
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->INCRBYFLOAT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 234
    return-void
.end method

.method public info()V
    .locals 1

    .prologue
    .line 847
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->INFO:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 848
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 3
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 851
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->INFO:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[Ljava/lang/String;)Lredis/clients/jedis/Connection;

    .line 852
    return-void
.end method

.method public isInMulti()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lredis/clients/jedis/BinaryClient;->isInMulti:Z

    return v0
.end method

.method public isInWatch()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lredis/clients/jedis/BinaryClient;->isInWatch:Z

    return v0
.end method

.method public keys([B)V
    .locals 3
    .param p1, "pattern"    # [B

    .prologue
    .line 153
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->KEYS:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 154
    return-void
.end method

.method public lastsave()V
    .locals 1

    .prologue
    .line 839
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->LASTSAVE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 840
    return-void
.end method

.method public lindex([BJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "index"    # J

    .prologue
    .line 327
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->LINDEX:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 328
    return-void
.end method

.method public linsert([BLredis/clients/jedis/BinaryClient$LIST_POSITION;[B[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "where"    # Lredis/clients/jedis/BinaryClient$LIST_POSITION;
    .param p3, "pivot"    # [B
    .param p4, "value"    # [B

    .prologue
    .line 900
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->LINSERT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p2, Lredis/clients/jedis/BinaryClient$LIST_POSITION;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 901
    return-void
.end method

.method public llen([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 315
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->LLEN:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 316
    return-void
.end method

.method public lpop([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 339
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->LPOP:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 340
    return-void
.end method

.method public varargs lpush([B[[B)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "strings"    # [[B

    .prologue
    .line 311
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->LPUSH:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryClient;->joinParameters([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 312
    return-void
.end method

.method public varargs lpushx([B[[B)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "string"    # [[B

    .prologue
    .line 883
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->LPUSHX:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryClient;->joinParameters([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 884
    return-void
.end method

.method public lrange([BJJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 319
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->LRANGE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 320
    return-void
.end method

.method public lrem([BJ[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "count"    # J
    .param p4, "value"    # [B

    .prologue
    .line 335
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->LREM:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 336
    return-void
.end method

.method public lset([BJ[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "index"    # J
    .param p4, "value"    # [B

    .prologue
    .line 331
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->LSET:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 332
    return-void
.end method

.method public ltrim([BJJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 323
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->LTRIM:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 324
    return-void
.end method

.method public varargs mget([[B)V
    .locals 1
    .param p1, "keys"    # [[B

    .prologue
    .line 201
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->MGET:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 202
    return-void
.end method

.method public migrate([BI[BII)V
    .locals 4
    .param p1, "host"    # [B
    .param p2, "port"    # I
    .param p3, "key"    # [B
    .param p4, "destinationDb"    # I
    .param p5, "timeout"    # I

    .prologue
    .line 1132
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->MIGRATE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x5

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 1133
    invoke-static {p5}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 1132
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1134
    return-void
.end method

.method public moduleList()V
    .locals 4

    .prologue
    .line 1259
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->MODULE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIST:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1260
    return-void
.end method

.method public moduleLoad([B)V
    .locals 4
    .param p1, "path"    # [B

    .prologue
    .line 1255
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->MODULE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LOAD:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1256
    return-void
.end method

.method public moduleUnload([B)V
    .locals 4
    .param p1, "name"    # [B

    .prologue
    .line 1263
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->MODULE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->UNLOAD:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1264
    return-void
.end method

.method public monitor()V
    .locals 1

    .prologue
    .line 855
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->MONITOR:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 856
    return-void
.end method

.method public move([BI)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "dbIndex"    # I

    .prologue
    .line 189
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->MOVE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 190
    return-void
.end method

.method public varargs mset([[B)V
    .locals 1
    .param p1, "keysvalues"    # [[B

    .prologue
    .line 213
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->MSET:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 214
    return-void
.end method

.method public varargs msetnx([[B)V
    .locals 1
    .param p1, "keysvalues"    # [[B

    .prologue
    .line 217
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->MSETNX:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 218
    return-void
.end method

.method public multi()V
    .locals 1

    .prologue
    .line 494
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->MULTI:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lredis/clients/jedis/BinaryClient;->isInMulti:Z

    .line 496
    return-void
.end method

.method public objectEncoding([B)V
    .locals 4
    .param p1, "key"    # [B

    .prologue
    .line 1038
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->OBJECT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->ENCODING:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1039
    return-void
.end method

.method public objectIdletime([B)V
    .locals 4
    .param p1, "key"    # [B

    .prologue
    .line 1034
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->OBJECT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->IDLETIME:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1035
    return-void
.end method

.method public objectRefcount([B)V
    .locals 4
    .param p1, "key"    # [B

    .prologue
    .line 1030
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->OBJECT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->REFCOUNT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1031
    return-void
.end method

.method public persist([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 887
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PERSIST:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 888
    return-void
.end method

.method public pexpire([BJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "milliseconds"    # J

    .prologue
    .line 1091
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PEXPIRE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1092
    return-void
.end method

.method public pexpireAt([BJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "millisecondsTimestamp"    # J

    .prologue
    .line 1095
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PEXPIREAT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1096
    return-void
.end method

.method public varargs pfadd([B[[B)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "elements"    # [[B

    .prologue
    .line 1184
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PFADD:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryClient;->joinParameters([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1185
    return-void
.end method

.method public pfcount([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 1188
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PFCOUNT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1189
    return-void
.end method

.method public varargs pfcount([[B)V
    .locals 1
    .param p1, "keys"    # [[B

    .prologue
    .line 1192
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PFCOUNT:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1193
    return-void
.end method

.method public varargs pfmerge([B[[B)V
    .locals 2
    .param p1, "destkey"    # [B
    .param p2, "sourcekeys"    # [[B

    .prologue
    .line 1196
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PFMERGE:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryClient;->joinParameters([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1197
    return-void
.end method

.method public ping()V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PING:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 113
    return-void
.end method

.method public psetex([BJ[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "milliseconds"    # J
    .param p4, "value"    # [B

    .prologue
    .line 1103
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PSETEX:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1104
    return-void
.end method

.method public varargs psubscribe([[B)V
    .locals 1
    .param p1, "patterns"    # [[B

    .prologue
    .line 592
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 593
    return-void
.end method

.method public pttl([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 1099
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PTTL:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1100
    return-void
.end method

.method public publish([B[B)V
    .locals 3
    .param p1, "channel"    # [B
    .param p2, "message"    # [B

    .prologue
    .line 580
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PUBLISH:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 581
    return-void
.end method

.method public varargs pubsub([[B)V
    .locals 1
    .param p1, "args"    # [[B

    .prologue
    .line 604
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PUBSUB:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 605
    return-void
.end method

.method public punsubscribe()V
    .locals 1

    .prologue
    .line 596
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PUNSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 597
    return-void
.end method

.method public varargs punsubscribe([[B)V
    .locals 1
    .param p1, "patterns"    # [[B

    .prologue
    .line 600
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->PUNSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 601
    return-void
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lredis/clients/jedis/BinaryClient;->db:I

    .line 129
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->QUIT:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 130
    return-void
.end method

.method public randomKey()V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->RANDOMKEY:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 158
    return-void
.end method

.method public readonly()V
    .locals 1

    .prologue
    .line 1200
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->READONLY:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 1201
    return-void
.end method

.method public rename([B[B)V
    .locals 3
    .param p1, "oldkey"    # [B
    .param p2, "newkey"    # [B

    .prologue
    .line 161
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->RENAME:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 162
    return-void
.end method

.method public renamenx([B[B)V
    .locals 3
    .param p1, "oldkey"    # [B
    .param p2, "newkey"    # [B

    .prologue
    .line 165
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->RENAMENX:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 166
    return-void
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryClient;->isInWatch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lredis/clients/jedis/BinaryClient;->unwatch()V

    .line 961
    :cond_0
    return-void
.end method

.method public restore([BI[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "ttl"    # I
    .param p3, "serializedValue"    # [B

    .prologue
    .line 1087
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->RESTORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1088
    return-void
.end method

.method public rpop([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 343
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->RPOP:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 344
    return-void
.end method

.method public rpoplpush([B[B)V
    .locals 3
    .param p1, "srckey"    # [B
    .param p2, "dstkey"    # [B

    .prologue
    .line 347
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->RPOPLPUSH:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 348
    return-void
.end method

.method public varargs rpush([B[[B)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "strings"    # [[B

    .prologue
    .line 307
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->RPUSH:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryClient;->joinParameters([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 308
    return-void
.end method

.method public varargs rpushx([B[[B)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "string"    # [[B

    .prologue
    .line 891
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->RPUSHX:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryClient;->joinParameters([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 892
    return-void
.end method

.method public varargs sadd([B[[B)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "members"    # [[B

    .prologue
    .line 351
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SADD:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryClient;->joinParameters([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 352
    return-void
.end method

.method public save()V
    .locals 1

    .prologue
    .line 827
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SAVE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 828
    return-void
.end method

.method public scan([BLredis/clients/jedis/ScanParams;)V
    .locals 3
    .param p1, "cursor"    # [B
    .param p2, "params"    # Lredis/clients/jedis/ScanParams;

    .prologue
    .line 1141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    invoke-virtual {p2}, Lredis/clients/jedis/ScanParams;->getParams()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1144
    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SCAN:Lredis/clients/jedis/Protocol$Command;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    invoke-virtual {p0, v2, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1145
    return-void
.end method

.method public scard([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 375
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SCARD:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 376
    return-void
.end method

.method public varargs scriptExists([[B)V
    .locals 4
    .param p1, "sha1"    # [[B

    .prologue
    .line 997
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [[B

    .line 998
    .local v0, "args":[[B
    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->EXISTS:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v0, v2

    .line 999
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 1002
    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SCRIPT:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v2, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1003
    return-void

    .line 1000
    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v1

    aput-object v3, v0, v2

    .line 999
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public scriptFlush()V
    .locals 4

    .prologue
    .line 993
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SCRIPT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->FLUSH:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 994
    return-void
.end method

.method public scriptKill()V
    .locals 4

    .prologue
    .line 1010
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SCRIPT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->KILL:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1011
    return-void
.end method

.method public scriptLoad([B)V
    .locals 4
    .param p1, "script"    # [B

    .prologue
    .line 1006
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SCRIPT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LOAD:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1007
    return-void
.end method

.method public varargs sdiff([[B)V
    .locals 1
    .param p1, "keys"    # [[B

    .prologue
    .line 405
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SDIFF:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 406
    return-void
.end method

.method public varargs sdiffstore([B[[B)V
    .locals 4
    .param p1, "dstkey"    # [B
    .param p2, "keys"    # [[B

    .prologue
    const/4 v3, 0x0

    .line 409
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [[B

    .line 410
    .local v0, "params":[[B
    aput-object p1, v0, v3

    .line 411
    const/4 v1, 0x1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    sget-object v1, Lredis/clients/jedis/Protocol$Command;->SDIFFSTORE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v1, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 413
    return-void
.end method

.method public select(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 185
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SELECT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    invoke-static {p1}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 186
    return-void
.end method

.method public varargs sentinel([[B)V
    .locals 1
    .param p1, "args"    # [[B

    .prologue
    .line 1079
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SENTINEL:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1080
    return-void
.end method

.method public set([B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 116
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SET:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 117
    return-void
.end method

.method public set([B[BLredis/clients/jedis/params/set/SetParams;)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "value"    # [B
    .param p3, "params"    # Lredis/clients/jedis/params/set/SetParams;

    .prologue
    .line 120
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SET:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p3, v1}, Lredis/clients/jedis/params/set/SetParams;->getByteParams([[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 121
    return-void
.end method

.method public setDb(I)V
    .locals 0
    .param p1, "db"    # I

    .prologue
    .line 93
    iput p1, p0, Lredis/clients/jedis/BinaryClient;->db:I

    .line 94
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lredis/clients/jedis/BinaryClient;->password:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setbit([BJZ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .prologue
    .line 920
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SETBIT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Lredis/clients/jedis/Protocol;->toByteArray(Z)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 921
    return-void
.end method

.method public setbit([BJ[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # [B

    .prologue
    .line 916
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SETBIT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 917
    return-void
.end method

.method public setex([BI[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "seconds"    # I
    .param p3, "value"    # [B

    .prologue
    .line 209
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SETEX:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 210
    return-void
.end method

.method public setnx([B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 205
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SETNX:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 206
    return-void
.end method

.method public setrange([BJ[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # [B

    .prologue
    .line 936
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SETRANGE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 937
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 843
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SHUTDOWN:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 844
    return-void
.end method

.method public varargs sinter([[B)V
    .locals 1
    .param p1, "keys"    # [[B

    .prologue
    .line 383
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SINTER:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 384
    return-void
.end method

.method public varargs sinterstore([B[[B)V
    .locals 4
    .param p1, "dstkey"    # [B
    .param p2, "keys"    # [[B

    .prologue
    const/4 v3, 0x0

    .line 387
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [[B

    .line 388
    .local v0, "params":[[B
    aput-object p1, v0, v3

    .line 389
    const/4 v1, 0x1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    sget-object v1, Lredis/clients/jedis/Protocol$Command;->SINTERSTORE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v1, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 391
    return-void
.end method

.method public sismember([B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 379
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SISMEMBER:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 380
    return-void
.end method

.method public slaveof(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 859
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SLAVEOF:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[Ljava/lang/String;)Lredis/clients/jedis/Connection;

    .line 860
    return-void
.end method

.method public slaveofNoOne()V
    .locals 4

    .prologue
    .line 863
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SLAVEOF:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->NO:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->ONE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 864
    return-void
.end method

.method public slowlogGet()V
    .locals 4

    .prologue
    .line 1014
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SLOWLOG:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->GET:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1015
    return-void
.end method

.method public slowlogGet(J)V
    .locals 5
    .param p1, "entries"    # J

    .prologue
    .line 1018
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SLOWLOG:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->GET:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1019
    return-void
.end method

.method public slowlogLen()V
    .locals 4

    .prologue
    .line 1026
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SLOWLOG:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LEN:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1027
    return-void
.end method

.method public slowlogReset()V
    .locals 4

    .prologue
    .line 1022
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SLOWLOG:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->RESET:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1023
    return-void
.end method

.method public smembers([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 355
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SMEMBERS:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 356
    return-void
.end method

.method public smove([B[B[B)V
    .locals 3
    .param p1, "srckey"    # [B
    .param p2, "dstkey"    # [B
    .param p3, "member"    # [B

    .prologue
    .line 371
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SMOVE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 372
    return-void
.end method

.method public sort([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 521
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SORT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 522
    return-void
.end method

.method public sort([BLredis/clients/jedis/SortingParams;)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;

    .prologue
    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-virtual {p2}, Lredis/clients/jedis/SortingParams;->getParams()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 528
    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SORT:Lredis/clients/jedis/Protocol$Command;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    invoke-virtual {p0, v2, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 529
    return-void
.end method

.method public sort([BLredis/clients/jedis/SortingParams;[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .param p3, "dstkey"    # [B

    .prologue
    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-virtual {p2}, Lredis/clients/jedis/SortingParams;->getParams()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 548
    sget-object v1, Lredis/clients/jedis/Protocol$Keyword;->STORE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v1, v1, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SORT:Lredis/clients/jedis/Protocol$Command;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    invoke-virtual {p0, v2, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 551
    return-void
.end method

.method public sort([B[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "dstkey"    # [B

    .prologue
    .line 554
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SORT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->STORE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 555
    return-void
.end method

.method public spop([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 363
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SPOP:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 364
    return-void
.end method

.method public spop([BJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "count"    # J

    .prologue
    .line 367
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SPOP:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 368
    return-void
.end method

.method public srandmember([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 416
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SRANDMEMBER:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 417
    return-void
.end method

.method public srandmember([BI)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "count"    # I

    .prologue
    .line 1107
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SRANDMEMBER:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1108
    return-void
.end method

.method public varargs srem([B[[B)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "members"    # [[B

    .prologue
    .line 359
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SREM:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryClient;->joinParameters([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 360
    return-void
.end method

.method public sscan([B[BLredis/clients/jedis/ScanParams;)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;

    .prologue
    .line 1156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    invoke-virtual {p3}, Lredis/clients/jedis/ScanParams;->getParams()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1160
    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SSCAN:Lredis/clients/jedis/Protocol$Command;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    invoke-virtual {p0, v2, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1161
    return-void
.end method

.method public strlen([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 875
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->STRLEN:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 876
    return-void
.end method

.method public varargs subscribe([[B)V
    .locals 1
    .param p1, "channels"    # [[B

    .prologue
    .line 576
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 577
    return-void
.end method

.method public substr([BII)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 245
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SUBSTR:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 246
    return-void
.end method

.method public varargs sunion([[B)V
    .locals 1
    .param p1, "keys"    # [[B

    .prologue
    .line 394
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SUNION:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 395
    return-void
.end method

.method public varargs sunionstore([B[[B)V
    .locals 4
    .param p1, "dstkey"    # [B
    .param p2, "keys"    # [[B

    .prologue
    const/4 v3, 0x0

    .line 398
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [[B

    .line 399
    .local v0, "params":[[B
    aput-object p1, v0, v3

    .line 400
    const/4 v1, 0x1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    sget-object v1, Lredis/clients/jedis/Protocol$Command;->SUNIONSTORE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v1, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 402
    return-void
.end method

.method public sync()V
    .locals 1

    .prologue
    .line 879
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->SYNC:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 880
    return-void
.end method

.method public time()V
    .locals 1

    .prologue
    .line 1127
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->TIME:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 1128
    return-void
.end method

.method public ttl([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 181
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->TTL:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 182
    return-void
.end method

.method public type([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 145
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->TYPE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 146
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 584
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->UNSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 585
    return-void
.end method

.method public varargs unsubscribe([[B)V
    .locals 1
    .param p1, "channels"    # [[B

    .prologue
    .line 588
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->UNSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 589
    return-void
.end method

.method public unwatch()V
    .locals 1

    .prologue
    .line 516
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->UNWATCH:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;)Lredis/clients/jedis/Connection;

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lredis/clients/jedis/BinaryClient;->isInWatch:Z

    .line 518
    return-void
.end method

.method public waitReplicas(IJ)V
    .locals 4
    .param p1, "replicas"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 1172
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->WAIT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    invoke-static {p1}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1173
    return-void
.end method

.method public varargs watch([[B)V
    .locals 1
    .param p1, "keys"    # [[B

    .prologue
    .line 511
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->WATCH:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lredis/clients/jedis/BinaryClient;->isInWatch:Z

    .line 513
    return-void
.end method

.method public zadd([BD[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B

    .prologue
    .line 420
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZADD:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 421
    return-void
.end method

.method public zadd([BD[BLredis/clients/jedis/params/sortedset/ZAddParams;)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;

    .prologue
    .line 425
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZADD:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-virtual {p5, p1, v1}, Lredis/clients/jedis/params/sortedset/ZAddParams;->getByteParams([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 426
    return-void
.end method

.method public zadd([BLjava/util/Map;)V
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<[BLjava/lang/Double;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 430
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-direct {p0, p2}, Lredis/clients/jedis/BinaryClient;->convertScoreMembersToByteArrays(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 433
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [[B

    .line 434
    .local v1, "argsArray":[[B
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 436
    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZADD:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v2, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 437
    return-void
.end method

.method public zadd([BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)V
    .locals 4
    .param p1, "key"    # [B
    .param p3, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
            "Ljava/lang/Double;",
            ">;",
            "Lredis/clients/jedis/params/sortedset/ZAddParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 440
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<[BLjava/lang/Double;>;"
    invoke-direct {p0, p2}, Lredis/clients/jedis/BinaryClient;->convertScoreMembersToByteArrays(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    .line 441
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [[B

    .line 442
    .local v1, "argsArray":[[B
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 444
    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZADD:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p3, p1, v1}, Lredis/clients/jedis/params/sortedset/ZAddParams;->getByteParams([B[[B)[[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 445
    return-void
.end method

.method public zcard([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 486
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZCARD:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 487
    return-void
.end method

.method public zcount([BDD)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 609
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZCOUNT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 610
    return-void
.end method

.method public zcount([BLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 617
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZCOUNT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 618
    return-void
.end method

.method public zcount([B[B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 613
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZCOUNT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 614
    return-void
.end method

.method public zincrby([BD[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B

    .prologue
    .line 456
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZINCRBY:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 457
    return-void
.end method

.method public zincrby([BD[BLredis/clients/jedis/params/sortedset/ZIncrByParams;)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZIncrByParams;

    .prologue
    .line 462
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZADD:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-virtual {p5, p1, v1}, Lredis/clients/jedis/params/sortedset/ZIncrByParams;->getByteParams([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 463
    return-void
.end method

.method public varargs zinterstore([BLredis/clients/jedis/ZParams;[[B)V
    .locals 4
    .param p1, "dstkey"    # [B
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [[B

    .prologue
    .line 790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    array-length v2, p3

    invoke-static {v2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 796
    invoke-virtual {p2}, Lredis/clients/jedis/ZParams;->getParams()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 797
    sget-object v3, Lredis/clients/jedis/Protocol$Command;->ZINTERSTORE:Lredis/clients/jedis/Protocol$Command;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[B

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    invoke-virtual {p0, v3, v2}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 798
    return-void

    .line 793
    :cond_0
    aget-object v1, p3, v2

    .line 794
    .local v1, "set":[B
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public varargs zinterstore([B[[B)V
    .locals 4
    .param p1, "dstkey"    # [B
    .param p2, "sets"    # [[B

    .prologue
    const/4 v3, 0x0

    .line 782
    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    new-array v0, v1, [[B

    .line 783
    .local v0, "params":[[B
    aput-object p1, v0, v3

    .line 784
    const/4 v1, 0x1

    array-length v2, p2

    invoke-static {v2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 785
    const/4 v1, 0x2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    sget-object v1, Lredis/clients/jedis/Protocol$Command;->ZINTERSTORE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v1, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 787
    return-void
.end method

.method public zlexcount([B[B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 801
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZLEXCOUNT:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 802
    return-void
.end method

.method public zrange([BJJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 448
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 449
    return-void
.end method

.method public zrangeByLex([B[B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 805
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 806
    return-void
.end method

.method public zrangeByLex([B[B[BII)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 810
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 811
    return-void
.end method

.method public zrangeByScore([BDD)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 622
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 623
    return-void
.end method

.method public zrangeByScore([BDDII)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I

    .prologue
    .line 649
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p6}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 650
    invoke-static {p7}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 649
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 651
    return-void
.end method

.method public zrangeByScore([BLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 630
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 631
    return-void
.end method

.method public zrangeByScore([BLjava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 656
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 657
    invoke-static {p5}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 656
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 658
    return-void
.end method

.method public zrangeByScore([B[B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 626
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 627
    return-void
.end method

.method public zrangeByScore([B[B[BII)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 722
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 723
    return-void
.end method

.method public zrangeByScoreWithScores([BDD)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 676
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 677
    return-void
.end method

.method public zrangeByScoreWithScores([BDDII)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I

    .prologue
    .line 696
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x7

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p6}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 697
    invoke-static {p7}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    .line 696
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 698
    return-void
.end method

.method public zrangeByScoreWithScores([BLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 681
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 682
    return-void
.end method

.method public zrangeByScoreWithScores([BLjava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 702
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x7

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 703
    invoke-static {p5}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    .line 702
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 704
    return-void
.end method

.method public zrangeByScoreWithScores([B[B[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 731
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 732
    return-void
.end method

.method public zrangeByScoreWithScores([B[B[BII)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 740
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x7

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 741
    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    .line 740
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 742
    return-void
.end method

.method public zrangeWithScores([BJJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 478
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 479
    return-void
.end method

.method public zrank([B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 466
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANK:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 467
    return-void
.end method

.method public varargs zrem([B[[B)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "members"    # [[B

    .prologue
    .line 452
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREM:Lredis/clients/jedis/Protocol$Command;

    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryClient;->joinParameters([B[[B)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 453
    return-void
.end method

.method public zremrangeByLex([B[B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 823
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREMRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 824
    return-void
.end method

.method public zremrangeByRank([BJJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 751
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREMRANGEBYRANK:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 752
    return-void
.end method

.method public zremrangeByScore([BLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;

    .prologue
    .line 759
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREMRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 760
    return-void
.end method

.method public zremrangeByScore([B[B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "start"    # [B
    .param p3, "end"    # [B

    .prologue
    .line 755
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREMRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 756
    return-void
.end method

.method public zrevrange([BJJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 474
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 475
    return-void
.end method

.method public zrevrangeByLex([B[B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B

    .prologue
    .line 814
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 815
    return-void
.end method

.method public zrevrangeByLex([B[B[BII)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 819
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 820
    return-void
.end method

.method public zrevrangeByScore([BDD)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D

    .prologue
    .line 635
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 636
    return-void
.end method

.method public zrevrangeByScore([BDDII)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I

    .prologue
    .line 663
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p6}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 664
    invoke-static {p7}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 663
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 665
    return-void
.end method

.method public zrevrangeByScore([BLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;

    .prologue
    .line 643
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 644
    return-void
.end method

.method public zrevrangeByScore([BLjava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 670
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 671
    invoke-static {p4}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 670
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 672
    return-void
.end method

.method public zrevrangeByScore([B[B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B

    .prologue
    .line 639
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 640
    return-void
.end method

.method public zrevrangeByScore([B[B[BII)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 727
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 728
    return-void
.end method

.method public zrevrangeByScoreWithScores([BDD)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D

    .prologue
    .line 686
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 687
    return-void
.end method

.method public zrevrangeByScoreWithScores([BDDII)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I

    .prologue
    .line 709
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x7

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p6}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 710
    invoke-static {p7}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    .line 709
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 711
    return-void
.end method

.method public zrevrangeByScoreWithScores([BLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;

    .prologue
    .line 690
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 691
    return-void
.end method

.method public zrevrangeByScoreWithScores([BLjava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 716
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x7

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 717
    invoke-static {p4}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    .line 716
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 718
    return-void
.end method

.method public zrevrangeByScoreWithScores([B[B[B)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B

    .prologue
    .line 735
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 736
    return-void
.end method

.method public zrevrangeByScoreWithScores([B[B[BII)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 746
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x7

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->LIMIT:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 747
    invoke-static {p5}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    .line 746
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 748
    return-void
.end method

.method public zrevrangeWithScores([BJJ)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 482
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lredis/clients/jedis/Protocol$Keyword;->WITHSCORES:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v3, v3, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 483
    return-void
.end method

.method public zrevrank([B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 470
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANK:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 471
    return-void
.end method

.method public zscan([B[BLredis/clients/jedis/ScanParams;)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;

    .prologue
    .line 1164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    invoke-virtual {p3}, Lredis/clients/jedis/ScanParams;->getParams()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1168
    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZSCAN:Lredis/clients/jedis/Protocol$Command;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    invoke-virtual {p0, v2, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 1169
    return-void
.end method

.method public zscore([B[B)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 490
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ZSCORE:Lredis/clients/jedis/Protocol$Command;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 491
    return-void
.end method

.method public varargs zunionstore([BLredis/clients/jedis/ZParams;[[B)V
    .locals 4
    .param p1, "dstkey"    # [B
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [[B

    .prologue
    .line 771
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    array-length v2, p3

    invoke-static {v2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 777
    invoke-virtual {p2}, Lredis/clients/jedis/ZParams;->getParams()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 778
    sget-object v3, Lredis/clients/jedis/Protocol$Command;->ZUNIONSTORE:Lredis/clients/jedis/Protocol$Command;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[B

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    invoke-virtual {p0, v3, v2}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 779
    return-void

    .line 774
    :cond_0
    aget-object v1, p3, v2

    .line 775
    .local v1, "set":[B
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public varargs zunionstore([B[[B)V
    .locals 4
    .param p1, "dstkey"    # [B
    .param p2, "sets"    # [[B

    .prologue
    const/4 v3, 0x0

    .line 763
    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    new-array v0, v1, [[B

    .line 764
    .local v0, "params":[[B
    aput-object p1, v0, v3

    .line 765
    const/4 v1, 0x1

    array-length v2, p2

    invoke-static {v2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 766
    const/4 v1, 0x2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    sget-object v1, Lredis/clients/jedis/Protocol$Command;->ZUNIONSTORE:Lredis/clients/jedis/Protocol$Command;

    invoke-virtual {p0, v1, v0}, Lredis/clients/jedis/BinaryClient;->sendCommand(Lredis/clients/jedis/commands/ProtocolCommand;[[B)Lredis/clients/jedis/Connection;

    .line 768
    return-void
.end method

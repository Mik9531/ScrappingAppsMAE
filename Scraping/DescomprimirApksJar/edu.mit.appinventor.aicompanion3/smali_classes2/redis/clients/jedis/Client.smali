.class public Lredis/clients/jedis/Client;
.super Lredis/clients/jedis/BinaryClient;
.source "Client.java"

# interfaces
.implements Lredis/clients/jedis/commands/Commands;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lredis/clients/jedis/BinaryClient;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lredis/clients/jedis/BinaryClient;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryClient;-><init>(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "ssl"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lredis/clients/jedis/BinaryClient;-><init>(Ljava/lang/String;IZ)V

    .line 39
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
    .line 44
    invoke-direct/range {p0 .. p6}, Lredis/clients/jedis/BinaryClient;-><init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 45
    return-void
.end method

.method private convertMemberCoordinateMapToBinary(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;)",
            "Ljava/util/HashMap",
            "<[B",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1197
    .local p1, "memberCoordinateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lredis/clients/jedis/GeoCoordinate;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1199
    .local v0, "binaryMemberCoordinateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<[BLredis/clients/jedis/GeoCoordinate;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1202
    return-object v0

    .line 1199
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1200
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lredis/clients/jedis/GeoCoordinate;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lredis/clients/jedis/GeoCoordinate;

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private convertScoreMembersToBinary(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/HashMap",
            "<[B",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1187
    .local p1, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1189
    .local v0, "binaryScoreMembers":Ljava/util/HashMap;, "Ljava/util/HashMap<[BLjava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1192
    return-object v0

    .line 1189
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1190
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private varargs getByteParams([Ljava/lang/String;)[[B
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1169
    array-length v2, p1

    new-array v1, v2, [[B

    .line 1170
    .local v1, "p":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 1173
    return-object v1

    .line 1171
    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 1170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->append([B[B)V

    .line 186
    return-void
.end method

.method public bitcount(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 902
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->bitcount([B)V

    .line 903
    return-void
.end method

.method public bitcount(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 907
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->bitcount([BJJ)V

    .line 908
    return-void
.end method

.method public varargs bitfield(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;

    .prologue
    .line 1207
    array-length v4, p2

    new-array v1, v4, [[B

    .line 1208
    .local v1, "argumentArray":[[B
    const/4 v2, 0x0

    .line 1209
    .local v2, "index":I
    array-length v5, p2

    const/4 v4, 0x0

    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-lt v4, v5, :cond_0

    .line 1212
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lredis/clients/jedis/Client;->bitfield([B[[B)V

    .line 1213
    return-void

    .line 1209
    :cond_0
    aget-object v0, p2, v4

    .line 1210
    .local v0, "argument":Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v1, v3

    .line 1209
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0
.end method

.method public varargs bitop(Lredis/clients/jedis/BitOP;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "op"    # Lredis/clients/jedis/BitOP;
    .param p2, "destKey"    # Ljava/lang/String;
    .param p3, "srcKeys"    # [Ljava/lang/String;

    .prologue
    .line 912
    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p3}, Lredis/clients/jedis/Client;->getByteParams([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lredis/clients/jedis/Client;->bitop(Lredis/clients/jedis/BitOP;[B[[B)V

    .line 913
    return-void
.end method

.method public bitpos(Ljava/lang/String;ZLredis/clients/jedis/BitPosParams;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "params"    # Lredis/clients/jedis/BitPosParams;

    .prologue
    .line 794
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lredis/clients/jedis/Client;->bitpos([BZLredis/clients/jedis/BitPosParams;)V

    .line 795
    return-void
.end method

.method public varargs blpop(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "timeout"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 522
    array-length v3, p2

    add-int/lit8 v2, v3, 0x1

    .line 523
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 524
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 527
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v3}, Lredis/clients/jedis/Client;->blpop([Ljava/lang/String;)V

    .line 529
    return-void

    .line 524
    :cond_0
    aget-object v0, p2, v3

    .line 525
    .local v0, "arg":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public blpop([Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 514
    array-length v2, p1

    new-array v0, v2, [[B

    .line 515
    .local v0, "bargs":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 518
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->blpop([[B)V

    .line 519
    return-void

    .line 516
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs brpop(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "timeout"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 551
    array-length v3, p2

    add-int/lit8 v2, v3, 0x1

    .line 552
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 553
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 556
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v3}, Lredis/clients/jedis/Client;->brpop([Ljava/lang/String;)V

    .line 558
    return-void

    .line 553
    :cond_0
    aget-object v0, p2, v3

    .line 554
    .local v0, "arg":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public brpop([Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 543
    array-length v2, p1

    new-array v0, v2, [[B

    .line 544
    .local v0, "bargs":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 547
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->brpop([[B)V

    .line 548
    return-void

    .line 545
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public brpoplpush(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 775
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lredis/clients/jedis/Client;->brpoplpush([B[BI)V

    .line 776
    return-void
.end method

.method public clientKill(Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Ljava/lang/String;

    .prologue
    .line 957
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->clientKill([B)V

    .line 958
    return-void
.end method

.method public clientSetname(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 961
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->clientSetname([B)V

    .line 962
    return-void
.end method

.method public cluster(Ljava/lang/String;)V
    .locals 3
    .param p1, "subcommand"    # Ljava/lang/String;

    .prologue
    .line 1022
    const/4 v1, 0x1

    new-array v0, v1, [[B

    .line 1023
    .local v0, "arg":[[B
    const/4 v1, 0x0

    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 1024
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->cluster([[B)V

    .line 1025
    return-void
.end method

.method public varargs cluster(Ljava/lang/String;[I)V
    .locals 4
    .param p1, "subcommand"    # Ljava/lang/String;
    .param p2, "args"    # [I

    .prologue
    .line 995
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [[B

    .line 996
    .local v0, "arg":[[B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 999
    const/4 v2, 0x0

    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 1000
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->cluster([[B)V

    .line 1001
    return-void

    .line 997
    :cond_0
    add-int/lit8 v2, v1, -0x1

    aget v2, p2, v2

    invoke-static {v2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 996
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs cluster(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "subcommand"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1013
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [[B

    .line 1014
    .local v0, "arg":[[B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 1017
    const/4 v2, 0x0

    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 1018
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->cluster([[B)V

    .line 1019
    return-void

    .line 1015
    :cond_0
    add-int/lit8 v2, v1, -0x1

    aget-object v2, p2, v2

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 1014
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs clusterAddSlots([I)V
    .locals 1
    .param p1, "slots"    # [I

    .prologue
    .line 1040
    const-string v0, "addslots"

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[I)V

    .line 1041
    return-void
.end method

.method public clusterCountKeysInSlot(I)V
    .locals 4
    .param p1, "slot"    # I

    .prologue
    .line 1103
    const-string v0, "countkeysinslot"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1104
    return-void
.end method

.method public varargs clusterDelSlots([I)V
    .locals 1
    .param p1, "slots"    # [I

    .prologue
    .line 1044
    const-string v0, "delslots"

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[I)V

    .line 1045
    return-void
.end method

.method public clusterFailover()V
    .locals 1

    .prologue
    .line 1119
    const-string v0, "failover"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;)V

    .line 1120
    return-void
.end method

.method public clusterFlushSlots()V
    .locals 1

    .prologue
    .line 1095
    const-string v0, "flushslots"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;)V

    .line 1096
    return-void
.end method

.method public clusterForget(Ljava/lang/String;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 1091
    const-string v0, "forget"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1092
    return-void
.end method

.method public clusterGetKeysInSlot(II)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "count"    # I

    .prologue
    .line 1052
    const/4 v1, 0x2

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1053
    .local v0, "args":[I
    const-string v1, "getkeysinslot"

    invoke-virtual {p0, v1, v0}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[I)V

    .line 1054
    return-void
.end method

.method public clusterInfo()V
    .locals 1

    .prologue
    .line 1048
    const-string v0, "info"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method public clusterKeySlot(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1099
    const-string v0, "keyslot"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method public clusterMeet(Ljava/lang/String;I)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 1032
    const-string v0, "meet"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method public clusterNodes()V
    .locals 1

    .prologue
    .line 1028
    const-string v0, "nodes"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;)V

    .line 1029
    return-void
.end method

.method public clusterReplicate(Ljava/lang/String;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 1111
    const-string v0, "replicate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1112
    return-void
.end method

.method public clusterReset(Lredis/clients/jedis/JedisCluster$Reset;)V
    .locals 4
    .param p1, "resetType"    # Lredis/clients/jedis/JedisCluster$Reset;

    .prologue
    .line 1036
    const-string v0, "reset"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lredis/clients/jedis/JedisCluster$Reset;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1037
    return-void
.end method

.method public clusterSaveConfig()V
    .locals 1

    .prologue
    .line 1107
    const-string v0, "saveconfig"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;)V

    .line 1108
    return-void
.end method

.method public clusterSetSlotImporting(ILjava/lang/String;)V
    .locals 4
    .param p1, "slot"    # I
    .param p2, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 1066
    const-string v0, "setslot"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "importing"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 1067
    aput-object p2, v1, v2

    .line 1066
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method public clusterSetSlotMigrating(ILjava/lang/String;)V
    .locals 4
    .param p1, "slot"    # I
    .param p2, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 1061
    const-string v0, "setslot"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "migrating"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 1062
    aput-object p2, v1, v2

    .line 1061
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public clusterSetSlotNode(ILjava/lang/String;)V
    .locals 4
    .param p1, "slot"    # I
    .param p2, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 1057
    const-string v0, "setslot"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "node"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1058
    return-void
.end method

.method public clusterSetSlotStable(I)V
    .locals 4
    .param p1, "slot"    # I

    .prologue
    .line 1087
    const-string v0, "setslot"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "stable"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method public clusterSlaves(Ljava/lang/String;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 1115
    const-string v0, "slaves"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1116
    return-void
.end method

.method public clusterSlots()V
    .locals 1

    .prologue
    .line 1123
    const-string v0, "slots"

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->cluster(Ljava/lang/String;)V

    .line 1124
    return-void
.end method

.method public configGet(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 862
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->configGet([B)V

    .line 863
    return-void
.end method

.method public configSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 857
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->configSet([B[B)V

    .line 858
    return-void
.end method

.method public decr(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->decr([B)V

    .line 171
    return-void
.end method

.method public decrBy(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "integer"    # J

    .prologue
    .line 165
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lredis/clients/jedis/Client;->decrBy([BJ)V

    .line 166
    return-void
.end method

.method public varargs del([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 74
    array-length v2, p1

    new-array v0, v2, [[B

    .line 75
    .local v0, "bkeys":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->del([[B)V

    .line 79
    return-void

    .line 76
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 924
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->dump([B)V

    .line 925
    return-void
.end method

.method public echo(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 764
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->echo([B)V

    .line 765
    return-void
.end method

.method public varargs eval(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 3
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "keyCount"    # I
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 866
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v1

    invoke-direct {p0, p3}, Lredis/clients/jedis/Client;->getByteParams([Ljava/lang/String;)[[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->eval([B[B[[B)V

    .line 867
    return-void
.end method

.method public varargs evalsha(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 3
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "keyCount"    # I
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 870
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/jedis/Protocol;->toByteArray(I)[B

    move-result-object v1

    invoke-direct {p0, p3}, Lredis/clients/jedis/Client;->getByteParams([Ljava/lang/String;)[[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->evalsha([B[B[[B)V

    .line 871
    return-void
.end method

.method public exists(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->exists([B)V

    .line 65
    return-void
.end method

.method public varargs exists([Ljava/lang/String;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encodeMany([Ljava/lang/String;)[[B

    move-result-object v0

    .line 70
    .local v0, "bkeys":[[B
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->exists([[B)V

    .line 71
    return-void
.end method

.method public expire(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "seconds"    # I

    .prologue
    .line 103
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lredis/clients/jedis/Client;->expire([BI)V

    .line 104
    return-void
.end method

.method public expireAt(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "unixTime"    # J

    .prologue
    .line 108
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lredis/clients/jedis/Client;->expireAt([BJ)V

    .line 109
    return-void
.end method

.method public geoadd(Ljava/lang/String;DDLjava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "member"    # Ljava/lang/String;

    .prologue
    .line 1127
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p6}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v6

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lredis/clients/jedis/Client;->geoadd([BDD[B)V

    .line 1128
    return-void
.end method

.method public geoadd(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1131
    .local p2, "memberCoordinateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lredis/clients/jedis/GeoCoordinate;>;"
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p2}, Lredis/clients/jedis/Client;->convertMemberCoordinateMapToBinary(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->geoadd([BLjava/util/Map;)V

    .line 1132
    return-void
.end method

.method public geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member1"    # Ljava/lang/String;
    .param p3, "member2"    # Ljava/lang/String;

    .prologue
    .line 1135
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->geodist([B[B[B)V

    .line 1136
    return-void
.end method

.method public geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/GeoUnit;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member1"    # Ljava/lang/String;
    .param p3, "member2"    # Ljava/lang/String;
    .param p4, "unit"    # Lredis/clients/jedis/GeoUnit;

    .prologue
    .line 1139
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p4}, Lredis/clients/jedis/Client;->geodist([B[B[BLredis/clients/jedis/GeoUnit;)V

    .line 1140
    return-void
.end method

.method public varargs geohash(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;

    .prologue
    .line 1143
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encodeMany([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->geohash([B[[B)V

    .line 1144
    return-void
.end method

.method public geopos(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;

    .prologue
    .line 1147
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encodeMany([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->geopos([B[[B)V

    .line 1148
    return-void
.end method

.method public georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;

    .prologue
    .line 1151
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lredis/clients/jedis/Client;->georadius([BDDDLredis/clients/jedis/GeoUnit;)V

    .line 1152
    return-void
.end method

.method public georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p9, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;

    .prologue
    .line 1156
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lredis/clients/jedis/Client;->georadius([BDDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 1157
    return-void
.end method

.method public georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;

    .prologue
    .line 1160
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v3

    move-object v1, p0

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lredis/clients/jedis/Client;->georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;)V

    .line 1161
    return-void
.end method

.method public georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p6, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;

    .prologue
    .line 1165
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v3

    move-object v1, p0

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lredis/clients/jedis/Client;->georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)V

    .line 1166
    return-void
.end method

.method public get(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->get([B)V

    .line 60
    return-void
.end method

.method public getSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->getSet([B[B)V

    .line 124
    return-void
.end method

.method public getbit(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J

    .prologue
    .line 790
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lredis/clients/jedis/Client;->getbit([BJ)V

    .line 791
    return-void
.end method

.method public getrange(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "startOffset"    # J
    .param p4, "endOffset"    # J

    .prologue
    .line 804
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->getrange([BJJ)V

    .line 805
    return-void
.end method

.method public varargs hdel(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fields"    # [Ljava/lang/String;

    .prologue
    .line 238
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encodeMany([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->hdel([B[[B)V

    .line 239
    return-void
.end method

.method public hexists(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->hexists([B[B)V

    .line 234
    return-void
.end method

.method public hget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->hget([B[B)V

    .line 201
    return-void
.end method

.method public hgetAll(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->hgetAll([B)V

    .line 259
    return-void
.end method

.method public hincrBy(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 228
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3, p4}, Lredis/clients/jedis/Client;->hincrBy([B[BJ)V

    .line 229
    return-void
.end method

.method public hincrByFloat(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "increment"    # D

    .prologue
    .line 971
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3, p4}, Lredis/clients/jedis/Client;->hincrByFloat([B[BD)V

    .line 972
    return-void
.end method

.method public hkeys(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->hkeys([B)V

    .line 249
    return-void
.end method

.method public hlen(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->hlen([B)V

    .line 244
    return-void
.end method

.method public varargs hmget(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fields"    # [Ljava/lang/String;

    .prologue
    .line 219
    array-length v2, p2

    new-array v0, v2, [[B

    .line 220
    .local v0, "bfields":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 223
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lredis/clients/jedis/Client;->hmget([B[[B)V

    .line 224
    return-void

    .line 221
    :cond_0
    aget-object v2, p2, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hmset(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "hash":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 211
    .local v0, "bhash":Ljava/util/Map;, "Ljava/util/Map<[B[B>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lredis/clients/jedis/Client;->hmset([BLjava/util/Map;)V

    .line 215
    return-void

    .line 211
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 212
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public hscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;

    .prologue
    .line 981
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lredis/clients/jedis/Client;->hscan([B[BLredis/clients/jedis/ScanParams;)V

    .line 982
    return-void
.end method

.method public hset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->hset([B[B[B)V

    .line 196
    return-void
.end method

.method public hsetnx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->hsetnx([B[B[B)V

    .line 206
    return-void
.end method

.method public hstrlen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 1217
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->hstrlen([B[B)V

    .line 1218
    return-void
.end method

.method public hvals(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->hvals([B)V

    .line 254
    return-void
.end method

.method public incr(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->incr([B)V

    .line 181
    return-void
.end method

.method public incrBy(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "integer"    # J

    .prologue
    .line 175
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lredis/clients/jedis/Client;->incrBy([BJ)V

    .line 176
    return-void
.end method

.method public incrByFloat(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "increment"    # D

    .prologue
    .line 945
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lredis/clients/jedis/Client;->incrByFloat([BD)V

    .line 946
    return-void
.end method

.method public keys(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->keys([B)V

    .line 89
    return-void
.end method

.method public lindex(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # J

    .prologue
    .line 288
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lredis/clients/jedis/Client;->lindex([BJ)V

    .line 289
    return-void
.end method

.method public linsert(Ljava/lang/String;Lredis/clients/jedis/BinaryClient$LIST_POSITION;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "where"    # Lredis/clients/jedis/BinaryClient$LIST_POSITION;
    .param p3, "pivot"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 770
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p4}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, p2, v1, v2}, Lredis/clients/jedis/Client;->linsert([BLredis/clients/jedis/BinaryClient$LIST_POSITION;[B[B)V

    .line 771
    return-void
.end method

.method public llen(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->llen([B)V

    .line 274
    return-void
.end method

.method public lpop(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->lpop([B)V

    .line 304
    return-void
.end method

.method public varargs lpush(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encodeMany([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->lpush([B[[B)V

    .line 269
    return-void
.end method

.method public varargs lpushx(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;

    .prologue
    .line 749
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p2}, Lredis/clients/jedis/Client;->getByteParams([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->lpushx([B[[B)V

    .line 750
    return-void
.end method

.method public lrange(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 278
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->lrange([BJJ)V

    .line 279
    return-void
.end method

.method public lrem(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p4}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, p2, p3, v1}, Lredis/clients/jedis/Client;->lrem([BJ[B)V

    .line 299
    return-void
.end method

.method public lset(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p4}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, p2, p3, v1}, Lredis/clients/jedis/Client;->lset([BJ[B)V

    .line 294
    return-void
.end method

.method public ltrim(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 283
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->ltrim([BJJ)V

    .line 284
    return-void
.end method

.method public varargs mget([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 128
    array-length v2, p1

    new-array v0, v2, [[B

    .line 129
    .local v0, "bkeys":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->mget([[B)V

    .line 133
    return-void

    .line 130
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public migrate(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "destinationDb"    # I
    .param p5, "timeout"    # I

    .prologue
    .line 966
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->migrate([BI[BII)V

    .line 967
    return-void
.end method

.method public moduleLoad()V
    .locals 0

    .prologue
    .line 1180
    invoke-virtual {p0}, Lredis/clients/jedis/Client;->moduleList()V

    .line 1181
    return-void
.end method

.method public moduleLoad(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1177
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->moduleLoad([B)V

    .line 1178
    return-void
.end method

.method public moduleUnload(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1184
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->moduleUnload([B)V

    .line 1185
    return-void
.end method

.method public move(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dbIndex"    # I

    .prologue
    .line 118
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lredis/clients/jedis/Client;->move([BI)V

    .line 119
    return-void
.end method

.method public varargs mset([Ljava/lang/String;)V
    .locals 3
    .param p1, "keysvalues"    # [Ljava/lang/String;

    .prologue
    .line 147
    array-length v2, p1

    new-array v0, v2, [[B

    .line 148
    .local v0, "bkeysvalues":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->mset([[B)V

    .line 152
    return-void

    .line 149
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs msetnx([Ljava/lang/String;)V
    .locals 3
    .param p1, "keysvalues"    # [Ljava/lang/String;

    .prologue
    .line 156
    array-length v2, p1

    new-array v0, v2, [[B

    .line 157
    .local v0, "bkeysvalues":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->msetnx([[B)V

    .line 161
    return-void

    .line 158
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public objectEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 897
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->objectEncoding([B)V

    .line 898
    return-void
.end method

.method public objectIdletime(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 892
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->objectIdletime([B)V

    .line 893
    return-void
.end method

.method public objectRefcount(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 887
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->objectRefcount([B)V

    .line 888
    return-void
.end method

.method public persist(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 754
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->persist([B)V

    .line 755
    return-void
.end method

.method public pexpire(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "milliseconds"    # J

    .prologue
    .line 932
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lredis/clients/jedis/Client;->pexpire([BJ)V

    .line 933
    return-void
.end method

.method public pexpireAt(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "millisecondsTimestamp"    # J

    .prologue
    .line 936
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lredis/clients/jedis/Client;->pexpireAt([BJ)V

    .line 937
    return-void
.end method

.method public varargs pfadd(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "elements"    # [Ljava/lang/String;

    .prologue
    .line 1071
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encodeMany([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->pfadd([B[[B)V

    .line 1072
    return-void
.end method

.method public pfcount(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1075
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->pfcount([B)V

    .line 1076
    return-void
.end method

.method public varargs pfcount([Ljava/lang/String;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1079
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encodeMany([Ljava/lang/String;)[[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->pfcount([[B)V

    .line 1080
    return-void
.end method

.method public varargs pfmerge(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "destkey"    # Ljava/lang/String;
    .param p2, "sourcekeys"    # [Ljava/lang/String;

    .prologue
    .line 1083
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encodeMany([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->pfmerge([B[[B)V

    .line 1084
    return-void
.end method

.method public psetex(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "milliseconds"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 949
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p4}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, p2, p3, v1}, Lredis/clients/jedis/Client;->psetex([BJ[B)V

    .line 950
    return-void
.end method

.method public varargs psubscribe([Ljava/lang/String;)V
    .locals 3
    .param p1, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 820
    array-length v2, p1

    new-array v1, v2, [[B

    .line 821
    .local v1, "ps":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 824
    invoke-virtual {p0, v1}, Lredis/clients/jedis/Client;->psubscribe([[B)V

    .line 825
    return-void

    .line 822
    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public pttl(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 940
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->pttl([B)V

    .line 941
    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 808
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->publish([B[B)V

    .line 809
    return-void
.end method

.method public varargs pubsub(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "subcommand"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1004
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [[B

    .line 1005
    .local v0, "arg":[[B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 1008
    const/4 v2, 0x0

    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 1009
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->pubsub([[B)V

    .line 1010
    return-void

    .line 1006
    :cond_0
    add-int/lit8 v2, v1, -0x1

    aget-object v2, p2, v2

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 1005
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public pubsubChannels(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 844
    const-string v0, "channels"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->pubsub(Ljava/lang/String;[Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method public pubsubNumPat()V
    .locals 2

    .prologue
    .line 848
    const-string v0, "numpat"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->pubsub(Ljava/lang/String;[Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method public varargs pubsubNumSub([Ljava/lang/String;)V
    .locals 1
    .param p1, "channels"    # [Ljava/lang/String;

    .prologue
    .line 852
    const-string v0, "numsub"

    invoke-virtual {p0, v0, p1}, Lredis/clients/jedis/Client;->pubsub(Ljava/lang/String;[Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method public varargs punsubscribe([Ljava/lang/String;)V
    .locals 3
    .param p1, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 828
    array-length v2, p1

    new-array v1, v2, [[B

    .line 829
    .local v1, "ps":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 832
    invoke-virtual {p0, v1}, Lredis/clients/jedis/Client;->punsubscribe([[B)V

    .line 833
    return-void

    .line 830
    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 829
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldkey"    # Ljava/lang/String;
    .param p2, "newkey"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->rename([B[B)V

    .line 94
    return-void
.end method

.method public renamenx(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldkey"    # Ljava/lang/String;
    .param p2, "newkey"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->renamenx([B[B)V

    .line 99
    return-void
.end method

.method public restore(Ljava/lang/String;I[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ttl"    # I
    .param p3, "serializedValue"    # [B

    .prologue
    .line 928
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lredis/clients/jedis/Client;->restore([BI[B)V

    .line 929
    return-void
.end method

.method public rpop(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->rpop([B)V

    .line 309
    return-void
.end method

.method public rpoplpush(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "srckey"    # Ljava/lang/String;
    .param p2, "dstkey"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->rpoplpush([B[B)V

    .line 314
    return-void
.end method

.method public varargs rpush(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encodeMany([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->rpush([B[[B)V

    .line 264
    return-void
.end method

.method public varargs rpushx(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;

    .prologue
    .line 759
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p2}, Lredis/clients/jedis/Client;->getByteParams([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->rpushx([B[[B)V

    .line 760
    return-void
.end method

.method public varargs sadd(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encodeMany([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->sadd([B[[B)V

    .line 319
    return-void
.end method

.method public scan(Ljava/lang/String;Lredis/clients/jedis/ScanParams;)V
    .locals 1
    .param p1, "cursor"    # Ljava/lang/String;
    .param p2, "params"    # Lredis/clients/jedis/ScanParams;

    .prologue
    .line 976
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lredis/clients/jedis/Client;->scan([BLredis/clients/jedis/ScanParams;)V

    .line 977
    return-void
.end method

.method public scard(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->scard([B)V

    .line 349
    return-void
.end method

.method public varargs scriptExists([Ljava/lang/String;)V
    .locals 3
    .param p1, "sha1"    # [Ljava/lang/String;

    .prologue
    .line 874
    array-length v2, p1

    new-array v0, v2, [[B

    .line 875
    .local v0, "bsha1":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 878
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->scriptExists([[B)V

    .line 879
    return-void

    .line 876
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 875
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public scriptLoad(Ljava/lang/String;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 882
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->scriptLoad([B)V

    .line 883
    return-void
.end method

.method public varargs sdiff([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 394
    array-length v2, p1

    new-array v0, v2, [[B

    .line 395
    .local v0, "bkeys":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 398
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->sdiff([[B)V

    .line 399
    return-void

    .line 396
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs sdiffstore(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 403
    array-length v2, p2

    new-array v0, v2, [[B

    .line 404
    .local v0, "bkeys":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 407
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lredis/clients/jedis/Client;->sdiffstore([B[[B)V

    .line 408
    return-void

    .line 405
    :cond_0
    aget-object v2, p2, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs sentinel([Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 916
    array-length v2, p1

    new-array v0, v2, [[B

    .line 917
    .local v0, "arg":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 920
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->sentinel([[B)V

    .line 921
    return-void

    .line 918
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 917
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->set([B[B)V

    .line 50
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/params/set/SetParams;

    .prologue
    .line 54
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lredis/clients/jedis/Client;->set([B[BLredis/clients/jedis/params/set/SetParams;)V

    .line 55
    return-void
.end method

.method public setbit(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 785
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p4}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, p2, p3, v1}, Lredis/clients/jedis/Client;->setbit([BJ[B)V

    .line 786
    return-void
.end method

.method public setbit(Ljava/lang/String;JZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .prologue
    .line 780
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lredis/clients/jedis/Client;->setbit([BJZ)V

    .line 781
    return-void
.end method

.method public setex(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "seconds"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lredis/clients/jedis/Client;->setex([BI[B)V

    .line 143
    return-void
.end method

.method public setnx(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->setnx([B[B)V

    .line 138
    return-void
.end method

.method public setrange(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 799
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p4}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, p2, p3, v1}, Lredis/clients/jedis/Client;->setrange([BJ[B)V

    .line 800
    return-void
.end method

.method public varargs sinter([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 358
    array-length v2, p1

    new-array v0, v2, [[B

    .line 359
    .local v0, "bkeys":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 362
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->sinter([[B)V

    .line 363
    return-void

    .line 360
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs sinterstore(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 367
    array-length v2, p2

    new-array v0, v2, [[B

    .line 368
    .local v0, "bkeys":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 371
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lredis/clients/jedis/Client;->sinterstore([B[[B)V

    .line 372
    return-void

    .line 369
    :cond_0
    aget-object v2, p2, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sismember(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->sismember([B[B)V

    .line 354
    return-void
.end method

.method public smembers(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->smembers([B)V

    .line 324
    return-void
.end method

.method public smove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "srckey"    # Ljava/lang/String;
    .param p2, "dstkey"    # Ljava/lang/String;
    .param p3, "member"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->smove([B[B[B)V

    .line 344
    return-void
.end method

.method public sort(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 504
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->sort([B)V

    .line 505
    return-void
.end method

.method public sort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dstkey"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->sort([B[B)V

    .line 539
    return-void
.end method

.method public sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;

    .prologue
    .line 509
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lredis/clients/jedis/Client;->sort([BLredis/clients/jedis/SortingParams;)V

    .line 510
    return-void
.end method

.method public sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .param p3, "dstkey"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lredis/clients/jedis/Client;->sort([BLredis/clients/jedis/SortingParams;[B)V

    .line 534
    return-void
.end method

.method public spop(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->spop([B)V

    .line 334
    return-void
.end method

.method public spop(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # J

    .prologue
    .line 338
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lredis/clients/jedis/Client;->spop([BJ)V

    .line 339
    return-void
.end method

.method public srandmember(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->srandmember([B)V

    .line 413
    return-void
.end method

.method public srandmember(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 953
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lredis/clients/jedis/Client;->srandmember([BI)V

    .line 954
    return-void
.end method

.method public varargs srem(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;

    .prologue
    .line 328
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encodeMany([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->srem([B[[B)V

    .line 329
    return-void
.end method

.method public sscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;

    .prologue
    .line 986
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lredis/clients/jedis/Client;->sscan([B[BLredis/clients/jedis/ScanParams;)V

    .line 987
    return-void
.end method

.method public strlen(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 744
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->strlen([B)V

    .line 745
    return-void
.end method

.method public varargs subscribe([Ljava/lang/String;)V
    .locals 3
    .param p1, "channels"    # [Ljava/lang/String;

    .prologue
    .line 836
    array-length v2, p1

    new-array v0, v2, [[B

    .line 837
    .local v0, "cs":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 840
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->subscribe([[B)V

    .line 841
    return-void

    .line 838
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public substr(Ljava/lang/String;II)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 190
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lredis/clients/jedis/Client;->substr([BII)V

    .line 191
    return-void
.end method

.method public varargs sunion([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 376
    array-length v2, p1

    new-array v0, v2, [[B

    .line 377
    .local v0, "bkeys":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 380
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->sunion([[B)V

    .line 381
    return-void

    .line 378
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs sunionstore(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 385
    array-length v2, p2

    new-array v0, v2, [[B

    .line 386
    .local v0, "bkeys":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 389
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lredis/clients/jedis/Client;->sunionstore([B[[B)V

    .line 390
    return-void

    .line 387
    :cond_0
    aget-object v2, p2, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public ttl(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->ttl([B)V

    .line 114
    return-void
.end method

.method public type(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->type([B)V

    .line 84
    return-void
.end method

.method public varargs unsubscribe([Ljava/lang/String;)V
    .locals 3
    .param p1, "channels"    # [Ljava/lang/String;

    .prologue
    .line 812
    array-length v2, p1

    new-array v0, v2, [[B

    .line 813
    .local v0, "cs":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 816
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->unsubscribe([[B)V

    .line 817
    return-void

    .line 814
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs watch([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 495
    array-length v2, p1

    new-array v0, v2, [[B

    .line 496
    .local v0, "bargs":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 499
    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->watch([[B)V

    .line 500
    return-void

    .line 497
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public zadd(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p4}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, p2, p3, v1}, Lredis/clients/jedis/Client;->zadd([BD[B)V

    .line 418
    return-void
.end method

.method public zadd(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZAddParams;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;

    .prologue
    .line 423
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p4}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v4

    move-object v0, p0

    move-wide v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zadd([BD[BLredis/clients/jedis/params/sortedset/ZAddParams;)V

    .line 424
    return-void
.end method

.method public zadd(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-direct {p0, p2}, Lredis/clients/jedis/Client;->convertScoreMembersToBinary(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    .line 429
    .local v0, "binaryScoreMembers":Ljava/util/HashMap;, "Ljava/util/HashMap<[BLjava/lang/Double;>;"
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lredis/clients/jedis/Client;->zadd([BLjava/util/Map;)V

    .line 430
    return-void
.end method

.method public zadd(Ljava/lang/String;Ljava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Lredis/clients/jedis/params/sortedset/ZAddParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 434
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-direct {p0, p2}, Lredis/clients/jedis/Client;->convertScoreMembersToBinary(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    .line 435
    .local v0, "binaryScoreMembers":Ljava/util/HashMap;, "Ljava/util/HashMap<[BLjava/lang/Double;>;"
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lredis/clients/jedis/Client;->zadd([BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)V

    .line 436
    return-void
.end method

.method public zcard(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 485
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/jedis/Client;->zcard([B)V

    .line 486
    return-void
.end method

.method public zcount(Ljava/lang/String;DD)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 562
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zcount([B[B[B)V

    .line 563
    return-void
.end method

.method public zcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 567
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zcount([B[B[B)V

    .line 568
    return-void
.end method

.method public zincrby(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p4}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, p2, p3, v1}, Lredis/clients/jedis/Client;->zincrby([BD[B)V

    .line 451
    return-void
.end method

.method public zincrby(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZIncrByParams;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZIncrByParams;

    .prologue
    .line 455
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p4}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v4

    move-object v0, p0

    move-wide v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zincrby([BD[BLredis/clients/jedis/params/sortedset/ZIncrByParams;)V

    .line 456
    return-void
.end method

.method public varargs zinterstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)V
    .locals 3
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [Ljava/lang/String;

    .prologue
    .line 708
    array-length v2, p3

    new-array v0, v2, [[B

    .line 709
    .local v0, "bsets":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 712
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, p2, v0}, Lredis/clients/jedis/Client;->zinterstore([BLredis/clients/jedis/ZParams;[[B)V

    .line 713
    return-void

    .line 710
    :cond_0
    aget-object v2, p3, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs zinterstore(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "sets"    # [Ljava/lang/String;

    .prologue
    .line 699
    array-length v2, p2

    new-array v0, v2, [[B

    .line 700
    .local v0, "bsets":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 703
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lredis/clients/jedis/Client;->zinterstore([B[[B)V

    .line 704
    return-void

    .line 701
    :cond_0
    aget-object v2, p2, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 700
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public zlexcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zlexcount([B[B[B)V

    .line 717
    return-void
.end method

.method public zrange(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 440
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrange([BJJ)V

    .line 441
    return-void
.end method

.method public zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 720
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zrangeByLex([B[B[B)V

    .line 721
    return-void
.end method

.method public zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 725
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByLex([B[B[BII)V

    .line 727
    return-void
.end method

.method public zrangeByScore(Ljava/lang/String;DD)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 572
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zrangeByScore([B[B[B)V

    .line 573
    return-void
.end method

.method public zrangeByScore(Ljava/lang/String;DDII)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I

    .prologue
    .line 583
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    move-object v0, p0

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScore([B[B[BII)V

    .line 584
    return-void
.end method

.method public zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 577
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zrangeByScore([B[B[B)V

    .line 578
    return-void
.end method

.method public zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 605
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScore([B[B[BII)V

    .line 607
    return-void
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;DD)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 588
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores([B[B[B)V

    .line 589
    return-void
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;DDII)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I

    .prologue
    .line 594
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    move-object v0, p0

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores([B[B[BII)V

    .line 596
    return-void
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 611
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    .line 612
    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    .line 611
    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores([B[B[B)V

    .line 613
    return-void
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 618
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    .line 619
    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move v4, p4

    move v5, p5

    .line 618
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeByScoreWithScores([B[B[BII)V

    .line 620
    return-void
.end method

.method public zrangeWithScores(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 475
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrangeWithScores([BJJ)V

    .line 476
    return-void
.end method

.method public zrank(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 460
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->zrank([B[B)V

    .line 461
    return-void
.end method

.method public varargs zrem(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;

    .prologue
    .line 445
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encodeMany([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->zrem([B[[B)V

    .line 446
    return-void
.end method

.method public zremrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 739
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zremrangeByLex([B[B[B)V

    .line 740
    return-void
.end method

.method public zremrangeByRank(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 666
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zremrangeByRank([BJJ)V

    .line 667
    return-void
.end method

.method public zremrangeByScore(Ljava/lang/String;DD)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # D
    .param p4, "end"    # D

    .prologue
    .line 671
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zremrangeByScore([B[B[B)V

    .line 672
    return-void
.end method

.method public zremrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;

    .prologue
    .line 676
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zremrangeByScore([B[B[B)V

    .line 677
    return-void
.end method

.method public zrevrange(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 470
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrange([BJJ)V

    .line 471
    return-void
.end method

.method public zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;

    .prologue
    .line 730
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zrevrangeByLex([B[B[B)V

    .line 731
    return-void
.end method

.method public zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 734
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByLex([B[B[BII)V

    .line 736
    return-void
.end method

.method public zrevrangeByScore(Ljava/lang/String;DD)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D

    .prologue
    .line 600
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zrevrangeByScore([B[B[B)V

    .line 601
    return-void
.end method

.method public zrevrangeByScore(Ljava/lang/String;DDII)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I

    .prologue
    .line 630
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    move-object v0, p0

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScore([B[B[BII)V

    .line 631
    return-void
.end method

.method public zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;

    .prologue
    .line 624
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zrevrangeByScore([B[B[B)V

    .line 625
    return-void
.end method

.method public zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 635
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScore([B[B[BII)V

    .line 637
    return-void
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;DD)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D

    .prologue
    .line 641
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v1

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores([B[B[B)V

    .line 642
    return-void
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;DDII)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I

    .prologue
    .line 653
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2, p3}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v2

    invoke-static {p4, p5}, Lredis/clients/jedis/Protocol;->toByteArray(D)[B

    move-result-object v3

    move-object v0, p0

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores([B[B[BII)V

    .line 655
    return-void
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;

    .prologue
    .line 646
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    .line 647
    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    .line 646
    invoke-virtual {p0, v0, v1, v2}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores([B[B[B)V

    .line 648
    return-void
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 660
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    .line 661
    invoke-static {p3}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move v4, p4

    move v5, p5

    .line 660
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeByScoreWithScores([B[B[BII)V

    .line 662
    return-void
.end method

.method public zrevrangeWithScores(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 480
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Client;->zrevrangeWithScores([BJJ)V

    .line 481
    return-void
.end method

.method public zrevrank(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 465
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->zrevrank([B[B)V

    .line 466
    return-void
.end method

.method public zscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;

    .prologue
    .line 991
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lredis/clients/jedis/Client;->zscan([B[BLredis/clients/jedis/ScanParams;)V

    .line 992
    return-void
.end method

.method public zscore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 490
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/Client;->zscore([B[B)V

    .line 491
    return-void
.end method

.method public varargs zunionstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)V
    .locals 3
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "params"    # Lredis/clients/jedis/ZParams;
    .param p3, "sets"    # [Ljava/lang/String;

    .prologue
    .line 690
    array-length v2, p3

    new-array v0, v2, [[B

    .line 691
    .local v0, "bsets":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 694
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, p2, v0}, Lredis/clients/jedis/Client;->zunionstore([BLredis/clients/jedis/ZParams;[[B)V

    .line 695
    return-void

    .line 692
    :cond_0
    aget-object v2, p3, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs zunionstore(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "dstkey"    # Ljava/lang/String;
    .param p2, "sets"    # [Ljava/lang/String;

    .prologue
    .line 681
    array-length v2, p2

    new-array v0, v2, [[B

    .line 682
    .local v0, "bsets":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 685
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lredis/clients/jedis/Client;->zunionstore([B[[B)V

    .line 686
    return-void

    .line 683
    :cond_0
    aget-object v2, p2, v1

    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 682
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

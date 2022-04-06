.class public Lredis/clients/util/Sharded;
.super Ljava/lang/Object;
.source "Sharded.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "S:",
        "Lredis/clients/util/ShardInfo",
        "<TR;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_KEY_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_WEIGHT:I = 0x1


# instance fields
.field private final algo:Lredis/clients/util/Hashing;

.field private nodes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "TS;>;"
        }
    .end annotation
.end field

.field private final resources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lredis/clients/util/ShardInfo",
            "<TR;>;TR;>;"
        }
    .end annotation
.end field

.field private tagPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "\\{(.+?)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lredis/clients/util/Sharded;->DEFAULT_KEY_TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lredis/clients/util/Sharded;, "Lredis/clients/util/Sharded<TR;TS;>;"
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<TS;>;"
    sget-object v0, Lredis/clients/util/Hashing;->MURMUR_HASH:Lredis/clients/util/Hashing;

    invoke-direct {p0, p1, v0}, Lredis/clients/util/Sharded;-><init>(Ljava/util/List;Lredis/clients/util/Hashing;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/regex/Pattern;)V
    .locals 1
    .param p2, "tagPattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TS;>;",
            "Ljava/util/regex/Pattern;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lredis/clients/util/Sharded;, "Lredis/clients/util/Sharded<TR;TS;>;"
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<TS;>;"
    sget-object v0, Lredis/clients/util/Hashing;->MURMUR_HASH:Lredis/clients/util/Hashing;

    invoke-direct {p0, p1, v0, p2}, Lredis/clients/util/Sharded;-><init>(Ljava/util/List;Lredis/clients/util/Hashing;Ljava/util/regex/Pattern;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lredis/clients/util/Hashing;)V
    .locals 1
    .param p2, "algo"    # Lredis/clients/util/Hashing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TS;>;",
            "Lredis/clients/util/Hashing;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lredis/clients/util/Sharded;, "Lredis/clients/util/Sharded<TR;TS;>;"
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lredis/clients/util/Sharded;->resources:Ljava/util/Map;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/util/Sharded;->tagPattern:Ljava/util/regex/Pattern;

    .line 35
    iput-object p2, p0, Lredis/clients/util/Sharded;->algo:Lredis/clients/util/Hashing;

    .line 36
    invoke-direct {p0, p1}, Lredis/clients/util/Sharded;->initialize(Ljava/util/List;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lredis/clients/util/Hashing;Ljava/util/regex/Pattern;)V
    .locals 1
    .param p2, "algo"    # Lredis/clients/util/Hashing;
    .param p3, "tagPattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TS;>;",
            "Lredis/clients/util/Hashing;",
            "Ljava/util/regex/Pattern;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lredis/clients/util/Sharded;, "Lredis/clients/util/Sharded<TR;TS;>;"
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lredis/clients/util/Sharded;->resources:Ljava/util/Map;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/util/Sharded;->tagPattern:Ljava/util/regex/Pattern;

    .line 46
    iput-object p2, p0, Lredis/clients/util/Sharded;->algo:Lredis/clients/util/Hashing;

    .line 47
    iput-object p3, p0, Lredis/clients/util/Sharded;->tagPattern:Ljava/util/regex/Pattern;

    .line 48
    invoke-direct {p0, p1}, Lredis/clients/util/Sharded;->initialize(Ljava/util/List;)V

    .line 49
    return-void
.end method

.method private initialize(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lredis/clients/util/Sharded;, "Lredis/clients/util/Sharded<TR;TS;>;"
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<TS;>;"
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    iput-object v3, p0, Lredis/clients/util/Sharded;->nodes:Ljava/util/TreeMap;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 64
    return-void

    .line 55
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lredis/clients/util/ShardInfo;

    .line 56
    .local v2, "shardInfo":Lredis/clients/util/ShardInfo;, "TS;"
    invoke-virtual {v2}, Lredis/clients/util/ShardInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    invoke-virtual {v2}, Lredis/clients/util/ShardInfo;->getWeight()I

    move-result v3

    mul-int/lit16 v3, v3, 0xa0

    if-lt v1, v3, :cond_2

    .line 62
    :cond_1
    iget-object v3, p0, Lredis/clients/util/Sharded;->resources:Ljava/util/Map;

    invoke-virtual {v2}, Lredis/clients/util/ShardInfo;->createResource()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_2
    iget-object v3, p0, Lredis/clients/util/Sharded;->nodes:Ljava/util/TreeMap;

    iget-object v4, p0, Lredis/clients/util/Sharded;->algo:Lredis/clients/util/Hashing;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SHARD-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-NODE-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lredis/clients/util/Hashing;->hash(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    .end local v1    # "n":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "n":I
    :goto_2
    invoke-virtual {v2}, Lredis/clients/util/ShardInfo;->getWeight()I

    move-result v3

    mul-int/lit16 v3, v3, 0xa0

    if-ge v1, v3, :cond_1

    .line 60
    iget-object v3, p0, Lredis/clients/util/Sharded;->nodes:Ljava/util/TreeMap;

    iget-object v4, p0, Lredis/clients/util/Sharded;->algo:Lredis/clients/util/Hashing;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lredis/clients/util/ShardInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lredis/clients/util/ShardInfo;->getWeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lredis/clients/util/Hashing;->hash(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getAllShardInfo()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lredis/clients/util/Sharded;, "Lredis/clients/util/Sharded<TR;TS;>;"
    iget-object v0, p0, Lredis/clients/util/Sharded;->nodes:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAllShards()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lredis/clients/util/Sharded;, "Lredis/clients/util/Sharded<TR;TS;>;"
    iget-object v0, p0, Lredis/clients/util/Sharded;->resources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getKeyTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 94
    .local p0, "this":Lredis/clients/util/Sharded;, "Lredis/clients/util/Sharded<TR;TS;>;"
    iget-object v1, p0, Lredis/clients/util/Sharded;->tagPattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lredis/clients/util/Sharded;->tagPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 96
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 98
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local p1    # "key":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getShard(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lredis/clients/util/Sharded;, "Lredis/clients/util/Sharded<TR;TS;>;"
    iget-object v0, p0, Lredis/clients/util/Sharded;->resources:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lredis/clients/util/Sharded;->getShardInfo(Ljava/lang/String;)Lredis/clients/util/ShardInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getShard([B)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TR;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lredis/clients/util/Sharded;, "Lredis/clients/util/Sharded<TR;TS;>;"
    iget-object v0, p0, Lredis/clients/util/Sharded;->resources:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lredis/clients/util/Sharded;->getShardInfo([B)Lredis/clients/util/ShardInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getShardInfo(Ljava/lang/String;)Lredis/clients/util/ShardInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lredis/clients/util/Sharded;, "Lredis/clients/util/Sharded<TR;TS;>;"
    invoke-virtual {p0, p1}, Lredis/clients/util/Sharded;->getKeyTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/util/Sharded;->getShardInfo([B)Lredis/clients/util/ShardInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShardInfo([B)Lredis/clients/util/ShardInfo;
    .locals 4
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TS;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lredis/clients/util/Sharded;, "Lredis/clients/util/Sharded<TR;TS;>;"
    iget-object v1, p0, Lredis/clients/util/Sharded;->nodes:Ljava/util/TreeMap;

    iget-object v2, p0, Lredis/clients/util/Sharded;->algo:Lredis/clients/util/Hashing;

    invoke-interface {v2, p1}, Lredis/clients/util/Hashing;->hash([B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 76
    .local v0, "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;TS;>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lredis/clients/util/Sharded;->nodes:Ljava/util/TreeMap;

    iget-object v2, p0, Lredis/clients/util/Sharded;->nodes:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lredis/clients/util/ShardInfo;

    .line 79
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lredis/clients/util/ShardInfo;

    goto :goto_0
.end method

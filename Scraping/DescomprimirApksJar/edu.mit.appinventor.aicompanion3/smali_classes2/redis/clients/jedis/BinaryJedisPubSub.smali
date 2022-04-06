.class public abstract Lredis/clients/jedis/BinaryJedisPubSub;
.super Ljava/lang/Object;
.source "BinaryJedisPubSub.java"


# instance fields
.field private client:Lredis/clients/jedis/Client;

.field private subscribedChannels:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->subscribedChannels:I

    .line 15
    return-void
.end method

.method private process(Lredis/clients/jedis/Client;)V
    .locals 9
    .param p1, "client"    # Lredis/clients/jedis/Client;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 87
    :cond_0
    invoke-virtual {p1}, Lredis/clients/jedis/Client;->getRawObjectMultiBulkReply()Ljava/util/List;

    move-result-object v4

    .line 88
    .local v4, "reply":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 89
    .local v3, "firstObj":Ljava/lang/Object;
    instance-of v6, v3, [B

    if-nez v6, :cond_1

    .line 90
    new-instance v6, Lredis/clients/jedis/exceptions/JedisException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unknown message type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object v5, v3

    .line 92
    check-cast v5, [B

    .line 93
    .local v5, "resp":[B
    sget-object v6, Lredis/clients/jedis/Protocol$Keyword;->SUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v6, v6, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    iput v6, p0, Lredis/clients/jedis/BinaryJedisPubSub;->subscribedChannels:I

    .line 95
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 96
    .local v0, "bchannel":[B
    iget v6, p0, Lredis/clients/jedis/BinaryJedisPubSub;->subscribedChannels:I

    invoke-virtual {p0, v0, v6}, Lredis/clients/jedis/BinaryJedisPubSub;->onSubscribe([BI)V

    .line 121
    .end local v0    # "bchannel":[B
    :goto_0
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedisPubSub;->isSubscribed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 122
    return-void

    .line 97
    :cond_2
    sget-object v6, Lredis/clients/jedis/Protocol$Keyword;->UNSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v6, v6, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 98
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    iput v6, p0, Lredis/clients/jedis/BinaryJedisPubSub;->subscribedChannels:I

    .line 99
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 100
    .restart local v0    # "bchannel":[B
    iget v6, p0, Lredis/clients/jedis/BinaryJedisPubSub;->subscribedChannels:I

    invoke-virtual {p0, v0, v6}, Lredis/clients/jedis/BinaryJedisPubSub;->onUnsubscribe([BI)V

    goto :goto_0

    .line 101
    .end local v0    # "bchannel":[B
    :cond_3
    sget-object v6, Lredis/clients/jedis/Protocol$Keyword;->MESSAGE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v6, v6, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 102
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 103
    .restart local v0    # "bchannel":[B
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 104
    .local v1, "bmesg":[B
    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/BinaryJedisPubSub;->onMessage([B[B)V

    goto :goto_0

    .line 105
    .end local v0    # "bchannel":[B
    .end local v1    # "bmesg":[B
    :cond_4
    sget-object v6, Lredis/clients/jedis/Protocol$Keyword;->PMESSAGE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v6, v6, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 106
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 107
    .local v2, "bpattern":[B
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 108
    .restart local v0    # "bchannel":[B
    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 109
    .restart local v1    # "bmesg":[B
    invoke-virtual {p0, v2, v0, v1}, Lredis/clients/jedis/BinaryJedisPubSub;->onPMessage([B[B[B)V

    goto :goto_0

    .line 110
    .end local v0    # "bchannel":[B
    .end local v1    # "bmesg":[B
    .end local v2    # "bpattern":[B
    :cond_5
    sget-object v6, Lredis/clients/jedis/Protocol$Keyword;->PSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v6, v6, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 111
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    iput v6, p0, Lredis/clients/jedis/BinaryJedisPubSub;->subscribedChannels:I

    .line 112
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 113
    .restart local v2    # "bpattern":[B
    iget v6, p0, Lredis/clients/jedis/BinaryJedisPubSub;->subscribedChannels:I

    invoke-virtual {p0, v2, v6}, Lredis/clients/jedis/BinaryJedisPubSub;->onPSubscribe([BI)V

    goto/16 :goto_0

    .line 114
    .end local v2    # "bpattern":[B
    :cond_6
    sget-object v6, Lredis/clients/jedis/Protocol$Keyword;->PUNSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v6, v6, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 115
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    iput v6, p0, Lredis/clients/jedis/BinaryJedisPubSub;->subscribedChannels:I

    .line 116
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 117
    .restart local v2    # "bpattern":[B
    iget v6, p0, Lredis/clients/jedis/BinaryJedisPubSub;->subscribedChannels:I

    invoke-virtual {p0, v2, v6}, Lredis/clients/jedis/BinaryJedisPubSub;->onPUnsubscribe([BI)V

    goto/16 :goto_0

    .line 119
    .end local v2    # "bpattern":[B
    :cond_7
    new-instance v6, Lredis/clients/jedis/exceptions/JedisException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unknown message type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public getSubscribedChannels()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->subscribedChannels:I

    return v0
.end method

.method public isSubscribed()Z
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->subscribedChannels:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMessage([B[B)V
    .locals 0
    .param p1, "channel"    # [B
    .param p2, "message"    # [B

    .prologue
    .line 20
    return-void
.end method

.method public onPMessage([B[B[B)V
    .locals 0
    .param p1, "pattern"    # [B
    .param p2, "channel"    # [B
    .param p3, "message"    # [B

    .prologue
    .line 23
    return-void
.end method

.method public onPSubscribe([BI)V
    .locals 0
    .param p1, "pattern"    # [B
    .param p2, "subscribedChannels"    # I

    .prologue
    .line 35
    return-void
.end method

.method public onPUnsubscribe([BI)V
    .locals 0
    .param p1, "pattern"    # [B
    .param p2, "subscribedChannels"    # I

    .prologue
    .line 32
    return-void
.end method

.method public onSubscribe([BI)V
    .locals 0
    .param p1, "channel"    # [B
    .param p2, "subscribedChannels"    # I

    .prologue
    .line 26
    return-void
.end method

.method public onUnsubscribe([BI)V
    .locals 0
    .param p1, "channel"    # [B
    .param p2, "subscribedChannels"    # I

    .prologue
    .line 29
    return-void
.end method

.method public varargs proceed(Lredis/clients/jedis/Client;[[B)V
    .locals 0
    .param p1, "client"    # Lredis/clients/jedis/Client;
    .param p2, "channels"    # [[B

    .prologue
    .line 79
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    .line 80
    invoke-virtual {p1, p2}, Lredis/clients/jedis/Client;->subscribe([[B)V

    .line 81
    invoke-virtual {p1}, Lredis/clients/jedis/Client;->flush()V

    .line 82
    invoke-direct {p0, p1}, Lredis/clients/jedis/BinaryJedisPubSub;->process(Lredis/clients/jedis/Client;)V

    .line 83
    return-void
.end method

.method public varargs proceedWithPatterns(Lredis/clients/jedis/Client;[[B)V
    .locals 0
    .param p1, "client"    # Lredis/clients/jedis/Client;
    .param p2, "patterns"    # [[B

    .prologue
    .line 72
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    .line 73
    invoke-virtual {p1, p2}, Lredis/clients/jedis/Client;->psubscribe([[B)V

    .line 74
    invoke-virtual {p1}, Lredis/clients/jedis/Client;->flush()V

    .line 75
    invoke-direct {p0, p1}, Lredis/clients/jedis/BinaryJedisPubSub;->process(Lredis/clients/jedis/Client;)V

    .line 76
    return-void
.end method

.method public varargs psubscribe([[B)V
    .locals 1
    .param p1, "patterns"    # [[B

    .prologue
    .line 53
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->psubscribe([[B)V

    .line 54
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flush()V

    .line 55
    return-void
.end method

.method public punsubscribe()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->punsubscribe()V

    .line 59
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flush()V

    .line 60
    return-void
.end method

.method public varargs punsubscribe([[B)V
    .locals 1
    .param p1, "patterns"    # [[B

    .prologue
    .line 63
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->punsubscribe([[B)V

    .line 64
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flush()V

    .line 65
    return-void
.end method

.method public varargs subscribe([[B)V
    .locals 1
    .param p1, "channels"    # [[B

    .prologue
    .line 48
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->subscribe([[B)V

    .line 49
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flush()V

    .line 50
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->unsubscribe()V

    .line 39
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flush()V

    .line 40
    return-void
.end method

.method public varargs unsubscribe([[B)V
    .locals 1
    .param p1, "channels"    # [[B

    .prologue
    .line 43
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->unsubscribe([[B)V

    .line 44
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flush()V

    .line 45
    return-void
.end method

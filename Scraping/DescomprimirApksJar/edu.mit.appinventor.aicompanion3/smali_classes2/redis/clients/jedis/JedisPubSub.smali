.class public abstract Lredis/clients/jedis/JedisPubSub;
.super Ljava/lang/Object;
.source "JedisPubSub.java"


# static fields
.field private static final JEDIS_SUBSCRIPTION_MESSAGE:Ljava/lang/String; = "JedisPubSub is not subscribed to a Jedis instance."


# instance fields
.field private volatile client:Lredis/clients/jedis/Client;

.field private subscribedChannels:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lredis/clients/jedis/JedisPubSub;->subscribedChannels:I

    .line 18
    return-void
.end method

.method private process(Lredis/clients/jedis/Client;)V
    .locals 13
    .param p1, "client"    # Lredis/clients/jedis/Client;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 123
    :cond_0
    invoke-virtual {p1}, Lredis/clients/jedis/Client;->getRawObjectMultiBulkReply()Ljava/util/List;

    move-result-object v4

    .line 124
    .local v4, "reply":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 125
    .local v3, "firstObj":Ljava/lang/Object;
    instance-of v9, v3, [B

    if-nez v9, :cond_1

    .line 126
    new-instance v9, Lredis/clients/jedis/exceptions/JedisException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unknown message type: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    move-object v5, v3

    .line 128
    check-cast v5, [B

    .line 129
    .local v5, "resp":[B
    sget-object v9, Lredis/clients/jedis/Protocol$Keyword;->SUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v9, v9, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-static {v9, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 130
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v9

    iput v9, p0, Lredis/clients/jedis/JedisPubSub;->subscribedChannels:I

    .line 131
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 132
    .local v0, "bchannel":[B
    if-nez v0, :cond_2

    move-object v6, v10

    .line 133
    .local v6, "strchannel":Ljava/lang/String;
    :goto_0
    iget v9, p0, Lredis/clients/jedis/JedisPubSub;->subscribedChannels:I

    invoke-virtual {p0, v6, v9}, Lredis/clients/jedis/JedisPubSub;->onSubscribe(Ljava/lang/String;I)V

    .line 170
    .end local v0    # "bchannel":[B
    .end local v6    # "strchannel":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lredis/clients/jedis/JedisPubSub;->isSubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 173
    iput-object v10, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    .line 174
    return-void

    .line 132
    .restart local v0    # "bchannel":[B
    :cond_2
    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 134
    .end local v0    # "bchannel":[B
    :cond_3
    sget-object v9, Lredis/clients/jedis/Protocol$Keyword;->UNSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v9, v9, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-static {v9, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 135
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v9

    iput v9, p0, Lredis/clients/jedis/JedisPubSub;->subscribedChannels:I

    .line 136
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 137
    .restart local v0    # "bchannel":[B
    if-nez v0, :cond_4

    move-object v6, v10

    .line 138
    .restart local v6    # "strchannel":Ljava/lang/String;
    :goto_2
    iget v9, p0, Lredis/clients/jedis/JedisPubSub;->subscribedChannels:I

    invoke-virtual {p0, v6, v9}, Lredis/clients/jedis/JedisPubSub;->onUnsubscribe(Ljava/lang/String;I)V

    goto :goto_1

    .line 137
    .end local v6    # "strchannel":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 139
    .end local v0    # "bchannel":[B
    :cond_5
    sget-object v9, Lredis/clients/jedis/Protocol$Keyword;->MESSAGE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v9, v9, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-static {v9, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 140
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 141
    .restart local v0    # "bchannel":[B
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 142
    .local v1, "bmesg":[B
    if-nez v0, :cond_6

    move-object v6, v10

    .line 143
    .restart local v6    # "strchannel":Ljava/lang/String;
    :goto_3
    if-nez v1, :cond_7

    move-object v7, v10

    .line 144
    .local v7, "strmesg":Ljava/lang/String;
    :goto_4
    invoke-virtual {p0, v6, v7}, Lredis/clients/jedis/JedisPubSub;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    .end local v6    # "strchannel":Ljava/lang/String;
    .end local v7    # "strmesg":Ljava/lang/String;
    :cond_6
    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 143
    .restart local v6    # "strchannel":Ljava/lang/String;
    :cond_7
    invoke-static {v1}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 145
    .end local v0    # "bchannel":[B
    .end local v1    # "bmesg":[B
    .end local v6    # "strchannel":Ljava/lang/String;
    :cond_8
    sget-object v9, Lredis/clients/jedis/Protocol$Keyword;->PMESSAGE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v9, v9, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-static {v9, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 146
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 147
    .local v2, "bpattern":[B
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 148
    .restart local v0    # "bchannel":[B
    const/4 v9, 0x3

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 149
    .restart local v1    # "bmesg":[B
    if-nez v2, :cond_9

    move-object v8, v10

    .line 150
    .local v8, "strpattern":Ljava/lang/String;
    :goto_5
    if-nez v0, :cond_a

    move-object v6, v10

    .line 151
    .restart local v6    # "strchannel":Ljava/lang/String;
    :goto_6
    if-nez v1, :cond_b

    move-object v7, v10

    .line 152
    .restart local v7    # "strmesg":Ljava/lang/String;
    :goto_7
    invoke-virtual {p0, v8, v6, v7}, Lredis/clients/jedis/JedisPubSub;->onPMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 149
    .end local v6    # "strchannel":Ljava/lang/String;
    .end local v7    # "strmesg":Ljava/lang/String;
    .end local v8    # "strpattern":Ljava/lang/String;
    :cond_9
    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 150
    .restart local v8    # "strpattern":Ljava/lang/String;
    :cond_a
    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 151
    .restart local v6    # "strchannel":Ljava/lang/String;
    :cond_b
    invoke-static {v1}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 153
    .end local v0    # "bchannel":[B
    .end local v1    # "bmesg":[B
    .end local v2    # "bpattern":[B
    .end local v6    # "strchannel":Ljava/lang/String;
    .end local v8    # "strpattern":Ljava/lang/String;
    :cond_c
    sget-object v9, Lredis/clients/jedis/Protocol$Keyword;->PSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v9, v9, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-static {v9, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 154
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v9

    iput v9, p0, Lredis/clients/jedis/JedisPubSub;->subscribedChannels:I

    .line 155
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 156
    .restart local v2    # "bpattern":[B
    if-nez v2, :cond_d

    move-object v8, v10

    .line 157
    .restart local v8    # "strpattern":Ljava/lang/String;
    :goto_8
    iget v9, p0, Lredis/clients/jedis/JedisPubSub;->subscribedChannels:I

    invoke-virtual {p0, v8, v9}, Lredis/clients/jedis/JedisPubSub;->onPSubscribe(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 156
    .end local v8    # "strpattern":Ljava/lang/String;
    :cond_d
    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    .line 158
    .end local v2    # "bpattern":[B
    :cond_e
    sget-object v9, Lredis/clients/jedis/Protocol$Keyword;->PUNSUBSCRIBE:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v9, v9, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-static {v9, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 159
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v9

    iput v9, p0, Lredis/clients/jedis/JedisPubSub;->subscribedChannels:I

    .line 160
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 161
    .restart local v2    # "bpattern":[B
    if-nez v2, :cond_f

    move-object v8, v10

    .line 162
    .restart local v8    # "strpattern":Ljava/lang/String;
    :goto_9
    iget v9, p0, Lredis/clients/jedis/JedisPubSub;->subscribedChannels:I

    invoke-virtual {p0, v8, v9}, Lredis/clients/jedis/JedisPubSub;->onPUnsubscribe(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 161
    .end local v8    # "strpattern":Ljava/lang/String;
    :cond_f
    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    .line 163
    .end local v2    # "bpattern":[B
    :cond_10
    sget-object v9, Lredis/clients/jedis/Protocol$Keyword;->PONG:Lredis/clients/jedis/Protocol$Keyword;

    iget-object v9, v9, Lredis/clients/jedis/Protocol$Keyword;->raw:[B

    invoke-static {v9, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 164
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 165
    .restart local v2    # "bpattern":[B
    if-nez v2, :cond_11

    move-object v8, v10

    .line 166
    .restart local v8    # "strpattern":Ljava/lang/String;
    :goto_a
    invoke-virtual {p0, v8}, Lredis/clients/jedis/JedisPubSub;->onPong(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 165
    .end local v8    # "strpattern":Ljava/lang/String;
    :cond_11
    invoke-static {v2}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    .line 168
    .end local v2    # "bpattern":[B
    :cond_12
    new-instance v9, Lredis/clients/jedis/exceptions/JedisException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unknown message type: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;)V

    throw v9
.end method


# virtual methods
.method public getSubscribedChannels()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lredis/clients/jedis/JedisPubSub;->subscribedChannels:I

    return v0
.end method

.method public isSubscribed()Z
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lredis/clients/jedis/JedisPubSub;->subscribedChannels:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method

.method public onPMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    return-void
.end method

.method public onPSubscribe(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "subscribedChannels"    # I

    .prologue
    .line 40
    return-void
.end method

.method public onPUnsubscribe(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "subscribedChannels"    # I

    .prologue
    .line 37
    return-void
.end method

.method public onPong(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method

.method public onSubscribe(Ljava/lang/String;I)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "subscribedChannels"    # I

    .prologue
    .line 31
    return-void
.end method

.method public onUnsubscribe(Ljava/lang/String;I)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "subscribedChannels"    # I

    .prologue
    .line 34
    return-void
.end method

.method public ping()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lredis/clients/jedis/exceptions/JedisConnectionException;

    const-string v1, "JedisPubSub is not subscribed to a Jedis instance."

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->ping()V

    .line 99
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flush()V

    .line 100
    return-void
.end method

.method public varargs proceed(Lredis/clients/jedis/Client;[Ljava/lang/String;)V
    .locals 0
    .param p1, "client"    # Lredis/clients/jedis/Client;
    .param p2, "channels"    # [Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    .line 115
    invoke-virtual {p1, p2}, Lredis/clients/jedis/Client;->subscribe([Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lredis/clients/jedis/Client;->flush()V

    .line 117
    invoke-direct {p0, p1}, Lredis/clients/jedis/JedisPubSub;->process(Lredis/clients/jedis/Client;)V

    .line 118
    return-void
.end method

.method public varargs proceedWithPatterns(Lredis/clients/jedis/Client;[Ljava/lang/String;)V
    .locals 0
    .param p1, "client"    # Lredis/clients/jedis/Client;
    .param p2, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    .line 108
    invoke-virtual {p1, p2}, Lredis/clients/jedis/Client;->psubscribe([Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lredis/clients/jedis/Client;->flush()V

    .line 110
    invoke-direct {p0, p1}, Lredis/clients/jedis/JedisPubSub;->process(Lredis/clients/jedis/Client;)V

    .line 111
    return-void
.end method

.method public varargs psubscribe([Ljava/lang/String;)V
    .locals 2
    .param p1, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lredis/clients/jedis/exceptions/JedisConnectionException;

    const-string v1, "JedisPubSub is not subscribed to a Jedis instance."

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->psubscribe([Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flush()V

    .line 76
    return-void
.end method

.method public punsubscribe()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lredis/clients/jedis/exceptions/JedisConnectionException;

    const-string v1, "JedisPubSub is not subscribed to a Jedis instance."

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->punsubscribe()V

    .line 83
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flush()V

    .line 84
    return-void
.end method

.method public varargs punsubscribe([Ljava/lang/String;)V
    .locals 2
    .param p1, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lredis/clients/jedis/exceptions/JedisConnectionException;

    const-string v1, "JedisPubSub is not subscribed to a Jedis instance."

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->punsubscribe([Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flush()V

    .line 92
    return-void
.end method

.method public varargs subscribe([Ljava/lang/String;)V
    .locals 2
    .param p1, "channels"    # [Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lredis/clients/jedis/exceptions/JedisConnectionException;

    const-string v1, "JedisPubSub is not subscribed to a Jedis instance."

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->subscribe([Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flush()V

    .line 68
    return-void
.end method

.method public unsubscribe()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lredis/clients/jedis/exceptions/JedisConnectionException;

    const-string v1, "JedisPubSub is not subscribed to a Jedis instance."

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->unsubscribe()V

    .line 51
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flush()V

    .line 52
    return-void
.end method

.method public varargs unsubscribe([Ljava/lang/String;)V
    .locals 2
    .param p1, "channels"    # [Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lredis/clients/jedis/exceptions/JedisConnectionException;

    const-string v1, "JedisPubSub is not subscribed to a Jedis instance."

    invoke-direct {v0, v1}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/Client;->unsubscribe([Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lredis/clients/jedis/JedisPubSub;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->flush()V

    .line 60
    return-void
.end method

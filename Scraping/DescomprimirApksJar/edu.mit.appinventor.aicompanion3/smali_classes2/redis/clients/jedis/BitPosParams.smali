.class public Lredis/clients/jedis/BitPosParams;
.super Ljava/lang/Object;
.source "BitPosParams.java"


# instance fields
.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/BitPosParams;->params:Ljava/util/List;

    .line 12
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "start"    # J

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/BitPosParams;->params:Ljava/util/List;

    .line 15
    iget-object v0, p0, Lredis/clients/jedis/BitPosParams;->params:Ljava/util/List;

    invoke-static {p1, p2}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BitPosParams;-><init>(J)V

    .line 21
    iget-object v0, p0, Lredis/clients/jedis/BitPosParams;->params:Ljava/util/List;

    invoke-static {p3, p4}, Lredis/clients/jedis/Protocol;->toByteArray(J)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lredis/clients/jedis/BitPosParams;->params:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

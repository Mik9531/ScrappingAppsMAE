.class Lredis/clients/jedis/ShardedJedisPipeline$FutureResult;
.super Ljava/lang/Object;
.source "ShardedJedisPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/jedis/ShardedJedisPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FutureResult"
.end annotation


# instance fields
.field private client:Lredis/clients/jedis/Client;


# direct methods
.method public constructor <init>(Lredis/clients/jedis/Client;)V
    .locals 0
    .param p1, "client"    # Lredis/clients/jedis/Client;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lredis/clients/jedis/ShardedJedisPipeline$FutureResult;->client:Lredis/clients/jedis/Client;

    .line 18
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lredis/clients/jedis/ShardedJedisPipeline$FutureResult;->client:Lredis/clients/jedis/Client;

    invoke-virtual {v0}, Lredis/clients/jedis/Client;->getOne()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

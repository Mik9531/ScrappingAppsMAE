.class public Lredis/clients/jedis/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cursor:[B

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lredis/clients/jedis/ScanResult;, "Lredis/clients/jedis/ScanResult<TT;>;"
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lredis/clients/jedis/ScanResult;-><init>([BLjava/util/List;)V

    .line 13
    return-void
.end method

.method public constructor <init>([BLjava/util/List;)V
    .locals 0
    .param p1, "cursor"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lredis/clients/jedis/ScanResult;, "Lredis/clients/jedis/ScanResult<TT;>;"
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lredis/clients/jedis/ScanResult;->cursor:[B

    .line 17
    iput-object p2, p0, Lredis/clients/jedis/ScanResult;->results:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public getCursor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lredis/clients/jedis/ScanResult;, "Lredis/clients/jedis/ScanResult<TT;>;"
    iget-object v0, p0, Lredis/clients/jedis/ScanResult;->cursor:[B

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCursorAsBytes()[B
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lredis/clients/jedis/ScanResult;, "Lredis/clients/jedis/ScanResult<TT;>;"
    iget-object v0, p0, Lredis/clients/jedis/ScanResult;->cursor:[B

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lredis/clients/jedis/ScanResult;, "Lredis/clients/jedis/ScanResult<TT;>;"
    iget-object v0, p0, Lredis/clients/jedis/ScanResult;->results:Ljava/util/List;

    return-object v0
.end method

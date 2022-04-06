.class public abstract Lredis/clients/util/ShardInfo;
.super Ljava/lang/Object;
.source "ShardInfo.java"


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
.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Lredis/clients/util/ShardInfo;, "Lredis/clients/util/ShardInfo<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 9
    .local p0, "this":Lredis/clients/util/ShardInfo;, "Lredis/clients/util/ShardInfo<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lredis/clients/util/ShardInfo;->weight:I

    .line 11
    return-void
.end method


# virtual methods
.method protected abstract createResource()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lredis/clients/util/ShardInfo;, "Lredis/clients/util/ShardInfo<TT;>;"
    iget v0, p0, Lredis/clients/util/ShardInfo;->weight:I

    return v0
.end method

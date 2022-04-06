.class public Lredis/clients/jedis/BinaryJedis$SetFromList;
.super Ljava/util/AbstractSet;
.source "BinaryJedis.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/jedis/BinaryJedis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SetFromList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x278e778e3ce3ebe4L


# instance fields
.field private final transient list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 3628
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 3629
    if-nez p1, :cond_0

    .line 3630
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "list"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3632
    :cond_0
    iput-object p1, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    .line 3633
    return-void
.end method

.method protected static of(Ljava/util/List;)Lredis/clients/jedis/BinaryJedis$SetFromList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;)",
            "Lredis/clients/jedis/BinaryJedis$SetFromList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3724
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Lredis/clients/jedis/BinaryJedis$SetFromList;

    invoke-direct {v0, p0}, Lredis/clients/jedis/BinaryJedis$SetFromList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 3662
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryJedis$SetFromList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 3637
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3638
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3652
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3710
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    const/4 v1, 0x0

    .line 3692
    if-ne p1, p0, :cond_1

    .line 3693
    const/4 v1, 0x1

    .line 3705
    :cond_0
    :goto_0
    return v1

    .line 3696
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 3700
    check-cast v0, Ljava/util/Collection;

    .line 3701
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3705
    invoke-virtual {p0, v0}, Lredis/clients/jedis/BinaryJedis$SetFromList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 3687
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3647
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3667
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3657
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3715
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3720
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3642
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3672
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 3677
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3682
    .local p0, "this":Lredis/clients/jedis/BinaryJedis$SetFromList;, "Lredis/clients/jedis/BinaryJedis$SetFromList<TE;>;"
    iget-object v0, p0, Lredis/clients/jedis/BinaryJedis$SetFromList;->list:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

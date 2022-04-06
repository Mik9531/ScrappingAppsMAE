.class public final Lredis/clients/util/KeyMergeUtil;
.super Ljava/lang/Object;
.source "KeyMergeUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/InstantiationError;

    const-string v1, "Must not instantiate this class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static merge(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "destKey"    # Ljava/lang/String;
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 9
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 10
    .local v0, "mergedKeys":[Ljava/lang/String;
    aput-object p0, v0, v3

    .line 11
    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    return-object v0
.end method

.method public static merge([B[[B)[[B
    .locals 4
    .param p0, "destKey"    # [B
    .param p1, "keys"    # [[B

    .prologue
    const/4 v3, 0x0

    .line 16
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [[B

    .line 17
    .local v0, "mergedKeys":[[B
    aput-object p0, v0, v3

    .line 18
    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    return-object v0
.end method

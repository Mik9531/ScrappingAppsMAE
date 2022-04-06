.class Lredis/clients/util/Hashing$1;
.super Ljava/lang/Object;
.source "Hashing.java"

# interfaces
.implements Lredis/clients/util/Hashing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/util/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public hash(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {p1}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lredis/clients/util/Hashing$1;->hash([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public hash([B)J
    .locals 10
    .param p1, "key"    # [B

    .prologue
    .line 19
    :try_start_0
    sget-object v3, Lredis/clients/util/Hashing$1;->md5Holder:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 20
    sget-object v3, Lredis/clients/util/Hashing$1;->md5Holder:Ljava/lang/ThreadLocal;

    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_0
    sget-object v3, Lredis/clients/util/Hashing$1;->md5Holder:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    .line 27
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 28
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 29
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 30
    .local v0, "bKey":[B
    const/4 v3, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v8, v3

    const/16 v3, 0x10

    shl-long/2addr v8, v3

    or-long/2addr v6, v8

    .line 31
    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v8, v3

    const/16 v3, 0x8

    shl-long/2addr v8, v3

    .line 30
    or-long/2addr v6, v8

    .line 31
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v8, v3

    .line 30
    or-long v4, v6, v8

    .line 32
    .local v4, "res":J
    return-wide v4

    .line 22
    .end local v0    # "bKey":[B
    .end local v2    # "md5":Ljava/security/MessageDigest;
    .end local v4    # "res":J
    :catch_0
    move-exception v1

    .line 23
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "++++ no md5 algorithm found"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

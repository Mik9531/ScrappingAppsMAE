.class public interface abstract Lredis/clients/util/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# static fields
.field public static final MD5:Lredis/clients/util/Hashing;

.field public static final MURMUR_HASH:Lredis/clients/util/Hashing;

.field public static final md5Holder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lredis/clients/util/MurmurHash;

    invoke-direct {v0}, Lredis/clients/util/MurmurHash;-><init>()V

    sput-object v0, Lredis/clients/util/Hashing;->MURMUR_HASH:Lredis/clients/util/Hashing;

    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lredis/clients/util/Hashing;->md5Holder:Ljava/lang/ThreadLocal;

    .line 10
    new-instance v0, Lredis/clients/util/Hashing$1;

    invoke-direct {v0}, Lredis/clients/util/Hashing$1;-><init>()V

    sput-object v0, Lredis/clients/util/Hashing;->MD5:Lredis/clients/util/Hashing;

    .line 34
    return-void
.end method


# virtual methods
.method public abstract hash(Ljava/lang/String;)J
.end method

.method public abstract hash([B)J
.end method

.class Lorg/apache/commons/pool2/impl/PoolImplUtils;
.super Ljava/lang/Object;
.source "PoolImplUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFactoryType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/commons/pool2/PooledObjectFactory;",
            ">;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "factory":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/commons/pool2/PooledObjectFactory;>;"
    const-class v0, Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-static {v0, p0}, Lorg/apache/commons/pool2/impl/PoolImplUtils;->getGenericType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method private static getGenericType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v8, 0x0

    .line 61
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 62
    .local v1, "interfaces":[Ljava/lang/reflect/Type;
    array-length v9, v1

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v0, v1, v7

    .line 64
    .local v0, "iface":Ljava/lang/reflect/Type;
    instance-of v6, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_1

    move-object v2, v0

    .line 65
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 67
    .local v2, "pi":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Class;

    if-eqz v6, :cond_1

    .line 68
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {p0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v6, v6, v8

    .line 69
    invoke-static {p1, v6}, Lorg/apache/commons/pool2/impl/PoolImplUtils;->getTypeParameter(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 97
    .end local v0    # "iface":Ljava/lang/reflect/Type;
    .end local v2    # "pi":Ljava/lang/reflect/ParameterizedType;
    :cond_0
    :goto_1
    return-object v3

    .line 62
    .restart local v0    # "iface":Ljava/lang/reflect/Type;
    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 79
    .end local v0    # "iface":Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 81
    .local v5, "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {p0, v5}, Lorg/apache/commons/pool2/impl/PoolImplUtils;->getGenericType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 82
    .local v3, "result":Ljava/lang/Object;
    instance-of v6, v3, Ljava/lang/Class;

    if-nez v6, :cond_0

    .line 86
    instance-of v6, v3, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    .line 91
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 93
    .local v4, "superClassType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    check-cast v3, Ljava/lang/Integer;

    .line 94
    .end local v3    # "result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    .line 92
    invoke-static {p1, v6}, Lorg/apache/commons/pool2/impl/PoolImplUtils;->getTypeParameter(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 97
    .end local v4    # "superClassType":Ljava/lang/reflect/ParameterizedType;
    .restart local v3    # "result":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getTypeParameter(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .param p1, "argType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 123
    .end local p1    # "argType":Ljava/lang/reflect/Type;
    :goto_0
    return-object p1

    .line 117
    .restart local p1    # "argType":Ljava/lang/reflect/Type;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 118
    .local v1, "tvs":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 119
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 118
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

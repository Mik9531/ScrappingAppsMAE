.class public Lorg/shaded/apache/http/message/BasicHeaderElement;
.super Ljava/lang/Object;
.source "BasicHeaderElement.java"

# interfaces
.implements Lorg/shaded/apache/http/HeaderElement;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameters:[Lorg/shaded/apache/http/NameValuePair;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/shaded/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/shaded/apache/http/NameValuePair;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/shaded/apache/http/NameValuePair;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "parameters"    # [Lorg/shaded/apache/http/NameValuePair;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    .line 70
    if-eqz p3, :cond_1

    .line 71
    iput-object p3, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->parameters:[Lorg/shaded/apache/http/NameValuePair;

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/shaded/apache/http/NameValuePair;

    iput-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->parameters:[Lorg/shaded/apache/http/NameValuePair;

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 125
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    goto :goto_0

    .line 126
    :cond_2
    instance-of v3, p1, Lorg/shaded/apache/http/HeaderElement;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 127
    check-cast v0, Lorg/shaded/apache/http/message/BasicHeaderElement;

    .line 128
    .local v0, "that":Lorg/shaded/apache/http/message/BasicHeaderElement;
    iget-object v3, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/shaded/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    iget-object v4, v0, Lorg/shaded/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/shaded/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->parameters:[Lorg/shaded/apache/http/NameValuePair;

    iget-object v4, v0, Lorg/shaded/apache/http/message/BasicHeaderElement;->parameters:[Lorg/shaded/apache/http/NameValuePair;

    invoke-static {v3, v4}, Lorg/shaded/apache/http/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(I)Lorg/shaded/apache/http/NameValuePair;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->parameters:[Lorg/shaded/apache/http/NameValuePair;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParameterByName(Ljava/lang/String;)Lorg/shaded/apache/http/NameValuePair;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Name may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_0
    const/4 v1, 0x0

    .line 113
    .local v1, "found":Lorg/shaded/apache/http/NameValuePair;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->parameters:[Lorg/shaded/apache/http/NameValuePair;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 114
    iget-object v3, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->parameters:[Lorg/shaded/apache/http/NameValuePair;

    aget-object v0, v3, v2

    .line 115
    .local v0, "current":Lorg/shaded/apache/http/NameValuePair;
    invoke-interface {v0}, Lorg/shaded/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    move-object v1, v0

    .line 120
    .end local v0    # "current":Lorg/shaded/apache/http/NameValuePair;
    :cond_1
    return-object v1

    .line 113
    .restart local v0    # "current":Lorg/shaded/apache/http/NameValuePair;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getParameterCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->parameters:[Lorg/shaded/apache/http/NameValuePair;

    array-length v0, v0

    return v0
.end method

.method public getParameters()[Lorg/shaded/apache/http/NameValuePair;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->parameters:[Lorg/shaded/apache/http/NameValuePair;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/shaded/apache/http/NameValuePair;

    check-cast v0, [Lorg/shaded/apache/http/NameValuePair;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 137
    const/16 v0, 0x11

    .line 138
    .local v0, "hash":I
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/shaded/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 139
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/shaded/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->parameters:[Lorg/shaded/apache/http/NameValuePair;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 141
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->parameters:[Lorg/shaded/apache/http/NameValuePair;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lorg/shaded/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lorg/shaded/apache/http/util/CharArrayBuffer;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 148
    .local v0, "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 150
    const-string v2, "="

    invoke-virtual {v0, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 153
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->parameters:[Lorg/shaded/apache/http/NameValuePair;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 154
    const-string v2, "; "

    invoke-virtual {v0, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElement;->parameters:[Lorg/shaded/apache/http/NameValuePair;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/Object;)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

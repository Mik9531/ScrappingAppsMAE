.class public Lcom/google/api/services/fusiontables/FusiontablesRequest;
.super Lcom/google/api/client/http/json/JsonHttpRequest;
.source "FusiontablesRequest.java"


# instance fields
.field private alt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fields:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private oauthToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "oauth_token"
    .end annotation
.end field

.field private prettyPrint:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private quotaUser:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private userIp:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/api/client/http/json/JsonHttpRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->alt:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->fields:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->oauthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPrettyPrint()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->prettyPrint:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getQuotaUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->quotaUser:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->userIp:Ljava/lang/String;

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->alt:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->fields:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->key:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->oauthToken:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->prettyPrint:Ljava/lang/Boolean;

    .line 62
    return-object p0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->quotaUser:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/api/services/fusiontables/FusiontablesRequest;->userIp:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.class public Lcom/google/api/services/fusiontables/Fusiontables;
.super Lcom/google/api/client/googleapis/services/GoogleClient;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fusiontables/Fusiontables$Builder;,
        Lcom/google/api/services/fusiontables/Fusiontables$Table;,
        Lcom/google/api/services/fusiontables/Fusiontables$Template;,
        Lcom/google/api/services/fusiontables/Fusiontables$Style;,
        Lcom/google/api/services/fusiontables/Fusiontables$Query;,
        Lcom/google/api/services/fusiontables/Fusiontables$Column;
    }
.end annotation


# static fields
.field public static final DEFAULT_BASE_PATH:Ljava/lang/String; = "/fusiontables/v1/"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_BASE_URL:Ljava/lang/String; = "https://www.googleapis.com/fusiontables/v1/"

.field public static final DEFAULT_ROOT_URL:Ljava/lang/String; = "https://www.googleapis.com/"

.field public static final DEFAULT_SERVICE_PATH:Ljava/lang/String; = "fusiontables/v1/"


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    invoke-direct/range {p0 .. p7}, Lcom/google/api/client/googleapis/services/GoogleClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct/range {p0 .. p8}, Lcom/google/api/client/googleapis/services/GoogleClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    const-string v0, "https://www.googleapis.com/fusiontables/v1/"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/api/client/googleapis/services/GoogleClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 6

    .prologue
    .line 132
    const-string v3, "https://www.googleapis.com/"

    const-string v4, "fusiontables/v1/"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/services/GoogleClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 133
    return-void
.end method

.method public static builder(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    const-string v2, "https://www.googleapis.com/fusiontables/v1/"

    invoke-direct {v1, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;)V

    return-object v0
.end method


# virtual methods
.method public column()Lcom/google/api/services/fusiontables/Fusiontables$Column;
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Column;

    invoke-direct {v0, p0}, Lcom/google/api/services/fusiontables/Fusiontables$Column;-><init>(Lcom/google/api/services/fusiontables/Fusiontables;)V

    return-object v0
.end method

.method protected initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/GoogleClient;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 198
    return-void
.end method

.method public query()Lcom/google/api/services/fusiontables/Fusiontables$Query;
    .locals 1

    .prologue
    .line 989
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Query;

    invoke-direct {v0, p0}, Lcom/google/api/services/fusiontables/Fusiontables$Query;-><init>(Lcom/google/api/services/fusiontables/Fusiontables;)V

    return-object v0
.end method

.method public style()Lcom/google/api/services/fusiontables/Fusiontables$Style;
    .locals 1

    .prologue
    .line 1300
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Style;

    invoke-direct {v0, p0}, Lcom/google/api/services/fusiontables/Fusiontables$Style;-><init>(Lcom/google/api/services/fusiontables/Fusiontables;)V

    return-object v0
.end method

.method public table()Lcom/google/api/services/fusiontables/Fusiontables$Table;
    .locals 1

    .prologue
    .line 2830
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Table;

    invoke-direct {v0, p0}, Lcom/google/api/services/fusiontables/Fusiontables$Table;-><init>(Lcom/google/api/services/fusiontables/Fusiontables;)V

    return-object v0
.end method

.method public template()Lcom/google/api/services/fusiontables/Fusiontables$Template;
    .locals 1

    .prologue
    .line 2065
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Template;

    invoke-direct {v0, p0}, Lcom/google/api/services/fusiontables/Fusiontables$Template;-><init>(Lcom/google/api/services/fusiontables/Fusiontables;)V

    return-object v0
.end method

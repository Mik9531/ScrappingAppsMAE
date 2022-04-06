.class public Lcom/google/api/services/fusiontables/Fusiontables$Query;
.super Ljava/lang/Object;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Query"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;,
        Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/fusiontables/Fusiontables;


# direct methods
.method public constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables;)V
    .locals 0

    .prologue
    .line 995
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1161
    return-void
.end method


# virtual methods
.method public sql(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1155
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Query;Ljava/lang/String;)V

    .line 1156
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 1157
    return-object v0
.end method

.method public sqlGet(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1010
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Query$SqlGet;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Query;Ljava/lang/String;)V

    .line 1011
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Query;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 1012
    return-object v0
.end method

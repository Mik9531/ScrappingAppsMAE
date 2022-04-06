.class public Lcom/google/api/services/fusiontables/Fusiontables$Table;
.super Ljava/lang/Object;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Table"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;,
        Lcom/google/api/services/fusiontables/Fusiontables$Table$Patch;,
        Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;,
        Lcom/google/api/services/fusiontables/Fusiontables$Table$List;,
        Lcom/google/api/services/fusiontables/Fusiontables$Table$Get;,
        Lcom/google/api/services/fusiontables/Fusiontables$Table$Insert;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/fusiontables/Fusiontables;


# direct methods
.method public constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables;)V
    .locals 0

    .prologue
    .line 2836
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3439
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3433
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Delete;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Table;Ljava/lang/String;)V

    .line 3434
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 3435
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Get;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2941
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Get;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Get;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Table;Ljava/lang/String;)V

    .line 2942
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 2943
    return-object v0
.end method

.method public insert(Lcom/google/api/services/fusiontables/model/Table;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Insert;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2851
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Insert;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Insert;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Table;Lcom/google/api/services/fusiontables/model/Table;)V

    .line 2852
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 2853
    return-object v0
.end method

.method public list()Lcom/google/api/services/fusiontables/Fusiontables$Table$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3046
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Table$List;

    invoke-direct {v0, p0}, Lcom/google/api/services/fusiontables/Fusiontables$Table$List;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Table;)V

    .line 3047
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 3048
    return-object v0
.end method

.method public patch(Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Table;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Patch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3303
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Patch;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Patch;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Table;Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Table;)V

    .line 3304
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 3305
    return-object v0
.end method

.method public update(Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Table;)Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3171
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Table$Update;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Table;Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Table;)V

    .line 3172
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Table;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 3173
    return-object v0
.end method

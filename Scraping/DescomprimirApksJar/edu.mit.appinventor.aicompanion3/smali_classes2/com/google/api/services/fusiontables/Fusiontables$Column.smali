.class public Lcom/google/api/services/fusiontables/Fusiontables$Column;
.super Ljava/lang/Object;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fusiontables/Fusiontables$Column$Delete;,
        Lcom/google/api/services/fusiontables/Fusiontables$Column$Patch;,
        Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;,
        Lcom/google/api/services/fusiontables/Fusiontables$Column$List;,
        Lcom/google/api/services/fusiontables/Fusiontables$Column$Get;,
        Lcom/google/api/services/fusiontables/Fusiontables$Column$Insert;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/fusiontables/Fusiontables;


# direct methods
.method public constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 876
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Column$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Column$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Column$Delete;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Column;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 872
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Column$Get;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Column$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Column$Get;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Column;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 356
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Column;)Lcom/google/api/services/fusiontables/Fusiontables$Column$Insert;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Column$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Column$Insert;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Column;Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Column;)V

    .line 247
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 248
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Column$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Column$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Column$List;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Column;Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 479
    return-object v0
.end method

.method public patch(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Column;)Lcom/google/api/services/fusiontables/Fusiontables$Column$Patch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Column$Patch;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/fusiontables/Fusiontables$Column$Patch;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Column;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Column;)V

    .line 746
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 747
    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Column;)Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/fusiontables/Fusiontables$Column$Update;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Column;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Column;)V

    .line 620
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Column;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 621
    return-object v0
.end method

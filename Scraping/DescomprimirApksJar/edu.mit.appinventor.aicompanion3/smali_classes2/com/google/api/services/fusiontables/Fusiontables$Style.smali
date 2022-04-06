.class public Lcom/google/api/services/fusiontables/Fusiontables$Style;
.super Ljava/lang/Object;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fusiontables/Fusiontables$Style$Delete;,
        Lcom/google/api/services/fusiontables/Fusiontables$Style$Patch;,
        Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;,
        Lcom/google/api/services/fusiontables/Fusiontables$Style$List;,
        Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;,
        Lcom/google/api/services/fusiontables/Fusiontables$Style$Insert;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/fusiontables/Fusiontables;


# direct methods
.method public constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables;)V
    .locals 0

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1952
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/Fusiontables$Style$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1946
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Style$Delete;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Style;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1947
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 1948
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1430
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Style$Get;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Style;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1431
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 1432
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/fusiontables/model/StyleSetting;)Lcom/google/api/services/fusiontables/Fusiontables$Style$Insert;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1322
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Style$Insert;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Style;Ljava/lang/String;Lcom/google/api/services/fusiontables/model/StyleSetting;)V

    .line 1323
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 1324
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Style$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1553
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Style$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Style$List;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Style;Ljava/lang/String;)V

    .line 1554
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 1555
    return-object v0
.end method

.method public patch(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/api/services/fusiontables/model/StyleSetting;)Lcom/google/api/services/fusiontables/Fusiontables$Style$Patch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1821
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Patch;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/fusiontables/Fusiontables$Style$Patch;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Style;Ljava/lang/String;Ljava/lang/Integer;Lcom/google/api/services/fusiontables/model/StyleSetting;)V

    .line 1822
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 1823
    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/api/services/fusiontables/model/StyleSetting;)Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1695
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/fusiontables/Fusiontables$Style$Update;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Style;Ljava/lang/String;Ljava/lang/Integer;Lcom/google/api/services/fusiontables/model/StyleSetting;)V

    .line 1696
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Style;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 1697
    return-object v0
.end method

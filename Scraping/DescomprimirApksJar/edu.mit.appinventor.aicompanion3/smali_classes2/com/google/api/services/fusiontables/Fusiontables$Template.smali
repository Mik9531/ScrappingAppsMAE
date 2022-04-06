.class public Lcom/google/api/services/fusiontables/Fusiontables$Template;
.super Ljava/lang/Object;
.source "Fusiontables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fusiontables/Fusiontables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Template"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fusiontables/Fusiontables$Template$Delete;,
        Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;,
        Lcom/google/api/services/fusiontables/Fusiontables$Template$Update;,
        Lcom/google/api/services/fusiontables/Fusiontables$Template$List;,
        Lcom/google/api/services/fusiontables/Fusiontables$Template$Get;,
        Lcom/google/api/services/fusiontables/Fusiontables$Template$Insert;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/fusiontables/Fusiontables;


# direct methods
.method public constructor <init>(Lcom/google/api/services/fusiontables/Fusiontables;)V
    .locals 0

    .prologue
    .line 2071
    iput-object p1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2717
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/Fusiontables$Template$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2711
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Template$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Template$Delete;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Template;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2712
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 2713
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/api/services/fusiontables/Fusiontables$Template$Get;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2195
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Template$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Template$Get;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Template;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2196
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 2197
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Template;)Lcom/google/api/services/fusiontables/Fusiontables$Template$Insert;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2087
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Template$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Template$Insert;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Template;Ljava/lang/String;Lcom/google/api/services/fusiontables/model/Template;)V

    .line 2088
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 2089
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Template$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2318
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Template$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Template$List;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Template;Ljava/lang/String;)V

    .line 2319
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 2320
    return-object v0
.end method

.method public patch(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/api/services/fusiontables/model/Template;)Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2586
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/fusiontables/Fusiontables$Template$Patch;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Template;Ljava/lang/String;Ljava/lang/Integer;Lcom/google/api/services/fusiontables/model/Template;)V

    .line 2587
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 2588
    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/api/services/fusiontables/model/Template;)Lcom/google/api/services/fusiontables/Fusiontables$Template$Update;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2460
    new-instance v0, Lcom/google/api/services/fusiontables/Fusiontables$Template$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/fusiontables/Fusiontables$Template$Update;-><init>(Lcom/google/api/services/fusiontables/Fusiontables$Template;Ljava/lang/String;Ljava/lang/Integer;Lcom/google/api/services/fusiontables/model/Template;)V

    .line 2461
    iget-object v1, p0, Lcom/google/api/services/fusiontables/Fusiontables$Template;->this$0:Lcom/google/api/services/fusiontables/Fusiontables;

    invoke-virtual {v1, v0}, Lcom/google/api/services/fusiontables/Fusiontables;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 2462
    return-object v0
.end method

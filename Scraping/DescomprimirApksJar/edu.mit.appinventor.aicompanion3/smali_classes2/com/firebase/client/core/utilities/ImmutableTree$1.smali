.class Lcom/firebase/client/core/utilities/ImmutableTree$1;
.super Ljava/lang/Object;
.source "ImmutableTree.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/utilities/ImmutableTree;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/utilities/ImmutableTree;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/utilities/ImmutableTree;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 262
    .local p0, "this":Lcom/firebase/client/core/utilities/ImmutableTree$1;, "Lcom/firebase/client/core/utilities/ImmutableTree.1;"
    iput-object p1, p0, Lcom/firebase/client/core/utilities/ImmutableTree$1;->this$0:Lcom/firebase/client/core/utilities/ImmutableTree;

    iput-object p2, p0, Lcom/firebase/client/core/utilities/ImmutableTree$1;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/firebase/client/core/Path;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 262
    .local p0, "this":Lcom/firebase/client/core/utilities/ImmutableTree$1;, "Lcom/firebase/client/core/utilities/ImmutableTree.1;"
    check-cast p3, Ljava/lang/Void;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/firebase/client/core/utilities/ImmutableTree$1;->onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "relativePath"    # Lcom/firebase/client/core/Path;
    .param p3, "accum"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "TT;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lcom/firebase/client/core/utilities/ImmutableTree$1;, "Lcom/firebase/client/core/utilities/ImmutableTree.1;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

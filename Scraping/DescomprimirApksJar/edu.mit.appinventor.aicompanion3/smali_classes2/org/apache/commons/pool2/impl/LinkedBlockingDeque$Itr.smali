.class Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Itr;
.super Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque",
        "<TE;>.AbstractItr;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)V
    .locals 0

    .prologue
    .line 1301
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Itr;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>.Itr;"
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Itr;->this$0:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;-><init>(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;
    .param p2, "x1"    # Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$1;

    .prologue
    .line 1301
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Itr;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>.Itr;"
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Itr;-><init>(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method firstNode()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1303
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Itr;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>.Itr;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Itr;->this$0:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-static {v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->access$400(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    move-result-object v0

    return-object v0
.end method

.method nextNode(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1305
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Itr;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>.Itr;"
    .local p1, "n":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    return-object v0
.end method

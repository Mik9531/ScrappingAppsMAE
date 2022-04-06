.class final Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field prev:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;",
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    .local p1, "x":Ljava/lang/Object;, "TE;"
    .local p2, "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    .local p3, "n":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 124
    iput-object p2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->prev:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 125
    iput-object p3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 126
    return-void
.end method

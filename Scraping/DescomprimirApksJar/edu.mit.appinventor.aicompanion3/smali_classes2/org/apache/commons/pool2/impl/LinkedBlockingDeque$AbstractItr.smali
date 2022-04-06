.class abstract Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;"
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

.field nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)V
    .locals 2

    .prologue
    .line 1218
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>.AbstractItr;"
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->this$0:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1220
    invoke-static {p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->access$200(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 1222
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->firstNode()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 1223
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    invoke-static {p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->access$200(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    .line 1227
    return-void

    .line 1223
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    iget-object v0, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1225
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->access$200(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.method private succ(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    .locals 2
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
    .line 1240
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>.AbstractItr;"
    .local p1, "n":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->nextNode(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    move-result-object v0

    .line 1241
    .local v0, "s":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_1

    .line 1242
    const/4 v0, 0x0

    .line 1246
    .end local v0    # "s":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :cond_0
    :goto_1
    return-object v0

    .line 1243
    .restart local v0    # "s":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1245
    if-ne v0, p1, :cond_2

    .line 1246
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->firstNode()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    move-result-object v0

    goto :goto_1

    .line 1248
    :cond_2
    move-object p1, v0

    .line 1249
    goto :goto_0
.end method


# virtual methods
.method advance()V
    .locals 2

    .prologue
    .line 1256
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->this$0:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-static {v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->access$200(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 1259
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    invoke-direct {p0, v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->succ(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 1260
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->this$0:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-static {v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->access$200(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    .line 1264
    return-void

    .line 1260
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    iget-object v0, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1262
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->this$0:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-static {v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->access$200(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.method abstract firstNode()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1268
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1273
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    if-nez v1, :cond_0

    .line 1274
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1276
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->lastRet:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 1277
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    .line 1278
    .local v0, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->advance()V

    .line 1279
    return-object v0
.end method

.method abstract nextNode(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 1284
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->lastRet:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 1285
    .local v0, "n":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_0

    .line 1286
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1288
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->lastRet:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 1289
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->this$0:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-static {v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->access$200(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 1291
    :try_start_0
    iget-object v1, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1292
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->this$0:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-static {v1, v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->access$300(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->this$0:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-static {v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->access$200(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    .line 1297
    return-void

    .line 1295
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;->this$0:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-static {v2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->access$200(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v1
.end method

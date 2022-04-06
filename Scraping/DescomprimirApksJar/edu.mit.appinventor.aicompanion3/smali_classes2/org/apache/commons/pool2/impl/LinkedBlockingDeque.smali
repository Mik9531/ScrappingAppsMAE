.class Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Deque;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$DescendingItr;,
        Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Itr;,
        Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$AbstractItr;,
        Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56223931da801daL


# instance fields
.field private final capacity:I

.field private transient count:I

.field private transient first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;-><init>(I)V

    .line 164
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 183
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;-><init>(IZ)V

    .line 184
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "fairness"    # Z

    .prologue
    .line 195
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 196
    if-gtz p1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 199
    :cond_0
    iput p1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->capacity:I

    .line 200
    new-instance v0, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-direct {v0, p2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    .line 201
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 202
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const v1, 0x7fffffff

    invoke-direct {p0, v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;-><init>(I)V

    .line 217
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 219
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 220
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_1

    .line 221
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v1

    .line 223
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->linkLast(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Deque full"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    .line 230
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fairness"    # Z

    .prologue
    .line 173
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;-><init>(IZ)V

    .line 174
    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;
    .param p1, "x1"    # Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->unlink(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;)Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    return-object v0
.end method

.method private linkFirst(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    iget v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->capacity:I

    if-lt v2, v3, :cond_0

    .line 245
    const/4 v2, 0x0

    .line 257
    :goto_0
    return v2

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 248
    .local v0, "f":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    new-instance v1, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)V

    .line 249
    .local v1, "x":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    iput-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 250
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    if-nez v2, :cond_1

    .line 251
    iput-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 255
    :goto_1
    iget v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    .line 256
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 257
    const/4 v2, 0x1

    goto :goto_0

    .line 253
    :cond_1
    iput-object v1, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->prev:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private linkLast(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    iget v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->capacity:I

    if-lt v2, v3, :cond_0

    .line 270
    const/4 v2, 0x0

    .line 282
    :goto_0
    return v2

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 273
    .local v0, "l":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    new-instance v1, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)V

    .line 274
    .local v1, "x":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    iput-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 275
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    if-nez v2, :cond_1

    .line 276
    iput-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 280
    :goto_1
    iget v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    .line 281
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 282
    const/4 v2, 0x1

    goto :goto_0

    .line 278
    :cond_1
    iput-object v1, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 1347
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1348
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    .line 1349
    iput-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 1350
    iput-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 1354
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1355
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 1360
    return-void

    .line 1358
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private unlink(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "x":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, p1, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->prev:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 345
    .local v1, "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 346
    .local v0, "n":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    .line 347
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    .line 359
    :goto_0
    return-void

    .line 348
    :cond_0
    if-nez v0, :cond_1

    .line 349
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    goto :goto_0

    .line 351
    :cond_1
    iput-object v0, v1, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 352
    iput-object v1, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->prev:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 353
    const/4 v2, 0x0

    iput-object v2, p1, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 356
    iget v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    .line 357
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0
.end method

.method private unlinkFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 292
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 293
    .local v0, "f":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_0

    move-object v1, v3

    .line 308
    :goto_0
    return-object v1

    .line 296
    :cond_0
    iget-object v2, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 297
    .local v2, "n":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 298
    .local v1, "item":Ljava/lang/Object;, "TE;"
    iput-object v3, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 299
    iput-object v0, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 300
    iput-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 301
    if-nez v2, :cond_1

    .line 302
    iput-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 306
    :goto_1
    iget v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    .line 307
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 304
    :cond_1
    iput-object v3, v2, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->prev:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private unlinkLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 318
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 319
    .local v1, "l":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    move-object v0, v3

    .line 334
    :goto_0
    return-object v0

    .line 322
    :cond_0
    iget-object v2, v1, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->prev:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 323
    .local v2, "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, v1, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 324
    .local v0, "item":Ljava/lang/Object;, "TE;"
    iput-object v3, v1, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 325
    iput-object v1, v1, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->prev:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 326
    iput-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 327
    if-nez v2, :cond_1

    .line 328
    iput-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 332
    :goto_1
    iget v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    .line 333
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 330
    :cond_1
    iput-object v3, v2, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1325
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 1328
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1330
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .local v0, "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 1331
    iget-object v1, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1330
    iget-object v0, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    goto :goto_0

    .line 1334
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    .line 1338
    return-void

    .line 1336
    .end local v0    # "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 756
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 757
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 1133
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 1135
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .local v0, "f":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 1136
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 1137
    iget-object v1, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 1138
    .local v1, "n":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->prev:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 1139
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 1140
    move-object v0, v1

    .line 1141
    goto :goto_0

    .line 1142
    .end local v1    # "n":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    iput-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .line 1143
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    .line 1144
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    .line 1148
    return-void

    .line 1146
    .end local v0    # "f":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    const/4 v1, 0x0

    .line 1007
    if-nez p1, :cond_0

    .line 1019
    :goto_0
    return v1

    .line 1010
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 1012
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .local v0, "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 1013
    iget-object v2, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1014
    const/4 v1, 0x1

    .line 1019
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    goto :goto_0

    .line 1012
    :cond_1
    :try_start_1
    iget-object v0, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1019
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1172
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    new-instance v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$DescendingItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$DescendingItr;-><init>(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 924
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 925
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 927
    :cond_0
    if-ne p1, p0, :cond_1

    .line 928
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 930
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 932
    :try_start_0
    iget v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 933
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 934
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    iget-object v2, v2, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 935
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return v1

    .end local v0    # "i":I
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v2
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 864
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    .line 673
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 674
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 676
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 684
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    .line 685
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 686
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 688
    :cond_0
    return-object v0
.end method

.method public getTakeQueueLength()I
    .locals 2

    .prologue
    .line 1386
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 1388
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->getWaitQueueLength(Ljava/util/concurrent/locks/Condition;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1390
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.method public hasTakeWaiters()Z
    .locals 2

    .prologue
    .line 1371
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 1373
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1375
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.method public interuptTakeWaiters()V
    .locals 2

    .prologue
    .line 1400
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 1402
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->interruptWaiters(Ljava/util/concurrent/locks/Condition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    .line 1406
    return-void

    .line 1404
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1164
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    new-instance v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Itr;-><init>(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 765
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 800
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 393
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->linkFirst(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 395
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.method public offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 477
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 479
    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 480
    .local v0, "nanos":J
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lockInterruptibly()V

    .line 482
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->linkFirst(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 483
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 484
    const/4 v2, 0x0

    .line 490
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    :goto_1
    return v2

    .line 486
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 488
    :cond_2
    const/4 v2, 0x1

    .line 490
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v2
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 409
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->linkLast(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 411
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.method public offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 510
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 512
    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 513
    .local v0, "nanos":J
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lockInterruptibly()V

    .line 515
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->linkLast(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 516
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 517
    const/4 v2, 0x0

    .line 523
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    :goto_1
    return v2

    .line 519
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 521
    :cond_2
    const/4 v2, 0x1

    .line 523
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v2
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 869
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 693
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 695
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 697
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return-object v0

    .line 695
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    iget-object v0, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 697
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 705
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 707
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return-object v0

    .line 705
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    iget-object v0, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 820
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 849
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 555
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 557
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.method public pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 624
    .local v0, "nanos":J
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lockInterruptibly()V

    .line 627
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_1

    .line 628
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 629
    const/4 v2, 0x0

    .line 635
    .end local v2    # "x":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    :goto_1
    return-object v2

    .line 631
    .restart local v2    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 635
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    goto :goto_1

    .end local v2    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v3
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 565
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 567
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.method public pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 651
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 652
    .local v0, "nanos":J
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lockInterruptibly()V

    .line 655
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_1

    .line 656
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 657
    const/4 v2, 0x0

    .line 663
    .end local v2    # "x":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    :goto_1
    return-object v2

    .line 659
    .restart local v2    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 663
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v3}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    goto :goto_1

    .end local v2    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v3
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 958
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 950
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 951
    return-void
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->putLast(Ljava/lang/Object;)V

    .line 781
    return-void
.end method

.method public putFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 426
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 430
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->linkFirst(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    .line 436
    return-void
.end method

.method public putLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 449
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 451
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 453
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->linkLast(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    .line 459
    return-void
.end method

.method public remainingCapacity()I
    .locals 2

    .prologue
    .line 886
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 888
    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->capacity:I

    iget v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    .line 890
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 815
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 979
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 533
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 534
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 536
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    const/4 v1, 0x0

    .line 713
    if-nez p1, :cond_0

    .line 726
    :goto_0
    return v1

    .line 716
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 718
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .local v0, "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 719
    iget-object v2, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 720
    invoke-direct {p0, v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->unlink(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    const/4 v1, 0x1

    .line 726
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    goto :goto_0

    .line 718
    :cond_1
    :try_start_1
    iget-object v0, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 726
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 545
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 546
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 548
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    const/4 v1, 0x0

    .line 732
    if-nez p1, :cond_0

    .line 745
    :goto_0
    return v1

    .line 735
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 737
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->last:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .local v0, "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 738
    iget-object v2, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 739
    invoke-direct {p0, v0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->unlink(Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    const/4 v1, 0x1

    .line 745
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    goto :goto_0

    .line 737
    :cond_1
    :try_start_1
    iget-object v0, v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->prev:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 745
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 989
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 991
    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.method public take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 833
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public takeFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 582
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    move-result-object v0

    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 583
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 587
    .end local v0    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v1

    .restart local v0    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return-object v0
.end method

.method public takeLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 602
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    move-result-object v0

    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 603
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 607
    .end local v0    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v1

    .restart local v0    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1079
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 1081
    :try_start_0
    iget v4, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    new-array v0, v4, [Ljava/lang/Object;

    .line 1082
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1083
    .local v1, "k":I
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .local v3, "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v3, :cond_0

    .line 1084
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v4, v3, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v4, v0, v2

    .line 1083
    iget-object v3, v3, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 1088
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return-object v0

    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    .end local v3    # "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v5}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v4
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1098
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 1100
    :try_start_0
    array-length v4, p1

    iget v5, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    if-ge v4, v5, :cond_0

    .line 1102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->count:I

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 1104
    :cond_0
    const/4 v1, 0x0

    .line 1105
    .local v1, "k":I
    iget-object v3, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->first:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    .local v3, "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v3, :cond_1

    .line 1106
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v4, v3, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v4, p1, v2

    .line 1105
    iget-object v3, v3, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;->next:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 1108
    :cond_1
    array-length v4, p1

    if-le v4, v2, :cond_2

    .line 1109
    const/4 v4, 0x0

    aput-object v4, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return-object p1

    .end local v2    # "k":I
    .end local v3    # "p":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v5}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1119
    .local p0, "this":Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;, "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->lock()V

    .line 1121
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractQueue;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1123
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;->lock:Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->unlock()V

    throw v0
.end method

.class public abstract Lcom/google/appinventor/components/runtime/Sprite;
.super Lcom/google/appinventor/components/runtime/VisibleComponent;
.source "Sprite.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:Z = true

.field private static final DEFAULT_HEADING:I = 0x0

.field private static final DEFAULT_INTERVAL:I = 0x64

.field protected static final DEFAULT_ORIGIN_AT_CENTER:Z = false

.field private static final DEFAULT_SPEED:F = 0.0f

.field private static final DEFAULT_VISIBLE:Z = true

.field private static final DEFAULT_Z:D = 1.0

.field private static final LOG_TAG:Ljava/lang/String; = "Sprite"


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field protected final canvas:Lcom/google/appinventor/components/runtime/Canvas;

.field protected form:Lcom/google/appinventor/components/runtime/Form;

.field protected heading:D

.field protected headingCos:D

.field protected headingRadians:D

.field protected headingSin:D

.field protected initialized:Z

.field protected interval:I

.field protected originAtCenter:Z

.field private final registeredCollisions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field protected speed:F

.field private final timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

.field protected userHeading:D

.field protected visible:Z

.field protected xCenter:D

.field protected xLeft:D

.field protected yCenter:D

.field protected yTop:D

.field protected zLayer:D


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V

    .line 145
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/16 v3, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 104
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VisibleComponent;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 65
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 105
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    .line 108
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Canvas;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sprite constructor called with container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 111
    check-cast v0, Lcom/google/appinventor/components/runtime/Canvas;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->addSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    .line 118
    new-instance v0, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-direct {v0, p0, v2, v3, p2}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    .line 120
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 123
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->OriginAtCenter(Z)V

    .line 124
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 125
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled(Z)V

    .line 126
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Interval(I)V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->Speed(F)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible(Z)V

    .line 129
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Z(D)V

    .line 131
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 132
    return-void
.end method

.method public static colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 12
    .param p0, "sprite1"    # Lcom/google/appinventor/components/runtime/Sprite;
    .param p1, "sprite2"    # Lcom/google/appinventor/components/runtime/Sprite;

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    .line 912
    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v0

    .line 913
    .local v0, "rect1":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {p1, v7}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v1

    .line 914
    .local v1, "rect2":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 929
    :cond_0
    :goto_0
    return v6

    .line 922
    :cond_1
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v2

    .local v2, "x":D
    :goto_1
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v8

    cmpg-double v8, v2, v8

    if-gtz v8, :cond_0

    .line 923
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v4

    .local v4, "y":D
    :goto_2
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v8

    cmpg-double v8, v4, v8

    if-gtz v8, :cond_3

    .line 924
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 925
    goto :goto_0

    .line 923
    :cond_2
    add-double/2addr v4, v10

    goto :goto_2

    .line 922
    :cond_3
    add-double/2addr v2, v10

    goto :goto_1
.end method

.method private final overEastEdge(I)Z
    .locals 4
    .param p1, "canvasWidth"    # I

    .prologue
    .line 826
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final overNorthEdge()Z
    .locals 4

    .prologue
    .line 830
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final overSouthEdge(I)Z
    .locals 4
    .param p1, "canvasHeight"    # I

    .prologue
    .line 834
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final overWestEdge()Z
    .locals 4

    .prologue
    .line 822
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateX(D)V
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_0

    .line 313
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->xCenterToLeft(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 319
    :goto_0
    return-void

    .line 316
    :cond_0
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->xLeftToCenter(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    goto :goto_0
.end method

.method private updateY(D)V
    .locals 3
    .param p1, "y"    # D

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_0

    .line 342
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->yCenterToTop(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->yTopToCenter(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    goto :goto_0
.end method

.method private xCenterToLeft(D)D
    .locals 3
    .param p1, "xCenter"    # D

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    sub-double v0, p1, v0

    return-wide v0
.end method

.method private xLeftToCenter(D)D
    .locals 3
    .param p1, "xLeft"    # D

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private yCenterToTop(D)D
    .locals 3
    .param p1, "yCenter"    # D

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    sub-double v0, p1, v0

    return-wide v0
.end method

.method private yTopToCenter(D)D
    .locals 3
    .param p1, "yTop"    # D

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    add-double/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public Bounce(I)V
    .locals 14
    .param p1, "edge"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Makes the %type% bounce, as if off a wall. For normal bouncing, the edge argument should be the one returned by EdgeReached."
    .end annotation

    .prologue
    const-wide v12, 0x4076800000000000L    # 360.0

    const-wide/16 v10, 0x0

    const-wide v8, 0x4070e00000000000L    # 270.0

    const-wide v6, 0x4056800000000000L    # 90.0

    const-wide v4, 0x4066800000000000L    # 180.0

    .line 600
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 603
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    rem-double v0, v2, v12

    .line 606
    .local v0, "normalizedAngle":D
    cmpg-double v2, v0, v10

    if-gez v2, :cond_0

    .line 607
    add-double/2addr v0, v12

    .line 612
    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    cmpg-double v2, v0, v6

    if-ltz v2, :cond_2

    cmpl-double v2, v0, v8

    if-gtz v2, :cond_2

    :cond_1
    const/4 v2, -0x3

    if-ne p1, v2, :cond_4

    cmpl-double v2, v0, v6

    if-lez v2, :cond_4

    cmpg-double v2, v0, v8

    if-gez v2, :cond_4

    .line 616
    :cond_2
    sub-double v2, v4, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 630
    :cond_3
    :goto_0
    return-void

    .line 617
    :cond_4
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    cmpl-double v2, v0, v10

    if-lez v2, :cond_5

    cmpg-double v2, v0, v4

    if-ltz v2, :cond_6

    :cond_5
    const/4 v2, -0x1

    if-ne p1, v2, :cond_7

    cmpl-double v2, v0, v4

    if-lez v2, :cond_7

    .line 620
    :cond_6
    sub-double v2, v12, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    goto :goto_0

    .line 621
    :cond_7
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    cmpl-double v2, v0, v10

    if-lez v2, :cond_8

    cmpg-double v2, v0, v6

    if-ltz v2, :cond_b

    :cond_8
    const/4 v2, -0x4

    if-ne p1, v2, :cond_9

    cmpl-double v2, v0, v6

    if-lez v2, :cond_9

    cmpg-double v2, v0, v4

    if-ltz v2, :cond_b

    :cond_9
    const/4 v2, -0x2

    if-ne p1, v2, :cond_a

    cmpl-double v2, v0, v4

    if-lez v2, :cond_a

    cmpg-double v2, v0, v8

    if-ltz v2, :cond_b

    :cond_a
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    cmpl-double v2, v0, v8

    if-lez v2, :cond_3

    .line 628
    :cond_b
    add-double v2, v4, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    goto :goto_0
.end method

.method public CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 3
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    const-string v0, "CollidedWith"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    :cond_0
    return-void
.end method

.method public CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 1
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Indicates whether a collision has been registered between this %type% and the passed sprite (Ball or ImageSprite)."
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Dragged(FFFFFF)V
    .locals 4
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "prevX"    # F
    .param p4, "prevY"    # F
    .param p5, "currentX"    # F
    .param p6, "currentY"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a %type% is dragged. On all calls, the starting coordinates are where the screen was first touched, and the \"current\" coordinates describe the endpoint of the current line segment. On the first call within a given drag, the \"previous\" coordinates are the same as the starting coordinates; subsequently, they are the \"current\" coordinates from the prior call. Note that the %type% won\'t actually move anywhere in response to the Dragged event unless MoveTo is explicitly called. For smooth movement, each of its coordinates should be set to the sum of its initial value and the difference between its current and previous values."
    .end annotation

    .prologue
    .line 464
    const-string v0, "Dragged"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    return-void
.end method

.method public EdgeReached(I)V
    .locals 4
    .param p1, "edge"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the %type% reaches an edge of the screen. If Bounce is then called with that edge, the %type% will appear to bounce off of the edge it reached. Edge here is represented as an integer that indicates one of eight directions north (1), northeast (2), east (3), southeast (4), south (-1), southwest (-2), west (-3), and northwest (-4)."
    .end annotation

    .prologue
    .line 479
    if-eqz p1, :cond_0

    const/4 v0, -0x4

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    const-string v0, "EdgeReached"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 181
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Controls whether the %type% moves and can be interacted with through collisions, dragging, touching, and flinging."
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled()Z

    move-result v0

    return v0
.end method

.method public Flung(FFFFFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "speed"    # F
    .param p4, "heading"    # F
    .param p5, "xvel"    # F
    .param p6, "yvel"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a fling gesture (quick swipe) is made on an enabled %type%. This provides the x and y coordinates of the start of the fling (relative to the upper left of the canvas), the speed (pixels per millisecond), the heading (0-360 degrees), and the x and y velocity components of the fling\'s vector."
    .end annotation

    .prologue
    .line 541
    const-string v0, "Flung"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    return-void
.end method

.method public Heading()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the %type%\'s heading in degrees above the positive x-axis.  Zero degrees is toward the right of the screen; 90 degrees is toward the top of the screen."
    .end annotation

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    return-wide v0
.end method

.method public Heading(D)V
    .locals 3
    .param p1, "userHeading"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 195
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    .line 197
    neg-double v0, p1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->heading:D

    .line 198
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->heading:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    .line 199
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    .line 200
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    .line 202
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 203
    return-void
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 150
    return-void
.end method

.method public Interval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The interval in milliseconds at which the %type%\'s position is updated.  For example, if the interval is 50 and the speed is 10, then every 50 milliseconds the sprite will move 10 pixels in the heading direction."
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval()I

    move-result v0

    return v0
.end method

.method public Interval(I)V
    .locals 1
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval(I)V

    .line 242
    return-void
.end method

.method public MoveIntoBounds()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the %type% back in bounds if part of it extends out of bounds, having no effect otherwise. If the %type% is too wide to fit on the canvas, this aligns the left side of the %type% with the left side of the canvas. If the %type% is too tall to fit on the canvas, this aligns the top side of the %type% with the top side of the canvas."
    .end annotation

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->moveIntoBounds(II)V

    .line 665
    return-void
.end method

.method public MoveTo(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 675
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->updateX(D)V

    .line 676
    invoke-direct {p0, p3, p4}, Lcom/google/appinventor/components/runtime/Sprite;->updateY(D)V

    .line 677
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 678
    return-void
.end method

.method public NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 3
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a pair of sprites (Balls and ImageSprites) are no longer colliding."
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 502
    const-string v0, "NoLongerCollidingWith"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    return-void
.end method

.method protected OriginAtCenter(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    .line 389
    return-void
.end method

.method public PointInDirection(DD)V
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the heading of the %type% toward the point with the coordinates (x, y)."
    .end annotation

    .prologue
    .line 703
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    sub-double v0, p3, v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    sub-double v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 704
    return-void
.end method

.method public PointTowards(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 6
    .param p1, "target"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turns the %type% to point towards a designated target sprite (Ball or ImageSprite). The new heading will be parallel to the line joining the centerpoints of the two sprites."
    .end annotation

    .prologue
    .line 690
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 691
    return-void
.end method

.method public Speed()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The speed at which the %type% moves. The %type% moves this many pixels every interval if enabled."
    .end annotation

    .prologue
    .line 269
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    return v0
.end method

.method public Speed(F)V
    .locals 0
    .param p1, "speed"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The number of pixels that the %type% should move every interval, if enabled."
    .end annotation

    .prologue
    .line 256
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    .line 257
    return-void
.end method

.method public TouchDown(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user begins touching an enabled %type% (placing their finger on a %type% and leaving it there). This provides the x and y coordinates of the touch, relative to the upper left of the canvas."
    .end annotation

    .prologue
    .line 573
    const-string v0, "TouchDown"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method public TouchUp(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user stops touching an enabled %type% (lifting their finger after a TouchDown event). This provides the x and y coordinates of the touch, relative to the upper left of the canvas."
    .end annotation

    .prologue
    .line 557
    const-string v0, "TouchUp"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    return-void
.end method

.method public Touched(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user touches an enabled %type% and then immediately lifts their finger. The provided x and y coordinates are relative to the upper left of the canvas."
    .end annotation

    .prologue
    .line 517
    const-string v0, "Touched"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    return-void
.end method

.method public Visible(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 294
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 295
    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether the %type% is visible."
    .end annotation

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    return v0
.end method

.method public X()D
    .locals 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    goto :goto_0
.end method

.method public X(D)V
    .locals 1
    .param p1, "x"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 326
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->updateX(D)V

    .line 327
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 328
    return-void
.end method

.method public Y()D
    .locals 2

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    goto :goto_0
.end method

.method public Y(D)V
    .locals 1
    .param p1, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->updateY(D)V

    .line 355
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 356
    return-void
.end method

.method public Z()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "How the %type% should be layered relative to other Balls and ImageSprites, with higher-numbered layers in front of lower-numbered layers."
    .end annotation

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    return-wide v0
.end method

.method public Z(D)V
    .locals 1
    .param p1, "layer"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 374
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    .line 375
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->changeSpriteLayer(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 376
    return-void
.end method

.method public alarm()V
    .locals 2

    .prologue
    .line 981
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->updateCoordinates()V

    .line 983
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 985
    :cond_0
    return-void
.end method

.method public containsPoint(DD)Z
    .locals 5
    .param p1, "qx"    # D
    .param p3, "qy"    # D

    .prologue
    .line 967
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 968
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 967
    :goto_0
    return v0

    .line 968
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;
    .locals 14
    .param p1, "border"    # I

    .prologue
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 897
    new-instance v1, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    int-to-double v4, p1

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    int-to-double v6, p1

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 898
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    int-to-double v8, v0

    add-double/2addr v6, v8

    sub-double/2addr v6, v12

    int-to-double v8, p1

    add-double/2addr v6, v8

    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v0

    int-to-double v10, v0

    add-double/2addr v8, v10

    sub-double/2addr v8, v12

    int-to-double v10, p1

    add-double/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 897
    return-object v1
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method protected hitEdge()I
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->ready()Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    const/4 v0, 0x0

    .line 744
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdge(II)I

    move-result v0

    goto :goto_0
.end method

.method protected hitEdge(II)I
    .locals 5
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I

    .prologue
    const/4 v4, 0x0

    .line 841
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overWestEdge()Z

    move-result v3

    .line 842
    .local v3, "west":Z
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overNorthEdge()Z

    move-result v1

    .line 843
    .local v1, "north":Z
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->overEastEdge(I)Z

    move-result v0

    .line 844
    .local v0, "east":Z
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->overSouthEdge(I)Z

    move-result v2

    .line 847
    .local v2, "south":Z
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    .line 885
    :cond_0
    :goto_0
    return v4

    .line 854
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 857
    if-eqz v3, :cond_4

    .line 858
    if-eqz v1, :cond_2

    .line 859
    const/4 v4, -0x4

    goto :goto_0

    .line 860
    :cond_2
    if-eqz v2, :cond_3

    .line 861
    const/4 v4, -0x2

    goto :goto_0

    .line 863
    :cond_3
    const/4 v4, -0x3

    goto :goto_0

    .line 867
    :cond_4
    if-eqz v0, :cond_7

    .line 868
    if-eqz v1, :cond_5

    .line 869
    const/4 v4, 0x2

    goto :goto_0

    .line 870
    :cond_5
    if-eqz v2, :cond_6

    .line 871
    const/4 v4, 0x4

    goto :goto_0

    .line 873
    :cond_6
    const/4 v4, 0x3

    goto :goto_0

    .line 877
    :cond_7
    if-eqz v1, :cond_8

    .line 878
    const/4 v4, 0x1

    goto :goto_0

    .line 880
    :cond_8
    if-eqz v2, :cond_0

    .line 881
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z
    .locals 10
    .param p1, "rect"    # Lcom/google/appinventor/components/runtime/util/BoundingBox;

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x0

    .line 940
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v0

    .line 941
    .local v0, "rect1":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 955
    :cond_0
    :goto_0
    return v1

    .line 948
    :cond_1
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v2

    .local v2, "x":D
    :goto_1
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v6

    cmpg-double v6, v2, v6

    if-gez v6, :cond_0

    .line 949
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v4

    .local v4, "y":D
    :goto_2
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v6

    cmpg-double v6, v4, v6

    if-gez v6, :cond_3

    .line 950
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 951
    const/4 v1, 0x1

    goto :goto_0

    .line 949
    :cond_2
    add-double/2addr v4, v8

    goto :goto_2

    .line 948
    :cond_3
    add-double/2addr v2, v8

    goto :goto_1
.end method

.method protected final moveIntoBounds(II)V
    .locals 6
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 755
    const/4 v0, 0x0

    .line 761
    .local v0, "moved":Z
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 765
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    .line 766
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 767
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->xLeftToCenter(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 768
    const/4 v0, 0x1

    .line 782
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v1

    if-le v1, p2, :cond_5

    .line 786
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    .line 787
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 788
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->yTopToCenter(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 789
    const/4 v0, 0x1

    .line 802
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 803
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 805
    :cond_2
    return-void

    .line 770
    :cond_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overWestEdge()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 771
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 772
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->xLeftToCenter(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 773
    const/4 v0, 0x1

    goto :goto_0

    .line 774
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->overEastEdge(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v1

    sub-int v1, p1, v1

    int-to-double v2, v1

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 776
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->xLeftToCenter(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 777
    const/4 v0, 0x1

    goto :goto_0

    .line 791
    :cond_5
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overNorthEdge()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 792
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 793
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->yTopToCenter(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 794
    const/4 v0, 0x1

    goto :goto_1

    .line 795
    :cond_6
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->overSouthEdge(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v1

    sub-int v1, p2, v1

    int-to-double v2, v1

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 797
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->yTopToCenter(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 798
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 1006
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->removeSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 1007
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 999
    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method protected varargs postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "sprite"    # Lcom/google/appinventor/components/runtime/Sprite;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sprite$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Sprite$1;-><init>(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    return-void
.end method

.method protected registerChange()V
    .locals 2

    .prologue
    .line 719
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-nez v1, :cond_0

    .line 721
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 729
    :goto_0
    return-void

    .line 724
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdge()I

    move-result v0

    .line 725
    .local v0, "edge":I
    if-eqz v0, :cond_1

    .line 726
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->EdgeReached(I)V

    .line 728
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Canvas;->registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_0
.end method

.method protected updateCoordinates()V
    .locals 6

    .prologue
    .line 812
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 813
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->xLeftToCenter(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 814
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 815
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->yTopToCenter(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 816
    return-void
.end method

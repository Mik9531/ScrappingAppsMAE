.class Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionEventParser"
.end annotation


# static fields
.field public static final FINGER_HEIGHT:I = 0x18

.field public static final FINGER_WIDTH:I = 0x18

.field private static final HALF_FINGER_HEIGHT:I = 0xc

.field private static final HALF_FINGER_WIDTH:I = 0xc

.field public static final TAP_THRESHOLD:I = 0xf

.field private static final UNSET:I = -0x1


# instance fields
.field private drag:Z

.field private final draggedSprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private isDrag:Z

.field private lastX:F

.field private lastY:F

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Canvas;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 178
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    .line 217
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 218
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 221
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 222
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    .line 226
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 228
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    return-void
.end method


# virtual methods
.method parse(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 231
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v11

    .line 232
    .local v11, "width":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v0

    .line 238
    .local v0, "height":I
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 239
    .local v12, "x":F
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 243
    .local v13, "y":F
    new-instance v1, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    const/4 v3, 0x0

    float-to-int v4, v12

    add-int/lit8 v4, v4, -0xc

    .line 244
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v2, v3

    const/4 v4, 0x0

    float-to-int v5, v13

    add-int/lit8 v5, v5, -0xc

    .line 245
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    add-int/lit8 v6, v11, -0x1

    float-to-int v7, v12

    add-int/lit8 v7, v7, 0xc

    .line 246
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-double v6, v6

    add-int/lit8 v8, v0, -0x1

    float-to-int v9, v13

    add-int/lit8 v9, v9, 0xc

    .line 247
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-double v8, v8

    invoke-direct/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 249
    .local v1, "rect":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 252
    iput v12, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 253
    iput v13, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 254
    iput v12, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 255
    iput v13, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    .line 256
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 257
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 258
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 259
    .local v2, "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    invoke-virtual {v2, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->TouchDown(FF)V

    goto :goto_1

    .line 264
    .end local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Canvas;->TouchDown(FF)V

    goto :goto_0

    .line 269
    :pswitch_1
    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    .line 270
    :cond_3
    const-string v3, "Canvas"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In Canvas.MotionEventParser.parse(), an ACTION_MOVE was passed without a preceding ACTION_DOWN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_4
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    sub-float v3, v12, v3

    .line 276
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41700000    # 15.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    sub-float v3, v13, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41700000    # 15.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 280
    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 281
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 285
    const/4 v3, 0x0

    cmpg-float v3, v12, v3

    if-lez v3, :cond_6

    int-to-float v3, v11

    cmpl-float v3, v12, v3

    if-gtz v3, :cond_6

    const/4 v3, 0x0

    cmpg-float v3, v13, v3

    if-lez v3, :cond_6

    int-to-float v3, v0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    .line 286
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$100(Lcom/google/appinventor/components/runtime/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    :cond_7
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 293
    .restart local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 294
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 295
    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 296
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 301
    .end local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_9
    const/4 v10, 0x0

    .line 302
    .local v10, "handled":Z
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 303
    .restart local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 304
    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    iget v6, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    move v7, v12

    move v8, v13

    invoke-virtual/range {v2 .. v8}, Lcom/google/appinventor/components/runtime/Sprite;->Dragged(FFFFFF)V

    .line 305
    const/4 v10, 0x1

    goto :goto_3

    .line 310
    .end local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_b
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    iget v6, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    iget v7, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    move v8, v12

    move v9, v13

    invoke-virtual/range {v3 .. v10}, Lcom/google/appinventor/components/runtime/Canvas;->Dragged(FFFFFFZ)V

    .line 311
    iput v12, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 312
    iput v13, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    goto/16 :goto_0

    .line 319
    .end local v10    # "handled":Z
    :pswitch_2
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    if-nez v3, :cond_f

    .line 321
    const/4 v10, 0x0

    .line 322
    .restart local v10    # "handled":Z
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 323
    .restart local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 324
    invoke-virtual {v2, v12, v13}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 325
    invoke-virtual {v2, v12, v13}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    .line 326
    const/4 v10, 0x1

    goto :goto_4

    .line 330
    .end local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_d
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3, v12, v13, v10}, Lcom/google/appinventor/components/runtime/Canvas;->Touched(FFZ)V

    .line 343
    .end local v10    # "handled":Z
    :cond_e
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3, v12, v13}, Lcom/google/appinventor/components/runtime/Canvas;->TouchUp(FF)V

    .line 346
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 347
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 348
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 349
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 350
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    goto/16 :goto_0

    .line 333
    :cond_f
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 334
    .restart local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 335
    invoke-virtual {v2, v12, v13}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 336
    invoke-virtual {v2, v12, v13}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    goto :goto_5

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

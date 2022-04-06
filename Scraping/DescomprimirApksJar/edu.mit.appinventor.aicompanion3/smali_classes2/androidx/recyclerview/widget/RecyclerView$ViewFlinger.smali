.class Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .param p1, "this$0"    # Landroidx/recyclerview/widget/RecyclerView;

    .prologue
    const/4 v1, 0x0

    .line 5063
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5055
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5058
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5061
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5064
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 5065
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 5067
    :cond_0
    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 14
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 5241
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5242
    .local v1, "absDx":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 5243
    .local v2, "absDy":I
    if-le v1, v2, :cond_0

    const/4 v9, 0x1

    .line 5244
    .local v9, "horizontal":Z
    :goto_0
    mul-int v11, p3, p3

    mul-int v12, p4, p4

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v10, v12

    .line 5245
    .local v10, "velocity":I
    mul-int v11, p1, p1

    mul-int v12, p2, p2

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v4, v12

    .line 5246
    .local v4, "delta":I
    if-eqz v9, :cond_1

    iget-object v11, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    .line 5247
    .local v3, "containerSize":I
    :goto_1
    div-int/lit8 v8, v3, 0x2

    .line 5248
    .local v8, "halfContainerSize":I
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v4

    mul-float/2addr v12, v13

    int-to-float v13, v3

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 5249
    .local v6, "distanceRatio":F
    int-to-float v11, v8

    int-to-float v12, v8

    .line 5250
    invoke-direct {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v5, v11, v12

    .line 5253
    .local v5, "distance":F
    if-lez v10, :cond_2

    .line 5254
    const/high16 v11, 0x447a0000    # 1000.0f

    int-to-float v12, v10

    div-float v12, v5, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 v7, v11, 0x4

    .line 5259
    .end local v1    # "absDx":I
    .local v7, "duration":I
    :goto_2
    const/16 v11, 0x7d0

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11

    .line 5243
    .end local v3    # "containerSize":I
    .end local v4    # "delta":I
    .end local v5    # "distance":F
    .end local v6    # "distanceRatio":F
    .end local v7    # "duration":I
    .end local v8    # "halfContainerSize":I
    .end local v9    # "horizontal":Z
    .end local v10    # "velocity":I
    .restart local v1    # "absDx":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 5246
    .restart local v4    # "delta":I
    .restart local v9    # "horizontal":Z
    .restart local v10    # "velocity":I
    :cond_1
    iget-object v11, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    goto :goto_1

    .line 5256
    .restart local v3    # "containerSize":I
    .restart local v5    # "distance":F
    .restart local v6    # "distanceRatio":F
    .restart local v8    # "halfContainerSize":I
    :cond_2
    if-eqz v9, :cond_3

    .end local v1    # "absDx":I
    :goto_3
    int-to-float v0, v1

    .line 5257
    .local v0, "absDelta":F
    int-to-float v11, v3

    div-float v11, v0, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x43960000    # 300.0f

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .restart local v7    # "duration":I
    goto :goto_2

    .end local v0    # "absDelta":F
    .end local v7    # "duration":I
    .restart local v1    # "absDx":I
    :cond_3
    move v1, v2

    .line 5256
    goto :goto_3
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 5195
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5197
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    .line 5235
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 5236
    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    .line 5237
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 5200
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5201
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 5202
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5204
    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 9
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 5216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    .line 5224
    :goto_0
    return-void

    .line 5219
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5220
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5221
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 5223
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_0
.end method

.method postOnAnimation()V
    .locals 1

    .prologue
    .line 5207
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 5208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5213
    :goto_0
    return-void

    .line 5210
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5211
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 25

    .prologue
    .line 5071
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-ge v2, v6, :cond_0

    .line 5072
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    .line 5192
    :goto_0
    return-void

    .line 5075
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_1

    .line 5076
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    goto :goto_0

    .line 5079
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 5080
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 5083
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v18, v0

    .line 5084
    .local v18, "scroller":Landroid/widget/OverScroller;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-object/from16 v19, v0

    .line 5085
    .local v19, "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 5086
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mScrollConsumed:[I

    .line 5087
    .local v5, "scrollConsumed":[I
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v23

    .line 5088
    .local v23, "x":I
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v24

    .line 5089
    .local v24, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v3, v23, v2

    .line 5090
    .local v3, "dx":I
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v4, v24, v2

    .line 5091
    .local v4, "dy":I
    const/16 v17, 0x0

    .line 5092
    .local v17, "hresult":I
    const/4 v8, 0x0

    .line 5093
    .local v8, "vresult":I
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5094
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 5095
    const/4 v9, 0x0

    .local v9, "overscrollX":I
    const/4 v10, 0x0

    .line 5097
    .local v10, "overscrollY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5098
    const/4 v2, 0x0

    aget v2, v5, v2

    sub-int/2addr v3, v2

    .line 5099
    const/4 v2, 0x1

    aget v2, v5, v2

    sub-int/2addr v4, v2

    .line 5102
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_23

    .line 5103
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollStepConsumed:[I

    invoke-virtual {v2, v3, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 5104
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mScrollStepConsumed:[I

    const/4 v6, 0x0

    aget v7, v2, v6

    .line 5105
    .end local v17    # "hresult":I
    .local v7, "hresult":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mScrollStepConsumed:[I

    const/4 v6, 0x1

    aget v8, v2, v6

    .line 5106
    sub-int v9, v3, v7

    .line 5107
    sub-int v10, v4, v8

    .line 5109
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5110
    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5111
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v13

    .line 5112
    .local v13, "adapterSize":I
    if-nez v13, :cond_19

    .line 5113
    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 5122
    .end local v13    # "adapterSize":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5123
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 5125
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v2, v6, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_6

    .line 5126
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 5129
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v2

    if-nez v2, :cond_e

    if-nez v9, :cond_7

    if-eqz v10, :cond_e

    .line 5132
    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v20, v0

    .line 5134
    .local v20, "vel":I
    const/16 v21, 0x0

    .line 5135
    .local v21, "velX":I
    move/from16 v0, v23

    if-eq v9, v0, :cond_8

    .line 5136
    if-gez v9, :cond_1b

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v21, v0

    .line 5139
    :cond_8
    :goto_2
    const/16 v22, 0x0

    .line 5140
    .local v22, "velY":I
    move/from16 v0, v24

    if-eq v10, v0, :cond_9

    .line 5141
    if-gez v10, :cond_1d

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v22, v0

    .line 5144
    :cond_9
    :goto_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v2, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_b

    .line 5145
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 5147
    :cond_b
    if-nez v21, :cond_c

    move/from16 v0, v23

    if-eq v9, v0, :cond_c

    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    if-nez v22, :cond_d

    move/from16 v0, v24

    if-eq v10, v0, :cond_d

    .line 5148
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    if-nez v2, :cond_e

    .line 5149
    :cond_d
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5152
    .end local v20    # "vel":I
    .end local v21    # "velX":I
    .end local v22    # "velY":I
    :cond_e
    if-nez v7, :cond_f

    if-eqz v8, :cond_10

    .line 5153
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 5156
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 5157
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 5160
    :cond_11
    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_1f

    if-ne v8, v4, :cond_1f

    const/16 v16, 0x1

    .line 5162
    .local v16, "fullyConsumedVertical":Z
    :goto_4
    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_20

    if-ne v7, v3, :cond_20

    const/4 v15, 0x1

    .line 5164
    .local v15, "fullyConsumedHorizontal":Z
    :goto_5
    if-nez v3, :cond_12

    if-eqz v4, :cond_13

    :cond_12
    if-nez v15, :cond_13

    if-eqz v16, :cond_21

    :cond_13
    const/4 v14, 0x1

    .line 5167
    .local v14, "fullyConsumedAny":Z
    :goto_6
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_14

    if-nez v14, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x1

    .line 5168
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->hasNestedScrollingParent(I)Z

    move-result v2

    if-nez v2, :cond_22

    .line 5170
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5171
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v2, :cond_15

    .line 5172
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 5174
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 5183
    .end local v3    # "dx":I
    .end local v4    # "dy":I
    .end local v5    # "scrollConsumed":[I
    .end local v7    # "hresult":I
    .end local v8    # "vresult":I
    .end local v9    # "overscrollX":I
    .end local v10    # "overscrollY":I
    .end local v14    # "fullyConsumedAny":Z
    .end local v15    # "fullyConsumedHorizontal":Z
    .end local v16    # "fullyConsumedVertical":Z
    .end local v23    # "x":I
    .end local v24    # "y":I
    :cond_16
    :goto_7
    if-eqz v19, :cond_18

    .line 5184
    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 5185
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 5187
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v2, :cond_18

    .line 5188
    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 5191
    :cond_18
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    goto/16 :goto_0

    .line 5114
    .restart local v3    # "dx":I
    .restart local v4    # "dy":I
    .restart local v5    # "scrollConsumed":[I
    .restart local v7    # "hresult":I
    .restart local v8    # "vresult":I
    .restart local v9    # "overscrollX":I
    .restart local v10    # "overscrollY":I
    .restart local v13    # "adapterSize":I
    .restart local v23    # "x":I
    .restart local v24    # "y":I
    :cond_19
    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v2

    if-lt v2, v13, :cond_1a

    .line 5115
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 5116
    sub-int v2, v3, v9

    sub-int v6, v4, v10

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto/16 :goto_1

    .line 5118
    :cond_1a
    sub-int v2, v3, v9

    sub-int v6, v4, v10

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto/16 :goto_1

    .line 5136
    .end local v13    # "adapterSize":I
    .restart local v20    # "vel":I
    .restart local v21    # "velX":I
    :cond_1b
    if-lez v9, :cond_1c

    move/from16 v21, v20

    goto/16 :goto_2

    :cond_1c
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 5141
    .restart local v22    # "velY":I
    :cond_1d
    if-lez v10, :cond_1e

    move/from16 v22, v20

    goto/16 :goto_3

    :cond_1e
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 5160
    .end local v20    # "vel":I
    .end local v21    # "velX":I
    .end local v22    # "velY":I
    :cond_1f
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 5162
    .restart local v16    # "fullyConsumedVertical":Z
    :cond_20
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 5164
    .restart local v15    # "fullyConsumedHorizontal":Z
    :cond_21
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 5176
    .restart local v14    # "fullyConsumedAny":Z
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5177
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v2, :cond_16

    .line 5178
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v6, v3, v4}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_7

    .end local v7    # "hresult":I
    .end local v14    # "fullyConsumedAny":Z
    .end local v15    # "fullyConsumedHorizontal":Z
    .end local v16    # "fullyConsumedVertical":Z
    .restart local v17    # "hresult":I
    :cond_23
    move/from16 v7, v17

    .end local v17    # "hresult":I
    .restart local v7    # "hresult":I
    goto/16 :goto_1
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v0, 0x0

    .line 5227
    invoke-virtual {p0, p1, p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 5228
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 5263
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 5264
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 5231
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 5232
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 5272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    .line 5289
    :goto_0
    return-void

    .line 5275
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_1

    .line 5276
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5277
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 5279
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5280
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5281
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 5286
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 5288
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_0
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v0, 0x0

    .line 5267
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .end local p3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 5269
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 5292
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 5294
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5296
    :cond_0
    return-void
.end method

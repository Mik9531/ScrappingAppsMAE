.class public Landroidx/recyclerview/widget/LinearSmoothScroller;
.super Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MILLISECONDS_PER_INCH:F = 25.0f

.field public static final SNAP_TO_ANY:I = 0x0

.field public static final SNAP_TO_END:I = 0x1

.field public static final SNAP_TO_START:I = -0x1

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 79
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 81
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 89
    iput v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    iput v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    .line 93
    return-void
.end method

.method private clampApplyScroll(II)I
    .locals 2
    .param p1, "tmpDt"    # I
    .param p2, "dt"    # I

    .prologue
    .line 253
    move v0, p1

    .line 254
    .local v0, "before":I
    sub-int/2addr p1, p2

    .line 255
    mul-int v1, v0, p1

    if-gtz v1, :cond_0

    .line 256
    const/4 p1, 0x0

    .line 258
    .end local p1    # "tmpDt":I
    :cond_0
    return p1
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 4
    .param p1, "viewStart"    # I
    .param p2, "viewEnd"    # I
    .param p3, "boxStart"    # I
    .param p4, "boxEnd"    # I
    .param p5, "snapPreference"    # I

    .prologue
    .line 267
    packed-switch p5, :pswitch_data_0

    .line 283
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :pswitch_0
    sub-int v1, p3, p1

    .line 286
    :cond_0
    :goto_0
    return v1

    .line 271
    :pswitch_1
    sub-int v1, p4, p2

    goto :goto_0

    .line 273
    :pswitch_2
    sub-int v1, p3, p1

    .line 274
    .local v1, "dtStart":I
    if-gtz v1, :cond_0

    .line 277
    sub-int v0, p4, p2

    .line 278
    .local v0, "dtEnd":I
    if-gez v0, :cond_1

    move v1, v0

    .line 279
    goto :goto_0

    .line 286
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .prologue
    .line 326
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    .line 327
    .local v6, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    :cond_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    return v0

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 332
    .local v7, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v1, v0, v5

    .line 333
    .local v1, "left":I
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v2, v0, v5

    .line 334
    .local v2, "right":I
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    .line 335
    .local v3, "start":I
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v4, v0, v5

    .local v4, "end":I
    move-object v0, p0

    move v5, p2

    .line 336
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .prologue
    .line 301
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    .line 302
    .local v6, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    .line 306
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 307
    .local v7, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v1, v0, v5

    .line 308
    .local v1, "top":I
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v2, v0, v5

    .line 309
    .local v2, "bottom":I
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    .line 310
    .local v3, "start":I
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v4, v0, v5

    .local v4, "end":I
    move-object v0, p0

    move v5, p2

    .line 311
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 161
    const/high16 v0, 0x41c80000    # 25.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 4
    .param p1, "dx"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 2
    .param p1, "dx"    # I

    .prologue
    .line 192
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected getHorizontalSnapPreference()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getVerticalSnapPreference()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p4, "action"    # Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    .line 125
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 136
    iget v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    invoke-direct {p0, v0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 138
    iget v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/LinearSmoothScroller;->updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 151
    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 7
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "action"    # Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    .line 108
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result v1

    .line 109
    .local v1, "dx":I
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v2

    .line 110
    .local v2, "dy":I
    mul-int v4, v1, v1

    mul-int v5, v2, v2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 111
    .local v0, "distance":I
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 112
    .local v3, "time":I
    if-lez v3, :cond_0

    .line 113
    neg-int v4, v1

    neg-int v5, v2

    iget-object v6, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v4, v5, v3, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 115
    :cond_0
    return-void
.end method

.method protected updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 7
    .param p1, "action"    # Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    const v5, 0x461c4000    # 10000.0f

    const/4 v4, 0x0

    const v6, 0x3f99999a    # 1.2f

    .line 231
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 232
    .local v0, "scrollVector":Landroid/graphics/PointF;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v1

    .line 234
    .local v1, "target":I
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 235
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    .line 250
    .end local v1    # "target":I
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->normalize(Landroid/graphics/PointF;)V

    .line 239
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 241
    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 242
    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 243
    const/16 v3, 0x2710

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v2

    .line 247
    .local v2, "time":I
    iget v3, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

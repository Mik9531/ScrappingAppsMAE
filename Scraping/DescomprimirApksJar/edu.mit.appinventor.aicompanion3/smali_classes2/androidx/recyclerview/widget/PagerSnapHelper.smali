.class public Landroidx/recyclerview/widget/PagerSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "PagerSnapHelper.java"


# static fields
.field private static final MAX_SCROLL_ON_FLING_DURATION:I = 0x64


# instance fields
.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 4
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "helper"    # Landroidx/recyclerview/widget/OrientationHelper;

    .prologue
    .line 168
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 169
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 171
    .local v0, "childCenter":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 176
    .local v1, "containerCenter":I
    :goto_0
    sub-int v2, v0, v1

    return v2

    .line 174
    .end local v1    # "containerCenter":I
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1    # "containerCenter":I
    goto :goto_0
.end method

.method private findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 10
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    .line 192
    .local v5, "childCount":I
    if-nez v5, :cond_1

    .line 193
    const/4 v6, 0x0

    .line 217
    :cond_0
    return-object v6

    .line 196
    :cond_1
    const/4 v6, 0x0

    .line 198
    .local v6, "closestChild":Landroid/view/View;
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 199
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v2, v8, v9

    .line 203
    .local v2, "center":I
    :goto_0
    const v0, 0x7fffffff

    .line 205
    .local v0, "absClosest":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_0

    .line 206
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 207
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    .line 208
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 209
    .local v4, "childCenter":I
    sub-int v8, v4, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 212
    .local v1, "absDistance":I
    if-ge v1, v0, :cond_2

    .line 213
    move v0, v1

    .line 214
    move-object v6, v3

    .line 205
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 201
    .end local v0    # "absClosest":I
    .end local v1    # "absDistance":I
    .end local v2    # "center":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCenter":I
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .restart local v2    # "center":I
    goto :goto_0
.end method

.method private findStartView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 6
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 233
    .local v1, "childCount":I
    if-nez v1, :cond_1

    .line 234
    const/4 v3, 0x0

    .line 250
    :cond_0
    return-object v3

    .line 237
    :cond_1
    const/4 v3, 0x0

    .line 238
    .local v3, "closestChild":Landroid/view/View;
    const v5, 0x7fffffff

    .line 240
    .local v5, "startest":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 241
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 245
    .local v2, "childStart":I
    if-ge v2, v5, :cond_2

    .line 246
    move v5, v2

    .line 247
    move-object v3, v0

    .line 240
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    .line 265
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 267
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object v0
.end method

.method private getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    .line 256
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 258
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 53
    .local v0, "out":[I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 54
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    .line 60
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 61
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v3

    .line 66
    :goto_1
    return-object v0

    .line 57
    :cond_0
    aput v2, v0, v2

    goto :goto_0

    .line 64
    :cond_1
    aput v2, v0, v3

    goto :goto_1
.end method

.method protected createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .locals 2
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .prologue
    .line 138
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper$1;

    iget-object v1, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper$1;-><init>(Landroidx/recyclerview/widget/PagerSnapHelper;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 10
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .prologue
    .line 83
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    .line 84
    .local v2, "itemCount":I
    if-nez v2, :cond_1

    .line 85
    const/4 v0, -0x1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 90
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v4

    .line 97
    .local v4, "orientationHelper":Landroidx/recyclerview/widget/OrientationHelper;
    :goto_1
    invoke-direct {p0, p1, v4}, Landroidx/recyclerview/widget/PagerSnapHelper;->findStartView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v3

    .line 98
    .local v3, "mStartMostChildView":Landroid/view/View;
    if-nez v3, :cond_4

    .line 99
    const/4 v0, -0x1

    goto :goto_0

    .line 91
    .end local v3    # "mStartMostChildView":Landroid/view/View;
    .end local v4    # "orientationHelper":Landroidx/recyclerview/widget/OrientationHelper;
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 92
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v4

    .restart local v4    # "orientationHelper":Landroidx/recyclerview/widget/OrientationHelper;
    goto :goto_1

    .line 94
    .end local v4    # "orientationHelper":Landroidx/recyclerview/widget/OrientationHelper;
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 101
    .restart local v3    # "mStartMostChildView":Landroid/view/View;
    .restart local v4    # "orientationHelper":Landroidx/recyclerview/widget/OrientationHelper;
    :cond_4
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 102
    .local v0, "centerPosition":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_5

    .line 103
    const/4 v0, -0x1

    goto :goto_0

    .line 107
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 108
    if-lez p2, :cond_8

    const/4 v1, 0x1

    .line 112
    .local v1, "forwardDirection":Z
    :goto_2
    const/4 v5, 0x0

    .line 113
    .local v5, "reverseLayout":Z
    instance-of v8, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v8, :cond_7

    move-object v7, p1

    .line 114
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 116
    .local v7, "vectorProvider":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    add-int/lit8 v8, v2, -0x1

    invoke-interface {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v6

    .line 117
    .local v6, "vectorForEnd":Landroid/graphics/PointF;
    if-eqz v6, :cond_7

    .line 118
    iget v8, v6, Landroid/graphics/PointF;->x:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_6

    iget v8, v6, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_b

    :cond_6
    const/4 v5, 0x1

    .line 126
    .end local v6    # "vectorForEnd":Landroid/graphics/PointF;
    .end local v7    # "vectorProvider":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    :cond_7
    :goto_3
    if-nez v0, :cond_c

    if-ne v1, v5, :cond_c

    .line 127
    invoke-direct {p0, p1, v3, v4}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v8

    if-nez v8, :cond_c

    .line 128
    const/4 v0, -0x1

    goto :goto_0

    .line 108
    .end local v1    # "forwardDirection":Z
    .end local v5    # "reverseLayout":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 110
    :cond_9
    if-lez p3, :cond_a

    const/4 v1, 0x1

    .restart local v1    # "forwardDirection":Z
    :goto_4
    goto :goto_2

    .end local v1    # "forwardDirection":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 118
    .restart local v1    # "forwardDirection":Z
    .restart local v5    # "reverseLayout":Z
    .restart local v6    # "vectorForEnd":Landroid/graphics/PointF;
    .restart local v7    # "vectorProvider":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    :cond_b
    const/4 v5, 0x0

    goto :goto_3

    .line 131
    .end local v6    # "vectorForEnd":Landroid/graphics/PointF;
    .end local v7    # "vectorProvider":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    :cond_c
    if-eqz v5, :cond_d

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_d
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

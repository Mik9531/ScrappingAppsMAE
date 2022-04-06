.class public Landroidx/fragment/app/ListFragment;
.super Landroidx/fragment/app/Fragment;
.source "ListFragment.java"


# static fields
.field static final INTERNAL_EMPTY_ID:I = 0xff0001

.field static final INTERNAL_LIST_CONTAINER_ID:I = 0xff0003

.field static final INTERNAL_PROGRESS_CONTAINER_ID:I = 0xff0002


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Landroidx/fragment/app/ListFragment$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/ListFragment$1;-><init>(Landroidx/fragment/app/ListFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Landroidx/fragment/app/ListFragment$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/ListFragment$2;-><init>(Landroidx/fragment/app/ListFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 77
    return-void
.end method

.method private ensureList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 328
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 379
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 332
    .local v2, "root":Landroid/view/View;
    if-nez v2, :cond_1

    .line 333
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Content view not yet created"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 335
    :cond_1
    instance-of v3, v2, Landroid/widget/ListView;

    if-eqz v3, :cond_4

    .line 336
    check-cast v2, Landroid/widget/ListView;

    .end local v2    # "root":Landroid/view/View;
    iput-object v2, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 365
    :cond_2
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    .line 366
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Landroidx/fragment/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 367
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_9

    .line 368
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 369
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 370
    invoke-virtual {p0, v0}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 378
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    :goto_2
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 338
    .restart local v2    # "root":Landroid/view/View;
    :cond_4
    const v3, 0xff0001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 339
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v3, :cond_5

    .line 340
    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 344
    :goto_3
    const v3, 0xff0002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 345
    const v3, 0xff0003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 346
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 347
    .local v1, "rawListView":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/ListView;

    if-nez v3, :cond_7

    .line 348
    if-nez v1, :cond_6

    .line 349
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    .end local v1    # "rawListView":Landroid/view/View;
    :cond_5
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 353
    .restart local v1    # "rawListView":Landroid/view/View;
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    :cond_7
    check-cast v1, Landroid/widget/ListView;

    .end local v1    # "rawListView":Landroid/view/View;
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 358
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 359
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 360
    :cond_8
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 361
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v4, p0, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 374
    .end local v2    # "root":Landroid/view/View;
    :cond_9
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 375
    invoke-direct {p0, v5, v5}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    goto/16 :goto_2
.end method

.method private setListShown(ZZ)V
    .locals 6
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const v5, 0x10a0001

    const/high16 v4, 0x10a0000

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 285
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 286
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    if-ne v0, p1, :cond_1

    .line 318
    :goto_0
    return-void

    .line 292
    :cond_1
    iput-boolean p1, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    .line 293
    if-eqz p1, :cond_3

    .line 294
    if-eqz p2, :cond_2

    .line 295
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 296
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 295
    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 297
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 297
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 303
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 300
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 301
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 306
    :cond_3
    if-eqz p2, :cond_4

    .line 307
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 307
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 309
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 309
    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 315
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 312
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 313
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 228
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 220
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 212
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x11

    const/4 v10, -0x2

    const/4 v9, -0x1

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, "context":Landroid/content/Context;
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 102
    .local v5, "root":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 103
    .local v3, "pframe":Landroid/widget/LinearLayout;
    const v7, 0xff0002

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setId(I)V

    .line 104
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 108
    new-instance v4, Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    const v8, 0x101007a

    invoke-direct {v4, v0, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    .local v4, "progress":Landroid/widget/ProgressBar;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 119
    .local v1, "lframe":Landroid/widget/FrameLayout;
    const v7, 0xff0003

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 121
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 122
    .local v6, "tv":Landroid/widget/TextView;
    const v7, 0xff0001

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    .line 123
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 124
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 128
    .local v2, "lv":Landroid/widget/ListView;
    const v7, 0x102000a

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setId(I)V

    .line 129
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 130
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-object v5
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    iput-object v2, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    .line 161
    iput-object v2, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    iput-object v2, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    iput-object v2, p0, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 162
    iput-object v2, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 163
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 164
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 178
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 150
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 151
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 237
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 238
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 245
    :cond_1
    iput-object p1, p0, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    .line 246
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 184
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    move v0, v1

    .line 185
    .local v0, "hadAdapter":Z
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 186
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 187
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget-boolean v3, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    .line 194
    :cond_1
    return-void

    .end local v0    # "hadAdapter":Z
    :cond_2
    move v0, v2

    .line 184
    goto :goto_0
.end method

.method public setListShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    .line 264
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    .line 272
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 203
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 204
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 205
    return-void
.end method

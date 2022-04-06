.class public Lcom/physicaloid/misc/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.java"


# static fields
.field private static final DEBUG_SHOW_ADD:Z

.field private static final DEBUG_SHOW_GET:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddIndex:I

.field private mGetIndex:I

.field private mRingBuf:[B

.field private mRingBufSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/physicaloid/misc/RingBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/misc/RingBuffer;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "bufferSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBufSize:I

    .line 40
    iget v0, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBufSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBuf:[B

    .line 41
    iput v1, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    .line 42
    iput v1, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized add([BI)I
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    .prologue
    .line 72
    monitor-enter p0

    move v0, p2

    .line 74
    .local v0, "addLen":I
    :try_start_0
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    if-le v3, v4, :cond_4

    .line 75
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    add-int/2addr v3, p2

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBufSize:I

    if-lt v3, v4, :cond_0

    .line 76
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBufSize:I

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    if-ge v3, p2, :cond_0

    .line 77
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBufSize:I

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    add-int/lit8 v4, v4, -0x1

    add-int v0, v3, v4

    .line 86
    :cond_0
    :goto_0
    array-length v3, p1

    if-ge v3, v0, :cond_1

    .line 87
    array-length v0, p1

    .line 90
    :cond_1
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBufSize:I

    if-lt v3, v4, :cond_5

    .line 91
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBufSize:I

    sub-int v2, v3, v4

    .line 92
    .local v2, "remain":I
    sub-int v1, v0, v2

    .line 93
    .local v1, "copyLen":I
    if-eqz v1, :cond_2

    .line 94
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBuf:[B

    iget v5, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    invoke-static {p1, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    .line 100
    if-eqz v2, :cond_3

    .line 101
    iget-object v3, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBuf:[B

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iput v2, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v1    # "copyLen":I
    .end local v2    # "remain":I
    :cond_3
    :goto_1
    monitor-exit p0

    return v0

    .line 80
    :cond_4
    :try_start_1
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    if-ge v3, v4, :cond_0

    .line 81
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    sub-int/2addr v3, v4

    if-ge v3, p2, :cond_0

    .line 82
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    sub-int v0, v3, v4

    goto :goto_0

    .line 110
    :cond_5
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBuf:[B

    iget v5, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    invoke-static {p1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 182
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get([BI)I
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 129
    monitor-enter p0

    move v1, p2

    .line 130
    .local v1, "getLen":I
    :try_start_0
    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    iget v5, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v5, :cond_0

    .line 173
    :goto_0
    monitor-exit p0

    return v3

    .line 132
    :cond_0
    :try_start_1
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    if-ge v3, v4, :cond_5

    .line 133
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    sub-int/2addr v3, v4

    if-ge v3, p2, :cond_1

    .line 134
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    sub-int v1, v3, v4

    .line 142
    :cond_1
    :goto_1
    array-length v3, p1

    if-ge v3, v1, :cond_2

    .line 143
    array-length v1, p1

    .line 146
    :cond_2
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBufSize:I

    if-lt v3, v4, :cond_6

    .line 147
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBufSize:I

    sub-int v2, v3, v4

    .line 148
    .local v2, "remain":I
    sub-int v0, v1, v2

    .line 149
    .local v0, "copyLen":I
    if-eqz v0, :cond_3

    .line 150
    iget-object v3, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBuf:[B

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    const/4 v5, 0x0

    invoke-static {v3, v4, p1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    :cond_3
    const/4 v3, 0x0

    iput v3, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    .line 156
    if-eqz v2, :cond_4

    .line 157
    iget-object v3, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBuf:[B

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    invoke-static {v3, v4, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iput v2, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    :cond_4
    move v3, v1

    .line 163
    goto :goto_0

    .line 137
    .end local v0    # "copyLen":I
    .end local v2    # "remain":I
    :cond_5
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBufSize:I

    iget v5, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    if-ge v3, p2, :cond_1

    .line 138
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBufSize:I

    iget v5, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    sub-int/2addr v4, v5

    add-int v1, v3, v4

    goto :goto_1

    .line 165
    :cond_6
    iget-object v3, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBuf:[B

    iget v4, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    const/4 v5, 0x0

    invoke-static {v3, v4, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v3, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v1

    .line 173
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getBufferdLength()I
    .locals 3

    .prologue
    .line 58
    iget v0, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    iget v1, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    if-lt v0, v1, :cond_0

    .line 59
    iget v0, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    iget v1, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    sub-int/2addr v0, v1

    .line 61
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/physicaloid/misc/RingBuffer;->mAddIndex:I

    iget v1, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBufSize:I

    iget v2, p0, Lcom/physicaloid/misc/RingBuffer;->mGetIndex:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getRingBufferSize()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/physicaloid/misc/RingBuffer;->mRingBufSize:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

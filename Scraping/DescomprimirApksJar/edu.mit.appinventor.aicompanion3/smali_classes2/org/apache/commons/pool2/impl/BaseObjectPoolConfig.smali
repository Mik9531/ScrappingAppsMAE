.class public abstract Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;
.super Ljava/lang/Object;
.source "BaseObjectPoolConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_BLOCK_WHEN_EXHAUSTED:Z = true

.field public static final DEFAULT_EVICTION_POLICY_CLASS_NAME:Ljava/lang/String; = "org.apache.commons.pool2.impl.DefaultEvictionPolicy"

.field public static final DEFAULT_FAIRNESS:Z = false

.field public static final DEFAULT_JMX_ENABLE:Z = true

.field public static final DEFAULT_JMX_NAME_BASE:Ljava/lang/String;

.field public static final DEFAULT_JMX_NAME_PREFIX:Ljava/lang/String; = "pool"

.field public static final DEFAULT_LIFO:Z = true

.field public static final DEFAULT_MAX_WAIT_MILLIS:J = -0x1L

.field public static final DEFAULT_MIN_EVICTABLE_IDLE_TIME_MILLIS:J = 0x1b7740L

.field public static final DEFAULT_NUM_TESTS_PER_EVICTION_RUN:I = 0x3

.field public static final DEFAULT_SOFT_MIN_EVICTABLE_IDLE_TIME_MILLIS:J = -0x1L

.field public static final DEFAULT_TEST_ON_BORROW:Z = false

.field public static final DEFAULT_TEST_ON_CREATE:Z = false

.field public static final DEFAULT_TEST_ON_RETURN:Z = false

.field public static final DEFAULT_TEST_WHILE_IDLE:Z = false

.field public static final DEFAULT_TIME_BETWEEN_EVICTION_RUNS_MILLIS:J = -0x1L


# instance fields
.field private blockWhenExhausted:Z

.field private evictionPolicyClassName:Ljava/lang/String;

.field private fairness:Z

.field private jmxEnabled:Z

.field private jmxNameBase:Ljava/lang/String;

.field private jmxNamePrefix:Ljava/lang/String;

.field private lifo:Z

.field private maxWaitMillis:J

.field private minEvictableIdleTimeMillis:J

.field private numTestsPerEvictionRun:I

.field private softMinEvictableIdleTimeMillis:J

.field private testOnBorrow:Z

.field private testOnCreate:Z

.field private testOnReturn:Z

.field private testWhileIdle:Z

.field private timeBetweenEvictionRunsMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->DEFAULT_JMX_NAME_BASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x1b7740

    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-boolean v2, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->lifo:Z

    .line 159
    iput-boolean v1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->fairness:Z

    .line 161
    iput-wide v4, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->maxWaitMillis:J

    .line 163
    iput-wide v6, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->minEvictableIdleTimeMillis:J

    .line 166
    iput-wide v6, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->softMinEvictableIdleTimeMillis:J

    .line 169
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->numTestsPerEvictionRun:I

    .line 172
    const-string v0, "org.apache.commons.pool2.impl.DefaultEvictionPolicy"

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->evictionPolicyClassName:Ljava/lang/String;

    .line 174
    iput-boolean v1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->testOnCreate:Z

    .line 176
    iput-boolean v1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->testOnBorrow:Z

    .line 178
    iput-boolean v1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->testOnReturn:Z

    .line 180
    iput-boolean v1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->testWhileIdle:Z

    .line 182
    iput-wide v4, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->timeBetweenEvictionRunsMillis:J

    .line 185
    iput-boolean v2, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->blockWhenExhausted:Z

    .line 187
    iput-boolean v2, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->jmxEnabled:Z

    .line 190
    const-string v0, "pool"

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->jmxNamePrefix:Ljava/lang/String;

    .line 192
    sget-object v0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->DEFAULT_JMX_NAME_BASE:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->jmxNameBase:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBlockWhenExhausted()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->blockWhenExhausted:Z

    return v0
.end method

.method public getEvictionPolicyClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->evictionPolicyClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getFairness()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->fairness:Z

    return v0
.end method

.method public getJmxEnabled()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->jmxEnabled:Z

    return v0
.end method

.method public getJmxNameBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->jmxNameBase:Ljava/lang/String;

    return-object v0
.end method

.method public getJmxNamePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->jmxNamePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getLifo()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->lifo:Z

    return v0
.end method

.method public getMaxWaitMillis()J
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->maxWaitMillis:J

    return-wide v0
.end method

.method public getMinEvictableIdleTimeMillis()J
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->minEvictableIdleTimeMillis:J

    return-wide v0
.end method

.method public getNumTestsPerEvictionRun()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->numTestsPerEvictionRun:I

    return v0
.end method

.method public getSoftMinEvictableIdleTimeMillis()J
    .locals 2

    .prologue
    .line 319
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->softMinEvictableIdleTimeMillis:J

    return-wide v0
.end method

.method public getTestOnBorrow()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->testOnBorrow:Z

    return v0
.end method

.method public getTestOnCreate()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->testOnCreate:Z

    return v0
.end method

.method public getTestOnReturn()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->testOnReturn:Z

    return v0
.end method

.method public getTestWhileIdle()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->testWhileIdle:Z

    return v0
.end method

.method public getTimeBetweenEvictionRunsMillis()J
    .locals 2

    .prologue
    .line 494
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->timeBetweenEvictionRunsMillis:J

    return-wide v0
.end method

.method public setBlockWhenExhausted(Z)V
    .locals 0
    .param p1, "blockWhenExhausted"    # Z

    .prologue
    .line 566
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->blockWhenExhausted:Z

    .line 567
    return-void
.end method

.method public setEvictionPolicyClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "evictionPolicyClassName"    # Ljava/lang/String;

    .prologue
    .line 538
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->evictionPolicyClassName:Ljava/lang/String;

    .line 539
    return-void
.end method

.method public setFairness(Z)V
    .locals 0
    .param p1, "fairness"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->fairness:Z

    .line 249
    return-void
.end method

.method public setJmxEnabled(Z)V
    .locals 0
    .param p1, "jmxEnabled"    # Z

    .prologue
    .line 588
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->jmxEnabled:Z

    .line 589
    return-void
.end method

.method public setJmxNameBase(Ljava/lang/String;)V
    .locals 0
    .param p1, "jmxNameBase"    # Ljava/lang/String;

    .prologue
    .line 614
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->jmxNameBase:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public setJmxNamePrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "jmxNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 638
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->jmxNamePrefix:Ljava/lang/String;

    .line 639
    return-void
.end method

.method public setLifo(Z)V
    .locals 0
    .param p1, "lifo"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->lifo:Z

    .line 235
    return-void
.end method

.method public setMaxWaitMillis(J)V
    .locals 1
    .param p1, "maxWaitMillis"    # J

    .prologue
    .line 276
    iput-wide p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->maxWaitMillis:J

    .line 277
    return-void
.end method

.method public setMinEvictableIdleTimeMillis(J)V
    .locals 1
    .param p1, "minEvictableIdleTimeMillis"    # J

    .prologue
    .line 304
    iput-wide p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->minEvictableIdleTimeMillis:J

    .line 305
    return-void
.end method

.method public setNumTestsPerEvictionRun(I)V
    .locals 0
    .param p1, "numTestsPerEvictionRun"    # I

    .prologue
    .line 364
    iput p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->numTestsPerEvictionRun:I

    .line 365
    return-void
.end method

.method public setSoftMinEvictableIdleTimeMillis(J)V
    .locals 1
    .param p1, "softMinEvictableIdleTimeMillis"    # J

    .prologue
    .line 336
    iput-wide p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->softMinEvictableIdleTimeMillis:J

    .line 337
    return-void
.end method

.method public setTestOnBorrow(Z)V
    .locals 0
    .param p1, "testOnBorrow"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->testOnBorrow:Z

    .line 425
    return-void
.end method

.method public setTestOnCreate(Z)V
    .locals 0
    .param p1, "testOnCreate"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->testOnCreate:Z

    .line 397
    return-void
.end method

.method public setTestOnReturn(Z)V
    .locals 0
    .param p1, "testOnReturn"    # Z

    .prologue
    .line 452
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->testOnReturn:Z

    .line 453
    return-void
.end method

.method public setTestWhileIdle(Z)V
    .locals 0
    .param p1, "testWhileIdle"    # Z

    .prologue
    .line 480
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->testWhileIdle:Z

    .line 481
    return-void
.end method

.method public setTimeBetweenEvictionRunsMillis(J)V
    .locals 1
    .param p1, "timeBetweenEvictionRunsMillis"    # J

    .prologue
    .line 510
    iput-wide p1, p0, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->timeBetweenEvictionRunsMillis:J

    .line 511
    return-void
.end method

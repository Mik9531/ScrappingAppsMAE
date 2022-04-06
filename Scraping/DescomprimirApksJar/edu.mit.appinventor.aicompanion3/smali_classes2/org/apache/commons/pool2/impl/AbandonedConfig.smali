.class public Lorg/apache/commons/pool2/impl/AbandonedConfig;
.super Ljava/lang/Object;
.source "AbandonedConfig.java"


# instance fields
.field private logAbandoned:Z

.field private logWriter:Ljava/io/PrintWriter;

.field private removeAbandonedOnBorrow:Z

.field private removeAbandonedOnMaintenance:Z

.field private removeAbandonedTimeout:I

.field private useUsageTracking:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->removeAbandonedOnBorrow:Z

    .line 71
    iput-boolean v2, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->removeAbandonedOnMaintenance:Z

    .line 107
    const/16 v0, 0x12c

    iput v0, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->removeAbandonedTimeout:I

    .line 144
    iput-boolean v2, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->logAbandoned:Z

    .line 178
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->logWriter:Ljava/io/PrintWriter;

    .line 206
    iput-boolean v2, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->useUsageTracking:Z

    return-void
.end method


# virtual methods
.method public getLogAbandoned()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->logAbandoned:Z

    return v0
.end method

.method public getLogWriter()Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->logWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public getRemoveAbandonedOnBorrow()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->removeAbandonedOnBorrow:Z

    return v0
.end method

.method public getRemoveAbandonedOnMaintenance()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->removeAbandonedOnMaintenance:Z

    return v0
.end method

.method public getRemoveAbandonedTimeout()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->removeAbandonedTimeout:I

    return v0
.end method

.method public getUseUsageTracking()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->useUsageTracking:Z

    return v0
.end method

.method public setLogAbandoned(Z)V
    .locals 0
    .param p1, "logAbandoned"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->logAbandoned:Z

    .line 172
    return-void
.end method

.method public setLogWriter(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "logWriter"    # Ljava/io/PrintWriter;

    .prologue
    .line 198
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->logWriter:Ljava/io/PrintWriter;

    .line 199
    return-void
.end method

.method public setRemoveAbandonedOnBorrow(Z)V
    .locals 0
    .param p1, "removeAbandonedOnBorrow"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->removeAbandonedOnBorrow:Z

    .line 65
    return-void
.end method

.method public setRemoveAbandonedOnMaintenance(Z)V
    .locals 0
    .param p1, "removeAbandonedOnMaintenance"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->removeAbandonedOnMaintenance:Z

    .line 102
    return-void
.end method

.method public setRemoveAbandonedTimeout(I)V
    .locals 0
    .param p1, "removeAbandonedTimeout"    # I

    .prologue
    .line 137
    iput p1, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->removeAbandonedTimeout:I

    .line 138
    return-void
.end method

.method public setUseUsageTracking(Z)V
    .locals 0
    .param p1, "useUsageTracking"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/AbandonedConfig;->useUsageTracking:Z

    .line 231
    return-void
.end method

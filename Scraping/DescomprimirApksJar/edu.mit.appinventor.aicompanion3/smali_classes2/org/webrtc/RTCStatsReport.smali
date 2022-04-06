.class public Lorg/webrtc/RTCStatsReport;
.super Ljava/lang/Object;
.source "RTCStatsReport.java"


# instance fields
.field private final stats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/RTCStats;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampUs:J


# direct methods
.method public constructor <init>(JLjava/util/Map;)V
    .locals 1
    .param p1, "timestampUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/RTCStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/webrtc/RTCStats;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lorg/webrtc/RTCStatsReport;->timestampUs:J

    .line 26
    iput-object p3, p0, Lorg/webrtc/RTCStatsReport;->stats:Ljava/util/Map;

    .line 27
    return-void
.end method


# virtual methods
.method public getStatsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/RTCStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/webrtc/RTCStatsReport;->stats:Ljava/util/Map;

    return-object v0
.end method

.method public getTimestampUs()D
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/webrtc/RTCStatsReport;->timestampUs:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "{ timestampUs: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/webrtc/RTCStatsReport;->timestampUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", stats: [\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const/4 v1, 0x1

    .line 44
    .local v1, "first":Z
    iget-object v3, p0, Lorg/webrtc/RTCStatsReport;->stats:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/RTCStats;

    .line 45
    .local v2, "stat":Lorg/webrtc/RTCStats;
    if-nez v1, :cond_0

    .line 46
    const-string v4, ",\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const/4 v1, 0x0

    .line 50
    goto :goto_0

    .line 51
    .end local v2    # "stat":Lorg/webrtc/RTCStats;
    :cond_1
    const-string v3, " ] }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

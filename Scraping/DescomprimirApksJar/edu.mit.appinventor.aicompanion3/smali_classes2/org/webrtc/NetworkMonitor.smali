.class public Lorg/webrtc/NetworkMonitor;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/NetworkMonitor$NetworkObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"

.field private static instance:Lorg/webrtc/NetworkMonitor;


# instance fields
.field private autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

.field private currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

.field private final nativeNetworkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final networkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/webrtc/NetworkMonitor$NetworkObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/NetworkMonitor;Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/NetworkMonitor;
    .param p1, "x1"    # Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->updateCurrentConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/NetworkMonitor;Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/NetworkMonitor;
    .param p1, "x1"    # Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfNetworkConnect(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/NetworkMonitor;J)V
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/NetworkMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfNetworkDisconnect(J)V

    return-void
.end method

.method public static addNetworkObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p0, "observer"    # Lorg/webrtc/NetworkMonitor$NetworkObserver;

    .prologue
    .line 192
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;->addNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V

    .line 193
    return-void
.end method

.method private addNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/webrtc/NetworkMonitor$NetworkObserver;

    .prologue
    .line 196
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method private static androidSdkInt()I
    .locals 1

    .prologue
    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static assertIsTrue(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Expected to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 77
    :cond_0
    return-void
.end method

.method private createAutoDetector()V
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lorg/webrtc/NetworkMonitorAutoDetect;

    new-instance v1, Lorg/webrtc/NetworkMonitor$1;

    invoke-direct {v1, p0}, Lorg/webrtc/NetworkMonitor$1;-><init>(Lorg/webrtc/NetworkMonitor;)V

    .line 145
    invoke-static {}, Lorg/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/webrtc/NetworkMonitorAutoDetect;-><init>(Lorg/webrtc/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    .line 146
    return-void
.end method

.method static createAutoDetectorForTest()V
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0}, Lorg/webrtc/NetworkMonitor;->createAutoDetector()V

    .line 232
    return-void
.end method

.method static getAutoDetectorForTest()Lorg/webrtc/NetworkMonitorAutoDetect;
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    iget-object v0, v0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    return-object v0
.end method

.method private getCurrentConnectionType()Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object v0
.end method

.method private getCurrentDefaultNetId()J
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getDefaultNetId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getInstance()Lorg/webrtc/NetworkMonitor;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lorg/webrtc/NetworkMonitor;

    invoke-direct {v0}, Lorg/webrtc/NetworkMonitor;-><init>()V

    sput-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    .line 70
    :cond_0
    sget-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    return-void
.end method

.method public static isOnline()Z
    .locals 2

    .prologue
    .line 214
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v1

    invoke-direct {v1}, Lorg/webrtc/NetworkMonitor;->getCurrentConnectionType()Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    .line 215
    .local v0, "connectionType":Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    sget-object v1, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native nativeNotifyConnectionTypeChanged(J)V
.end method

.method private native nativeNotifyOfActiveNetworkList(J[Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkConnect(JLorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkDisconnect(JJ)V
.end method

.method private networkBindingSupported()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->supportNetworkCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyObserversOfConnectionTypeChange(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 5
    .param p1, "newConnectionType"    # Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .prologue
    .line 157
    iget-object v3, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 158
    .local v0, "nativeObserver":J
    invoke-direct {p0, v0, v1}, Lorg/webrtc/NetworkMonitor;->nativeNotifyConnectionTypeChanged(J)V

    goto :goto_0

    .line 160
    .end local v0    # "nativeObserver":J
    :cond_0
    iget-object v3, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/NetworkMonitor$NetworkObserver;

    .line 161
    .local v2, "observer":Lorg/webrtc/NetworkMonitor$NetworkObserver;
    invoke-interface {v2, p1}, Lorg/webrtc/NetworkMonitor$NetworkObserver;->onConnectionTypeChanged(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    goto :goto_1

    .line 163
    .end local v2    # "observer":Lorg/webrtc/NetworkMonitor$NetworkObserver;
    :cond_1
    return-void
.end method

.method private notifyObserversOfNetworkConnect(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 4
    .param p1, "networkInfo"    # Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .prologue
    .line 166
    iget-object v2, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 167
    .local v0, "nativeObserver":J
    invoke-direct {p0, v0, v1, p1}, Lorg/webrtc/NetworkMonitor;->nativeNotifyOfNetworkConnect(JLorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    goto :goto_0

    .line 169
    .end local v0    # "nativeObserver":J
    :cond_0
    return-void
.end method

.method private notifyObserversOfNetworkDisconnect(J)V
    .locals 5
    .param p1, "networkHandle"    # J

    .prologue
    .line 172
    iget-object v2, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 173
    .local v0, "nativeObserver":J
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/webrtc/NetworkMonitor;->nativeNotifyOfNetworkDisconnect(JJ)V

    goto :goto_0

    .line 175
    .end local v0    # "nativeObserver":J
    :cond_0
    return-void
.end method

.method public static removeNetworkObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p0, "observer"    # Lorg/webrtc/NetworkMonitor$NetworkObserver;

    .prologue
    .line 203
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;->removeNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V

    .line 204
    return-void
.end method

.method private removeNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/webrtc/NetworkMonitor$NetworkObserver;

    .prologue
    .line 207
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method static resetInstanceForTests()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lorg/webrtc/NetworkMonitor;

    invoke-direct {v0}, Lorg/webrtc/NetworkMonitor;-><init>()V

    sput-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    .line 227
    return-void
.end method

.method private startMonitoring(J)V
    .locals 5
    .param p1, "nativeObserver"    # J

    .prologue
    .line 87
    const-string v1, "NetworkMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start monitoring from native observer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    if-nez v1, :cond_0

    .line 90
    invoke-direct {p0}, Lorg/webrtc/NetworkMonitor;->createAutoDetector()V

    .line 93
    :cond_0
    iget-object v1, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    .line 94
    invoke-virtual {v1}, Lorg/webrtc/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    .line 95
    .local v0, "networkState":Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;
    invoke-static {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/NetworkMonitor;->updateCurrentConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 96
    invoke-direct {p0, p1, p2}, Lorg/webrtc/NetworkMonitor;->updateObserverActiveNetworkList(J)V

    .line 97
    return-void
.end method

.method private stopMonitoring(J)V
    .locals 3
    .param p1, "nativeObserver"    # J

    .prologue
    .line 101
    const-string v0, "NetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop monitoring from native observer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->destroy()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    .line 107
    :cond_0
    return-void
.end method

.method private updateCurrentConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 0
    .param p1, "newConnectionType"    # Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .prologue
    .line 149
    iput-object p1, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 150
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 151
    return-void
.end method

.method private updateObserverActiveNetworkList(J)V
    .locals 3
    .param p1, "nativeObserver"    # J

    .prologue
    .line 178
    iget-object v2, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v2}, Lorg/webrtc/NetworkMonitorAutoDetect;->getActiveNetworkList()Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "networkInfoList":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 184
    .local v1, "networkInfos":[Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "networkInfos":[Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;
    check-cast v1, [Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 185
    .restart local v1    # "networkInfos":[Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;
    invoke-direct {p0, p1, p2, v1}, Lorg/webrtc/NetworkMonitor;->nativeNotifyOfActiveNetworkList(J[Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    goto :goto_0
.end method

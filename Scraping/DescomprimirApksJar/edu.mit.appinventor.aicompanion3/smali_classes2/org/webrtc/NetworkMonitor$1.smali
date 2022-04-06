.class Lorg/webrtc/NetworkMonitor$1;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Lorg/webrtc/NetworkMonitorAutoDetect$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/NetworkMonitor;->createAutoDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/NetworkMonitor;


# direct methods
.method constructor <init>(Lorg/webrtc/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/NetworkMonitor;

    .prologue
    .line 129
    iput-object p1, p0, Lorg/webrtc/NetworkMonitor$1;->this$0:Lorg/webrtc/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 1
    .param p1, "newConnectionType"    # Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor$1;->this$0:Lorg/webrtc/NetworkMonitor;

    invoke-static {v0, p1}, Lorg/webrtc/NetworkMonitor;->access$000(Lorg/webrtc/NetworkMonitor;Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 134
    return-void
.end method

.method public onNetworkConnect(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 1
    .param p1, "networkInfo"    # Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .prologue
    .line 138
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor$1;->this$0:Lorg/webrtc/NetworkMonitor;

    invoke-static {v0, p1}, Lorg/webrtc/NetworkMonitor;->access$100(Lorg/webrtc/NetworkMonitor;Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    .line 139
    return-void
.end method

.method public onNetworkDisconnect(J)V
    .locals 1
    .param p1, "networkHandle"    # J

    .prologue
    .line 143
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor$1;->this$0:Lorg/webrtc/NetworkMonitor;

    invoke-static {v0, p1, p2}, Lorg/webrtc/NetworkMonitor;->access$200(Lorg/webrtc/NetworkMonitor;J)V

    .line 144
    return-void
.end method

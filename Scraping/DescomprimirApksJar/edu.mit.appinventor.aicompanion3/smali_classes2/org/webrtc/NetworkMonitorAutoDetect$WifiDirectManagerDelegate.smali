.class Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiDirectManagerDelegate"
.end annotation


# static fields
.field private static final WIFI_P2P_NETWORK_HANDLE:I


# instance fields
.field private final context:Landroid/content/Context;

.field private final observer:Lorg/webrtc/NetworkMonitorAutoDetect$Observer;

.field private wifiP2pNetworkInfo:Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;


# direct methods
.method constructor <init>(Lorg/webrtc/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V
    .locals 2
    .param p1, "observer"    # Lorg/webrtc/NetworkMonitorAutoDetect$Observer;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 421
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 419
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->wifiP2pNetworkInfo:Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 422
    iput-object p2, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->context:Landroid/content/Context;

    .line 423
    iput-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->observer:Lorg/webrtc/NetworkMonitorAutoDetect$Observer;

    .line 424
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 425
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    return-void
.end method

.method private onWifiP2pGroupChange(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 10
    .param p1, "wifiP2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 458
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 470
    .local v9, "wifiP2pInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v9}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v8

    .line 471
    .local v8, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [Lorg/webrtc/NetworkMonitorAutoDetect$IPAddress;

    .line 472
    .local v6, "ipAddresses":[Lorg/webrtc/NetworkMonitorAutoDetect$IPAddress;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 473
    new-instance v2, Lorg/webrtc/NetworkMonitorAutoDetect$IPAddress;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/webrtc/NetworkMonitorAutoDetect$IPAddress;-><init>([B)V

    aput-object v2, v6, v7

    .line 472
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 465
    .end local v6    # "ipAddresses":[Lorg/webrtc/NetworkMonitorAutoDetect$IPAddress;
    .end local v7    # "i":I
    .end local v8    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v9    # "wifiP2pInterface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/net/SocketException;
    const-string v1, "NetworkMonitorAutoDetect"

    const-string v2, "Unable to get WifiP2p network interface"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 476
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v6    # "ipAddresses":[Lorg/webrtc/NetworkMonitorAutoDetect$IPAddress;
    .restart local v7    # "i":I
    .restart local v8    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v9    # "wifiP2pInterface":Ljava/net/NetworkInterface;
    :cond_2
    new-instance v1, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 478
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_WIFI:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;-><init>(Ljava/lang/String;Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;J[Lorg/webrtc/NetworkMonitorAutoDetect$IPAddress;)V

    iput-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->wifiP2pNetworkInfo:Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 482
    iget-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->observer:Lorg/webrtc/NetworkMonitorAutoDetect$Observer;

    iget-object v2, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->wifiP2pNetworkInfo:Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    invoke-interface {v1, v2}, Lorg/webrtc/NetworkMonitorAutoDetect$Observer;->onNetworkConnect(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    goto :goto_0
.end method

.method private onWifiP2pStateChange(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 487
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->wifiP2pNetworkInfo:Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 489
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->observer:Lorg/webrtc/NetworkMonitorAutoDetect$Observer;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lorg/webrtc/NetworkMonitorAutoDetect$Observer;->onNetworkDisconnect(J)V

    .line 491
    :cond_0
    return-void
.end method


# virtual methods
.method public getActiveNetworkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->wifiP2pNetworkInfo:Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->wifiP2pNetworkInfo:Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 453
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 434
    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    const-string v2, "p2pGroupInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 436
    .local v1, "wifiP2pGroup":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-direct {p0, v1}, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->onWifiP2pGroupChange(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 441
    .end local v1    # "wifiP2pGroup":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    const-string v2, "wifi_p2p_state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 439
    .local v0, "state":I
    invoke-direct {p0, v0}, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->onWifiP2pStateChange(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 446
    return-void
.end method

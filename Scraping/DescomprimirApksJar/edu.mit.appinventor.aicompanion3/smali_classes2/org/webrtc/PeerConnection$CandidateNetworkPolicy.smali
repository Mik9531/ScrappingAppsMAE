.class public final enum Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CandidateNetworkPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

.field public static final enum ALL:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

.field public static final enum LOW_COST:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    new-instance v0, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;->ALL:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    new-instance v0, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    const-string v1, "LOW_COST"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;->LOW_COST:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    sget-object v1, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;->ALL:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;->LOW_COST:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;->$VALUES:[Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 213
    const-class v0, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;->$VALUES:[Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    invoke-virtual {v0}, [Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    return-object v0
.end method

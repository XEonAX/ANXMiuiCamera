.class public Landroid/support/v4/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;,
        Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;,
        Landroid/support/v4/net/ConnectivityManagerCompat$GingerbreadConnectivityManagerCompatImpl;,
        Landroid/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;,
        Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1a

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_22

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2a

    .line 91
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    .line 93
    :goto_19
    return-void

    .line 85
    :cond_1a
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    goto :goto_19

    .line 87
    :cond_22
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    goto :goto_19

    .line 89
    :cond_2a
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$GingerbreadConnectivityManagerCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$GingerbreadConnectivityManagerCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    goto :goto_19
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static getNetworkInfoFromBroadcast(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;
    .registers 5
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 114
    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 115
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_d

    .line 118
    return-object v2

    .line 116
    :cond_d
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .registers 2
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 103
    sget-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method

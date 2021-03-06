.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$GetDefaultRouteWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetDefaultRouteWorkaround"
.end annotation


# instance fields
.field private mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_f

    .line 337
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 336
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_9

    .line 340
    const/4 v0, 0x0

    :try_start_16
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/media/MediaRouter;

    const-string/jumbo v2, "getSystemAudioRoute"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_23} :catch_24

    .line 344
    :goto_23
    return-void

    .line 342
    :catch_24
    move-exception v0

    goto :goto_23
.end method


# virtual methods
.method public getDefaultRoute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "routerObj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    move-object v1, p1

    .line 347
    check-cast v1, Landroid/media/MediaRouter;

    .line 349
    .local v1, "router":Landroid/media/MediaRouter;
    iget-object v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_d

    .line 359
    :goto_8
    invoke-virtual {v1, v4}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    return-object v2

    .line 351
    :cond_d
    :try_start_d
    iget-object v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_15} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_15} :catch_19

    move-result-object v2

    return-object v2

    .line 352
    :catch_17
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalAccessException;
    goto :goto_8

    .line 353
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_19
    move-exception v2

    goto :goto_8
.end method

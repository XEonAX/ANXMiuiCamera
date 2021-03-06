.class Lcom/android/camera/module/VideoBase$2;
.super Ljava/lang/Object;
.source "VideoBase.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoBase;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/VideoBase;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    .line 1473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    return v0
.end method

.method public notifyDevicePostureChanged()V
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getEdgeShutterView()Lcom/android/camera/ui/V9EdgeShutterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->onDevicePostureChanged()V

    .line 1516
    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 2

    .prologue
    .line 1477
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeviceBecomeStable"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 0

    .prologue
    .line 1501
    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 7
    .param p1, "a"    # D

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isEvAdjusted(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoBase;->mPaused:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-wide v2, v2, Lcom/android/camera/module/VideoBase;->mTouchFocusStartingTime:J

    const-wide/16 v4, 0xbb8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    .line 1487
    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onDeviceKeepMoving(D)V

    .line 1496
    :cond_0
    return-void
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 0
    .param p1, "orientation"    # F
    .param p2, "isLying"    # Z

    .prologue
    .line 1511
    return-void
.end method

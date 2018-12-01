.class public Lcom/android/camera/ProximitySensorLock;
.super Ljava/lang/Object;
.source "ProximitySensorLock.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final SHORTCUT_UNLOCK:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFromVolumeKey:Z

.field private mHintView:Landroid/view/View;

.field private volatile mJudged:Z

.field private mKeyPressed:I

.field private mKeyPressing:I

.field private mProximityNear:Ljava/lang/Boolean;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private volatile mResumeCalled:Z

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ProximitySensorLock;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ProximitySensorLock;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ProximitySensorLock;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ProximitySensorLock;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;
    .param p1, "-value"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ProximitySensorLock;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->isFromSnap()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ProximitySensorLock;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->doShow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ProximitySensorLock;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->exit()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/ProximitySensorLock;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->judge()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/camera/ProximitySensorLock;->getKeyBitmask(I)I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/android/camera/ProximitySensorLock;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 72
    sput v0, Lcom/android/camera/ProximitySensorLock;->SHORTCUT_UNLOCK:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    .line 78
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 79
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 80
    const/high16 v2, 0x800000

    .line 79
    and-int/2addr v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    .line 85
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->resetKeyStatus()V

    .line 86
    iput-boolean v1, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Proximity sensor lock"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    .line 88
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v0, Lcom/android/camera/ProximitySensorLock$1;

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ProximitySensorLock$1;-><init>(Lcom/android/camera/ProximitySensorLock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    .line 115
    return-void

    :cond_0
    move v0, v1

    .line 79
    goto :goto_0

    .line 83
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    goto :goto_1
.end method

.method private doShow()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const-wide/16 v8, 0x1f4

    .line 283
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 284
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    return-void

    .line 290
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 291
    .local v3, "content":Landroid/widget/FrameLayout;
    if-nez v3, :cond_2

    .line 292
    return-void

    .line 294
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    if-nez v4, :cond_3

    .line 295
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->inflateHint()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    .line 297
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 299
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v10, v6, v7

    aput v11, v6, v12

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 300
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 301
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 303
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v11, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 304
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 305
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 306
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 307
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 309
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    const v5, 0x7f0a0083

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, "animationView":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 311
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->resetKeyStatus()V

    .line 312
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v12, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 313
    return-void
.end method

.method public static enabled()Z
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->supported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isProximityLockOpen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isNonUIEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private exit()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    return-void

    .line 359
    :cond_1
    const-string/jumbo v0, "ProximitySensorLock"

    const-string/jumbo v1, "Finish activity, exiting."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 361
    return-void
.end method

.method private static getKeyBitmask(I)I
    .locals 1
    .param p0, "keycode"    # I

    .prologue
    .line 192
    sparse-switch p0, :sswitch_data_0

    .line 207
    const/4 v0, 0x1

    return v0

    .line 195
    :sswitch_0
    const/4 v0, 0x2

    return v0

    .line 197
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 199
    :sswitch_2
    const/16 v0, 0x8

    return v0

    .line 201
    :sswitch_3
    const/16 v0, 0x10

    return v0

    .line 203
    :sswitch_4
    const/16 v0, 0x20

    return v0

    .line 205
    :sswitch_5
    const/16 v0, 0x40

    return v0

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1a -> :sswitch_3
        0x52 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->resetKeyStatus()V

    .line 322
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/camera/ProximitySensorLock$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ProximitySensorLock$3;-><init>(Lcom/android/camera/ProximitySensorLock;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 339
    :cond_1
    return-void
.end method

.method private inflateHint()Landroid/view/View;
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040027

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private isFromSnap()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private judge()V
    .locals 2

    .prologue
    .line 168
    iget-boolean v1, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 169
    :goto_0
    if-eqz v0, :cond_1

    .line 170
    const-string/jumbo v1, "Psensor\u97f3\u91cf\u952e"

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtil;->trackPocketModeEnter(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWatching()V

    .line 172
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->exit()V

    .line 179
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 180
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    .local v0, "quit":Z
    goto :goto_0

    .line 173
    .end local v0    # "quit":Z
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    const-string/jumbo v1, "Psensor\u9501\u5c4f\u8fdb\u5165"

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtil;->trackPocketModeEnter(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->show()V

    goto :goto_1

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWatching()V

    goto :goto_1
.end method

.method private resetKeyStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 316
    iput v0, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressed:I

    .line 317
    iput v0, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    .line 318
    return-void
.end method

.method private shouldBeBlocked(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 212
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 214
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 223
    const/4 v0, 0x1

    return v0

    .line 221
    :sswitch_0
    return v1

    .line 214
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method private show()V
    .locals 2

    .prologue
    .line 268
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/camera/ProximitySensorLock$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ProximitySensorLock$2;-><init>(Lcom/android/camera/ProximitySensorLock;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 279
    :cond_2
    return-void
.end method

.method private stopWatching()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 241
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    .line 242
    return-void

    .line 244
    :cond_0
    const-string/jumbo v1, "ProximitySensorLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopWatching proximity sensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 246
    .local v0, "sm":Landroid/hardware/SensorManager;
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 247
    iput-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    .line 250
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWorkerThread()V

    .line 251
    return-void
.end method

.method private stopWorkerThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 260
    :goto_0
    iput-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    .line 262
    :cond_0
    iput-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    .line 263
    iput-boolean v3, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 264
    iput-boolean v3, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    .line 265
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0
.end method

.method public static supported()Z
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/android/camera/Device;->isSupportPSensorPocketMode()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public active()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    const-string/jumbo v0, "ProximitySensorLock"

    const-string/jumbo v1, "destroying"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->hide()V

    .line 344
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWatching()V

    .line 345
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWorkerThread()V

    .line 346
    iput-boolean v2, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 347
    iput-boolean v2, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    .line 349
    return-void
.end method

.method public intercept(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/ProximitySensorLock;->shouldBeBlocked(Landroid/view/KeyEvent;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 131
    :cond_0
    return v4

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v0, 0x1

    .line 135
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 136
    .local v2, "keyCode":I
    invoke-static {v2}, Lcom/android/camera/ProximitySensorLock;->getKeyBitmask(I)I

    move-result v1

    .line 137
    .local v1, "keyBitMask":I
    iget v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    if-nez v3, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->resetKeyStatus()V

    .line 140
    :cond_2
    if-eqz v0, :cond_5

    .line 141
    iget v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressed:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressed:I

    .line 142
    iget v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    .line 146
    :goto_1
    iget v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressed:I

    sget v4, Lcom/android/camera/ProximitySensorLock;->SHORTCUT_UNLOCK:I

    if-ne v3, v4, :cond_3

    .line 147
    const-string/jumbo v3, "\u9501\u5c4f\u624b\u52a8\u89e3\u9664"

    invoke-static {v3}, Lcom/android/camera/statistic/CameraStatUtil;->trackPocketModeExit(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->hide()V

    .line 149
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWatching()V

    .line 151
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 134
    .end local v0    # "down":Z
    .end local v1    # "keyBitMask":I
    .end local v2    # "keyCode":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "down":Z
    goto :goto_0

    .line 144
    .restart local v1    # "keyBitMask":I
    .restart local v2    # "keyCode":I
    :cond_5
    iget v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    not-int v4, v1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    goto :goto_1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 407
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 155
    const-string/jumbo v0, "ProximitySensorLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mFromVolumeKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mProximityNear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    .line 161
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 162
    return-void

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->judge()V

    .line 165
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 365
    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 367
    .local v2, "firstCallback":Z
    :goto_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 368
    .local v1, "far":Z
    :goto_1
    const-string/jumbo v3, "ProximitySensorLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSensorChanged near "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", values "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", max "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    xor-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    .line 371
    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    if-nez v3, :cond_3

    .line 373
    return-void

    .line 365
    .end local v1    # "far":Z
    .end local v2    # "firstCallback":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "firstCallback":Z
    goto :goto_0

    .line 367
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "far":Z
    goto :goto_1

    .line 375
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 376
    .local v0, "beforeDelayCheck":Z
    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->isFromSnap()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 378
    return-void

    .line 381
    :cond_4
    iget-boolean v3, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    if-nez v3, :cond_5

    .line 382
    return-void

    .line 385
    :cond_5
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 386
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->judge()V

    .line 387
    return-void

    .line 389
    :cond_6
    iget-boolean v3, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    if-eqz v3, :cond_7

    .line 391
    if-eqz v1, :cond_8

    .line 392
    const-string/jumbo v3, "\u9501\u5c4f\u81ea\u52a8\u89e3\u9664"

    invoke-static {v3}, Lcom/android/camera/statistic/CameraStatUtil;->trackPocketModeExit(Ljava/lang/String;)V

    .line 393
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->hide()V

    .line 399
    :cond_7
    :goto_2
    return-void

    .line 395
    :cond_8
    const-string/jumbo v3, "Psensor\u9501\u5c4f\u8fdb\u5165"

    invoke-static {v3}, Lcom/android/camera/statistic/CameraStatUtil;->trackPocketModeEnter(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->show()V

    goto :goto_2
.end method

.method public shouldQuitSnap()Z
    .locals 4

    .prologue
    .line 183
    const-string/jumbo v1, "ProximitySensorLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldQuit fromSnap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->isFromSnap()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", proximity ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->isFromSnap()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 185
    :goto_0
    if-eqz v0, :cond_0

    .line 186
    const-string/jumbo v1, "Psensor\u8857\u62cd"

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtil;->trackPocketModeEnter(Ljava/lang/String;)V

    .line 188
    :cond_0
    return v0

    .line 184
    :cond_1
    const/4 v0, 0x1

    .local v0, "quit":Z
    goto :goto_0

    .end local v0    # "quit":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "quit":Z
    goto :goto_0
.end method

.method public startWatching()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 227
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 228
    :cond_0
    return-void

    .line 230
    :cond_1
    const-string/jumbo v1, "ProximitySensorLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startWatching proximity sensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput-boolean v4, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 232
    iput-boolean v4, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    .line 233
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 234
    .local v0, "sm":Landroid/hardware/SensorManager;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    .line 235
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 236
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 238
    return-void
.end method

.class Landroid/support/v4/widget/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

.field final synthetic val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .registers 3

    .prologue
    .line 364
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 16
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 367
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-boolean v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    if-nez v10, :cond_89

    .line 372
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-static {v10, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$100(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result v3

    .line 373
    .local v3, "minProgressArc":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v7

    .line 374
    .local v7, "startingEndTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v9

    .line 375
    .local v9, "startingTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v8

    .line 377
    .local v8, "startingRotation":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-static {v10, p1, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$200(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 381
    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v10, p1, v10

    if-gtz v10, :cond_45

    .line 385
    const/high16 v10, 0x3f000000    # 0.5f

    div-float v5, p1, v10

    .line 387
    .local v5, "scaledTime":F
    const v10, 0x3f4ccccd    # 0.8f

    sub-float/2addr v10, v3

    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    .line 390
    .local v6, "startTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v6}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 395
    .end local v5    # "scaledTime":F
    .end local v6    # "startTrim":F
    :cond_45
    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v10, p1, v10

    if-lez v10, :cond_68

    .line 399
    const v10, 0x3f4ccccd    # 0.8f

    sub-float v2, v10, v3

    .line 400
    .local v2, "minArc":F
    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v10, p1, v10

    const/high16 v11, 0x3f000000    # 0.5f

    div-float v5, v10, v11

    .line 402
    .restart local v5    # "scaledTime":F
    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v10, v2

    add-float v0, v7, v10

    .line 404
    .local v0, "endTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 407
    .end local v0    # "endTrim":F
    .end local v2    # "minArc":F
    .end local v5    # "scaledTime":F
    :cond_68
    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v10, p1

    add-float v4, v8, v10

    .line 408
    .local v4, "rotation":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 410
    const/high16 v10, 0x43580000    # 216.0f

    mul-float/2addr v10, p1

    iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-static {v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$400(Landroid/support/v4/widget/MaterialProgressDrawable;)F

    move-result v11

    const/high16 v12, 0x40a00000    # 5.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x44870000    # 1080.0f

    mul-float/2addr v11, v12

    add-float v1, v10, v11

    .line 412
    .local v1, "groupRotation":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v10, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    .line 414
    .end local v1    # "groupRotation":F
    .end local v3    # "minProgressArc":F
    .end local v4    # "rotation":F
    .end local v7    # "startingEndTrim":F
    .end local v8    # "startingRotation":F
    .end local v9    # "startingTrim":F
    :goto_88
    return-void

    .line 368
    :cond_89
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-static {v10, p1, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$000(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    goto :goto_88
.end method

.class public Lmiui/view/animation/BackEaseInInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final fk:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/view/animation/BackEaseInInterpolator;-><init>(F)V

    .line 21
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lmiui/view/animation/BackEaseInInterpolator;->fk:F

    .line 28
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5

    .prologue
    .line 32
    iget v0, p0, Lmiui/view/animation/BackEaseInInterpolator;->fk:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    const v0, 0x3fd9cd60

    .line 33
    :goto_a
    mul-float v1, p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    return v0

    .line 32
    :cond_14
    iget v0, p0, Lmiui/view/animation/BackEaseInInterpolator;->fk:F

    goto :goto_a
.end method

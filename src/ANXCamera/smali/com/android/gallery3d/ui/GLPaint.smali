.class public Lcom/android/gallery3d/ui/GLPaint;
.super Ljava/lang/Object;
.source "GLPaint.java"


# instance fields
.field private mColor:I

.field private mLineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/gallery3d/ui/GLPaint;->mLineWidth:F

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/GLPaint;->mColor:I

    .line 19
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/android/gallery3d/ui/GLPaint;->mColor:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/ui/GLPaint;->mLineWidth:F

    return v0
.end method

.class Lcom/android/camera/effect/renders/TextWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;
.source "TextWaterMark.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final PIC_WIDTHS:[[I

.field private final WATERMARK_FONT_SIZES:[[I

.field private mCenterX:I

.field private mCenterY:I

.field private mCharMargin:I

.field private mFontIndex:I

.field private mPadding:I

.field private mWaterHeight:I

.field private mWaterText:Ljava/lang/String;

.field private mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field private mWaterWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/android/camera/effect/renders/TextWaterMark;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/renders/TextWaterMark;->TAG:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 52
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    .line 10
    const/16 v0, 0xb

    new-array v0, v0, [[I

    .line 12
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    .line 13
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    .line 14
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    .line 15
    new-array v1, v3, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 16
    new-array v1, v3, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 17
    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    .line 18
    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    .line 19
    new-array v1, v3, [I

    fill-array-data v1, :array_7

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 20
    new-array v1, v3, [I

    fill-array-data v1, :array_8

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 21
    new-array v1, v3, [I

    fill-array-data v1, :array_9

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 22
    new-array v1, v3, [I

    fill-array-data v1, :array_a

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 10
    iput-object v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->WATERMARK_FONT_SIZES:[[I

    .line 24
    const/16 v0, 0xb

    new-array v0, v0, [[I

    .line 25
    const/16 v1, 0x95

    filled-new-array {v4, v1}, [I

    move-result-object v1

    aput-object v1, v0, v4

    .line 26
    const/16 v1, 0x96

    const/16 v2, 0xef

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 27
    const/16 v1, 0xf0

    const/16 v2, 0x117

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 28
    const/16 v1, 0x118

    const/16 v2, 0x190

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 29
    const/16 v1, 0x191

    const/16 v2, 0x59f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 30
    const/16 v1, 0x5a0

    const/16 v2, 0x5e7

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v6

    .line 31
    const/16 v1, 0x5e8

    const/16 v2, 0x707

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v3

    .line 32
    const/16 v1, 0x708

    const/16 v2, 0x76b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 33
    const/16 v1, 0x76c

    const/16 v2, 0x8fb

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 34
    const/16 v1, 0x8fc

    const/16 v2, 0xc30

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 35
    const/16 v1, 0xc31

    const/16 v2, 0xfa0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 24
    iput-object v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->PIC_WIDTHS:[[I

    .line 54
    iput-object p1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterText:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterText:Ljava/lang/String;

    .line 56
    const/high16 v1, 0x43100000    # 144.0f

    const/4 v3, 0x0

    const v2, -0x40008

    .line 55
    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 57
    invoke-direct {p0, p2, p3}, Lcom/android/camera/effect/renders/TextWaterMark;->getFontIndex(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mFontIndex:I

    .line 58
    iget-object v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterText:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mFontIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/TextWaterMark;->getWaterMarkWidth(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterWidth:I

    .line 59
    iget-object v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->WATERMARK_FONT_SIZES:[[I

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mFontIndex:I

    aget-object v0, v0, v1

    aget v0, v0, v4

    int-to-float v0, v0

    const v1, 0x3f51eb85    # 0.82f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterHeight:I

    .line 60
    iget-object v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->WATERMARK_FONT_SIZES:[[I

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mFontIndex:I

    aget-object v0, v0, v1

    aget v0, v0, v6

    iput v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPadding:I

    .line 61
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterHeight:I

    int-to-float v0, v0

    const v1, 0x3e3851ec    # 0.18f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCharMargin:I

    .line 63
    invoke-direct {p0}, Lcom/android/camera/effect/renders/TextWaterMark;->calcCenterAxis()V

    .line 64
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/android/camera/effect/renders/TextWaterMark;->print()V

    .line 67
    :cond_0
    return-void

    .line 12
    nop

    :array_0
    .array-data 4
        0x5
        0x4
        0x2
        0x4
        0x3
        0x7
    .end array-data

    .line 13
    :array_1
    .array-data 4
        0x8
        0x6
        0x2
        0x6
        0x3
        0x7
    .end array-data

    .line 14
    :array_2
    .array-data 4
        0xb
        0x6
        0x5
        0x6
        0x5
        0xc
    .end array-data

    .line 15
    :array_3
    .array-data 4
        0xc
        0x7
        0x5
        0x7
        0x5
        0xc
    .end array-data

    .line 16
    :array_4
    .array-data 4
        0x32
        0x20
        0xb
        0x1f
        0x14
        0x2f
    .end array-data

    .line 17
    :array_5
    .array-data 4
        0x3a
        0x24
        0x13
        0x26
        0x18
        0x37
    .end array-data

    .line 18
    :array_6
    .array-data 4
        0x41
        0x29
        0x18
        0x2a
        0x1b
        0x3f
    .end array-data

    .line 19
    :array_7
    .array-data 4
        0x50
        0x32
        0x18
        0x32
        0x20
        0x4b
    .end array-data

    .line 20
    :array_8
    .array-data 4
        0x53
        0x34
        0x19
        0x34
        0x21
        0x4e
    .end array-data

    .line 21
    :array_9
    .array-data 4
        0x68
        0x41
        0x21
        0x41
        0x2a
        0x62
    .end array-data

    .line 22
    :array_a
    .array-data 4
        0x80
        0x50
        0x28
        0x50
        0x30
        0x84
    .end array-data
.end method

.method private calcCenterAxis()V
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 104
    :sswitch_0
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCenterX:I

    .line 105
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCharMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCenterY:I

    goto :goto_0

    .line 108
    :sswitch_1
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCharMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCenterX:I

    .line 109
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCenterY:I

    goto :goto_0

    .line 112
    :sswitch_2
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCenterX:I

    .line 113
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCharMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCenterY:I

    goto :goto_0

    .line 116
    :sswitch_3
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCharMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCenterX:I

    .line 117
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCenterY:I

    goto :goto_0

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private getFontIndex(II)I
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 70
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 71
    .local v2, "shotL":I
    iget-object v3, p0, Lcom/android/camera/effect/renders/TextWaterMark;->WATERMARK_FONT_SIZES:[[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 72
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/effect/renders/TextWaterMark;->PIC_WIDTHS:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/android/camera/effect/renders/TextWaterMark;->PIC_WIDTHS:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-lt v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/effect/renders/TextWaterMark;->PIC_WIDTHS:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    if-gt v2, v3, :cond_1

    .line 74
    move v1, v0

    .line 78
    :cond_0
    return v1

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getWaterMarkWidth(Ljava/lang/String;I)I
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 82
    iget-object v6, p0, Lcom/android/camera/effect/renders/TextWaterMark;->WATERMARK_FONT_SIZES:[[I

    aget-object v6, v6, p2

    const/4 v7, 0x1

    aget v2, v6, v7

    .line 83
    .local v2, "dw":I
    iget-object v6, p0, Lcom/android/camera/effect/renders/TextWaterMark;->WATERMARK_FONT_SIZES:[[I

    aget-object v6, v6, p2

    const/4 v7, 0x2

    aget v4, v6, v7

    .line 84
    .local v4, "mw":I
    iget-object v6, p0, Lcom/android/camera/effect/renders/TextWaterMark;->WATERMARK_FONT_SIZES:[[I

    aget-object v6, v6, p2

    const/4 v7, 0x3

    aget v5, v6, v7

    .line 85
    .local v5, "sw":I
    iget-object v6, p0, Lcom/android/camera/effect/renders/TextWaterMark;->WATERMARK_FONT_SIZES:[[I

    aget-object v6, v6, p2

    const/4 v7, 0x4

    aget v1, v6, v7

    .line 86
    .local v1, "cw":I
    const/4 v3, 0x0

    .line 87
    .local v3, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v6, 0x0

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_4

    aget-char v0, v7, v6

    .line 88
    .local v0, "c":C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_1

    const/16 v9, 0x39

    if-gt v0, v9, :cond_1

    .line 89
    add-int/2addr v3, v2

    .line 87
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_2

    .line 91
    add-int/2addr v3, v1

    goto :goto_1

    .line 92
    :cond_2
    const/16 v9, 0x2d

    if-ne v0, v9, :cond_3

    .line 93
    add-int/2addr v3, v4

    goto :goto_1

    .line 94
    :cond_3
    const/16 v9, 0x20

    if-ne v0, v9, :cond_0

    .line 95
    add-int/2addr v3, v5

    goto :goto_1

    .line 98
    .end local v0    # "c":C
    :cond_4
    return v3
.end method

.method private print()V
    .locals 3

    .prologue
    .line 148
    sget-object v0, Lcom/android/camera/effect/renders/TextWaterMark;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WaterMark mPictureWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    iget v2, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPictureWidth:I

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const-string/jumbo v2, " mPictureHeight ="

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    iget v2, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPictureHeight:I

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string/jumbo v2, " mWaterText="

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterText:Ljava/lang/String;

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string/jumbo v2, " mFontIndex="

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    iget v2, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mFontIndex:I

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string/jumbo v2, " mCenterX="

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    iget v2, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCenterX:I

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string/jumbo v2, " mCenterY="

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    iget v2, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCenterY:I

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string/jumbo v2, " mWaterWidth="

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    iget v2, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterWidth:I

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string/jumbo v2, " mWaterHeight="

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    iget v2, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterHeight:I

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, " mPadding="

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    iget v2, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mPadding:I

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mCenterY:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterHeight:I

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/camera/effect/renders/TextWaterMark;->mWaterWidth:I

    return v0
.end method

.class public Lmiui/app/ProgressDialog;
.super Lmiui/app/AlertDialog;
.source "SourceFile"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private DV:Z

.field private DW:I

.field private DX:I

.field private DY:Z

.field private DZ:Landroid/graphics/drawable/Drawable;

.field private Ea:I

.field private Eb:Ljava/lang/CharSequence;

.field private Ec:Landroid/widget/TextView;

.field private Ed:Landroid/widget/ProgressBar;

.field private Ee:Landroid/graphics/drawable/Drawable;

.field private Ef:Ljava/lang/String;

.field private Eg:Ljava/text/NumberFormat;

.field private Eh:I

.field private Ei:I

.field private Ej:I

.field private Ek:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lmiui/app/ProgressDialog;->Eh:I

    .line 72
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->pq()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lmiui/app/ProgressDialog;->Eh:I

    .line 89
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->pq()V

    .line 90
    return-void
.end method

.method private onProgressChanged()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 469
    iget v0, p0, Lmiui/app/ProgressDialog;->Eh:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 470
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ek:Landroid/os/Handler;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ek:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    .line 471
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ek:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 474
    :cond_19
    return-void
.end method

.method private pq()V
    .registers 3

    .prologue
    .line 93
    const-string/jumbo v0, "%1d/%2d"

    iput-object v0, p0, Lmiui/app/ProgressDialog;->Ef:Ljava/lang/String;

    .line 94
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ProgressDialog;->Eg:Ljava/text/NumberFormat;

    .line 95
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Eg:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 96
    return-void
.end method

.method static synthetic pr(Lmiui/app/ProgressDialog;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lmiui/app/ProgressDialog;->Eb:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic ps(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ec:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic pt(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic pu(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;
    .registers 2

    iget-object v0, p0, Lmiui/app/ProgressDialog;->Eg:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiui/app/ProgressDialog;
    .registers 4

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiui/app/ProgressDialog;
    .registers 10

    .prologue
    .line 122
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;
    .registers 11

    .prologue
    .line 137
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/ProgressDialog;
    .registers 7

    .prologue
    .line 154
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v0, p2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v0, p3}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 158
    invoke-virtual {v0, p4}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 159
    invoke-virtual {v0, p5}, Lmiui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 160
    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 161
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 318
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0

    .line 320
    :cond_b
    iget v0, p0, Lmiui/app/ProgressDialog;->Ea:I

    return v0
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 294
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0

    .line 296
    :cond_b
    iget v0, p0, Lmiui/app/ProgressDialog;->Ei:I

    return v0
.end method

.method public getSecondaryProgress()I
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 306
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    return v0

    .line 308
    :cond_b
    iget v0, p0, Lmiui/app/ProgressDialog;->Ej:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .registers 3

    .prologue
    .line 343
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 344
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 345
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 349
    :goto_c
    return-void

    .line 347
    :cond_d
    iget v0, p0, Lmiui/app/ProgressDialog;->DW:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/app/ProgressDialog;->DW:I

    goto :goto_c
.end method

.method public incrementSecondaryProgressBy(I)V
    .registers 3

    .prologue
    .line 357
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 358
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 359
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 363
    :goto_c
    return-void

    .line 361
    :cond_d
    iget v0, p0, Lmiui/app/ProgressDialog;->DX:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/app/ProgressDialog;->DX:I

    goto :goto_c
.end method

.method public isIndeterminate()Z
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 414
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0

    .line 416
    :cond_b
    iget-boolean v0, p0, Lmiui/app/ProgressDialog;->DY:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 166
    invoke-virtual {p0}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 168
    sget-object v2, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    .line 169
    const v3, 0x101005d

    .line 167
    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 172
    iget v1, p0, Lmiui/app/ProgressDialog;->Eh:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9f

    .line 177
    new-instance v1, Lmiui/app/ProgressDialog$1;

    invoke-direct {v1, p0}, Lmiui/app/ProgressDialog$1;-><init>(Lmiui/app/ProgressDialog;)V

    iput-object v1, p0, Lmiui/app/ProgressDialog;->Ek:Landroid/os/Handler;

    .line 206
    sget v1, Lcom/miui/internal/R$styleable;->AlertDialog_horizontalProgressLayout:I

    .line 207
    sget v3, Lcom/miui/internal/R$layout;->alert_dialog_progress:I

    .line 205
    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 213
    :goto_30
    const v0, 0x102000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    .line 214
    sget v0, Lmiui/R$id;->message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/app/ProgressDialog;->Ec:Landroid/widget/TextView;

    .line 215
    invoke-virtual {p0, v1}, Lmiui/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 217
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    iget v0, p0, Lmiui/app/ProgressDialog;->Ea:I

    if-lez v0, :cond_54

    .line 219
    iget v0, p0, Lmiui/app/ProgressDialog;->Ea:I

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setMax(I)V

    .line 221
    :cond_54
    iget v0, p0, Lmiui/app/ProgressDialog;->Ei:I

    if-lez v0, :cond_5d

    .line 222
    iget v0, p0, Lmiui/app/ProgressDialog;->Ei:I

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 224
    :cond_5d
    iget v0, p0, Lmiui/app/ProgressDialog;->Ej:I

    if-lez v0, :cond_66

    .line 225
    iget v0, p0, Lmiui/app/ProgressDialog;->Ej:I

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 227
    :cond_66
    iget v0, p0, Lmiui/app/ProgressDialog;->DW:I

    if-lez v0, :cond_6f

    .line 228
    iget v0, p0, Lmiui/app/ProgressDialog;->DW:I

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->incrementProgressBy(I)V

    .line 230
    :cond_6f
    iget v0, p0, Lmiui/app/ProgressDialog;->DX:I

    if-lez v0, :cond_78

    .line 231
    iget v0, p0, Lmiui/app/ProgressDialog;->DX:I

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 233
    :cond_78
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ee:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_81

    .line 234
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ee:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    :cond_81
    iget-object v0, p0, Lmiui/app/ProgressDialog;->DZ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8a

    .line 237
    iget-object v0, p0, Lmiui/app/ProgressDialog;->DZ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :cond_8a
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Eb:Ljava/lang/CharSequence;

    if-eqz v0, :cond_93

    .line 240
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Eb:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 242
    :cond_93
    iget-boolean v0, p0, Lmiui/app/ProgressDialog;->DY:Z

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 243
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 244
    invoke-super {p0, p1}, Lmiui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 245
    return-void

    .line 210
    :cond_9f
    sget v1, Lcom/miui/internal/R$styleable;->AlertDialog_progressLayout:I

    .line 211
    sget v3, Lcom/miui/internal/R$layout;->progress_dialog:I

    .line 209
    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_30
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 249
    invoke-super {p0}, Lmiui/app/AlertDialog;->onStart()V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/ProgressDialog;->DV:Z

    .line 251
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 255
    invoke-super {p0}, Lmiui/app/AlertDialog;->onStop()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/ProgressDialog;->DV:Z

    .line 257
    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3

    .prologue
    .line 400
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 401
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 405
    :goto_9
    return-void

    .line 403
    :cond_a
    iput-boolean p1, p0, Lmiui/app/ProgressDialog;->DY:Z

    goto :goto_9
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 387
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    :goto_9
    return-void

    .line 389
    :cond_a
    iput-object p1, p0, Lmiui/app/ProgressDialog;->DZ:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setMax(I)V
    .registers 3

    .prologue
    .line 329
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 330
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 331
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 335
    :goto_c
    return-void

    .line 333
    :cond_d
    iput p1, p0, Lmiui/app/ProgressDialog;->Ea:I

    goto :goto_c
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 421
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_11

    .line 422
    iget v0, p0, Lmiui/app/ProgressDialog;->Eh:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 423
    iput-object p1, p0, Lmiui/app/ProgressDialog;->Eb:Ljava/lang/CharSequence;

    .line 425
    :cond_b
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ec:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :goto_10
    return-void

    .line 427
    :cond_11
    iput-object p1, p0, Lmiui/app/ProgressDialog;->Eb:Ljava/lang/CharSequence;

    goto :goto_10
.end method

.method public setProgress(I)V
    .registers 3

    .prologue
    .line 265
    iget-boolean v0, p0, Lmiui/app/ProgressDialog;->DV:Z

    if-eqz v0, :cond_d

    .line 266
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 267
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 271
    :goto_c
    return-void

    .line 269
    :cond_d
    iput p1, p0, Lmiui/app/ProgressDialog;->Ei:I

    goto :goto_c
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 373
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    :goto_9
    return-void

    .line 375
    :cond_a
    iput-object p1, p0, Lmiui/app/ProgressDialog;->Ee:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 451
    iput-object p1, p0, Lmiui/app/ProgressDialog;->Ef:Ljava/lang/String;

    .line 452
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 453
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .registers 2

    .prologue
    .line 464
    iput-object p1, p0, Lmiui/app/ProgressDialog;->Eg:Ljava/text/NumberFormat;

    .line 465
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 466
    return-void
.end method

.method public setProgressStyle(I)V
    .registers 2

    .prologue
    .line 439
    iput p1, p0, Lmiui/app/ProgressDialog;->Eh:I

    .line 440
    return-void
.end method

.method public setSecondaryProgress(I)V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 280
    iget-object v0, p0, Lmiui/app/ProgressDialog;->Ed:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 281
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 285
    :goto_c
    return-void

    .line 283
    :cond_d
    iput p1, p0, Lmiui/app/ProgressDialog;->Ej:I

    goto :goto_c
.end method

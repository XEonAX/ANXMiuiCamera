.class Lmiui/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EO:Lmiui/app/ProgressDialog;


# direct methods
.method constructor <init>(Lmiui/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lmiui/app/ProgressDialog$1;->EO:Lmiui/app/ProgressDialog;

    .line 177
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 182
    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->EO:Lmiui/app/ProgressDialog;

    invoke-static {v0}, Lmiui/app/ProgressDialog;->pt(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 183
    iget-object v1, p0, Lmiui/app/ProgressDialog$1;->EO:Lmiui/app/ProgressDialog;

    invoke-static {v1}, Lmiui/app/ProgressDialog;->pt(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 185
    iget-object v2, p0, Lmiui/app/ProgressDialog$1;->EO:Lmiui/app/ProgressDialog;

    invoke-static {v2}, Lmiui/app/ProgressDialog;->pu(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 186
    int-to-double v2, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    .line 187
    const/4 v0, 0x0

    .line 188
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 189
    iget-object v4, p0, Lmiui/app/ProgressDialog$1;->EO:Lmiui/app/ProgressDialog;

    invoke-static {v4}, Lmiui/app/ProgressDialog;->pr(Lmiui/app/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 190
    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->EO:Lmiui/app/ProgressDialog;

    invoke-static {v0}, Lmiui/app/ProgressDialog;->pr(Lmiui/app/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 191
    iget-object v4, p0, Lmiui/app/ProgressDialog$1;->EO:Lmiui/app/ProgressDialog;

    invoke-static {v4}, Lmiui/app/ProgressDialog;->pr(Lmiui/app/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 193
    :cond_47
    iget-object v4, p0, Lmiui/app/ProgressDialog$1;->EO:Lmiui/app/ProgressDialog;

    invoke-static {v4}, Lmiui/app/ProgressDialog;->pu(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 196
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lmiui/app/ProgressDialog$1;->EO:Lmiui/app/ProgressDialog;

    invoke-virtual {v4}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 197
    sget v5, Lcom/miui/internal/R$color;->progress_percent_color:I

    .line 196
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 199
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 198
    add-int/2addr v2, v0

    .line 200
    const/16 v4, 0x22

    .line 195
    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 201
    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->EO:Lmiui/app/ProgressDialog;

    invoke-static {v0}, Lmiui/app/ProgressDialog;->ps(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_7c
    return-void
.end method
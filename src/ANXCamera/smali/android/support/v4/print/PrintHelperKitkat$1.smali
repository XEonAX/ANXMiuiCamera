.class Landroid/support/v4/print/PrintHelperKitkat$1;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

.field final synthetic val$fittingMode:I

.field final synthetic val$jobName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .registers 6

    .prologue
    .line 190
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput p4, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    iput-object p5, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    if-nez v0, :cond_5

    .line 269
    :goto_4
    return-void

    .line 267
    :cond_5
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;->onFinish()V

    goto :goto_4
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 200
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    .line 202
    new-instance v3, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v4, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v1

    .line 206
    .local v1, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 207
    .local v0, "changed":Z
    :goto_1d
    invoke-virtual {p4, v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 208
    return-void

    .end local v0    # "changed":Z
    :cond_21
    move v0, v2

    .line 206
    goto :goto_1d
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 16
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .prologue
    .line 214
    new-instance v6, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v7, v7, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    invoke-direct {v6, v7, v8}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 217
    .local v6, "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v9}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/support/v4/print/PrintHelperKitkat;->access$000(Landroid/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 220
    .local v4, "maybeGrayscale":Landroid/graphics/Bitmap;
    const/4 v7, 0x1

    :try_start_1a
    invoke-virtual {v6, v7}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v5

    .line 222
    .local v5, "page":Landroid/graphics/pdf/PdfDocument$Page;
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 224
    .local v1, "content":Landroid/graphics/RectF;
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v10, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    invoke-static {v7, v8, v9, v1, v10}, Landroid/support/v4/print/PrintHelperKitkat;->access$100(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v3

    .line 229
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 232
    invoke-virtual {v6, v5}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_46
    .catchall {:try_start_1a .. :try_end_46} :catchall_75

    .line 236
    :try_start_46
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v6, v7}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 239
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/print/PageRange;

    sget-object v8, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {p4, v7}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_5d} :catch_66
    .catchall {:try_start_46 .. :try_end_5d} :catchall_75

    .line 247
    :goto_5d
    if-nez v6, :cond_7f

    .line 250
    :goto_5f
    if-nez p2, :cond_83

    .line 258
    :goto_61
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-ne v4, v7, :cond_89

    .line 262
    :goto_65
    return-void

    .line 241
    :catch_66
    move-exception v2

    .line 243
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_67
    const-string/jumbo v7, "PrintHelperKitkat"

    const-string/jumbo v8, "Error writing printed content"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    const/4 v7, 0x0

    invoke-virtual {p4, v7}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_75

    goto :goto_5d

    .line 247
    .end local v1    # "content":Landroid/graphics/RectF;
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v5    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :catchall_75
    move-exception v0

    .local v0, "-l_11_R":Ljava/lang/Object;
    if-nez v6, :cond_8d

    .line 250
    :goto_78
    if-nez p2, :cond_91

    .line 258
    :goto_7a
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-ne v4, v7, :cond_97

    .line 259
    :goto_7e
    throw v0

    .line 248
    .end local v0    # "-l_11_R":Ljava/lang/Object;
    .restart local v1    # "content":Landroid/graphics/RectF;
    .restart local v3    # "matrix":Landroid/graphics/Matrix;
    .restart local v5    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :cond_7f
    invoke-virtual {v6}, Landroid/graphics/pdf/PdfDocument;->close()V

    goto :goto_5f

    .line 252
    :cond_83
    :try_start_83
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_61

    .line 253
    :catch_87
    move-exception v2

    .restart local v2    # "ioe":Ljava/io/IOException;
    goto :goto_61

    .line 259
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_89
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_65

    .line 248
    .end local v1    # "content":Landroid/graphics/RectF;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v5    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .restart local v0    # "-l_11_R":Ljava/lang/Object;
    :cond_8d
    invoke-virtual {v6}, Landroid/graphics/pdf/PdfDocument;->close()V

    goto :goto_78

    .line 252
    :cond_91
    :try_start_91
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_7a

    .line 253
    :catch_95
    move-exception v7

    goto :goto_7a

    .line 259
    :cond_97
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7e
.end method

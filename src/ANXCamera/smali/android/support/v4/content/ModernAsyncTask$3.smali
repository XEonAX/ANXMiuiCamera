.class Landroid/support/v4/content/ModernAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/ModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroid/support/v4/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
    .registers 3

    .prologue
    .line 132
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$3;, "Landroid/support/v4/content/ModernAsyncTask.3;"
    .local p2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 9

    .prologue
    .line 136
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$3;, "Landroid/support/v4/content/ModernAsyncTask.3;"
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    .line 138
    .local v3, "result":Ljava/lang/Object;, "TResult;"
    iget-object v5, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-static {v5, v3}, Landroid/support/v4/content/ModernAsyncTask;->access$300(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_28

    .line 150
    .end local v3    # "result":Ljava/lang/Object;, "TResult;"
    :goto_9
    return-void

    .line 139
    :catch_a
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "AsyncTask"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 141
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_12
    move-exception v2

    .line 142
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    const-string/jumbo v7, "An error occurred while executing doInBackground()"

    invoke-direct {v5, v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 144
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_20
    move-exception v1

    .line 145
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    iget-object v5, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/support/v4/content/ModernAsyncTask;->access$300(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V

    goto :goto_9

    .line 146
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catch_28
    move-exception v4

    .line 147
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "An error occurred while executing doInBackground()"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

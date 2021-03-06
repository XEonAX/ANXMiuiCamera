.class public Landroid/support/v4/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;,
        Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Landroid/support/v4/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 109
    iput-object p1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 110
    new-instance v0, Landroid/support/v4/content/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager$1;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/content/LocalBroadcastManager;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v4/content/LocalBroadcastManager;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method private executePendingBroadcasts()V
    .registers 11

    .prologue
    .line 284
    :cond_0
    const/4 v4, 0x0

    .line 285
    .local v4, "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter v0

    .line 286
    :try_start_4
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 287
    .local v2, "N":I
    if-lez v2, :cond_2b

    .line 290
    new-array v4, v2, [Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    .line 291
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 292
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 293
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_2d

    .line 294
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a
    array-length v7, v4

    if-ge v5, v7, :cond_0

    .line 295
    aget-object v3, v4, v5

    .line 296
    .local v3, "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_20
    iget-object v7, v3, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v6, v7, :cond_30

    .line 294
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 288
    .end local v3    # "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_2b
    :try_start_2b
    monitor-exit v0

    return-void

    .line 293
    .end local v2    # "N":I
    .end local v4    # "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    :catchall_2d
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2d

    throw v1

    .line 297
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .restart local v2    # "N":I
    .restart local v3    # "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    .restart local v4    # "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    :cond_30
    iget-object v7, v3, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    iget-object v7, v7, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v9, v3, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 296
    add-int/lit8 v6, v6, 0x1

    goto :goto_20
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 101
    :try_start_3
    sget-object v2, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v2, :cond_b

    .line 104
    :goto_7
    sget-object v2, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    monitor-exit v0

    return-object v2

    .line 102
    :cond_b
    new-instance v2, Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    goto :goto_7

    .line 105
    :catchall_17
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .local v0, "-l_3_R":Ljava/lang/Object;
    monitor-enter v0

    .line 135
    :try_start_3
    new-instance v4, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v4, p2, p1}, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 136
    .local v4, "entry":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 137
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-eqz v5, :cond_1e

    .line 141
    :goto_12
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_16
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v7

    if-lt v6, v7, :cond_2d

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 138
    .end local v6    # "i":I
    :cond_1e
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    const/4 v7, 0x1

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .restart local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 151
    .end local v4    # "entry":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    :catchall_2a
    move-exception v1

    .local v1, "-l_9_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1

    .line 143
    .end local v1    # "-l_9_R":Ljava/lang/Object;
    .restart local v4    # "entry":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    .restart local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .restart local v6    # "i":I
    :cond_2d
    :try_start_2d
    invoke-virtual {p2, v6}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "action":Ljava/lang/String;
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 145
    .local v3, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v3, :cond_41

    .line 149
    :goto_3b
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 146
    :cond_41
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .restart local v3    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_2d .. :try_end_4c} :catchall_2a

    goto :goto_3b
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .local v10, "-l_2_R":Ljava/lang/Object;
    monitor-enter v10

    .line 202
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 206
    .local v6, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    .line 209
    .local v7, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_41

    const/4 v11, 0x0

    .line 211
    .local v11, "debug":Z
    :goto_2c
    if-nez v11, :cond_43

    .line 215
    :goto_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 216
    .local v12, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v12, :cond_79

    .line 267
    :cond_3e
    monitor-exit v10

    .line 268
    const/4 v2, 0x0

    return v2

    .line 209
    .end local v11    # "debug":Z
    .end local v12    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_41
    const/4 v11, 0x1

    goto :goto_2c

    .line 211
    .restart local v11    # "debug":Z
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Resolving type "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " scheme "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " of intent "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "LocalBroadcastManager"

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 267
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "data":Landroid/net/Uri;
    .end local v7    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "debug":Z
    :catchall_76
    move-exception v9

    .local v9, "-l_15_R":Ljava/lang/Object;
    monitor-exit v10
    :try_end_78
    .catchall {:try_start_5 .. :try_end_78} :catchall_76

    throw v9

    .line 217
    .end local v9    # "-l_15_R":Ljava/lang/Object;
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v4    # "type":Ljava/lang/String;
    .restart local v5    # "scheme":Ljava/lang/String;
    .restart local v6    # "data":Landroid/net/Uri;
    .restart local v7    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "debug":Z
    .restart local v12    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_79
    if-nez v11, :cond_ab

    .line 219
    :goto_7b
    const/16 v17, 0x0

    .line 220
    .local v17, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v13, 0x0

    .end local v17    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v13, "i":I
    :goto_7e
    :try_start_7e
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v13, v2, :cond_c6

    .line 256
    if-eqz v17, :cond_3e

    .line 257
    const/4 v13, 0x0

    :goto_87
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v13, v2, :cond_179

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v8, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_188

    .line 264
    :goto_a8
    monitor-exit v10

    const/4 v2, 0x1

    return v2

    .line 217
    .end local v13    # "i":I
    :cond_ab
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Action list: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "LocalBroadcastManager"

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 221
    .restart local v13    # "i":I
    :cond_c6
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    .line 222
    .local v16, "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    if-nez v11, :cond_e6

    .line 224
    :goto_ce
    move-object/from16 v0, v16

    iget-boolean v2, v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-nez v2, :cond_105

    .line 231
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v8, "LocalBroadcastManager"

    invoke-virtual/range {v2 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v14

    .line 233
    .local v14, "match":I
    if-gez v14, :cond_111

    .line 242
    if-nez v11, :cond_147

    .line 220
    .end local v14    # "match":I
    :cond_e3
    :goto_e3
    add-int/lit8 v13, v13, 0x1

    goto :goto_7e

    .line 222
    :cond_e6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Matching against filter "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "LocalBroadcastManager"

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    .line 225
    :cond_105
    if-eqz v11, :cond_e3

    .line 226
    const-string/jumbo v2, "LocalBroadcastManager"

    const-string/jumbo v8, "  Filter\'s target already added"

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 234
    .restart local v14    # "match":I
    :cond_111
    if-nez v11, :cond_122

    .line 236
    :goto_113
    if-eqz v17, :cond_141

    .line 239
    :goto_115
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_e3

    .line 234
    :cond_122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  Filter matched!  match=0x"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "LocalBroadcastManager"

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 237
    :cond_141
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .restart local v17    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    goto :goto_115

    .line 244
    .end local v17    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_147
    packed-switch v14, :pswitch_data_192

    .line 249
    const-string/jumbo v15, "unknown reason"

    .line 251
    .local v15, "reason":Ljava/lang/String;
    :goto_14d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  Filter did not match: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "LocalBroadcastManager"

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e3

    .line 245
    .end local v15    # "reason":Ljava/lang/String;
    :pswitch_169
    const-string/jumbo v15, "action"

    .restart local v15    # "reason":Ljava/lang/String;
    goto :goto_14d

    .line 246
    .end local v15    # "reason":Ljava/lang/String;
    :pswitch_16d
    const-string/jumbo v15, "category"

    .restart local v15    # "reason":Ljava/lang/String;
    goto :goto_14d

    .line 247
    .end local v15    # "reason":Ljava/lang/String;
    :pswitch_171
    const-string/jumbo v15, "data"

    .restart local v15    # "reason":Ljava/lang/String;
    goto :goto_14d

    .line 248
    .end local v15    # "reason":Ljava/lang/String;
    :pswitch_175
    const-string/jumbo v15, "type"

    .restart local v15    # "reason":Ljava/lang/String;
    goto :goto_14d

    .line 258
    .end local v14    # "match":I
    .end local v15    # "reason":Ljava/lang/String;
    .end local v16    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :cond_179
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    const/4 v8, 0x0

    iput-boolean v8, v2, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 257
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_87

    .line 262
    :cond_188
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_190
    .catchall {:try_start_7e .. :try_end_190} :catchall_76

    goto/16 :goto_a8

    .line 244
    :pswitch_data_192
    .packed-switch -0x4
        :pswitch_16d
        :pswitch_169
        :pswitch_171
        :pswitch_175
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 280
    :goto_6
    return-void

    .line 278
    :cond_7
    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    goto :goto_6
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 12
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 164
    iget-object v1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-enter v1

    .line 165
    :try_start_3
    iget-object v9, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 166
    .local v4, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-eqz v4, :cond_16

    .line 169
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v5, v9, :cond_18

    .line 187
    monitor-exit v1

    .line 188
    return-void

    .line 167
    .end local v5    # "i":I
    :cond_16
    monitor-exit v1

    return-void

    .line 170
    .restart local v5    # "i":I
    :cond_18
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 171
    .local v3, "filter":Landroid/content/IntentFilter;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1f
    invoke-virtual {v3}, Landroid/content/IntentFilter;->countActions()I

    move-result v9

    if-lt v6, v9, :cond_28

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 172
    :cond_28
    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "action":Ljava/lang/String;
    iget-object v9, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 174
    .local v8, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v8, :cond_39

    .line 171
    :cond_36
    :goto_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 175
    :cond_39
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_3a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v7, v9, :cond_4f

    .line 181
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_36

    .line 182
    iget-object v9, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 187
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "k":I
    .end local v8    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :catchall_4c
    move-exception v0

    .local v0, "-l_10_R":Ljava/lang/Object;
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v0

    .line 176
    .end local v0    # "-l_10_R":Ljava/lang/Object;
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v4    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "k":I
    .restart local v8    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_4f
    :try_start_4f
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    iget-object v9, v9, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-eq v9, p1, :cond_5c

    .line 175
    :goto_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 177
    :cond_5c
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_4f .. :try_end_5f} :catchall_4c

    .line 178
    add-int/lit8 v7, v7, -0x1

    goto :goto_59
.end method

.class Landroid/support/v4/app/NotificationCompatJellybean;
.super Ljava/lang/Object;
.source "NotificationCompatJellybean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatJellybean$Builder;
    }
.end annotation


# static fields
.field static final EXTRA_ACTION_EXTRAS:Ljava/lang/String; = "android.support.actionExtras"

.field static final EXTRA_GROUP_KEY:Ljava/lang/String; = "android.support.groupKey"

.field static final EXTRA_GROUP_SUMMARY:Ljava/lang/String; = "android.support.isGroupSummary"

.field static final EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.support.localOnly"

.field static final EXTRA_REMOTE_INPUTS:Ljava/lang/String; = "android.support.remoteInputs"

.field static final EXTRA_SORT_KEY:Ljava/lang/String; = "android.support.sortKey"

.field static final EXTRA_USE_SIDE_CHANNEL:Ljava/lang/String; = "android.support.useSideChannel"

.field private static final KEY_ACTION_INTENT:Ljava/lang/String; = "actionIntent"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_ICON:Ljava/lang/String; = "icon"

.field private static final KEY_REMOTE_INPUTS:Ljava/lang/String; = "remoteInputs"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final TAG:Ljava/lang/String; = "NotificationCompat"

.field private static sActionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sActionIconField:Ljava/lang/reflect/Field;

.field private static sActionIntentField:Ljava/lang/reflect/Field;

.field private static sActionTitleField:Ljava/lang/reflect/Field;

.field private static sActionsAccessFailed:Z

.field private static sActionsField:Ljava/lang/reflect/Field;

.field private static final sActionsLock:Ljava/lang/Object;

.field private static sExtrasField:Ljava/lang/reflect/Field;

.field private static sExtrasFieldAccessFailed:Z

.field private static final sExtrasLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static addBigPictureStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .registers 10
    .param p0, "b"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "bigContentTitle"    # Ljava/lang/CharSequence;
    .param p2, "useSummary"    # Z
    .param p3, "summaryText"    # Ljava/lang/CharSequence;
    .param p4, "bigPicture"    # Landroid/graphics/Bitmap;
    .param p5, "bigLargeIcon"    # Landroid/graphics/Bitmap;
    .param p6, "bigLargeIconSet"    # Z

    .prologue
    .line 168
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v1, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    .line 171
    .local v0, "style":Landroid/app/Notification$BigPictureStyle;
    if-nez p6, :cond_16

    .line 174
    :goto_13
    if-nez p2, :cond_1a

    .line 177
    :goto_15
    return-void

    .line 172
    :cond_16
    invoke-virtual {v0, p5}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_13

    .line 175
    :cond_1a
    invoke-virtual {v0, p3}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_15
.end method

.method public static addBigTextStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 8
    .param p0, "b"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "bigContentTitle"    # Ljava/lang/CharSequence;
    .param p2, "useSummary"    # Z
    .param p3, "summaryText"    # Ljava/lang/CharSequence;
    .param p4, "bigText"    # Ljava/lang/CharSequence;

    .prologue
    .line 156
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 159
    .local v0, "style":Landroid/app/Notification$BigTextStyle;
    if-nez p2, :cond_14

    .line 162
    :goto_13
    return-void

    .line 160
    :cond_14
    invoke-virtual {v0, p3}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    goto :goto_13
.end method

.method public static addInboxStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V
    .registers 10
    .param p0, "b"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "bigContentTitle"    # Ljava/lang/CharSequence;
    .param p2, "useSummary"    # Z
    .param p3, "summaryText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p4, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Landroid/app/Notification$InboxStyle;

    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v3, p1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v1

    .line 184
    .local v1, "style":Landroid/app/Notification$InboxStyle;
    if-nez p2, :cond_1a

    .line 187
    :goto_f
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 190
    return-void

    .line 185
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-virtual {v1, p3}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_f

    .line 187
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 188
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-virtual {v1, v2}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_13
.end method

.method public static buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "actionExtrasList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 195
    .local v1, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .end local v1    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    .local v2, "count":I
    :goto_6
    if-lt v3, v2, :cond_9

    .line 204
    return-object v1

    .line 196
    :cond_9
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 197
    .local v0, "actionExtras":Landroid/os/Bundle;
    if-nez v0, :cond_14

    .line 195
    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 198
    :cond_14
    if-eqz v1, :cond_1a

    .line 201
    :goto_16
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_11

    .line 199
    :cond_1a
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .restart local v1    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    goto :goto_16
.end method

.method private static ensureActionReflectionReadyLocked()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 318
    sget-boolean v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    if-nez v4, :cond_f

    .line 322
    :try_start_6
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_8} :catch_4c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_8} :catch_59

    if-eqz v4, :cond_10

    .line 337
    :goto_a
    sget-boolean v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    if-eqz v4, :cond_66

    :goto_e
    return v2

    .line 319
    :cond_f
    return v2

    .line 323
    :cond_10
    :try_start_10
    const-string/jumbo v4, "android.app.Notification$Action"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    .line 324
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string/jumbo v5, "icon"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    .line 325
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    .line 326
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string/jumbo v5, "actionIntent"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    .line 327
    const-class v4, Landroid/app/Notification;

    const-string/jumbo v5, "actions"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    .line 328
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_4b} :catch_59

    goto :goto_a

    .line 330
    :catch_4c
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "NotificationCompat"

    const-string/jumbo v5, "Unable to access notification actions"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    sput-boolean v3, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_a

    .line 333
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_59
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v4, "NotificationCompat"

    const-string/jumbo v5, "Unable to access notification actions"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    sput-boolean v3, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_a

    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_66
    move v2, v3

    .line 337
    goto :goto_e
.end method

.method public static getAction(Landroid/app/Notification;ILandroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .registers 16
    .param p0, "notif"    # Landroid/app/Notification;
    .param p1, "actionIndex"    # I
    .param p2, "factory"    # Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
    .param p3, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    .prologue
    .line 277
    sget-object v6, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    .local v6, "-l_4_R":Ljava/lang/Object;
    monitor-enter v6

    .line 279
    :try_start_3
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v9, v0, p1

    .line 280
    .local v9, "actionObject":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 281
    .local v5, "actionExtras":Landroid/os/Bundle;
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v11

    .line 282
    .local v11, "extras":Landroid/os/Bundle;
    if-nez v11, :cond_2e

    .line 289
    .end local v5    # "actionExtras":Landroid/os/Bundle;
    :cond_10
    :goto_10
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/NotificationCompatJellybean;->readAction(Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompatBase$Action;
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_2b} :catch_3e
    .catchall {:try_start_3 .. :try_end_2b} :catchall_4e

    move-result-object v0

    :try_start_2c
    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_4e

    return-object v0

    .line 283
    .restart local v5    # "actionExtras":Landroid/os/Bundle;
    :cond_2e
    :try_start_2e
    const-string/jumbo v0, "android.support.actionExtras"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    .line 285
    .local v8, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    if-eqz v8, :cond_10

    .line 286
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "actionExtras":Landroid/os/Bundle;
    check-cast v5, Landroid/os/Bundle;
    :try_end_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_3d} :catch_3e
    .catchall {:try_start_2e .. :try_end_3d} :catchall_4e

    .restart local v5    # "actionExtras":Landroid/os/Bundle;
    goto :goto_10

    .line 294
    .end local v5    # "actionExtras":Landroid/os/Bundle;
    .end local v8    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    .end local v9    # "actionObject":Ljava/lang/Object;
    .end local v11    # "extras":Landroid/os/Bundle;
    :catch_3e
    move-exception v10

    .line 295
    .local v10, "e":Ljava/lang/IllegalAccessException;
    :try_start_3f
    const-string/jumbo v0, "NotificationCompat"

    const-string/jumbo v1, "Unable to access notification actions"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    .line 298
    monitor-exit v6

    .line 299
    const/4 v0, 0x0

    return-object v0

    .line 298
    .end local v10    # "e":Ljava/lang/IllegalAccessException;
    :catchall_4e
    move-exception v7

    .local v7, "-l_9_R":Ljava/lang/Object;
    monitor-exit v6
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_4e

    throw v7
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .registers 5
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 268
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 269
    :try_start_3
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v2

    .line 270
    .local v2, "actionObjects":[Ljava/lang/Object;
    if-nez v2, :cond_c

    const/4 v3, 0x0

    :goto_a
    monitor-exit v0

    return v3

    :cond_c
    array-length v3, v2

    goto :goto_a

    .line 271
    .end local v2    # "actionObjects":[Ljava/lang/Object;
    :catchall_e
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private static getActionFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .registers 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "actionFactory"    # Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
    .param p2, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    .prologue
    .line 358
    const-string/jumbo v0, "icon"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string/jumbo v0, "actionIntent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    const-string/jumbo v0, "extras"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v0, "remoteInputs"

    invoke-static {p0, v0}, Landroid/support/v4/app/BundleUtil;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/support/v4/app/RemoteInputCompatJellybean;->fromBundleArray([Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v0

    return-object v0
.end method

.method private static getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;
    .registers 7
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    const/4 v5, 0x0

    .line 303
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 304
    :try_start_4
    invoke-static {}, Landroid/support/v4/app/NotificationCompatJellybean;->ensureActionReflectionReadyLocked()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_27

    move-result v3

    if-eqz v3, :cond_16

    .line 308
    :try_start_a
    sget-object v3, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    nop

    nop
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_14} :catch_18
    .catchall {:try_start_a .. :try_end_14} :catchall_27

    :try_start_14
    monitor-exit v0

    return-object v3

    .line 305
    :cond_16
    monitor-exit v0

    return-object v5

    .line 309
    :catch_18
    move-exception v2

    .line 310
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "NotificationCompat"

    const-string/jumbo v4, "Unable to access notification actions"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    const/4 v3, 0x1

    sput-boolean v3, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    .line 312
    monitor-exit v0

    return-object v5

    .line 314
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catchall_27
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public static getActionsFromParcelableArrayList(Ljava/util/ArrayList;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/NotificationCompatBase$Action;
    .registers 6
    .param p1, "actionFactory"    # Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
    .param p2, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Landroid/support/v4/app/NotificationCompatBase$Action$Factory;",
            "Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;",
            ")[",
            "Landroid/support/v4/app/NotificationCompatBase$Action;"
        }
    .end annotation

    .prologue
    .local p0, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .line 344
    if-eqz p0, :cond_10

    .line 347
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->newArray(I)[Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v0

    .line 348
    .local v0, "actions":[Landroid/support/v4/app/NotificationCompatBase$Action;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-lt v1, v2, :cond_11

    .line 352
    return-object v0

    .line 345
    .end local v0    # "actions":[Landroid/support/v4/app/NotificationCompatBase$Action;
    .end local v1    # "i":I
    :cond_10
    return-object v2

    .line 349
    .restart local v0    # "actions":[Landroid/support/v4/app/NotificationCompatBase$Action;
    .restart local v1    # "i":I
    :cond_11
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p1, p2}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v2

    aput-object v2, v0, v1

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private static getBundleForAction(Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;
    .registers 4
    .param p0, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    .prologue
    .line 381
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v1

    const-string/jumbo v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 383
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    const-string/jumbo v2, "actionIntent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 385
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "extras"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 386
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/RemoteInputCompatJellybean;->toBundleArray([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "remoteInputs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 388
    return-object v0
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 10
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    const/4 v8, 0x0

    .line 212
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 213
    :try_start_4
    sget-boolean v6, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_69

    if-nez v6, :cond_18

    .line 217
    :try_start_8
    sget-object v6, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    if-eqz v6, :cond_1a

    .line 227
    :goto_c
    sget-object v6, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_14} :catch_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_14} :catch_5e
    .catchall {:try_start_8 .. :try_end_14} :catchall_69

    .line 228
    .local v4, "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_53

    .line 232
    :goto_16
    :try_start_16
    monitor-exit v0

    return-object v4

    .line 214
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_69

    return-object v8

    .line 218
    :cond_1a
    :try_start_1a
    const-class v6, Landroid/app/Notification;

    const-string/jumbo v7, "extras"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 219
    .local v5, "extrasField":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 224
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 225
    sput-object v5, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;
    :try_end_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_35} :catch_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1a .. :try_end_35} :catch_5e
    .catchall {:try_start_1a .. :try_end_35} :catchall_69

    goto :goto_c

    .line 233
    .end local v5    # "extrasField":Ljava/lang/reflect/Field;
    :catch_36
    move-exception v2

    .line 234
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_37
    const-string/jumbo v6, "NotificationCompat"

    const-string/jumbo v7, "Unable to access notification extras"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :goto_40
    const/4 v6, 0x1

    sput-boolean v6, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    .line 239
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_69

    return-object v8

    .line 220
    .restart local v5    # "extrasField":Ljava/lang/reflect/Field;
    :cond_45
    :try_start_45
    const-string/jumbo v6, "NotificationCompat"

    const-string/jumbo v7, "Notification.extras field is not of type Bundle"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v6, 0x1

    sput-boolean v6, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_51} :catch_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_45 .. :try_end_51} :catch_5e
    .catchall {:try_start_45 .. :try_end_51} :catchall_69

    .line 222
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_69

    return-object v8

    .line 229
    .end local v5    # "extrasField":Ljava/lang/reflect/Field;
    .restart local v4    # "extras":Landroid/os/Bundle;
    :cond_53
    :try_start_53
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "extras":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 230
    .restart local v4    # "extras":Landroid/os/Bundle;
    sget-object v6, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5d
    .catch Ljava/lang/IllegalAccessException; {:try_start_53 .. :try_end_5d} :catch_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_53 .. :try_end_5d} :catch_5e
    .catchall {:try_start_53 .. :try_end_5d} :catchall_69

    goto :goto_16

    .line 235
    .end local v4    # "extras":Landroid/os/Bundle;
    :catch_5e
    move-exception v3

    .line 236
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    :try_start_5f
    const-string/jumbo v6, "NotificationCompat"

    const-string/jumbo v7, "Unable to access notification extras"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 240
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catchall_69
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    .line 396
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "android.support.groupKey"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .registers 3
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 392
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "android.support.localOnly"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompatBase$Action;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "actions"    # [Landroid/support/v4/app/NotificationCompatBase$Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 370
    if-eqz p0, :cond_f

    .line 373
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    .local v4, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    move-object v1, p0

    .local v1, "arr$":[Landroid/support/v4/app/NotificationCompatBase$Action;
    array-length v3, p0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_c
    if-lt v2, v3, :cond_10

    .line 377
    return-object v4

    .line 371
    .end local v1    # "arr$":[Landroid/support/v4/app/NotificationCompatBase$Action;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_f
    return-object v5

    .line 374
    .restart local v1    # "arr$":[Landroid/support/v4/app/NotificationCompatBase$Action;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_10
    aget-object v0, p0, v2

    .line 375
    .local v0, "action":Landroid/support/v4/app/NotificationCompatBase$Action;
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleForAction(Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    .line 404
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "android.support.sortKey"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .registers 3
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    .line 400
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "android.support.isGroupSummary"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static readAction(Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .registers 12
    .param p0, "factory"    # Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
    .param p1, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "actionIntent"    # Landroid/app/PendingIntent;
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 247
    const/4 v5, 0x0

    .line 248
    .local v5, "remoteInputs":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    if-nez p5, :cond_d

    .end local v5    # "remoteInputs":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    :goto_3
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 253
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v0

    return-object v0

    .line 249
    .restart local v5    # "remoteInputs":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    :cond_d
    const-string/jumbo v0, "android.support.remoteInputs"

    invoke-static {p5, v0}, Landroid/support/v4/app/BundleUtil;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/app/RemoteInputCompatJellybean;->fromBundleArray([Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v5

    goto :goto_3
.end method

.method public static writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;
    .registers 6
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 260
    .local v0, "actionExtras":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 264
    :goto_1e
    return-object v0

    .line 261
    :cond_1f
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/RemoteInputCompatJellybean;->toBundleArray([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.support.remoteInputs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_1e
.end method

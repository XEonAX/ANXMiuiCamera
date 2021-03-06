.class Landroid/support/v4/app/NotificationCompatApi21;
.super Ljava/lang/Object;
.source "NotificationCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatApi21$Builder;
    }
.end annotation


# static fields
.field public static final CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field private static final KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_ON_READ:Ljava/lang/String; = "on_read"

.field private static final KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field private static final KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private static fromCompatRemoteInput(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/app/RemoteInput;
    .registers 3
    .param p0, "src"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    .prologue
    .line 206
    new-instance v0, Landroid/app/RemoteInput$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getAllowFreeFormInput()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method

.method static getBundleForUnreadConversation(Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;)Landroid/os/Bundle;
    .registers 10
    .param p0, "uc"    # Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;

    .prologue
    const/4 v6, 0x0

    .line 129
    if-eqz p0, :cond_4f

    .line 132
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v1, "b":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 134
    .local v0, "author":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_50

    .line 137
    .end local v0    # "author":Ljava/lang/String;
    :cond_f
    :goto_f
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getMessages()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    new-array v4, v6, [Landroid/os/Parcelable;

    .line 138
    .local v4, "messages":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v6, v4

    if-lt v2, v6, :cond_60

    .line 144
    const-string/jumbo v6, "messages"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 145
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getRemoteInput()Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v5

    .line 146
    .local v5, "remoteInput":Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    if-nez v5, :cond_7c

    .line 149
    :goto_26
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getReplyPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    const-string/jumbo v7, "on_reply"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getReadPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    const-string/jumbo v7, "on_read"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "participants"

    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getLatestTimestamp()J

    move-result-wide v6

    const-string/jumbo v8, "timestamp"

    invoke-virtual {v1, v8, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 153
    return-object v1

    .line 130
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "i":I
    .end local v4    # "messages":[Landroid/os/Parcelable;
    .end local v5    # "remoteInput":Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    :cond_4f
    return-object v6

    .line 134
    .restart local v0    # "author":Ljava/lang/String;
    .restart local v1    # "b":Landroid/os/Bundle;
    :cond_50
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_f

    .line 135
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v0, v6, v7

    goto :goto_f

    .line 139
    .end local v0    # "author":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "messages":[Landroid/os/Parcelable;
    :cond_60
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v3, "m":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getMessages()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    const-string/jumbo v7, "text"

    invoke-virtual {v3, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v6, "author"

    invoke-virtual {v3, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    aput-object v3, v4, v2

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 147
    .end local v3    # "m":Landroid/os/Bundle;
    .restart local v5    # "remoteInput":Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    :cond_7c
    invoke-static {v5}, Landroid/support/v4/app/NotificationCompatApi21;->fromCompatRemoteInput(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/app/RemoteInput;

    move-result-object v6

    const-string/jumbo v7, "remote_input"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_26
.end method

.method public static getCategory(Landroid/app/Notification;)Ljava/lang/String;
    .registers 2
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    return-object v0
.end method

.method static getUnreadConversationFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;
    .registers 16
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "factory"    # Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;
    .param p2, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    .prologue
    const/4 v2, 0x0

    .line 159
    if-eqz p0, :cond_32

    .line 162
    const-string/jumbo v0, "messages"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 163
    .local v9, "parcelableMessages":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .line 164
    .local v1, "messages":[Ljava/lang/String;
    if-nez v9, :cond_33

    .line 185
    .end local v1    # "messages":[Ljava/lang/String;
    :goto_d
    const-string/jumbo v0, "on_read"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 186
    .local v4, "onRead":Landroid/app/PendingIntent;
    const-string/jumbo v0, "on_reply"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 188
    .local v3, "onReply":Landroid/app/PendingIntent;
    const-string/jumbo v0, "remote_input"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/RemoteInput;

    .line 190
    .local v10, "remoteInput":Landroid/app/RemoteInput;
    const-string/jumbo v0, "participants"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "participants":[Ljava/lang/String;
    if-nez v5, :cond_5e

    .line 192
    :cond_31
    return-object v2

    .line 160
    .end local v3    # "onReply":Landroid/app/PendingIntent;
    .end local v4    # "onRead":Landroid/app/PendingIntent;
    .end local v5    # "participants":[Ljava/lang/String;
    .end local v9    # "parcelableMessages":[Landroid/os/Parcelable;
    .end local v10    # "remoteInput":Landroid/app/RemoteInput;
    :cond_32
    return-object v2

    .line 165
    .restart local v1    # "messages":[Ljava/lang/String;
    .restart local v9    # "parcelableMessages":[Landroid/os/Parcelable;
    :cond_33
    array-length v0, v9

    new-array v12, v0, [Ljava/lang/String;

    .line 166
    .local v12, "tmp":[Ljava/lang/String;
    const/4 v11, 0x1

    .line 167
    .local v11, "success":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_38
    array-length v0, v12

    if-lt v8, v0, :cond_3e

    .line 178
    :goto_3b
    if-nez v11, :cond_5c

    .line 181
    return-object v2

    .line 168
    :cond_3e
    aget-object v0, v9, v8

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_58

    .line 172
    aget-object v0, v9, v8

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v6, "text"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v8

    .line 173
    aget-object v0, v12, v8

    if-eqz v0, :cond_5a

    .line 167
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 169
    :cond_58
    const/4 v11, 0x0

    goto :goto_3b

    .line 174
    :cond_5a
    const/4 v11, 0x0

    goto :goto_3b

    .line 179
    :cond_5c
    move-object v1, v12

    goto :goto_d

    .line 191
    .end local v1    # "messages":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v11    # "success":Z
    .end local v12    # "tmp":[Ljava/lang/String;
    .restart local v3    # "onReply":Landroid/app/PendingIntent;
    .restart local v4    # "onRead":Landroid/app/PendingIntent;
    .restart local v5    # "participants":[Ljava/lang/String;
    .restart local v10    # "remoteInput":Landroid/app/RemoteInput;
    :cond_5e
    array-length v0, v5

    const/4 v6, 0x1

    if-ne v0, v6, :cond_31

    .line 196
    if-nez v10, :cond_71

    :goto_64
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;->build([Ljava/lang/String;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;

    move-result-object v0

    return-object v0

    :cond_71
    invoke-static {v10, p2}, Landroid/support/v4/app/NotificationCompatApi21;->toCompatRemoteInput(Landroid/app/RemoteInput;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v2

    goto :goto_64
.end method

.method private static toCompatRemoteInput(Landroid/app/RemoteInput;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .registers 8
    .param p0, "remoteInput"    # Landroid/app/RemoteInput;
    .param p1, "factory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    invoke-virtual {p0}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v0

    return-object v0
.end method

.class Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;
.super Ljava/lang/Object;
.source "ShareCompat.java"

# interfaces
.implements Landroid/support/v4/app/ShareCompat$ShareCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShareCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .registers 9
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v4, 0x20

    .line 99
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-lt v1, p3, :cond_6

    .line 121
    return-void

    .line 100
    :cond_6
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 102
    .local v0, "c":C
    const/16 v2, 0x3c

    if-eq v0, v2, :cond_3b

    .line 104
    const/16 v2, 0x3e

    if-eq v0, v2, :cond_42

    .line 106
    const/16 v2, 0x26

    if-eq v0, v2, :cond_49

    .line 108
    const/16 v2, 0x7e

    if-le v0, v2, :cond_50

    .line 109
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "&#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 103
    :cond_3b
    const-string/jumbo v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 105
    :cond_42
    const-string/jumbo v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 107
    :cond_49
    const-string/jumbo v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 108
    :cond_50
    if-lt v0, v4, :cond_1a

    .line 110
    if-eq v0, v4, :cond_60

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 112
    :cond_58
    const-string/jumbo v2, "&nbsp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 111
    :cond_60
    add-int/lit8 v2, v1, 0x1

    if-lt v2, p3, :cond_68

    .line 116
    :goto_64
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 111
    :cond_68
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_58

    goto :goto_64
.end method


# virtual methods
.method public configureMenuItem(Landroid/view/MenuItem;Landroid/support/v4/app/ShareCompat$IntentBuilder;)V
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "shareIntent"    # Landroid/support/v4/app/ShareCompat$IntentBuilder;

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 89
    return-void
.end method

.method public escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

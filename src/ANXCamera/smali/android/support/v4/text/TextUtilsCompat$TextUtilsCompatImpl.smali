.class Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextUtilsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextUtilsCompatImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/text/TextUtilsCompat$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/support/v4/text/TextUtilsCompat$1;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>()V

    return-void
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 95
    :pswitch_10
    return v1

    .line 91
    :pswitch_11
    const/4 v0, 0x1

    return v0

    .line 88
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 63
    if-nez p1, :cond_4

    .line 72
    :cond_3
    :goto_3
    return v2

    .line 63
    :cond_4
    sget-object v1, Landroid/support/v4/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 64
    invoke-static {p1}, Landroid/support/v4/text/ICUCompat;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "scriptSubtag":Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 67
    invoke-static {}, Landroid/support/v4/text/TextUtilsCompat;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 69
    :cond_1c
    const/4 v1, 0x1

    return v1

    .line 65
    :cond_1e
    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    move-result v1

    return v1

    .line 67
    :cond_23
    invoke-static {}, Landroid/support/v4/text/TextUtilsCompat;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_3
.end method

.method public htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_11

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 33
    :cond_11
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 34
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_42

    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 36
    :sswitch_1e
    const-string/jumbo v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 39
    :sswitch_25
    const-string/jumbo v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 42
    :sswitch_2c
    const-string/jumbo v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 50
    :sswitch_33
    const-string/jumbo v3, "&#39;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 53
    :sswitch_3a
    const-string/jumbo v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 34
    nop

    :sswitch_data_42
    .sparse-switch
        0x22 -> :sswitch_3a
        0x26 -> :sswitch_2c
        0x27 -> :sswitch_33
        0x3c -> :sswitch_1e
        0x3e -> :sswitch_25
    .end sparse-switch
.end method

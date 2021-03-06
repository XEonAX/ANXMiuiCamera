.class Landroid/support/v4/text/ICUCompatIcs;
.super Ljava/lang/Object;
.source "ICUCompatIcs.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompatIcs"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 34
    :try_start_1
    const-string/jumbo v2, "libcore.icu.ICU"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_b

    .line 48
    :goto_a
    return-void

    .line 36
    :cond_b
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "getScript"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 38
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "addLikelySubtags"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e

    goto :goto_a

    .line 41
    :catch_2e
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    sput-object v5, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 43
    sput-object v5, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    .line 46
    const-string/jumbo v2, "ICUCompatIcs"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "localeStr":Ljava/lang/String;
    :try_start_4
    sget-object v4, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_9

    .line 92
    :goto_8
    return-object v3

    .line 80
    :cond_9
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 81
    .local v0, "args":[Ljava/lang/Object;
    sget-object v4, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_18} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_18} :catch_21

    return-object v4

    .line 83
    .end local v0    # "args":[Ljava/lang/Object;
    :catch_19
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "ICUCompatIcs"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 87
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_21
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "ICUCompatIcs"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method private static getScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 61
    :try_start_1
    sget-object v3, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_6

    .line 73
    :goto_5
    return-object v5

    .line 62
    :cond_6
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    .line 63
    .local v0, "args":[Ljava/lang/Object;
    sget-object v3, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_15} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_15} :catch_1e

    return-object v3

    .line 65
    .end local v0    # "args":[Ljava/lang/Object;
    :catch_16
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "ICUCompatIcs"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 69
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1e
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v3, "ICUCompatIcs"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {p0}, Landroid/support/v4/text/ICUCompatIcs;->addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "localeWithSubtags":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 56
    return-object v1

    .line 53
    :cond_8
    invoke-static {v0}, Landroid/support/v4/text/ICUCompatIcs;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

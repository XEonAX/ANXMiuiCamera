.class Landroid/support/v4/view/LayoutInflaterCompatHC;
.super Ljava/lang/Object;
.source "LayoutInflaterCompatHC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutInflaterCompatHC"

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    const/4 v4, 0x1

    .line 71
    sget-boolean v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sCheckedField:Z

    if-eqz v2, :cond_a

    .line 82
    :goto_5
    sget-object v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    if-nez v2, :cond_47

    .line 90
    :goto_9
    return-void

    .line 73
    :cond_a
    :try_start_a
    const-class v2, Landroid/view/LayoutInflater;

    const-string/jumbo v3, "mFactory2"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    .line 74
    sget-object v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_1b} :catch_1e

    .line 80
    :goto_1b
    sput-boolean v4, Landroid/support/v4/view/LayoutInflaterCompatHC;->sCheckedField:Z

    goto :goto_5

    .line 75
    :catch_1e
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; inflation may have unexpected results."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LayoutInflaterCompatHC"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 84
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_47
    :try_start_47
    sget-object v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_9

    .line 85
    :catch_4d
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; inflation may have unexpected results."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LayoutInflaterCompatHC"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method static setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .registers 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroid/support/v4/view/LayoutInflaterFactory;

    .prologue
    const/4 v1, 0x0

    .line 49
    if-nez p1, :cond_12

    .line 51
    .local v1, "factory2":Landroid/view/LayoutInflater$Factory2;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 53
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 54
    .local v0, "f":Landroid/view/LayoutInflater$Factory;
    instance-of v2, v0, Landroid/view/LayoutInflater$Factory2;

    if-nez v2, :cond_18

    .line 60
    invoke-static {p0, v1}, Landroid/support/v4/view/LayoutInflaterCompatHC;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 62
    .end local v0    # "f":Landroid/view/LayoutInflater$Factory;
    :goto_11
    return-void

    .line 49
    .end local v1    # "factory2":Landroid/view/LayoutInflater$Factory2;
    :cond_12
    new-instance v1, Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;

    invoke-direct {v1, p1}, Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V

    goto :goto_3

    .line 57
    .restart local v0    # "f":Landroid/view/LayoutInflater$Factory;
    .restart local v1    # "factory2":Landroid/view/LayoutInflater$Factory2;
    :cond_18
    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    .end local v0    # "f":Landroid/view/LayoutInflater$Factory;
    invoke-static {p0, v0}, Landroid/support/v4/view/LayoutInflaterCompatHC;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_11
.end method

.class public Lcom/miui/internal/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final OB:I = 0x1

.field private static final OC:I = 0x2

.field private static final OD:I = 0x10

.field private static final OE:I = 0x4

.field private static final OF:I = 0x8


# instance fields
.field private final OG:I

.field private OH:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private OI:I

.field private final OJ:I

.field private OK:Landroid/graphics/drawable/Drawable;

.field private final OL:I

.field private OM:Landroid/content/Intent;

.field private final ON:I

.field private OO:C

.field private OP:C

.field private OQ:Ljava/lang/CharSequence;

.field private OR:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .registers 8

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x10

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    .line 47
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    .line 48
    iput p3, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OL:I

    .line 49
    iput p2, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OJ:I

    .line 50
    iput p4, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OG:I

    .line 51
    iput p5, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->ON:I

    .line 52
    iput-object p6, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OQ:Ljava/lang/CharSequence;

    .line 53
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 2

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .registers 2

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .prologue
    .line 56
    iget-char v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OO:C

    return v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OJ:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OK:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OM:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OL:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .prologue
    .line 80
    iget-char v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OP:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->ON:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OQ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OR:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 196
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OH:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OH:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 197
    return v2

    .line 200
    :cond_e
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OM:Landroid/content/Intent;

    if-eqz v0, :cond_1a

    .line 201
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OM:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 202
    return v2

    .line 205
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 104
    iget v1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isChecked()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 108
    iget v1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 112
    iget v1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isVisible()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 116
    iget v1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 213
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 120
    iput-char p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OO:C

    .line 121
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 125
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    .line 126
    return-object p0

    .line 125
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 135
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_b

    const/4 v0, 0x2

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    .line 136
    return-object p0

    .line 135
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 140
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    and-int/lit8 v1, v0, -0x11

    if-eqz p1, :cond_c

    const/16 v0, 0x10

    :goto_8
    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    .line 141
    return-object p0

    .line 140
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setExclusiveCheckable(Z)Lcom/miui/internal/view/menu/ActionMenuItem;
    .registers 4

    .prologue
    .line 130
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_b

    const/4 v0, 0x4

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    .line 131
    return-object p0

    .line 130
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OK:Landroid/graphics/drawable/Drawable;

    .line 151
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OK:Landroid/graphics/drawable/Drawable;

    .line 146
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 155
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OM:Landroid/content/Intent;

    .line 156
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 160
    iput-char p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OP:C

    .line 161
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OH:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 166
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 170
    iput-char p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OP:C

    .line 171
    iput-char p2, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OO:C

    .line 172
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 2

    .prologue
    .line 210
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuItem;->setShowAsAction(I)V

    .line 246
    return-object p0
.end method

.method public setSupportActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 240
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSupportOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 271
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OQ:Ljava/lang/CharSequence;

    .line 182
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OQ:Ljava/lang/CharSequence;

    .line 177
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OR:Ljava/lang/CharSequence;

    .line 187
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 191
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    and-int/lit8 v1, v0, 0x8

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuItem;->OI:I

    .line 192
    return-object p0

    .line 191
    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method

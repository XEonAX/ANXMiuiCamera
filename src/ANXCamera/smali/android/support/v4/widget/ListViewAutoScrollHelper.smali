.class public Landroid/support/v4/widget/ListViewAutoScrollHelper;
.super Landroid/support/v4/widget/AutoScrollHelper;
.source "ListViewAutoScrollHelper.java"


# instance fields
.field private final mTarget:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .registers 2
    .param p1, "target"    # Landroid/widget/ListView;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    .line 32
    iput-object p1, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 33
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .registers 12
    .param p1, "direction"    # I

    .prologue
    const/4 v9, 0x0

    .line 60
    iget-object v6, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 61
    .local v6, "target":Landroid/widget/ListView;
    invoke-virtual {v6}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    .line 62
    .local v3, "itemCount":I
    if-eqz v3, :cond_18

    .line 66
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 67
    .local v0, "childCount":I
    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 68
    .local v1, "firstPosition":I
    add-int v4, v1, v0

    .line 70
    .local v4, "lastPosition":I
    if-gtz p1, :cond_19

    .line 78
    if-ltz p1, :cond_2e

    .line 89
    return v9

    .line 63
    .end local v0    # "childCount":I
    .end local v1    # "firstPosition":I
    .end local v4    # "lastPosition":I
    :cond_18
    return v9

    .line 72
    .restart local v0    # "childCount":I
    .restart local v1    # "firstPosition":I
    .restart local v4    # "lastPosition":I
    :cond_19
    if-ge v4, v3, :cond_1d

    .line 92
    :cond_1b
    const/4 v7, 0x1

    return v7

    .line 73
    :cond_1d
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 74
    .local v5, "lastView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_1b

    .line 75
    return v9

    .line 80
    .end local v5    # "lastView":Landroid/view/View;
    :cond_2e
    if-gtz v1, :cond_1b

    .line 81
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 82
    .local v2, "firstView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    if-ltz v7, :cond_1b

    .line 83
    return v9
.end method

.method public scrollTargetBy(II)V
    .registers 8
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 37
    iget-object v3, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 38
    .local v3, "target":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 39
    .local v0, "firstPosition":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1a

    .line 43
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "firstView":Landroid/view/View;
    if-eqz v1, :cond_1b

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v4, p2

    .line 49
    .local v2, "newTop":I
    invoke-virtual {v3, v0, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 50
    return-void

    .line 40
    .end local v1    # "firstView":Landroid/view/View;
    .end local v2    # "newTop":I
    :cond_1a
    return-void

    .line 45
    .restart local v1    # "firstView":Landroid/view/View;
    :cond_1b
    return-void
.end method

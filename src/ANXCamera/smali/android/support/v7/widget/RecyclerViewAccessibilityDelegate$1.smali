.class Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    # invokes: Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->access$000(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 87
    :cond_b
    :goto_b
    return-void

    .line 83
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_b
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    # invokes: Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->access$000(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 98
    :cond_f
    return v1

    .line 92
    :cond_10
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
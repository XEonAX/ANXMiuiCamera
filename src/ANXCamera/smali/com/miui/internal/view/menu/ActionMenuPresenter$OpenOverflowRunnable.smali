.class Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private Py:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

.field final synthetic Pz:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)V
    .registers 3

    .prologue
    .line 652
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->Pz:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->Py:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    .line 654
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 657
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->Pz:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 658
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->Pz:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    .line 659
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->Py:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 660
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->Pz:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->Py:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->te(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    .line 662
    :cond_25
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->Pz:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-static {v0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->tf(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 663
    return-void
.end method

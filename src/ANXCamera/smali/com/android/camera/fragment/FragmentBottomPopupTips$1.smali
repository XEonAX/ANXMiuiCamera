.class Lcom/android/camera/fragment/FragmentBottomPopupTips$1;
.super Landroid/os/Handler;
.source "FragmentBottomPopupTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/fragment/FragmentBottomPopupTips;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 100
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 102
    :pswitch_0
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips$1;)V

    .line 114
    .local v0, "action":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->-get6(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 115
    const/4 v2, 0x0

    .line 114
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

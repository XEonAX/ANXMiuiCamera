.class Lcom/android/camera/fragment/manually/FragmentManually$3;
.super Ljava/lang/Object;
.source "FragmentManually.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/manually/FragmentManually;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/manually/FragmentManually;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/manually/FragmentManually;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/fragment/manually/FragmentManually;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually$3;->this$0:Lcom/android/camera/fragment/manually/FragmentManually;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually$3;->this$0:Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-static {v0}, Lcom/android/camera/fragment/manually/FragmentManually;->-get2(Lcom/android/camera/fragment/manually/FragmentManually;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 304
    return-void
.end method
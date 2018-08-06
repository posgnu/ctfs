.class public Lco/kr/festfive/fragment/PageFragment;
.super Landroid/support/v4/app/Fragment;
.source "PageFragment.java"


# instance fields
.field private mPageNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static create(I)Lco/kr/festfive/fragment/PageFragment;
    .locals 3
    .param p0, "pageNumber"    # I

    .prologue
    .line 20
    new-instance v1, Lco/kr/festfive/fragment/PageFragment;

    invoke-direct {v1}, Lco/kr/festfive/fragment/PageFragment;-><init>()V

    .line 21
    .local v1, "fragment":Lco/kr/festfive/fragment/PageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "page"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {v1, v0}, Lco/kr/festfive/fragment/PageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 24
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lco/kr/festfive/fragment/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/kr/festfive/fragment/PageFragment;->mPageNumber:I

    .line 31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const v1, 0x7f0a0065

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    .local v0, "rootView":Landroid/view/ViewGroup;
    return-object v0
.end method

.class Lco/kr/festfive/fragment/NewsFeedFragment$1;
.super Ljava/lang/Object;
.source "NewsFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/NewsFeedFragment;->setTab(Landroid/support/design/widget/TabLayout;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

.field final synthetic val$tabTitle:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/NewsFeedFragment;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/NewsFeedFragment;

    .prologue
    .line 163
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/NewsFeedFragment$1;->val$tabTitle:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 167
    iget-object v4, p0, Lco/kr/festfive/fragment/NewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/NewsFeedFragment;->access$000(Lco/kr/festfive/fragment/NewsFeedFragment;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    move-object v4, p1

    .line 168
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 169
    iget-object v4, p0, Lco/kr/festfive/fragment/NewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    invoke-virtual {v4}, Lco/kr/festfive/fragment/NewsFeedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 170
    .local v3, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const/4 v1, 0x0

    .line 171
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lco/kr/festfive/fragment/NewsFeedFragment$1;->val$tabTitle:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    move-object v4, p1

    .line 172
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/fragment/NewsFeedFragment$1;->val$tabTitle:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    move v1, v0

    .line 178
    :cond_0
    if-ne v1, v6, :cond_2

    .line 179
    iget-object v4, p0, Lco/kr/festfive/fragment/NewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    new-instance v5, Lco/kr/festfive/fragment/NoticeFragment;

    invoke-direct {v5}, Lco/kr/festfive/fragment/NoticeFragment;-><init>()V

    invoke-static {v4, v5}, Lco/kr/festfive/fragment/NewsFeedFragment;->access$102(Lco/kr/festfive/fragment/NewsFeedFragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 186
    :goto_1
    const v4, 0x7f080160

    iget-object v5, p0, Lco/kr/festfive/fragment/NewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/NewsFeedFragment;->access$100(Lco/kr/festfive/fragment/NewsFeedFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 188
    const-string v5, "NewsFeedFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp_tv.getText() : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    .line 190
    .local v2, "temp_tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 191
    iget-object v4, p0, Lco/kr/festfive/fragment/NewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    invoke-static {v4, v2}, Lco/kr/festfive/fragment/NewsFeedFragment;->access$002(Lco/kr/festfive/fragment/NewsFeedFragment;Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$Tab;

    .line 192
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 193
    return-void

    .line 171
    .end local v2    # "temp_tab":Landroid/support/design/widget/TabLayout$Tab;
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_2
    iget-object v4, p0, Lco/kr/festfive/fragment/NewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    new-instance v5, Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-direct {v5}, Lco/kr/festfive/fragment/NewsFeedListFragment;-><init>()V

    invoke-static {v4, v5}, Lco/kr/festfive/fragment/NewsFeedFragment;->access$102(Lco/kr/festfive/fragment/NewsFeedFragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 184
    iget-object v4, p0, Lco/kr/festfive/fragment/NewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/NewsFeedFragment;->access$100(Lco/kr/festfive/fragment/NewsFeedFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lco/kr/festfive/fragment/NewsFeedListFragment;

    iget-object v5, p0, Lco/kr/festfive/fragment/NewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/NewsFeedFragment;->access$200(Lco/kr/festfive/fragment/NewsFeedFragment;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lco/kr/festfive/fragment/NewsFeedListFragment;->setCategory(Ljava/lang/String;)V

    goto :goto_1
.end method

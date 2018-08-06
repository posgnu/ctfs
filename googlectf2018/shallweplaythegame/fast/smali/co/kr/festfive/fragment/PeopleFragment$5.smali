.class Lco/kr/festfive/fragment/PeopleFragment$5;
.super Ljava/lang/Object;
.source "PeopleFragment.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/PeopleFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/PeopleFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/PeopleFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 184
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$5;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 189
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 6
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 194
    iget-object v4, p0, Lco/kr/festfive/fragment/PeopleFragment$5;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/PeopleFragment;->access$700(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/PopupWindow;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 195
    iget-object v4, p0, Lco/kr/festfive/fragment/PeopleFragment$5;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/PeopleFragment;->access$700(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 197
    :cond_0
    const/4 v1, -0x1

    .line 198
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lco/kr/festfive/fragment/PeopleFragment$5;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/PeopleFragment;->access$300(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 199
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 200
    .local v3, "temp_tv":Landroid/widget/TextView;
    iget-object v4, p0, Lco/kr/festfive/fragment/PeopleFragment$5;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/PeopleFragment;->access$300(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/kr/festfive/fragment/PeopleFragment$TabItem;

    invoke-virtual {v4}, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->getTabTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 201
    move v1, v0

    .line 205
    .end local v3    # "temp_tv":Landroid/widget/TextView;
    :cond_1
    const-string v4, "PeopleFragment"

    const-string v5, "\ucc98\uc74c \ub9ac\uc2a4\ub108\uac00 \ud638\ucd9c \ub420\uae4c\uc694?"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 211
    iget-object v4, p0, Lco/kr/festfive/fragment/PeopleFragment$5;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/PeopleFragment;->access$300(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/kr/festfive/fragment/PeopleFragment$TabItem;

    invoke-virtual {v4}, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 212
    .local v2, "objData":Lcom/google/gson/JsonObject;
    iget-object v4, p0, Lco/kr/festfive/fragment/PeopleFragment$5;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$5;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/PeopleFragment;->access$400(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lco/kr/festfive/fragment/PeopleFragment;->access$500(Lco/kr/festfive/fragment/PeopleFragment;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 215
    .end local v2    # "objData":Lcom/google/gson/JsonObject;
    :cond_2
    iget-object v4, p0, Lco/kr/festfive/fragment/PeopleFragment$5;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v4, p1}, Lco/kr/festfive/fragment/PeopleFragment;->access$802(Lco/kr/festfive/fragment/PeopleFragment;Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$Tab;

    .line 218
    return-void

    .line 198
    .restart local v3    # "temp_tv":Landroid/widget/TextView;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 222
    return-void
.end method

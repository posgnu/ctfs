.class Lco/kr/festfive/fragment/PeopleFragment$4;
.super Ljava/lang/Object;
.source "PeopleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 160
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$4;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "officeId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 166
    .local v1, "temp_tv":Landroid/widget/TextView;
    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$4;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/PeopleFragment;->access$200(Lco/kr/festfive/fragment/PeopleFragment;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$4;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/PeopleFragment;->access$300(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/fragment/PeopleFragment$4;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$200(Lco/kr/festfive/fragment/PeopleFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    .end local v1    # "temp_tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 168
    .restart local v1    # "temp_tv":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v2, "PeopleFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "officeId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    iget-object v3, p0, Lco/kr/festfive/fragment/PeopleFragment$4;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$4;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/PeopleFragment;->access$300(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v2

    iget-object v4, p0, Lco/kr/festfive/fragment/PeopleFragment$4;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/PeopleFragment;->access$200(Lco/kr/festfive/fragment/PeopleFragment;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/fragment/PeopleFragment$TabItem;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    iget-object v4, p0, Lco/kr/festfive/fragment/PeopleFragment$4;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/PeopleFragment;->access$400(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lco/kr/festfive/fragment/PeopleFragment;->access$500(Lco/kr/festfive/fragment/PeopleFragment;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$4;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    iget-object v3, p0, Lco/kr/festfive/fragment/PeopleFragment$4;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$400(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$600(Lco/kr/festfive/fragment/PeopleFragment;Landroid/view/View;)V

    .line 173
    return-void
.end method

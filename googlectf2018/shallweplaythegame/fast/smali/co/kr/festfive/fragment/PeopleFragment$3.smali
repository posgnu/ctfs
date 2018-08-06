.class Lco/kr/festfive/fragment/PeopleFragment$3;
.super Ljava/lang/Object;
.source "PeopleFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 148
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$3;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 152
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 153
    iget-object v1, p0, Lco/kr/festfive/fragment/PeopleFragment$3;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment$3;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/PeopleFragment;->access$300(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$3;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/PeopleFragment;->access$200(Lco/kr/festfive/fragment/PeopleFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/fragment/PeopleFragment$TabItem;

    invoke-virtual {v0}, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$3;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/PeopleFragment;->access$400(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lco/kr/festfive/fragment/PeopleFragment;->access$500(Lco/kr/festfive/fragment/PeopleFragment;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment$3;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    iget-object v1, p0, Lco/kr/festfive/fragment/PeopleFragment$3;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/PeopleFragment;->access$400(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lco/kr/festfive/fragment/PeopleFragment;->access$600(Lco/kr/festfive/fragment/PeopleFragment;Landroid/view/View;)V

    .line 156
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.class Lco/kr/festfive/fragment/MyDetailUserFragment$3;
.super Ljava/lang/Object;
.source "MyDetailUserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/fragment/MyDetailUserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/MyDetailUserFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MyDetailUserFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;

    .prologue
    .line 221
    iput-object p1, p0, Lco/kr/festfive/fragment/MyDetailUserFragment$3;->this$0:Lco/kr/festfive/fragment/MyDetailUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v1, p0, Lco/kr/festfive/fragment/MyDetailUserFragment$3;->this$0:Lco/kr/festfive/fragment/MyDetailUserFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/MyDetailUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\ub85c\uadf8\uc544\uc6c3 \ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 226
    iget-object v1, p0, Lco/kr/festfive/fragment/MyDetailUserFragment$3;->this$0:Lco/kr/festfive/fragment/MyDetailUserFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/MyDetailUserFragment;->access$800(Lco/kr/festfive/fragment/MyDetailUserFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v1

    const-string v2, "user_id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/kr/festfive/fragment/MyDetailUserFragment$3;->this$0:Lco/kr/festfive/fragment/MyDetailUserFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/MyDetailUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    const/4 v1, 0x1

    sput-boolean v1, Lco/kr/festfive/activity/MainActivity;->logoutFlag:Z

    .line 230
    iget-object v1, p0, Lco/kr/festfive/fragment/MyDetailUserFragment$3;->this$0:Lco/kr/festfive/fragment/MyDetailUserFragment;

    invoke-virtual {v1, v0}, Lco/kr/festfive/fragment/MyDetailUserFragment;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method

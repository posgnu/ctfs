.class Lco/kr/festfive/fragment/PeopleFragment$2;
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
    .line 139
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$2;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment$2;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/PeopleFragment;->access$100(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment$2;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/PeopleFragment;->access$100(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 145
    :cond_0
    return-void
.end method

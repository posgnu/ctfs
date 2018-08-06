.class Lco/kr/festfive/fragment/LocationFragment$3;
.super Ljava/lang/Object;
.source "LocationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/LocationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/LocationFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/LocationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/LocationFragment;

    .prologue
    .line 189
    iput-object p1, p0, Lco/kr/festfive/fragment/LocationFragment$3;->this$0:Lco/kr/festfive/fragment/LocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/kr/festfive/fragment/LocationFragment$3;->this$0:Lco/kr/festfive/fragment/LocationFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/LocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/MapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "latitude"

    iget-object v2, p0, Lco/kr/festfive/fragment/LocationFragment$3;->this$0:Lco/kr/festfive/fragment/LocationFragment;

    iget-object v2, v2, Lco/kr/festfive/fragment/LocationFragment;->latitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v1, "longitude"

    iget-object v2, p0, Lco/kr/festfive/fragment/LocationFragment$3;->this$0:Lco/kr/festfive/fragment/LocationFragment;

    iget-object v2, v2, Lco/kr/festfive/fragment/LocationFragment;->longitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lco/kr/festfive/fragment/LocationFragment$3;->this$0:Lco/kr/festfive/fragment/LocationFragment;

    invoke-virtual {v1, v0}, Lco/kr/festfive/fragment/LocationFragment;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

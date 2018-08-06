.class Lco/kr/festfive/fragment/DetailFeedFragment$9$3;
.super Ljava/lang/Object;
.source "DetailFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/DetailFeedFragment$9;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/fragment/DetailFeedFragment$9;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/DetailFeedFragment$9;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/fragment/DetailFeedFragment$9;

    .prologue
    .line 870
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$9$3;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 873
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 874
    .local v2, "url":Ljava/lang/String;
    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 880
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 881
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 882
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 883
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment$9$3;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$9;

    iget-object v3, v3, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v3, v0}, Lco/kr/festfive/fragment/DetailFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 884
    return-void

    .line 877
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "u":Landroid/net/Uri;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

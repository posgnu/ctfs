.class Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$3;
.super Ljava/lang/Object;
.source "MessageDetailUserInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    .prologue
    .line 239
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$3;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$3;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$800(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 243
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$3;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-virtual {v2, v0}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 245
    return-void
.end method
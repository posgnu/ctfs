.class Lco/kr/festfive/activity/MemberDetailActivity$4;
.super Ljava/lang/Object;
.source "MemberDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/MemberDetailActivity;->drawCompanyDetail(Lcom/google/gson/JsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/MemberDetailActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/MemberDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/MemberDetailActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lco/kr/festfive/activity/MemberDetailActivity$4;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lco/kr/festfive/activity/MemberDetailActivity$4;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/MemberDetailActivity;->access$100(Lco/kr/festfive/activity/MemberDetailActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "company_homepage"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lco/kr/festfive/activity/MemberDetailActivity$4;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-virtual {v1, v0}, Lco/kr/festfive/activity/MemberDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

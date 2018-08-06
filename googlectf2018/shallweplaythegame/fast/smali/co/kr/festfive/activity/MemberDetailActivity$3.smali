.class Lco/kr/festfive/activity/MemberDetailActivity$3;
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
    .line 147
    iput-object p1, p0, Lco/kr/festfive/activity/MemberDetailActivity$3;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/activity/MemberDetailActivity$3;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/MemberDetailActivity;->access$100(Lco/kr/festfive/activity/MemberDetailActivity;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "company_tel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lco/kr/festfive/activity/MemberDetailActivity$3;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-virtual {v1, v0}, Lco/kr/festfive/activity/MemberDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    return-void
.end method

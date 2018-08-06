.class Lco/kr/festfive/activity/MemberDetailActivity$2;
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
    .line 139
    iput-object p1, p0, Lco/kr/festfive/activity/MemberDetailActivity$2;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lco/kr/festfive/activity/MemberDetailActivity$2;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-virtual {v0}, Lco/kr/festfive/activity/MemberDetailActivity;->finish()V

    .line 143
    return-void
.end method

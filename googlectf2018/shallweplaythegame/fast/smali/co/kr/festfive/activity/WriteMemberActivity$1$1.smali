.class Lco/kr/festfive/activity/WriteMemberActivity$1$1;
.super Ljava/lang/Object;
.source "WriteMemberActivity.java"

# interfaces
.implements Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/WriteMemberActivity$1;->onGetBaseDataComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/activity/WriteMemberActivity$1;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/WriteMemberActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/WriteMemberActivity$1;

    .prologue
    .line 144
    iput-object p1, p0, Lco/kr/festfive/activity/WriteMemberActivity$1$1;->this$1:Lco/kr/festfive/activity/WriteMemberActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$1$1;->this$1:Lco/kr/festfive/activity/WriteMemberActivity$1;

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$1$1;->this$1:Lco/kr/festfive/activity/WriteMemberActivity$1;

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 160
    :cond_0
    return-void
.end method

.method public onGetOriginDataComplete(Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p1, "data"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 147
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$1$1;->this$1:Lco/kr/festfive/activity/WriteMemberActivity$1;

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$1;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-static {v0, p1}, Lco/kr/festfive/activity/WriteMemberActivity;->access$100(Lco/kr/festfive/activity/WriteMemberActivity;Lcom/google/gson/JsonObject;)V

    .line 148
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$1$1;->this$1:Lco/kr/festfive/activity/WriteMemberActivity$1;

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$1;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/WriteMemberActivity;->access$200(Lco/kr/festfive/activity/WriteMemberActivity;)V

    .line 150
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$1$1;->this$1:Lco/kr/festfive/activity/WriteMemberActivity$1;

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$1$1;->this$1:Lco/kr/festfive/activity/WriteMemberActivity$1;

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 153
    :cond_0
    return-void
.end method

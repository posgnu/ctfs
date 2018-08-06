.class Lco/kr/festfive/activity/WriteMemberActivity$1;
.super Ljava/lang/Object;
.source "WriteMemberActivity.java"

# interfaces
.implements Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/WriteMemberActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/WriteMemberActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/WriteMemberActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/WriteMemberActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lco/kr/festfive/activity/WriteMemberActivity$1;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    iput-object p2, p0, Lco/kr/festfive/activity/WriteMemberActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetBaseDataComplete()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$1;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/WriteMemberActivity;->access$000(Lco/kr/festfive/activity/WriteMemberActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$1;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    new-instance v1, Lco/kr/festfive/activity/WriteMemberActivity$1$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/WriteMemberActivity$1$1;-><init>(Lco/kr/festfive/activity/WriteMemberActivity$1;)V

    invoke-static {v0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->access$300(Lco/kr/festfive/activity/WriteMemberActivity;Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;)V

    .line 169
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 167
    :cond_1
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$1;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/WriteMemberActivity;->access$200(Lco/kr/festfive/activity/WriteMemberActivity;)V

    goto :goto_0
.end method

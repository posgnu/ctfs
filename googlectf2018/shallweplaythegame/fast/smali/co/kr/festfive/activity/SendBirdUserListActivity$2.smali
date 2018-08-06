.class Lco/kr/festfive/activity/SendBirdUserListActivity$2;
.super Ljava/lang/Object;
.source "SendBirdUserListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdUserListActivity;->initUIComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdUserListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdUserListActivity;

    .prologue
    .line 173
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$2;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$2;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->finish()V

    .line 177
    return-void
.end method
